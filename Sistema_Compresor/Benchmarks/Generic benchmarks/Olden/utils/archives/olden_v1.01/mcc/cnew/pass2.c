#include "pass2.h"
#include "c.h"
#include "vector.h"
#define NULL 0

static int UpdatedBySelf(updl,affinity)
UpdateList updl;
int *affinity;
{
  Update upd=updl->updates;

  while (upd) {
    if (upd->by == updl->updated) {
      *affinity = upd->affinity;
      return 1;
      } else {
      upd = upd->next;
      }
    }
  return 0;
}
      
static Symbol getstrongest(updm,affinity)
UpdateMatrix updm;
int *affinity;
{
  Symbol retval=NULL;
  UpdateList updl,rettmp;
  int checkval, conditional;
 
  updl = updm->lists;
  /* get an initial value */
  for (; updl && !retval; updl = updl->next) {
    if (UpdatedBySelf(updl,affinity)) {
      retval = updl->updated;
      conditional = updl->conditional;
      }
    }
  /* return if there is none, or only 1 */
  if (updl==NULL) return retval;
  /* check for others */
  for (; updl; updl = updl->next) {
    if (UpdatedBySelf(updl,&checkval))
      {
        if (updl->conditional) {
          if ((*affinity < MinMigAffinity) || conditional)
            if (checkval > *affinity) {
              *affinity = checkval;
              retval = updl->updated;
              conditional=1;
             }
        }
        else {
          if ((conditional && (checkval >= MinMigAffinity)) || 
              (checkval > *affinity)) {
            *affinity = checkval;
            retval = updl->updated;
            conditional=0;
           }
        }
      }
  }
  return retval;
}

static LoopRec NewLoopRec(parallelizable,beg,end,type,f,prefix)
int parallelizable,beg,end;
LrsType type;
Symbol f;
{
  LoopRec retval;

  retval = (LoopRec) alloc(sizeof(*retval));
  assert(retval);
  retval->parallelizable = parallelizable;
  retval->begind = beg;
  retval->endind = end;
  retval->prefixind = prefix;
  retval->f = f;
  retval->updm = NULL;
  retval->strongest = NULL;
  retval->donebefore = 0;
  retval->actualstrongest = NULL;
  retval->kids = NULL;
  retval->type = type;
  retval->compmig = 0;
  retval->is_gray = 0;
  return retval;
}

LrsList AddToList(lrslist, lr, cs)
LrsList lrslist;
LoopRec lr;
CallSite cs;
{
  LrsList retval;

  retval = (LrsList) alloc(sizeof(*retval));
  assert(retval);
  retval->next = lrslist;
  retval->lr = lr;
  retval->cs = cs;
  return retval;
}

int isfuturecall(cs)
CallSite cs;
{
  assert(cs);
  if (cs->node->kids[0]->op != ADDRGP) return 0;
  if ((!strcmp(cs->node->kids[0]->syms[0]->name,"FUTURE")) ||
      (!strcmp(cs->node->kids[0]->syms[0]->name,"MULTIRPC")) ||
      (!strcmp(cs->node->kids[0]->syms[0]->name,"SFUTURE")) ||
      (!strcmp(cs->node->kids[0]->syms[0]->name,"SRPC")) ||
      (!strcmp(cs->node->kids[0]->syms[0]->name,"RPC")))
    return 1;
  else return 0;
}

int getsmallestpredindex(fn)
FlowNode fn;
{
  FlowNodeList fnl = fn->pred;
  int smallest;

  if (!fnl) return fn->index;
  smallest = fnl->fn->index;
  
  for(fnl=fnl->next; fnl; fnl=fnl->next) {
    if (fnl->fn->index < smallest) smallest = fnl->fn->index;
    }
  return smallest;
}

static UpdateMatrix GetLoopUpdm(flowvec,updlvec,begind,endind)
Vector flowvec,updlvec;
int begind, endind;
{
  int i;
  FlowNode fn;

  for (i=begind+1; i<=endind; i++) {
    fn = getelement(flowvec,i);
    if (getsmallestpredindex(fn) < begind) break;
    }
  /* Use -1 to get either endind or one BEFORE test */
  return getelement(updlvec,i-1);
}

static int IsParLoop(begind, endind, flowvec, cfg)
int begind,endind;
Vector flowvec;
CallFlowGraph cfg;
{
  CallSite cstmp;

  for (cstmp = cfg->sites; cstmp; cstmp = cstmp->next) {
    register int index = cstmp->flow->index;
    if ((index >= begind) && (index <= endind))
      if (isfuturecall(cstmp))
        if (mccfindfunc(cstmp) != cfg->f) return 1;
    } /* for */
  return 0;
}

