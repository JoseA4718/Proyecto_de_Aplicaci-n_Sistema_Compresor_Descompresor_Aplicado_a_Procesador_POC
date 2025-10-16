/* C compiler: SPARC configuration parameters */

#define	IREG	0	/* a general-purpose register */
#define	FREG	1	/* a floating-point register */

#define STRUCT_ALIGN 1

/* Metrics == copied from i860 */
#define CHAR_METRICS 1,1,0
#define SHORT_METRICS    2,2,0
#define INT_METRICS      4,4,0
#define FLOAT_METRICS    4,4,1
#define DOUBLE_METRICS   8,8,1
#define POINTER_METRICS  4,4,0

#include "gen.h"
