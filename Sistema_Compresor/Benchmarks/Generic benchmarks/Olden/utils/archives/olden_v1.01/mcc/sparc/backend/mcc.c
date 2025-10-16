#include "c.h"
#include "table.h"
#include "chartable.h"
#include "callgraph.h"
#include "vector.h"
#include "pass1.h"
#include "pass2.h"
#include "runtime.h"
#define NULL 0
#define NODEBUG

extern Symbol Something;
static charTable_T functable;

struct funcstruct {
  Symbol f;
  Symbol *callee, *caller;
  Code code;
  LrsList lrslist;
  CallFlowGraph cfg;
  Vector updatevec;
  int pass2c;
  int n;
};

static Symbol prefetch,localsym;

/* Check update of sym in csmat, parmat */
int Check2ForUpdate(sym,csmat,parmat)
Symbol sym;
UpdateMatrix csmat,parmat;
{
  UpdateList updl;
  Update upd;
 
  if (!parmat) return CheckForUpdate(sym,csmat);

  for (updl = csmat->lists; updl; updl=updl->next) {
    /* find sym in lists */
    if (updl->updated==sym) break;
  }
  if (!updl) return 0;
  if (updl->alias) return Check2ForUpdate(updl->alias,csmat,parmat);
  /* if aliased, check alias */
  for (upd = updl->updates; upd; upd=upd->next) {
    if (upd->by == sym) return 1;
    /* if updated by self, return 1 */
    if (upd->by == Something) return 1;
    /* if updated by "something" return 1 */
    if (upd->direction) return 1;
    /* if dereferenced a->b[i], assume updated */
    if (Check2ForUpdate(upd->by,csmat,parmat) ||
        CheckForUpdate(upd->by,parmat)) return 1;
    /* if updated by another, check other */
    }
  /* not updated */
  return 0;
}

/* mccprogbeg called by front end to deal with arguments and do other
   setup */
mccprogbeg(argc, argv)
int argc;
char *argv[];
{
  progbeg(argc,argv);
  functable = charTable_new();

  prefetch = (Symbol) alloc(sizeof(*prefetch));
  prefetch->x.name = "_PREFETCH";
  prefetch->name = prefetch->x.name+1;

  localsym = (Symbol) alloc(sizeof(*localsym));
  localsym->x.name = "_MLOCAL";
  localsym->name = localsym->x.name+1;
}

/* mccfunction places each function in a table for later use */
/* f = function symbol
   caller = vector of caller arguments
   callee = vector of callee arguments
   n = ncalls -- passed to initfunc by function */
mccfunction(f, caller, callee, n)
Symbol f, callee[], caller[];
int n;
{
  struct funcstruct *func;
  CallFlowGraph cfg;
  Vector updatevec;

  func = (struct funcstruct *) malloc(sizeof(struct funcstruct));
  assert(func);
  func->f = f;
  func->callee = callee;
  func->caller = caller;
  func->n = n;
  func->code = codehead.next;
  cfg=callflowgraph(func->code,f);
  /*debug0(cfg);*/
  updatevec = pass1(cfg);
#ifndef NODEBUG
  debug1(cfg,updatevec);
#endif
  func->updatevec = updatevec;
  func->cfg = cfg;
  func->lrslist = pass2a(cfg,updatevec,callee);
  func->pass2c = 0;
  charTable_put(functable,f->name,func);
}

/* Interface to function for each function */
static mccdofunc(dummy, name, mystruct)
void *dummy, *mystruct;
void *name;
{
  struct funcstruct *fstruct = (struct funcstruct *) mystruct;
  codehead.next = fstruct->code;
  function(fstruct->f,fstruct->caller,fstruct->callee,fstruct->n);
}

/* Add things in lrslist to kids of lr */
/* For now, lrslist should only have one entry */
static makedescend(lr,lrslist,cs)
LoopRec lr;
LrsList lrslist;
CallSite cs;
{
  assert(lrslist->next == NULL);
  if (isfuturecall(cs)) lrslist->lr->parallelizable = 1;
  for(; lrslist; lrslist = lrslist->next) {
    lr->kids = AddToList(lr->kids,lrslist->lr,cs);
  }
}