static LrsList AddLoops(index, prefix, max, flowvec, updlvec, cfg)
int *index, prefix, max;
Vector flowvec,updlvec;
CallFlowGraph cfg;
{
  LrsList retval = NULL;
  FlowNode fn;
  LoopRec lr;
  LrsList kids;
  Symbol f = cfg->f;
  int indtmp,parallelizable;

  while (*index < max) {
    /* do something for this index */
    fn = getelement(flowvec,*index);
    if (fn->type==head) {
      indtmp = *index;
      (*index)++;
      kids = AddLoops(index,indtmp,max,flowvec,updlvec,cfg);
      /* after recursive call, index is tail */
      parallelizable = IsParLoop(indtmp,*index,flowvec,cfg);
      lr = NewLoopRec(parallelizable,indtmp,*index,loop,f,prefix);
      prefix = (*index)+1;
      lr->updm = GetLoopUpdm(flowvec,updlvec,indtmp,*index);
      lr->strongest = getstrongest(lr->updm,&(lr->affinity));
      lr->kids = kids;
      retval = AddToList(retval,lr,NULL);
      /* index now points to tail */
      }
    else if (fn->type == tail) {
      return retval;
      }
    (*index)++;
  }
  return retval;
}

LoopRec findLR(index,lrslist)
int index;
LrsList lrslist;
{
  LoopRec retval = NULL;
  if (lrslist==NULL) return NULL;
 
  for (; lrslist; lrslist = lrslist->next) {
    if (lrslist->lr->type == loop)
      if ((lrslist->lr->begind <= index) &&
          (lrslist->lr->endind >= index)) {
        retval = findLR(index,lrslist->lr->kids);
        if (retval==NULL) return lrslist->lr; else return retval;
        }
  }
  return NULL;
}

Symbol mccfindfunc(cs)
CallSite cs;
{
  Symbol retval;
  Node nodetmp;
  Node prev2 = NULL, prev1 = NULL;

  if (generic(cs->node->kids[0]->op)!=ADDRG) {
    warning("Encountered function pointer\n");
    return NULL;
  }
  retval = cs->node->kids[0]->syms[0];
  if (strcmp(retval->name,"FUTURE") && strcmp(retval->name,"RPC")
      && strcmp(retval->name,"SFUTURE") && strcmp(retval->name,"SRPC")
      && strcmp(retval->name,"MULTIRPC"))
     return retval;
  /* On future call, need to search for next to last argument */
 
  for (nodetmp = cs->flow->node; generic(nodetmp->op) != CALL;
       nodetmp = nodetmp->link) {
    if (generic(nodetmp->op)==ARG) {
      prev2 = prev1;
      prev1 = nodetmp;
      } /* if */
    } /* for */
  if (!prev2 || !prev2->kids[0] || (generic(prev2->kids[0]->op)!=ADDRG) )
    fatal("FUTURE/RPC","Expected function name argument\n");
  return prev2->kids[0]->syms[0];
}

int AffinityBy(updl,eesym,affinity,direction)
UpdateList updl;
Symbol eesym;
int *affinity,*direction;
{
  Update upd=updl->updates;

  while (upd) {
    if (upd->by == eesym) {
      *affinity = upd->affinity;
      *direction = upd->direction;
      return 1;
      } else {
      upd = upd->next;
      }
    }
  return 0;
}

static void insertcallupdm(updm,cs,eesym,argsym,updvec)
UpdateMatrix updm;
CallSite cs;
Symbol eesym,argsym;
Vector updvec;
{
  UpdateMatrix csupdm;
  UpdateList tmp,updl;
  Update newu;
  Symbol sym;
  int affinity,direction;

  csupdm = (UpdateMatrix) getelement(updvec,cs->flow->index);
  sym = ScanAliases(csupdm,argsym);
  updl = Find(csupdm,sym);
  if (!updl) return; /* if argument not updated, return */
  if (AffinityBy(updl,eesym,&affinity,&direction)) {
    tmp = FindOrInsert(updm,eesym);
    newu = newUpdate();
    newu->by = eesym;
    newu->affinity = affinity;
    newu->direction = direction;
    tmp->updates = newu;
    }
}

