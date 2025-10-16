#include "pass1.h"
#include "table.h"
#include "c.h"
#include "callgraph.h"
#include "vector.h"
#define NULL 0

static Node lastarg = NULL;
static struct symbol something;
Symbol Something = &something;

/* Get argument -- used for LOCAL */
static Symbol getarg(p)
Node p;
{
  int op;
  if (generic(p->op)!=INDIR) return NULL;
  p=p->kids[0];
  op=generic(p->op);
  if ((op==ADDRL) || (op==ADDRF) || (op==ADDRG)) return p->syms[0];
  return NULL;
}

/* Is this a call to LOCAL or MLOCAL? */
static int isloccall(p)
Node p;
{
  int op=generic(p->op);
  if (op==CVI || op == CVU || op==CVC || op==CVP) return isloccall(p->kids[0]);
  if (op!=CALL) return 0;
  if (generic(p->kids[0]->op)!=ADDRG) return 0;
  return ((!strcmp(p->kids[0]->syms[0]->name,"LOCAL")) ||
          (!strcmp(p->kids[0]->syms[0]->name,"MLOCAL")));
}

/* Is this a procedure call? */
static int iscall(p)
Node p;
{
  int op=generic(p->op);
  if (op==CVI || op == CVU || op==CVC || op==CVP) return iscall(p->kids[0]);
  if (op!=CALL) return 0;
  return 1;
}

Update newUpdate()
{
  Update retval;

  retval = (Update) alloc(sizeof(*retval));
  assert(retval);
  retval->next = NULL;
  retval->direction = 0;
  return retval;
}

UpdateList newUpdateList()
{
  UpdateList retval;
  
  retval = (UpdateList) alloc(sizeof(*retval));
  assert(retval);
  retval->next = NULL;
  retval->updates = NULL;
  retval->alias = NULL;
  retval->conditional = 0;
  return retval;
}

UpdateMatrix newUpdateMatrix()
{
  UpdateMatrix retval;
  
  retval = (UpdateMatrix) alloc(sizeof(*retval));
  assert(retval);
  retval->parent = NULL;
  retval->lists = NULL;
  return retval;
}

Update UpdateBySomething() {
  Update retval;
  
  retval = newUpdate();
  retval->by = Something;
  retval->affinity = 0;
  return retval;
}

/* Copy update list reusing updates lists */
static UpdateList copyUpdateList(updl)
UpdateList updl;
{
  UpdateList retval = NULL;
  UpdateList *prev = &retval;
  UpdateList newl;

  while(updl) {
    newl = newUpdateList();
    newl->updated = updl->updated;
    newl->alias = updl->alias;
    newl->updates = updl->updates;
    newl->conditional = updl->conditional;
    *prev = newl;
    prev = &(newl->next);
    updl = updl->next;
    }
  return retval;
}

/* copy update matrix using copyUpdateList */
static UpdateMatrix copyUpdateMatrix(updm)
UpdateMatrix updm;
{
  UpdateMatrix retval;

  retval = newUpdateMatrix();
  if (updm)
    retval->lists = copyUpdateList(updm->lists);
  return retval;
}

/* Check to see if sym is updated in mat */
int CheckForUpdate(sym,mat)
Symbol sym;
UpdateMatrix mat;
{
  UpdateList updl;
  Update upd;

  if (!mat) return 0;
  
  for (updl = mat->lists; updl; updl=updl->next) {
    /* search for sym in update lists */
    if (updl->updated == sym) break;
    }
  if (!updl) return 0; /* if not found, no update */
  if (updl->alias) return CheckForUpdate(updl->alias,mat);
  /* if aliased, check alias */
  for (upd = updl->updates; upd; upd=upd->next) {
    if (upd->by == sym) return 1;
    /* if updated by self, return 1 */
    if (upd->by == Something) return 1;
    /* if updated by "something" return 1 */
    if (upd->direction) return 1;
    /* if dereferenced a->b[i], assume updated */
    if (CheckForUpdate(upd->by,mat)) return 1;
    /* if updated by another, check other */
    }
  /* not updated */
  return 0;
}
  

