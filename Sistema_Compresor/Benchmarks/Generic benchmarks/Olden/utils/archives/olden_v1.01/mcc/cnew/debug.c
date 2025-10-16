#include "c.h"
#include "vector.h"
#include "callgraph.h"
#include "pass1.h"
#include "pass2.h"
#define NULL 0

void printfnl(fnl)
     FlowNodeList fnl;
{
  for (;fnl;fnl=fnl->next) 
    {
      fprint(2,"%d ",fnl->fn->index);
    }
}

void printupdm(updm)
     UpdateMatrix updm;
{
  UpdateList updl;

  if (!updm) return;
  updl = updm->lists;
  
  for (;updl;updl=updl->next) 
    {
      Update upd=updl->updates;
      
      fprint(2,"Updates of %s (conditional? %d):\n",
             updl->updated->name,updl->conditional);
      if (updl->alias) {
        fprint(2,"aliased by %s\n",updl->alias->name);
      } else {
        for (;upd;upd=upd->next) {
          fprint(2,"%s,%d:",upd->by->name,upd->affinity);
	}
      }
      fprint(2,"\n");
    }
}

void debug0 (cfg)
     CallFlowGraph cfg;
{
  int i;
  FlowNode fn;
  
  for(i=0; i<cfg->flowvecsz; i++) 
    {
      fn = getelement(cfg->flowvec,i);
      
      fprint(2,"Visiting %s %d:",NodeTypeToName(fn->type),i);
      fprint(2,"Pred: ");
      printfnl(fn->pred);
      fprint(2,"Succ: ");
      printfnl(fn->succ);
      fprint(2,"\n");
      dumplink(fn->node);
    }
}

void debug1 (cfg, updmv)
     CallFlowGraph cfg;
     Vector updmv;
{
  int i;
  UpdateMatrix updm;
  FlowNode fn;

  fprint(2,"DEBUG 1 of function %s\n",cfg->f->name);
  for(i=0; i<cfg->flowvecsz; i++) 
    {
      fn = getelement(cfg->flowvec,i);
      updm = getelement(updmv,i);

      fprint(2,"Visiting %s %d:",NodeTypeToName(fn->type),i);
      fprint(2,"Pred: ");
      printfnl(fn->pred);
      fprint(2,"Succ: ");
      printfnl(fn->succ);
      fprint(2,"\n");
      dumplink(fn->node);
      if (updm) printupdm(updm);
    }
}

void debug2(lrs,count)
LrsList lrs;
int *count;
{
  if (lrs==NULL) return;
  for (; lrs; lrs=lrs->next) {
    fprint(2,"Visiting lrs %d of type %s from %d to %d prefix %d in %s\n",
           (*count)++,
           getlrsstr(lrs->lr->type),lrs->lr->begind,lrs->lr->endind,
           lrs->lr->prefixind,lrs->lr->f->name);
    fprint(2,"compmig:%d,parallel:%d\n",lrs->lr->compmig,lrs->lr->parallelizable);
    if (lrs->lr->strongest) 
      fprint(2,"Strongest update is %s at %d\n",lrs->lr->strongest->name,
               lrs->lr->affinity);
    printupdm(lrs->lr->updm);
    /* Already incremented so test for 1 */
    if ((*count==1) || (lrs->lr->type ==loop)) debug2(lrs->lr->kids,count);
  }
}
