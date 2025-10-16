/* For copyright information, see olden_v1.0/mcc/[COPYRIGHT,LCC-COPYRIGHT] */
#include "c.h"
#include "sets.h"
#include "../sparc/backend/runtime.h"
#include "callgraph.h"

extern char sparc_arity[];
extern char *sparc_opname[];

dclproto(void generate_tests,(Vector, int));
dclproto(void dochecks,(FlowNode, int));
