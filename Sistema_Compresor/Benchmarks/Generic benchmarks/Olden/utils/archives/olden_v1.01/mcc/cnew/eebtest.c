/* For copyright information, see olden_v1.0/mcc/[COPYRIGHT,LCC-COPYRIGHT] */
#include "eebtest.h"

typedef struct status{
  int x;
  struct status *next;
} *Status;

/* added by Ender Bilir Oct 1994 */
/* prints out nodes              */
static Symbol rootOf(p) Node p;
/* locates the variable at the root of a node (follows the nested loops only
   if what is in them is still interesting */
{
  Symbol retval;
  if (p == NULL) return NULL;

  if (p->op == ADDP /*311*/)
    {
      retval = rootOf(p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
      if(retval) return retval;
      retval = rootOf(p->x.kids[1] ? p->x.kids[1] : p->kids[1]);
      return retval;
    }

  else if (p->op == INDIRP/*71*/ /*|| p->op == MTESTP*/ /*1079*/ ) 
    {
      retval = rootOf(p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
      return retval;
    }

  else if (p->op == ADDRLP/*295*/ || p->op == ADDRFP)
    { 
      if(p->syms[0]) return p->syms[0];
      retval = rootOf(p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
      return retval;
    }

  else if(sparc_arity[p->op] == 0 && p->syms[0])
    {return p->syms[0];}

  else return NULL;
}
 
static Node removecasts(p) Node p;
/* remove casts from statements. they can be ignored. assume the 
   programmer knows what he is doing in casts. */
{
  switch ((p->op) &~15)
    {
    case CVC:case CVD:case CVF:case CVI:case CVP:case CVS:case CVU: 
      p = removecasts(p->x.kids[0] ? p->x.kids[0]: p->kids[0]);
      break;
    default: break;
    }
  return p;
}

static void asgncheck(fn, p) FlowNode fn; Node p;
/* check through an assignment statement - is this
   an interesting assignment? Interesting assignments have three
  main types for pointers p,q to some struct:

      p = q; (simple assingment of one pointer to another)
      p = mymalloc...; (allocation of new space)
   p = 7; (simple assigmnent to garbage)

   p->x = 7; (dereference of p and assignment to the dereference)
  
   x = p->x; (dereference of p and assignment to something else)
     
   all the appropriate set-shufflings for assignments are cared for here. 
   any dereferences which needed checking have been seen already and marked
   for testing at the setlist level by the mtest check. 
*/

{
  Node kid1, kid2;
  Symbol s1, s2;
 
  kid1 = removecasts(p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
  kid2 = removecasts(p->x.kids[1] ? p->x.kids[1] : p->kids[1]);
 
  if (kid1->op == ADDP/*311*/ || kid1->op == ADDRLP/*295*/ 
      || kid1->op == ADDRFP)
    {
      s1 = rootOf(kid1);
      if(s1 == NULL) return;
      RemoveFromItsSet(fn->sl, s1);

      if (kid2->op == INDIRP /*71*/)
        {
          s2 = rootOf(kid2);
          if(s2 != NULL) AddToSetOf(fn->sl, s1, s2);
        }

      else if (kid2->op == CALLI /*213*/)
        {
          kid2 = (kid2->x.kids[0] ? kid2->x.kids[0] : kid2->kids[0]);
          if (kid2->op == ADDRGP /*263*/)
            {
              if (kid2->syms[0])
                if (!strcmp(kid2->syms[0]->name, "mymalloc"))
                  AddToLocal(fn->sl, s1);
            }
          else return;
        }
    }
  else return;
}

static void mtestcheck(fn,p) FlowNode fn; Node p;
/* check pointer dereferences, which will be looked at before they
   appear in larger statements, if migrphase is set. move the local
   designation to the set with the dereferenced pointer, if it isn't
      there already, and mark test as needed. */
{
  Symbol s;
  Node kid = (p->kids[0] ? p->kids[0] : p->x.kids[0]);
  int test = 1;
  s = rootOf(kid);
  if (s) 
    {
      test = MoveLocalTo(fn->sl, s);
    }
  else 
    {
      fn->sl->local = NULL;
    }
  fn->sl->test = test;
}
 
static void callcheck(fn, p, lastarg) FlowNode fn; Node p,lastarg;
/* checks for migration calls */
{
  Node kid1, kid2, lastargkid;
  kid1 = removecasts(p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
  lastargkid = lastarg ?
                removecasts(lastarg->x.kids[0] ? lastarg->x.kids[0] :
                            lastarg->kids[0]) :
                NULL;
  
  if (kid1->op != ADDRGP /*263*/) return;
  if (!kid1->syms[0]) return;
  if (!strcmp(kid1->syms[0]->name, "MIGRATE")) 
    {
      fn->sl->local = NULL;
      return;
    }
  else if (!strcmp(kid1->syms[0]->name, "MLOCAL") ||
           !strcmp(kid1->syms[0]->name,"LOCAL")) 
    {
      Symbol s;
      int test = 1;
      s = rootOf(lastargkid);
      if (s)
        {
          test = MoveLocalTo(fn->sl, s);
        }
      else 
        {
          fn->sl->local = NULL;
        }
      fn->sl->test = test;
    }
  else if (!strcmp(kid1->syms[0]->name,"PREFETCH")) 
    {
      Symbol s;
      int test = 1;
      s = rootOf(lastargkid);
      if (s) test = (Is_Local(fn->sl->local,s) ? 0 : 1);
      fn->sl->test = test;
    }
}

static void testcheck(fn,p) FlowNode fn; Node p;
     /* test only if not local -- no change to sets */
{
  Symbol s;
  Node kid = (p->kids[0] ? p->kids[0] : p->x.kids[0]);
  int test = 1;
  s = rootOf(kid);
  if (s) test = (Is_Local(fn->sl->local,s) ? 0 : 1);
  fn->sl->test = test;
}  

static void dumpcheck(fn,p) FlowNode fn; Node p;
   /* hands off different types of statements to their handlers. */
{
  static Node lastarg = NULL;
  
  switch ((p->op)&~15)
    {
    case ASGN  /*48*/  : asgncheck(fn,p);  break;
    case ARG: lastarg = p; break;
    case MTEST /*1072*/: mtestcheck(fn,p); break;
    case TEST: testcheck(fn,p); break;
    case CALL  /*208*/ : callcheck(fn,p,lastarg); lastarg = NULL; break;
    default: break;
    }
}
 
static void dumptree(p) Node p;
/* prints out a node`s contents if DEBUG is defined. */
{
#ifdef DEBUG
  if (!p) return;
  fprint(2, "%s(", sparc_opname[p->op]);
  if (sparc_arity[p->op] == 0 && p->syms[0])
    fprint(2, "%s", p->syms[0]->name);
  else if (sparc_arity[p->op] == 1)
    dumptree(p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
  else if (sparc_arity[p->op] == 2)
    {
      dumptree (p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
      fprint(2, ", ");
      dumptree(p->x.kids[1] ? p->x.kids[1] : p->kids[1]);
    }
  fprint(2, ")");
#endif
}
 
static void dotest()
{
#ifdef DEBUG
  fprint(2, "(TEST(");
#endif
}
static void undotest()
{
#ifdef DEBUG
  fprint(2, ")");
#endif
}

static void marktest(p) Node p;
{
  p->reallytest = 1;
}
static void marknotest(p)Node p;
{
  p->reallytest = 0;
}
 
static void normalcheck(fn)FlowNode fn;
/* runs checks using dumpcheck. marks nodes that need testing.
    PrintSets, dumptree, dotest and undotest are debugging printing
    routines. They show you what is going on if DEBUG is defined. 
    put determines whether a link has been taken or not (in which
    case another printout of the sets might be nice.) */
{
  Node p;
  int put = 0;
  for(p=fn->node; p;){
      if (put) PrintSets(fn->sl);
 
      dumpcheck(fn,p);

      if(fn->sl && fn->sl->test) {
	    dotest();
	    marktest(p);
      }
      else {
       marknotest(p);
      }

      dumptree(p);
      if(fn->sl && fn->sl->test) undotest();

      switch(generic(p->op)) {
        case CALL: case RET: case EQ: case GE:
        case GT: case LE: case LT: case NE: case JUMP:
          p=NULL; /* exit loop */
          break;
        default:
          p=p->link;      
          break;
      }

      put = 1;
    }
}

struct EBsetlist *FirstTime(flowvec,fn)
  Vector flowvec;
  FlowNode fn;
{
  int small; 
  FlowNode pred;
  
  /* If we are a while(1), then predecessor should immediately
     precede in flowvec */
  if ((small = getsmallestpredindex(fn)) < fn->index)
    {
      assert(small == fn->index-1);
      pred = getelement(flowvec,small);  
      return EBSetListDuplicate(pred->sl);
    }
  /* Otherwise, immediate predecessor should be a jump to the test,
     just before the tail */ 
  pred = getelement(flowvec,fn->index-1);
  assert(pred->nsucc == 1);
  assert(pred->succ->fn->index > fn->index);
  assert(pred->succ->fn->index <= fn->tail->index);
  mcc_generate_tests(flowvec,pred->succ->fn->index,fn->tail->index,
                     EBSetListDuplicate(pred->sl));
  return fn->tail->sl;
}

struct EBsetlist *MergePredecessors(fn)
  FlowNode fn;
{

  if (fn->npred == 0)
    {
      struct EBsetlist *sl;
   
      sl = (struct EBsetlist *)calloc(1, sizeof(struct EBsetlist));
      EB_init_setlist(sl);
      return sl;
    }
  else if (fn->npred == 1)
    return EBSetListDuplicate(fn->pred->fn->sl);
  else {
    struct fnlist *pred = fn->pred;
    struct EBsetlist *sl;

    sl = EBSetListMerge(pred->fn->sl,pred->next->fn->sl);
    pred = pred->next->next;
    while (pred!=NULL) {
      sl = EBSetListMerge(sl,pred->fn->sl);
      pred = pred->next;
    }
    return sl;
  } 
}
 
mcc_generate_tests(flowvec, start, stop, sl) 
  Vector flowvec;
  int start,stop;
  struct EBsetlist *sl;
{
  FlowNode fn;
  int i;
  struct EBsetlist *loopsl;
  
  fn = getelement(flowvec, start);
  fn->sl = sl;
  normalcheck(fn);

  for (i=start+1; i<=stop; i++) { 
    fn = getelement(flowvec, i);
    if (fn->type != head) {
      fn->sl = MergePredecessors(fn);
      normalcheck(fn);
    } 
    else {
      int j,tailind=fn->tail->index;

      loopsl = FirstTime(flowvec,fn); 
      mcc_generate_tests(flowvec, i, tailind, loopsl);
      loopsl = MergePredecessors(fn);
      mcc_generate_tests(flowvec, i, tailind, loopsl);
      loopsl = MergePredecessors(fn);
      mcc_generate_tests(flowvec, i, tailind, loopsl);
    }
#ifdef DEBUG
    dumptree(fn->node);
    PrintSets(fn->sl);
#endif
  }
}
 
void generate_tests(flowvec, sz) Vector flowvec; int sz;
{
  struct EBsetlist *sl;

  sl = (struct EBsetlist *)calloc(1, sizeof(struct EBsetlist));
  EB_init_setlist(sl);
  mcc_generate_tests(flowvec,0,sz-1,sl);
}