/* Copy head's list, mark all things in tail list as updated by something */
static UpdateMatrix tailmerge(fn,updatevec,tail)
FlowNode fn,tail;
Vector updatevec;
{
  UpdateMatrix retval, headmat, tailmat;
  UpdateList *prev;
  UpdateList headl,taill;
  UpdateList newl;
  FlowNode head;

  retval = newUpdateMatrix();
  prev = &(retval->lists);

  tailmat = getelement(updatevec,tail->index);
  head = getsmallestsucc(tail);
  headmat = getelement(updatevec,head->index);
  
  headl = headmat->lists;
  taill = tailmat->lists;

  while ((headl!=NULL) && (taill!=NULL)) {
    if ((int) headl->updated < (int) taill->updated) {
      /* Head contains something tail doesn't */
      newl = newUpdateList();
      newl->updated = headl->updated;
      newl->alias = headl->alias;
      /* warning!  now multiple pointers to updates */
      newl->updates = headl->updates;
      *prev = newl;
      prev = &(newl->next);
      headl = headl->next;
    } else if ((int) headl->updated > (int) taill->updated) {
      /* tail contains something head doesn't */
      /* If there is an update, then mark updated by something */
      newl = newUpdateList();
      newl->updated = taill->updated;
      newl->alias = NULL;
      if (CheckForUpdate(newl->updated,tailmat)) 
        newl->updates = UpdateBySomething();     
      else 
        newl->updates = NULL;
      taill = taill->next; 
    } else { /* == */
      newl = newUpdateList();
      newl->updated = taill->updated;
      newl->alias = NULL;
      if (CheckForUpdate(newl->updated,tailmat) || 
          CheckForUpdate(newl->updated,headmat))
        newl->updates = UpdateBySomething();     
      else 
        newl->updates = NULL;
      taill = taill->next; 
      headl = headl->next;
    } /* if ... else */
  } /* while */
  *prev = copyUpdateList(headl);      
  return retval;
}

/* check flow graph for unexpected stuff */
static void checkflow(fn)
     FlowNode fn;
{
  FlowNode fntmp;
  Node p;
  
  for (fntmp=fn; ; ) {
    if (fntmp->nsucc > 1 && fntmp->type != tail) {
      fntmp = getsmallestsucc(fntmp);
    }
    else {
      for (p=fntmp->node; p; p=p->link) {
        if (generic(p->op)==ASGN) {
          warning("PASS1:Found assignment in conditional of while?\n");
          return;
	}
      }
      if (fntmp->type == tail) return;
      if (!fntmp->succ->fn) {
	warning("PASS1:Never encountered tail--unexpected flow\n");
	return;
      }
      fntmp = fntmp->succ->fn;
    } /* else */
    if (!fntmp || fntmp->type==head) {
      warning("Unexpectedly complex flow graph\n");
      return;
    }
  } /* for */
}

static void Dealias(updm,a)
UpdateMatrix updm;
Symbol a;
{
  UpdateList updl=updm->lists;

  while(updl) {
    if (updl->alias == a) updl->alias = NULL;
    updl=updl->next;
    }
}

UpdateList FindOrInsert(updm,a)
UpdateMatrix updm;
Symbol a;
{
  UpdateList updl=updm->lists;
  UpdateList *prev = &(updm->lists);
  UpdateList newl;

  while(updl && ((int) updl->updated < (int) a)) {
    prev = &(updl->next);
    updl=updl->next;
    }

  if (!updl || (updl->updated !=  a)) {
    newl = newUpdateList();
    newl->updated = a;
    newl->next = updl;
    *prev = newl;
    return newl;
    }
  else return updl;
}

UpdateList Find(updm,a)
UpdateMatrix updm;
Symbol a;
{
  UpdateList updl=updm->lists;
  UpdateList *prev = &(updm->lists);
  UpdateList newl;

  while(updl && ((int) updl->updated < (int) a)) {
    prev = &(updl->next);
    updl=updl->next;
    }

  if (!updl || (updl->updated !=  a)) {
    return NULL;
    }
  else return updl;
}

Symbol ScanAliases(updm,sym)
UpdateMatrix updm;
Symbol sym;
{
  UpdateList updl;

  updl = Find(updm,sym);
  if (!updl) return sym;
  if (updl->alias) return ScanAliases(updm,updl->alias);
  else return updl->updated;
}

