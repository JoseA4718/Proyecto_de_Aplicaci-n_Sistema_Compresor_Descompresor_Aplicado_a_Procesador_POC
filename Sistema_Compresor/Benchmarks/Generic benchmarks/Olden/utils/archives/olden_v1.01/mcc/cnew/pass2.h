#ifndef PASS2_H
#define PASS2_H
#include "c.h"
#include "callgraph.h"
#include "pass1.h"
#define MinMigAffinity 90

typedef enum {loop, rec, placeholder} LrsType;

typedef struct lrs {
  int parallelizable;
  struct lrslist *kids;
  Symbol f;
  LrsType type;
  int prefixind;
  int begind, endind;
  UpdateMatrix updm;
  int donebefore;
  Symbol actualstrongest;
  Symbol strongest;
  int affinity,compmig;
  int is_gray;
} *LoopRec;

typedef struct lrslist {
  LoopRec lr;
  CallSite cs;
  struct lrslist *next;
} *LrsList;

/* perform intraprocedural creation of LrsLists */
LrsList pass2a(/* CallFlowGraph cfg, Vector updatevec, Symbol *callee*/);
/* Given an LrsList, find the innermost loop containing index */
LoopRec findLR(/* int index, LrsList lrslist */);
/* Add lr to an LrsList -- prepends */
LrsList AddToList(/* LrsList lrslist, LoopRec lr, CallSite cs */);
char *getlrsstr(/* LrsType type*/);
Symbol mccfindfunc(/* CallSite cs*/);
int isfuturecall(/* CallSite cs*/);
int AffinityBy(/* updl, sym, int *pint, int *pint2 */);
#endif