/* Interproceduralize LoopRec analysis */
static pass2b(fstruct,functbl)
struct funcstruct *fstruct;
charTable_T functbl;
{
  CallSite cs;
  int index;
  LoopRec lr;
  struct funcstruct *called;
  LrsList lrs;
  Symbol f;

  for (cs=fstruct->cfg->sites; cs; cs=cs->next) {
    index = cs->flow->index;
    lr = findLR(index,fstruct->lrslist->lr->kids);
    if (!lr) {
      assert((fstruct->lrslist->lr->begind <= index) &&
             (fstruct->lrslist->lr->endind >= index));
      lr = fstruct->lrslist->lr;
      }
    f = mccfindfunc(cs);
    if ((f != NULL) && strcmp(f->name,fstruct->f->name)) { 
      /* don't redo recursions */
      called = charTable_get(functbl,f->name);
      if (called) makedescend(lr,called->lrslist,cs);
    } /* if */
  } /* for */
}

/* Interface to call pass2b for each function */
static mccpass2b(dummy, name, mystruct)
void *dummy, *mystruct;
void *name;
{
  struct funcstruct *fstruct = (struct funcstruct *) mystruct;
  charTable_T functbl = (charTable_T) dummy;
  pass2b(fstruct,functbl);
}

static mccdebug2(dummy, name, mystruct)
void *dummy;
struct funcstruct *mystruct; 
char *name;
{
  int j=0;
  debug2(mystruct->lrslist,&j);
}

static void flowupdl_insert_something(updm,updated,by,affinity,direction)
UpdateMatrix updm;
Symbol updated;
Symbol by;
int affinity; 
{
  UpdateList tmp;
  Update upd;

  tmp = FindOrInsert(updm,updated);
  upd = newUpdate();
  upd->by = by;
  upd->affinity = affinity;
  upd->direction = direction;
  upd->next = UpdateBySomething();
  tmp->updates = upd;
}
static void flowupdl_insert(updm,updated,by,affinity)
UpdateMatrix updm;
Symbol updated;
Symbol by;
int affinity; 
{
  UpdateList tmp;
  Update upd;

  tmp = FindOrInsert(updm,updated);
  upd = newUpdate();
  upd->by = by;
  upd->affinity = affinity;
  tmp->updates = upd;
}

int HasDirection(sym,updm)
Symbol sym;
UpdateMatrix updm;
{
  UpdateList updl;
  Update upd;
 
  for (updl=updm->lists; updl; updl=updl->next) {
    if (updl->updated==sym) {
      for (upd=updl->updates; upd; upd=upd->next) 
        if (upd->direction) return 1;
      return 0;
    }
  }
}

/* Create parent update list across call */
UpdateMatrix flowupdl(parupdm,cs,updvec,callee)
UpdateMatrix parupdm;
CallSite cs;
Vector updvec;
Symbol *callee;
{
  UpdateMatrix csupdm,retval;
  Node nodetmp;
  int argcount=0, genop;
  Symbol eearg,erarg,actual; /* callee, caller argument */

  retval = newUpdateMatrix();
  csupdm = getelement(updvec,cs->flow->index);
  for (nodetmp = cs->flow->node; generic(nodetmp->op) != CALL; 
       nodetmp = nodetmp->link) {
    if (generic(nodetmp->op)==ARG) { 
      eearg=callee[argcount++];
      if (eearg == NULL) break;
      if (generic(nodetmp->kids[0]->op)==INDIR) {
        genop = generic(nodetmp->kids[0]->kids[0]->op);
        if ((genop==ADDRL) || (genop == ADDRG) || (genop == ADDRF)) {
          if (csupdm) 
            actual = ScanAliases(csupdm,nodetmp->kids[0]->kids[0]->syms[0]);
          else actual = nodetmp->kids[0]->kids[0]->syms[0];
          if (Check2ForUpdate(actual,csupdm,parupdm) ||
              CheckForUpdate(actual,parupdm)) {
            int dir;
            
            dir = HasDirection(actual,csupdm);
            flowupdl_insert_something(retval,eearg,actual,0,dir);
            }
	  else 
	    {
	      flowupdl_insert(retval,eearg,actual,0);
	    }
          } /* if genop */
        } /* if INDIR */
      } /* if ARG */
    } /* for */
  return retval;
}

