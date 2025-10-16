#define CACHE_ACCESS 0
#define MIG_ACCESS 1
#define REMOTE_WRITE_ACCESS 2

#define NULL 0
#define FPREG "%o4"
#define FUTREGSTR "%l5"
#define FC_WAITING 2
#define IDREGSTR "%l6"
#define IDREGNAME "l6"
#define EXPRESSREGSTR "%l6"
#define EXPRESSMASK 128 /* 2^PN_BITS -- leave room for IDREG */

#define CSBUF_BT  -16
#define CSBUF_BASE      -20
#define CSBUF_i0        (CSBUF_BASE-0)
#define CSBUF_i1        (CSBUF_BASE-4)
#define CSBUF_i2        (CSBUF_BASE-8)
#define CSBUF_i3        (CSBUF_BASE-12)
#define CSBUF_i4        (CSBUF_BASE-16)
#define CSBUF_i5        (CSBUF_BASE-20)

#define TBL_REG "%l7" /* Cache table entries start here */
#define ENTRY_SHIFT 5 /* 32 bytes per entry */
#define TAG_OFFSET 16

#define PN_BITS 7
#define OFFSET_BITS 11 /* 2048 is page size */
#define MAX_ADDP_CNST 31 /* 13 bit signed immed - 7 bits proc id */
#define ADDR_MASK 127 /* 2^PN_BITS - 1 */

#define RPCOFFSET 8 /* How far forward contin. from SendRpc,
                       have branch there */
#define OFFSET3 20 /* How far forward is normal return from call */
/* Offsets are from the Normal return address */
#ifndef VISUALIZE
#define OFFSET2 8 /* How far forward do we go for continuation */
#else
#define OFFSET2 16 /* How far forward do we go for continuation */
#endif
#define OFFSET 16 /* How far back does return address go on steal */

#define SRPCOFFSET 8 /* normal continuation from SendRpc -- have branch */
#define SOFFSET3 72 /* How far forward for lazy steal-- recall +12 return */
/* Offsets are from the Normal return address */
#define SOFFSET_STOLEN 20 /* back to stolen code */
#define SOFFSET_REMSTEAL 76 /* back to migrate code */
#define REMSTEAL_INC -16 /* from stolen return to remote stolen return */
#define SOFFSET2 8 /* How far forward do we go for continuation, from ret. */

#define FCELL_NEXT 8
#define FBUF_FP 16
#define FCELL_VALUE 24
#define FC_REMSTEAL 5