static void doField(updm,a,by,value,direction)
UpdateMatrix updm;
Symbol a,by;
int value;
{
  UpdateList tmp;
  Symbol actual;
  UpdateList actualul;
  Update newu;
  Update *prev;

  tmp = FindOrInsert(updm,a);
  tmp->alias = NULL;
  /* Get appropriate list for actual */
  actual = ScanAliases(updm,by);
  actualul = Find(updm,actual);
  if ((actualul==NULL) || (actualul->updates==NULL)) { /* simple case */
    newu = newUpdate();
    newu->by = actual;
    newu->affinity = value;
    newu->direction = direction;
    tmp->updates = newu;
    }
  else { /* combine with previous updates */
    Update actualu;
    
    prev = &(tmp->updates);
    actualu = actualul->updates;
    while (actualu) {
      float a,b;

      newu = newUpdate();
      newu->by = actualu->by;
      *prev = newu;
      prev = &(newu->next);
      a = actualu->affinity;
      b = value * a / (10000.0);
      newu->affinity = b;
      newu->direction = direction;
      actualu = actualu->next;
    } /* while */
  } /* else */
}

static void PointerEqual(updm,a,b)
UpdateMatrix updm;
Symbol a,b;
{
  UpdateList tmp;
  Symbol actual;
  UpdateList actualul;

  /* Hack for TOUCH */
  if (b->computed) return;

  tmp = FindOrInsert(updm,a);
  tmp->alias = NULL;
  /* Get appropriate list for actual */
  actual = ScanAliases(updm,b);
  actualul = Find(updm,actual);
  if ((actualul==NULL) || (actualul->updates==NULL)) { /* simple case */
    tmp->alias = actual;
    }
  else {
    tmp->updates = actualul->updates;
    }
}

static void CallAssign(updm,a)
UpdateMatrix updm;
Symbol a;
{
  UpdateList tmp;
  tmp = FindOrInsert(updm,a);
  tmp->alias = NULL;
  tmp->updates = UpdateBySomething();
}

static void UnidentifiedAssign(updm,a)
UpdateMatrix updm;
Symbol a;
{
  UpdateList tmp;
  tmp = FindOrInsert(updm,a);
  tmp->alias = NULL;
}

/* Given a flow node, update the update matrix with its assignments */
static void update(updm,fn)
UpdateMatrix updm;
FlowNode fn;
{
  Node node;
  int genop;
  Symbol argsym;

  for (node=fn->node; node != NULL; node = node->link) {
    switch(generic(node->op)) {
      case ARG:
        lastarg=node;
        break;
      case ASGN:
        /* examine only pointer assignments */
        if (node->op != ASGNP) break;

        genop = generic(node->kids[0]->op);
        /* Only examine ASGN(ADDRx,...) */
        if ((genop != ADDRL) && (genop != ADDRG) && (genop != ADDRF)) break;
  
        if (node->affinity.value && node->affinity.sym) {
          /* Handle A = B->field */
          doField(updm,node->kids[0]->syms[0],node->affinity.sym,
                node->affinity.value,node->affinity.direction);
          } /* then */
        else {
          /* Check for A = B */
          if (generic(node->kids[1]->op) == INDIR)  {
            genop = generic(node->kids[1]->kids[0]->op);
            if ((genop != ADDRL) && (genop != ADDRG) && (genop != ADDRF)) break;
            PointerEqual(updm,node->kids[0]->syms[0],
                         node->kids[1]->kids[0]->syms[0]);
           } /* INDIR */
          else /* check for LOCAL */
            if (isloccall(node->kids[1])) {
              if ((argsym=getarg(lastarg->kids[0])) &&
                  (argsym!=node->kids[0]->syms[0]))
                PointerEqual(updm,node->kids[0]->syms[0],argsym);
              }
          else {
            if (iscall(node->kids[1])) {
              CallAssign(updm,node->kids[0]->syms[0]);
              }
            else /* unidentifyable, remove update */ {
              UnidentifiedAssign(updm,node->kids[0]->syms[0]);
              }
            }
        } /* else */
        break;
      default:
        break;
      } /* switch */
    } /* for */
}

static Update mergeUpdates(upd1,upd2)
Update upd1,upd2;
{
  Update newu;
  Update retval = NULL;
  Update *prev = &retval;
 
  while (upd1 && upd2) {
    if ((int) upd1->by < (int) upd2->by)
      {
        upd1 = upd1->next;
      }
    else if ((int) upd1->by > (int) upd2->by)
      {
        upd2 = upd2->next;
      }
    else { /* == */
      int avg;
 
      avg = (upd1->affinity + upd2->affinity) / 2;
      newu = newUpdate();
      *prev = newu;
      prev = &(newu->next);
      newu->by = upd1->by;
      newu->affinity = avg;
      newu->direction = upd1->direction;
      upd1 = upd1->next;
      upd2 = upd2->next;
      }
    } /* while */
  return retval;
}