/* Figure out what argument was updated by sym */
Symbol getparstrong(parupdm,sym)
UpdateMatrix parupdm;
Symbol sym;
{
  UpdateList updl;
  int dummy,dummy2;

  for (updl=parupdm->lists;updl;updl=updl->next) 
    {
      if (AffinityBy(updl,sym,&dummy,&dummy2)) return updl->updated;
    }
  return NULL;
}

/* What shall we migrate in a par for loop ? */
Symbol FutureLoop(parupdm,sym)
UpdateMatrix parupdm;
Symbol sym;
{
  UpdateList updl;
  Update upd;

  if (sym) return getparstrong(parupdm,sym);
  for (updl=parupdm->lists; updl; updl=updl->next) {
    for (upd = updl->updates; upd; upd=upd->next) {
      if (upd->direction) return updl->updated;
    }
  }
  return NULL;
}

/* Make interprocedural decisions on nested loops/recursions */
static pass2c(lrs,parupdm,ftbl,insidepar,insideloop,updvec,parlrs)
LrsList lrs,parlrs;
UpdateMatrix parupdm;
charTable_T ftbl;
int insidepar;
Vector updvec;
{
  LrsList lrstmp;
  struct funcstruct *kidstruct;
  UpdateMatrix updmtmp;

  /* don't loop forever on infinite recursions */
  if (lrs->lr->type == placeholder) 
    {
    if (lrs->lr->is_gray) {
      warning("A mutual recursion has been detected\n");
      return;
      }
    else {
      lrs->lr->is_gray = 1;
      }
    }

  /* Since we adopt stuff from parent, don't want this to affect things
     badly if changes later made */
  if (lrs->lr->donebefore) {lrs->lr->strongest=lrs->lr->actualstrongest;}
  else {lrs->lr->donebefore=1; lrs->lr->actualstrongest=lrs->lr->strongest;}
#ifndef NODEBUG
  if ((lrs->lr->type == placeholder) || (lrs->lr->type == rec)) {
    fprint(2,"Function %s:\n",lrs->lr->f->name);
    printupdm(parupdm);
    fprint(2,"inside par = %d, inside loop = %d\n",insidepar,insideloop);
  }
#endif
  if (insidepar) 
    if ((lrs->lr->type == loop) || (lrs->lr->type == rec)) {
      if ((lrs->lr->type == loop) && parlrs && !lrs->lr->strongest
	  && parlrs->lr->strongest) {
	/* If a loop without update, use update of parent */
	lrs->lr->compmig = parlrs->lr->compmig;
	lrs->lr->strongest = parlrs->lr->strongest;
	lrs->lr->affinity = parlrs->lr->affinity;
      }
      else
	/* If loop or recursion with update, then migrate if
	   parent updates the strongest (inside parallel construct).
	   This tests to avoid bottleneck. */
	lrs->lr->compmig = CheckForUpdate(lrs->lr->strongest,parupdm);
    } /* if loop or rec */
    else { /* must be a placeholder */
         if (parlrs) {
           if ((parlrs->lr->type == loop) && (parlrs->lr->parallelizable)
	       && (insidepar==1)) {
             /* If inside parallelizable loop (i.e. loop with FUTURE call),
                migrate if first parallel construct */
	     /* Actually want to be able to check for bottleneck here too */
             lrs->lr->compmig = 1;
             lrs->lr->strongest = FutureLoop(parupdm,parlrs->lr->strongest);
             lrs->lr->affinity = MinMigAffinity;
             }
             else if ((parlrs->lr->compmig)&&(parlrs->lr->type==placeholder)) 
               {
		 /* If parent placeholder with migration, migrate me too! */
		 /* We do this so that parfor's will trace down their
		    migration to an actual use */
		 lrs->lr->compmig = 1;
		 lrs->lr->strongest=
		   getparstrong(parupdm,parlrs->lr->strongest);
		 lrs->lr->affinity = MinMigAffinity;
               }
           }
         else lrs->lr->compmig = 0;
      }
  else /* not in parallel construct */
       if (lrs->lr->type == placeholder) 
	 /* don't migrate placeholder not in parallel construct */
	 lrs->lr->compmig = 0;
       else 
         if ((lrs->lr->type == loop) && parlrs && !lrs->lr->strongest
	     && parlrs->lr->strongest) {
	   /* If a loop without update, use update of parent */
           lrs->lr->compmig = parlrs->lr->compmig;
           lrs->lr->strongest = parlrs->lr->strongest;
           lrs->lr->affinity = parlrs->lr->affinity;
	 }
         else
	   /* loop with update, or recursion, then migrate */
	   lrs->lr->compmig = 1;

  /* If loop parallelizable, set insidepar */
  if (lrs->lr->parallelizable) insidepar++;

  /* If not sufficient affinity for this loop/rec-- do not migrate, 
     unless by doing so we unlock parallelism on recursion */
  if (lrs->lr->compmig && lrs->lr->affinity < MinMigAffinity &&
      ((lrs->lr->type == loop) || !lrs->lr->parallelizable))
    lrs->lr->compmig = 0;

  switch(lrs->lr->type) {
    case loop:
    case rec:
      insideloop = 1;
      parupdm=lrs->lr->updm;
      break;
    case placeholder:
      break;
  }
  for (lrstmp = lrs->lr->kids; lrstmp; lrstmp = lrstmp->next) {
    switch (lrstmp->lr->type) {
      case loop:
        pass2c(lrstmp,parupdm,ftbl,insidepar,insideloop,updvec,lrs);
        break;
      case placeholder:
      case rec:
        kidstruct = charTable_get(ftbl,lrstmp->lr->f->name);
        assert(kidstruct);
        kidstruct->pass2c = 1;
        updmtmp = flowupdl(parupdm,lrstmp->cs,updvec,
                           kidstruct->callee);
        pass2c(lrstmp,updmtmp,ftbl,insidepar,insideloop,
               kidstruct->updatevec,lrs);
        break;
      } /* switch */
    } /* for */

  /* don't loop forever on infinite recursions */
  if (lrs->lr->type == placeholder) 
    {
      lrs->lr->is_gray = 0;
    }
}
  