/* insert dereferenced argument in update list */
static void insertargcallupdm(updm,csupdm,eesym,ersym,val)
UpdateMatrix updm,csupdm;
Symbol eesym,ersym;
int val;
{
  Symbol actual;
  UpdateList updl,tmp;
  Update newu;

  actual = ScanAliases(csupdm,ersym);
  if (actual==eesym) 
    {
      tmp = FindOrInsert(updm,eesym);
      newu = newUpdate();
      newu->by = eesym;
      newu->affinity = val;
      tmp->updates = newu;
    }
  else 
    {
      int affinity,direction;
      
      updl = Find(csupdm,actual);
      if (AffinityBy(updl,eesym,&affinity,&direction)) 
	{
	  tmp = FindOrInsert(updm,eesym);
	  newu = newUpdate();
	  newu->by = eesym;
	  newu->affinity = affinity*val/10000;
     newu->direction = direction;
	  tmp->updates = newu;
	}
    }
}

static UpdateMatrix callupdm(cs,callee,updatevec)
     CallSite cs;
     Symbol *callee;
     Vector updatevec;
{
  UpdateMatrix retval;
  Node firstnode;
  int symindex = 0;

  retval = newUpdateMatrix();
  assert(cs);
  assert(cs->flow);
  assert(cs->flow->node);

  /* Loop through the nodes in flow node containing call site */
  for (firstnode = cs->flow->node; firstnode; firstnode=firstnode->link) {
    /* Ignore things that aren't arguments */
    if (generic(firstnode->op) == ARG) {
      if (callee[symindex] == NULL) break; /* check for extra args */
      /* Show callee[symindex] updated with affinity value */
      if (firstnode->kids[0]->affinity.sym)
	insertargcallupdm(retval,getelement(updatevec,cs->flow->index),
			  callee[symindex],
			  firstnode->kids[0]->affinity.sym,
			  firstnode->kids[0]->affinity.value);
      else if (generic(firstnode->kids[0]->op) == INDIR)
        if ((generic(firstnode->kids[0]->kids[0]->op) == ADDRL) ||
            (generic(firstnode->kids[0]->kids[0]->op) == ADDRF) ||
            (generic(firstnode->kids[0]->kids[0]->op) == ADDRG))
          /* ARG(INDIR(ADDRx)) */
          insertcallupdm(retval,cs,callee[symindex],
                         firstnode->kids[0]->kids[0]->syms[0],
                         updatevec);
      symindex++; /* increment argument count */
    }
  }
  return retval;
}

static void RecInLoop(updm)
UpdateMatrix updm;
{
  UpdateList updl;
  Update upd;
  register int a;

  for (updl=updm->lists; updl; updl=updl->next) {
    upd = updl->updates;
    assert(upd);
    assert(!upd->next);
    a = 100-upd->affinity;
    upd->affinity = 100-a*a*a/10000;
    }
}

LrsList pass2a(cfg,updatevec,callee)
CallFlowGraph cfg;
Vector updatevec;
Symbol *callee;
{
  UpdateMatrix recupdl = NULL; /* recursion update matrix */
  UpdateMatrix updmtmp;
  int recursive = 0;
  int parallelizable = 0;
  int index = 0;
  CallSite cstmp;
  LoopRec lrtmp,insidelr;
  LrsList lrslist = NULL;
  Symbol called;
  
  /* Just create function call node -- fill in later */
  lrtmp = NewLoopRec(0,0,cfg->flowvecsz,placeholder,cfg->f,0);
  lrslist = AddToList(lrslist,lrtmp,NULL);

  /* Fill in kids fields */
  lrtmp->kids = AddLoops(&index,0,cfg->flowvecsz,cfg->flowvec,
                           updatevec,cfg);

  /* Check for recursion */
  for (cstmp = cfg->sites; cstmp; cstmp = cstmp->next) {
    called = mccfindfunc(cstmp);
    if (called && (!strcmp(cfg->f->name,called->name))) { /* is recursion */
      updmtmp = callupdm(cstmp,callee,updatevec);
      insidelr = findLR(cstmp->flow->index,lrtmp->kids);
      if (insidelr && insidelr->type == loop) RecInLoop(updmtmp);
      if (recursive) recupdl = recursionmerge(updmtmp,recupdl); 
       else recupdl = updmtmp; /* merge only after 1st */
      parallelizable += isfuturecall(cstmp);
      recursive = 1;
      }
  }
  if (recursive) {
    lrtmp->parallelizable = parallelizable;
    lrtmp->type = rec;
    lrtmp->updm = recupdl;
    lrtmp->strongest = getstrongest(lrtmp->updm,&(lrtmp->affinity));
  }
  return lrslist;
}

char *getlrsstr(type)
LrsType type;
{
  switch(type) {
    case loop: return "loop";
    case rec: return "recursion";
    case placeholder: return "placeholder";
    default: assert(0);
  }
}