/* Is there an update by sym in updl? */
static int InList(sym,updl)
     Symbol sym;
     UpdateList updl;
{
  Update upd;

  for (upd=updl->updates; upd; upd=upd->next) 
    {
      if (upd->by==sym) return 1;
    }
  return 0;
}

/* merge 2 update matrices into 1 */
/* We lose precision via the merge */
UpdateMatrix merge2(updm1,updm2)
     UpdateMatrix updm1,updm2;
{
  UpdateMatrix retval;
  UpdateList *prev,newl;
  UpdateList updl1=updm1->lists,updl2=updm2->lists;

  retval = newUpdateMatrix();
  prev = &(retval->lists);

  while(updl1 || updl2) {
    if (!updl2 || (updl1 && ((int) updl1->updated < (int) updl2->updated))) 
      {
        newl = newUpdateList();
        newl->updated = updl1->updated;
        newl->alias = updl1->alias;
        newl->updates = updl1->updates;
        *prev = newl;
        newl->conditional = 1;
        prev = &(newl->next);
        updl1=updl1->next;
      }
    /* for this else, know updl2 is not null */
    else if (!updl1 || ((int) updl1->updated > (int) updl2->updated)) 
      {
        newl = newUpdateList();
        newl->updated = updl2->updated;
        newl->conditional = 1;
        newl->alias = updl2->alias;
        newl->updates = updl2->updates;
        *prev = newl;
        prev = &(newl->next);
        updl2=updl2->next;
      }
    else { /* == */
      newl = newUpdateList();
      newl->updated = updl1->updated;
      *prev = newl;
      prev = &(newl->next);
      if (updl1->alias && updl2->alias) 
	{
	  if (updl1->alias == updl2->alias) 
	    newl->alias = updl1->alias;
	}
      else if (updl1->alias) 
	{
	  if (InList(updl1->alias,updl2)) newl->alias = updl1->alias;
	}
      else if (updl2->alias)
	{
	  if (InList(updl2->alias,updl1)) newl->alias = updl1->alias;
	}
      else 
        newl->updates = mergeUpdates(updl1->updates,updl2->updates);
      updl1=updl1->next;
      updl2=updl2->next;
      } /* else */
    } /* while */
  return retval;
}

static Update recursionmergeUpdates(upd1,upd2)
Update upd1,upd2;
{
  Update newu;
  Update retval = NULL;
  Update *prev = &retval;
 
  while (upd1 && upd2) {
    if ((int) upd1->by < (int) upd2->by) 
      {
        upd1 = upd1->next;
      }
    else if ((int) upd1->by > (int) upd2->by) 
      {
        upd2 = upd2->next;
      }
    else { /* == */
      int avg;
 
      avg = 100-(((100-upd1->affinity) * (100-upd2->affinity)) / 100);
      newu = newUpdate();
      *prev = newu;
      prev = &(newu->next);
      newu->by = upd1->by;
      newu->affinity = avg;
      newu->direction = upd1->direction;
      upd1 = upd1->next;
      upd2 = upd2->next;
      }
    } /* while */
  return retval;
}

/* merge 2 update matrices into 1 */
UpdateMatrix recursionmerge(updm1,updm2)
UpdateMatrix updm1,updm2;
{
  UpdateMatrix retval;
  UpdateList *prev,newl;
  UpdateList updl1=updm1->lists,updl2=updm2->lists;

  retval = newUpdateMatrix();
  prev = &(retval->lists);

  while(updl1 || updl2) {
    if (!updl2 || (updl1 && ((int) updl1->updated < (int) updl2->updated))) 
      {
        newl = newUpdateList();
        newl->updated = updl1->updated;
        newl->alias = updl1->alias;
        newl->updates = updl1->updates;
        *prev = newl;
        newl->conditional = 1;
        prev = &(newl->next);
        updl1=updl1->next;
      }
    /* for this else, know updl2 is not null */
    else if (!updl1 || ((int) updl1->updated > (int) updl2->updated)) 
      {
        newl = newUpdateList();
        newl->updated = updl2->updated;
        newl->alias = updl2->alias;
        newl->updates = updl2->updates;
        *prev = newl;
        newl->conditional = 1;
        prev = &(newl->next);
        updl2=updl2->next;
      }
    else { /* == */
      newl = newUpdateList();
      newl->updated = updl1->updated;
      *prev = newl;
      prev = &(newl->next);
      if (updl1->alias && (updl1->alias == updl2->alias)) 
        newl->alias = updl1->alias;
      else 
        newl->updates = recursionmergeUpdates(updl1->updates,updl2->updates);
      updl1=updl1->next;
      updl2=updl2->next;
      } /* else */
    } /* while */
  return retval;
}