#define FUTURE (48<<4)
#define FUTUREF (FUTURE+F)
#define FUTURED (FUTURE+D)
#define FUTUREC (FUTURE+C)
#define FUTURES (FUTURE+S)
#define FUTUREI (FUTURE+I)
#define FUTUREU (FUTURE+U)
#define FUTUREP (FUTURE+P)
#define FUTUREV (FUTURE+V)
#define FUTUREB (FUTURE+B)
#define TOUCH (49<<4)
#define TOUCHI  (TOUCH+I)
#define RTOUCH  (TOUCHI+1)
#define MTOUCH  (TOUCHI+2)
#define MULTIINIT  (TOUCHI+3)
#define STOUCH  (TOUCHI+4)
#define GR (50<<4)
#define GRS (GR+S)
#define GRI (GR+I)
#define GRU (GR+U)
#define FC (51<<4)
#define FCP (FC+P)
#define MIGRATE (52<<4)
#define MIGRATEV (MIGRATE+V)
#define LOCAL_BASE (53<<4)
#define LOCALP (LOCAL_BASE+P)
#define RESTORE (54<<4)
#define NOTEST (55<<4)
#define RETEST (56<<4)
#define MAKELOCAL ((57<<4)+P)
#define NONLOCAL ((58<<4)+I)
#define ISLOCPTR ((59<<4)+I)
#define ALLOCEXT (60<<4)
#define BIGLP ((61<<4)+P)
#define MERGEPH (62<<4)
#define UNPHASE ((62<<4)+1)
#define ABORTONMISS ((62<<4)+2)
#define ENDABORTONMISS ((62<<4)+3)
#define MIGRPH (63<<4)
#define CASGN (64<<4)
#define CASGNF ((64<<4)+F)
#define CASGND ((64<<4)+D)
#define CASGNI ((64<<4)+I)
#define CASGNP ((64<<4)+P)
#define CASGNC ((64<<4)+C)
#define CASGNS ((64<<4)+S)
#define RPC (65<<4)
#define RPCF (RPC+F)
#define RPCD (RPC+D)
#define RPCC (RPC+C)
#define RPCS (RPC+S)
#define RPCI (RPC+I)
#define RPCU (RPC+U)
#define RPCP (RPC+P)
#define RPCV (RPC+V)
#define RPCB (RPC+B)
#define ATOMICINC ((66<<4)+I)
#define MTEST (67<<4)
#define MTESTP (MTEST+P)
#define PREFETCHP ((68<<4)+P)
#define MASGN (69<<4)
#define MASGNF ((69<<4)+F)
#define MASGND ((69<<4)+D)
#define MASGNI ((69<<4)+I)
#define MASGNP ((69<<4)+P)
#define MASGNC ((69<<4)+C)
#define MASGNS ((69<<4)+S)
#define MASGNB (MASGN+B)
#define MULTIRPC (70<<4)
#define MULTIRPCF (MULTIRPC+F)
#define MULTIRPCD (MULTIRPC+D)
#define MULTIRPCC (MULTIRPC+C)
#define MULTIRPCS (MULTIRPC+S)
#define MULTIRPCI (MULTIRPC+I)
#define MULTIRPCU (MULTIRPC+U)
#define MULTIRPCP (MULTIRPC+P)
#define MULTIRPCV (MULTIRPC+V)
#define MULTIRPCB (MULTIRPC+B)
#define MULTIFUTURE (71<<4)
#define MULTIFUTUREF (MULTIFUTURE+F)
#define MULTIFUTURED (MULTIFUTURE+D)
#define MULTIFUTUREC (MULTIFUTURE+C)
#define MULTIFUTURES (MULTIFUTURE+S)
#define MULTIFUTUREI (MULTIFUTURE+I)
#define MULTIFUTUREU (MULTIFUTURE+U)
#define MULTIFUTUREP (MULTIFUTURE+P)
#define MULTIFUTUREV (MULTIFUTURE+V)
#define MULTIFUTUREB (MULTIFUTURE+B)
#define RCALL (72<<4)
#define RCALLF (RCALL+F)
#define RCALLD (RCALL+D)
#define RCALLC (RCALL+C)
#define RCALLS (RCALL+S)
#define RCALLI (RCALL+I)
#define RCALLU (RCALL+U)
#define RCALLP (RCALL+P)
#define RCALLV (RCALL+V)
#define RCALLB (RCALL+B)
#define SFUTURE (73<<4)
#define SFUTUREF (SFUTURE+F)
#define SFUTURED (SFUTURE+D)
#define SFUTUREC (SFUTURE+C)
#define SFUTURES (SFUTURE+S)
#define SFUTUREI (SFUTURE+I)
#define SFUTUREU (SFUTURE+U)
#define SFUTUREP (SFUTURE+P)
#define SFUTUREV (SFUTURE+V)
#define SFUTUREB (SFUTURE+B)
#define SRPC (74<<4)
#define SRPCF (SRPC+F)
#define SRPCD (SRPC+D)
#define SRPCC (SRPC+C)
#define SRPCS (SRPC+S)
#define SRPCI (SRPC+I)
#define SRPCU (SRPC+U)
#define SRPCP (SRPC+P)
#define SRPCV (SRPC+V)
#define SRPCB (SRPC+B)

/* new multirpc stuff */
#define MCELL_COUNT 0
#define MCELL_FP 4
#define MCELL_PC 8
#define MCELL_STEALADDR 12
#define MCELL_SYNC 0
#define MC_INT_VAL 4
#define MC_FLT_VAL 4
#define MC_DBL_VAL 8

