/* For copyright information, see olden_v1.0/mcc/[COPYRIGHT,LCC-COPYRIGHT] */
/* implementation for callgraph */
#include "c.h"
#include "callgraph.h"
#include "table.h"
#include "vector.h"
#define NULL 0
#define MAXSWTCHDEPTH 6

static FlowNode curflow,curswtch[MAXSWTCHDEPTH+1];
static int swtchlev=0;
static int flowvecsz;
static Vector flowvec;
static Table_T label_table,backpatch_table;

char *NodeTypeToName(ty)
NodeType ty;
{
  switch(ty) {
    case head: return "head";
    case tail: return "tail";
    case iscontinue: return "iscontinue";
    case other: return "other";
    case call: return "call";
    default: assert(0);
  }
  return NULL; /* to please lint */
}

/* Add a flow node to a FlowNodeList */
static FlowNodeList addtolist(item,list,direction)
FlowNode item;
FlowNodeList list;
EdgeType direction;
{
  FlowNodeList retval;

  assert(item);
  retval = (FlowNodeList) alloc(sizeof(*retval));
  retval->fn = item;
  retval->next = list;
  retval->dir = direction;
  return retval;
}

/* Create a new flow graph node with given predecessor */
FlowNode newfgnode(node,pred)
Node node;
FlowNode pred;
{
  FlowNode retval;

  retval = (FlowNode) alloc(sizeof(*retval));
  retval->checksdone = 0;
  retval->stopflag = 0;
  retval->node = node;
  retval->nsucc = 0;
  retval->type = other;
  retval->succ = NULL;
  if (pred) {
    retval->npred = 1;
    retval->pred = addtolist(pred,NULL,forward);
    pred->succ = addtolist(retval,pred->succ,forward);
    pred->nsucc++;
  }
  else {
    retval->npred = 0;
    retval->pred = NULL;
  }
  retval->index = flowvecsz;
  setelement(flowvec,flowvecsz++,retval);
  return retval;
}

/* marklabel either adds this flow node to list to be backpatched, or
   updates the successor/predecessor fields appropriately --
   Note:  this list in the else branch is freed by backpatch */
static marklabel(sym,fn)
Symbol sym;
FlowNode fn;
{
  FlowNode gotten;

  assert(sym); assert(fn);

  if (gotten=Table_get(label_table,sym)) {
    gotten->pred = addtolist(fn,gotten->pred,backward);
    gotten->npred++;
    if (gotten->type == head) {
      if (gotten->tail->type == other) gotten->tail->type = iscontinue;
      else assert(gotten->tail->type == tail);
      }
    gotten->tail = fn;
    assert(gotten->type == other || gotten->type == head);
    gotten->type = head;
    fn->succ = addtolist(gotten,fn->succ,backward);
    fn->nsucc++;
    assert(fn->type == other);
    fn->type = tail;
    }
  else {
    FlowNodeList fnl;
    fnl = addtolist(fn,Table_get(backpatch_table,sym),forward);
    Table_put(backpatch_table,sym,fnl);
  }
}

/* patch list of symbols, freeing this list created by marklabel */
static backpatch(sym,fn)
Symbol sym;
FlowNode fn;
{
  FlowNodeList fnl,tmp;
 
  assert(sym); assert(fn);
 
  fnl = Table_get(backpatch_table,sym);
  while (fnl != NULL) {
    fnl->fn->succ = addtolist(fn,fnl->fn->succ,forward);
    fnl->fn->nsucc++;
    fn->pred = addtolist(fnl->fn,fn->pred,forward);
    fn->npred++;
    tmp = fnl;
    fnl = fnl->next;
    /*free(tmp);*/  /* Can't free unless we use malloc in addtolist */
  }
}

/* traverse node list adding sites to call graph and nodes to flow
   graph as necessary */