/* Interface to call pass2c for each function */
static mccpass2c(ftbl, name, mystruct)
charTable_T ftbl;
struct funcstruct *mystruct; 
char *name;
{
  if (mystruct->pass2c) return; /* already visited from above */
  pass2c(mystruct->lrslist,NULL,ftbl,0,0,mystruct->updatevec,NULL);
}

/* Check to see if strongest symbol is descendant of TESTP */
static int findsym(p,strongest)
Node p;
Symbol strongest;
{
  if (!p) return NULL;
  switch(generic(p->op)) {
    case ADDRL: case ADDRF: case ADDRG: 
      return (p->syms[0]==strongest); 
      break;
    default: 
      return (findsym(p->kids[0],strongest) || 
              findsym(p->kids[1],strongest)); 
      break;
   } /* switch */
}

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


static changeone(compmig,strongest,fn)
int compmig; 
Symbol strongest;
FlowNode fn;
{
  Node lastarg=NULL;
  Node p;
  Symbol s;

  for (p=fn->node; p; ) {
    switch (generic(p->op)) {
      case ARG: lastarg = p; p=p->link; break;
      case CALL: 
        if (p->kids[0]->op==ADDRGP) {
          if (!strcmp(p->kids[0]->syms[0]->name,"LOCAL"))
            if (!compmig || (strongest != getarg(lastarg->kids[0])))
              p->kids[0]->syms[0] = prefetch;
          }
        p = NULL;
        break;
      case TEST: 
          if (compmig && findsym(p,strongest))
            p->op = MTESTP;
        p=p->link;
        break;
      default: p=p->link; break;
     } /* switch */
   } /* for */
}

#define UN_PHASED 0
#define MERGE_PHASED 1
#define MIGR_PHASED 2
static int phase = UN_PHASED;

