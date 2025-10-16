#ifndef PASS1_H
#define PASS1_H

#include "c.h"
#include "vector.h"
#include "callgraph.h"

typedef struct updm {
  struct updm *parent;
  struct updl *lists;
} *UpdateMatrix;

typedef struct updl {
  Symbol updated;
  Symbol alias;
  struct upd *updates;
  struct updl *next;
  int conditional;
} *UpdateList;

typedef struct upd {
  Symbol by;
  int affinity;
  int direction;
  struct upd *next;
} *Update;

Vector pass1(/* CallFlowGraph cfg */);
/* Create UpdateMatrix for each flow node */
UpdateMatrix recursionmerge(/* updm1,updm2 */);
UpdateMatrix merge2(/* updm1, updm2 */);
int CheckForUpdate(/* sym, updm */);
UpdateList Find(/* updm, sym */);
UpdateList FindOrInsert(/* updm, sym */);
Symbol ScanAliases(/* updm, sym */);
Update newUpdate();
UpdateList newUpdateList();
UpdateMatrix newUpdateMatrix();
Update UpdateBySomething();
#endif