static UpdateMatrix multitailmerge(fn,updatevec,tailfn)
FlowNode fn,tailfn;
Vector updatevec;
{
  UpdateMatrix tm,retval=NULL;
  FlowNodeList fnl;
  FlowNode headfn;

  headfn = getsmallestsucc(tailfn);
  fnl = fn->pred;
  while (fnl && ((fnl->fn->index > headfn->index) || (fnl->fn->type == tail)))
         fnl = fnl->next;
  /* We now have a definite predecessor, not in the loop */
 
  if (fnl) {
    assert((fnl->fn->type != head) && (fnl->fn->type != tail));
    retval = copyUpdateMatrix(getelement(updatevec,fnl->fn->index));
    for (fnl = fnl->next; fnl; fnl=fnl->next) {
      if (fnl->fn->index < headfn->index) {
        assert((fnl->fn->type != head) && (fnl->fn->type != tail));
        retval = merge2(retval,getelement(updatevec,fnl->fn->index));
      }
    } /* for */
    tm = tailmerge(fn,updatevec,tailfn);
    retval = merge2(retval,tm);
  }
  else retval = tailmerge(fn,updatevec,tailfn);
  return retval;
}

/* perform multistep merge -- really want to add free to this somewhere */
static UpdateMatrix merge(updatevec,fn)
Vector updatevec;
FlowNode fn;
{
  FlowNodeList fnl;
  UpdateMatrix retval;
  UpdateMatrix tmpupdm;

  fnl = fn->pred;
  while (fnl->fn->index > fn->index) fnl = fnl->next;
  /* We now have a definite predecessor */
 
  assert((fnl->fn->type != head) && (fnl->fn->type != tail));
  retval = copyUpdateMatrix(getelement(updatevec,fnl->fn->index));
  for (fnl = fnl->next; fnl; fnl=fnl->next) {
    if (fnl->fn->index < fn->index) {
      assert((fnl->fn->type != head) && (fnl->fn->type != tail));
      tmpupdm = getelement(updatevec,fnl->fn->index);
      if (tmpupdm)
        retval = merge2(retval,tmpupdm);
    }
  } /* for */
  return retval;
}

/* Create a vector of update matrices for the flow nodes */
Vector pass1(cfg)
CallFlowGraph cfg;
{
  int i;
  FlowNode prevflow,flow;
  UpdateMatrix prevupdates,updates;
  Vector updatevec;

  updatevec = makevector(cfg->flowvecsz);
  prevflow = getelement(cfg->flowvec,0);
  prevupdates = newUpdateMatrix();
  update(prevupdates,prevflow);
  setelement(updatevec,0,prevupdates);
  for (i=1; i<cfg->flowvecsz; i++)  {
    flow = getelement(cfg->flowvec,i);
    if (flow->npred > 0) {
      switch(prevflow->type) {
        case head:
          if (flow->npred == 1)
            assert(flow->pred->fn == prevflow);
          updates = newUpdateMatrix();
          break;
        case tail:
          if (flow->npred == 1) {
            assert((flow->pred->fn == prevflow) ||
                   (flow->pred->fn->index >
                    ((getsmallestsucc(prevflow))->index)));
            updates=tailmerge(flow,updatevec,prevflow);
            }
          else /* npred > 1 */
            updates=multitailmerge(flow,updatevec,prevflow);
          break;
        case iscontinue:
        case call:
        case other:
          if (flow->npred==1) {
            if (flow->pred->fn->index < i)
              updates=copyUpdateMatrix(getelement(updatevec,
                                       flow->pred->fn->index));
            else {
              assert(flow->type==head);
              updates=copyUpdateMatrix(getelement(updatevec,prevflow->index));
              checkflow(prevflow);
              }
            }
          else
            if (flow->npred > 1) updates=merge(updatevec,flow);
          break;
        default:
          assert(0);
          break;
        } /* switch */
        update(updates,flow);
      } /* if */
      else updates = NULL;
      prevflow = flow;
      prevupdates = updates;
      setelement(updatevec,i,updates);
    } /* for */
  return updatevec;
} /* pass1 */