/* Haven't yet been changed by gen4.c to UNPHASE &c. */
static phase_difference(flowvec,sz)
Vector flowvec;
int sz;
{
  int i;  
  Node lastarg=NULL;
  Node p;
  Symbol s;
  FlowNode fn;

  assert(flowvec);

  for (i=0; i<sz; i++) {
    fn = getelement(flowvec,i);
    for (p=fn->node; p; ) {
      switch (generic(p->op)) {
        case ARG: lastarg = p; p=p->link; break;
        case CALL: 
          if (p->kids[0]->op==ADDRGP) {
            /* Change phase as necessary */
            if (!strcmp(p->kids[0]->syms[0]->name,"MERGEPH"))
              phase = MERGE_PHASED;
            else if (!strcmp(p->kids[0]->syms[0]->name,"MIGRPH"))
              phase = MIGR_PHASED;
            else if (!strcmp(p->kids[0]->syms[0]->name,"UNPHASE"))
              phase = UN_PHASED;
            /* if in a phase, change LOCAL, or PREFETCH */
            else if (!strcmp(p->kids[0]->syms[0]->name,"LOCAL"))
              {
              if (phase == MERGE_PHASED)
                p->kids[0]->syms[0] = prefetch;
              else if (phase == MIGR_PHASED)
                p->kids[0]->syms[0] = localsym;
               }
            else if (!strcmp(p->kids[0]->syms[0]->name,"PREFETCH"))
              if (phase == MIGR_PHASED)
                p->kids[0]->syms[0] = localsym;
            }
          p = NULL;
          break;
        case TEST: 
          if (phase == MIGR_PHASED)  
            p->op = MTESTP;
          p=p->link;
          break;
        case MTEST: 
          if (phase == MERGE_PHASED)  
            p->op = TESTP;
          p=p->link;
          break;
        default: p=p->link; break;
       } /* switch */
     } /* for */
  } /* for getelement ... */
}

/* changer changes TESTPs to MTESTPs, LOCAL to PREFETCH as required */
static changer(lrslist,flowvec,done,useprefix)
LrsList lrslist;
Vector flowvec;
Vector done;
int useprefix;
{
  LrsList tmp;
  int i,start;
  assert(lrslist);
  assert(flowvec);
  
  for (tmp=lrslist->lr->kids; tmp; tmp=tmp->next) {
    if (tmp->lr->type == loop) {
      i = (lrslist->lr->compmig) ? 0 : 1;
      changer(tmp,flowvec,done,i);
    } /* if */
  } /* for */ 
  start = (useprefix) ? lrslist->lr->prefixind : lrslist->lr->begind;
  for (i=start; i<lrslist->lr->endind; i++) {
    if (!getelement(done,i)) {
      changeone(lrslist->lr->compmig,lrslist->lr->strongest,
                getelement(flowvec,i));
      setelement(done,i,1);
    } /* if */
  } /* for */
}

/* mccchanger is interface to changer */
static mccchanger(dummy, name, mystruct)
char *dummy;
struct funcstruct *mystruct; 
char *name;
{
  Vector done;
  LoopRec lr;
  int sz,j;
  
  lr = mystruct->lrslist->lr;
  sz = lr->endind - lr->begind;
  done = makevector(sz);
  for (j = 0; j<sz; j++) {
    setelement(done,j,0);
  }
  changer(mystruct->lrslist,mystruct->cfg->flowvec,done,1);
  phase_difference(mystruct->cfg->flowvec,sz);
  destroyvector(done);
}

/* added by Ender Bilir Oct 1994 */

/* interface to generate_tests */
eebdumper(dummy, name, mystruct)
char *dummy;
struct funcstruct *mystruct;
char *name;
{
  LoopRec lr;
  int sz;

  lr = mystruct->lrslist->lr;
  sz = lr->endind - lr->begind;

  generate_tests(mystruct->cfg->flowvec,sz);
}

/* Called after all procedures have been put in table */
mccprogend()
{
  Table_forEach(functable,mccpass2b,functable);
  Table_forEach(functable,mccpass2c,functable);
  Table_forEach(functable,mccchanger,NULL);
#ifndef NODEBUG
  Table_forEach(functable,mccdebug2,NULL);
#endif
  Table_forEach(functable,eebdumper,NULL);
  Table_forEach(functable,mccdofunc,NULL);
  progend();
  Table_destroy(functable);
}
  