static addsites(nodelist,site)
Node nodelist;
CallSite *site;
{
  Node np;
  CallSite newsite;
  FlowNode argflow=NULL;
  Symbol tmpsym;
  int asgncall = 0;

  for (np=nodelist; np; np=np->link) {
    if (curflow && curflow->node==NULL) curflow->node = np;
    switch(generic(np->op)) {
      case ARG:
        assert(curflow);
        if (!argflow) argflow = curflow;
        break;
      case CALL:
        assert(curflow);
        if (argflow && (argflow!=curflow)) {
          error("Jumps within argument list not supported\n");
          assert(0);
          }
        argflow=NULL;
        newsite = (CallSite) alloc(sizeof(*newsite));
        newsite->node = np;
        newsite->flow = curflow;
        newsite->next = *site;
        *site = newsite;
        assert(curflow->type == other);
        curflow->type = call;
        curflow = newfgnode(NULL,curflow);
        break;
      case RET:
        assert(curflow);
        curflow = NULL;
        break;
      case LABEL:
        curflow = newfgnode(np,curflow);
        Table_put(label_table,np->syms[0],curflow);
        backpatch(np->syms[0],curflow);
        break;
      case JUMP:
        if (!curflow) curflow = newfgnode(np,curflow);
        if (generic(np->kids[0]->op)==ADDRG)
          {
          tmpsym = np->kids[0]->syms[0];
          while (tmpsym->u.l.equatedto != tmpsym &&
                 tmpsym->u.l.equatedto != NULL) 
            tmpsym = tmpsym->u.l.equatedto;
          marklabel(tmpsym,curflow);
          }
        else {
          if (swtchlev>MAXSWTCHDEPTH) error("Overly nested switch\n");
          curswtch[swtchlev++] = curflow;
          }
        curflow = NULL;
        break;
      case EQ: case GE: case GT: case LE: case LT: case NE:
        if (!curflow) curflow = newfgnode(np,curflow);
        tmpsym = np->syms[0];
        while (tmpsym->u.l.equatedto != tmpsym &&
               tmpsym->u.l.equatedto != NULL) 
           tmpsym = tmpsym->u.l.equatedto;
        marklabel(tmpsym,curflow);
        if (np->link) curflow = newfgnode(NULL,curflow);
        break;
      default:
        /* some random statement */
        assert(curflow);
        break;
      } /* switch */
  } /* for */
}

/* place backpatching entries for each of switch statement labels */
void switchpatch(fn,sz,labs)
FlowNode fn;
int sz;
Symbol *labs;
{
  int i;

  for (i=0; i<sz; i++)
    {
    FlowNodeList fnl;
    if (Table_get(label_table,labs[i])) assert(0);
    fnl = addtolist(fn,Table_get(backpatch_table,labs[i]),forward);
    Table_put(backpatch_table,labs[i],fnl);
    }
}

FlowNode getsmallestsucc(fn)
FlowNode fn;
{
  FlowNodeList fnl = fn->succ;
  int smallest=fnl->fn->index;
  FlowNode retval = fnl->fn;

  for (fnl = fnl->next; fnl ; fnl=fnl->next) {
    if (fnl->fn->index < smallest) {
      smallest = fnl->fn->index;
      retval = fnl->fn;
    } /* if */
  } /* for */
  return retval;
}
        
/* update the call and flow graph for a particular function */
CallFlowGraph callflowgraph(codelist,f)
Code codelist;
Symbol f;
{
  CallFlowGraph retval;
  Code cp;

  flowvecsz=0;
  label_table = Table_new();
  backpatch_table = Table_new();
  flowvec = makevector(0);
  retval = (CallFlowGraph) alloc(sizeof(*retval));
  retval->f = f;
  retval->sites = NULL;
  retval->flow = curflow = NULL;
  for (cp=codelist; cp; cp=cp->next) {
    switch (cp->kind) {
      case Start:
        break;
      case Jump: case Gen: case Label:
        if (cp->u.node) {
          if (cp->kind != Label) curflow = newfgnode(cp->u.node,curflow);
          if (retval->flow == NULL)
            retval->flow = curflow;
          addsites(cp->u.node,&retval->sites);
          }
        break;
      case Switch:
        switchpatch(curswtch[--swtchlev],cp->u.swtch.size,cp->u.swtch.labels);
        break;
      default:
        /* random other stuff */
        break;
      }
  }
  Table_destroy(label_table);
  Table_destroy(backpatch_table);
  retval->flowvec = flowvec;
  retval->flowvecsz = flowvecsz;
  return retval;
}


