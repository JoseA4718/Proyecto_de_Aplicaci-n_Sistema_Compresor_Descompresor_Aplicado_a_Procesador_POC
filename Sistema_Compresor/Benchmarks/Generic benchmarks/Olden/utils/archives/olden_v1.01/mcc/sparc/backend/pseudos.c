/* C compiler: SPARC code generator */
/* see a_frame for more details -- 72 is minimum size frame */

#include "c.h"
#include "runtime.h"

#ifdef sparc
#include <stab.h>
#include "stabbsd.c"
#endif

static char *ProgBegFileName;

dclproto(static void address,(Symbol, Symbol, int));
dclproto(static void blkfetch,(int, int, int, int));
dclproto(static void blkloop,(int, int, int, int, int, int[]));
dclproto(static void blkstore,(int, int, int, int));
dclproto(static void defaddress,(Symbol));
dclproto(static void defconst,(int, Value));
dclproto(static void defstring,(int, char *));
dclproto(static void defsymbol,(Symbol));
dclproto(static void doarg,(Node));
dclproto(static void emitspecial,(Node));
dclproto(static void funcsave,
	      (char *,int,int,int,unsigned,unsigned,Symbol[],int)) ;
dclproto(static void funcload,
	      (char *,int,int,int,unsigned,unsigned,
	       Symbol[],int, char *));
dclproto(void function,(Symbol, Symbol [], Symbol [], int));
dclproto(void mccfunction,(Symbol, Symbol [], Symbol [], int));
dclproto(static void global,(Symbol));
dclproto(static void import,(Symbol));
dclproto(static void local,(Symbol));
dclproto(static Symbol nextreg,(Symbol));
dclproto(void progbeg,(int, char **));
dclproto(void mccprogbeg,(int, char **));
dclproto(extern void mccprogend,(void));
dclproto(static void segment,(int));
dclproto(static void space,(int));
     
dclproto(static void initgen,(void));
dclproto(static void final,(Node));
dclproto(int nottestp,(Node));
     
#ifdef GEN4
     dclproto(static unsigned emit2,(Node,Node[],short[]));
     dclproto(static void target,(Node));
#endif
     
     Interface sparcInterface = {
       "sparc",
       1, 1, 0,	/* char */
       2, 2, 0,	/* short */
       4, 4, 0,	/* int */
       4, 4, 1,	/* float */
       8, 8, 1,	/* double */
       4, 4, 0,	/* T * */
       0, 1, 0,	/* struct */
       1,		/* left_to_right */
       0,		/* little_endian */
       1,		/* jump_on_return */
       1,		/* mulops_are_calls */
       0,		/* compl_band */
       0/*1*/,		/* no_argb */
       NODAG,		/* no_dag */
       address,
       blockbeg,
       blockend,
       defaddress,
       defconst,
       defstring,
       defsymbol,
       0,
       export,
       mccfunction,
       gen,
       global,
       import,
       local,
       mccprogbeg,
       mccprogend,
       segment,
       space,
#ifdef sparc
       stabblock, 0, 0, stabinit, stabline, stabsym, stabtype,
#else
       0, 0, 0, 0, 0, 0, 0,
#endif
       {"\n.global %s\n", 0, 1, {".seg \"text\"", ".seg \"bss\"", ".seg \"data\"", ".seg \"text\""},
	  doarg, docall, blkfetch, blkloop, blkstore,
	  final, 0, emitspecial,
#ifdef GEN4
	  sparc_kids, sparc_ntname, sparc_nts, sparc_rule, sparc_state, sparc_string, sparc_cost,
	  rules, emit2, target
#endif
	  }
     };
     
static Symbol curfunc;
static int nlocals;
static Symbol d0, f0, g0, i0, freg[32], ireg[6], oreg[6];
Symbol g4,g5,g6;
Symbol fvreg[32];
dclproto(static void rename,(int));
static int AbortOnMiss=0;
/* This is the end of dcl prototypes */

/* additions by mcc for runtime system */     
extern int tempest, mflag, cflag, fflag, nflag, kflag, simflag, vflag, pflag;
extern int extension; /* size of frame extension for call */
extern Node firstargptr,lastarg;
extern int firstarg;
static int DOTEST=1,framesize,callerOffset,structReturn;
/* end of additions */

void pseudos_endprog() {
  if (pflag) 
    print(".seg \"text\"\nLfile:.ascii \"%s\\000\"\n",ProgBegFileName);
}

/* Does this node have a TEST descendant? */
int nottestp(p) Node p;
{
  if (!p) return 1;
  if (p->op==TESTP || p->op==MTESTP) return 0;
  if (p->op==ADDP) return nottestp(p->kids[0]);
  return 1;
}

/* Does this node have a MTEST descendant? */
int notmtestp(p) Node p;
{
  if (!p) return 1;
  if (p->op==MTESTP) return 0;
  if (p->op==ADDP) return notmtestp(p->kids[0]);
  return 1;
}

/* Are there TESTS anywhere? */
int anytests(p) Node p;
{
  if (!p) return 0;
  if (p->op==TESTP || p->op==MTESTP) return 1;
  return (anytests(p->kids[0]) || anytests(p->kids[1]));
}

/* address - initialize q for addressing expression p+n */
static void address(q, p, n) Symbol q, p; int n; {
  q->x.offset = p->x.offset + n;
  if (p->scope == GLOBAL || p->sclass == STATIC || p->sclass == EXTERN)
    q->x.name = stringf("%s%s%d", p->x.name, n >= 0 ? "+" : "", n);
  else
    q->x.name = stringd(q->x.offset);
}

/* blkfetch - emit code to load k bytes from reg+off into tmp */
static void blkfetch(k, off, reg, tmp) {
  assert(k == 1 || k == 2 || k == 4);
  assert(salign >= k);
  print("ld%s [%%r%d+%d],%%r%d\n", &"ub\0uh\0..\0\0"[3*(k-1)], reg, off, tmp);
}

/* blkloop - emit loop to copy size bytes from sreg+soff to dreg+doff using tmp regs */
static void blkloop(dreg, doff, sreg, soff, size, tmp) int tmp[]; {
  if ((size&~7) > 4096) {
    print("set %d,%%%s\n", size&~7, tmp[2]);
    print("add %%r%d,%%r%d,%%r%d\n", sreg, tmp[2], sreg);
    print("add %%r%d,%%r%d,%%r%d\n", dreg, tmp[2], tmp[2]);
  } else {
    print("add %%r%d,%d,%%r%d\n", sreg, size&~7, sreg);
    print("add %%r%d,%d,%%r%d\n", dreg, size&~7, tmp[2]);
  }
  blkcopy(tmp[2], doff, sreg, soff, size&7, tmp);
  print("1: dec 8,%%r%d\n", tmp[2]);
  blkcopy(tmp[2], doff, sreg, soff - 8, 8, tmp);
  print("cmp %%r%d,%%r%d; bgt 1b; dec 8,%%r%d\n", tmp[2], dreg, sreg);
}

/* blkstore - emit code to store k bytes from tmp to reg+off */
static void blkstore(k, off, reg, tmp) {
  assert(k == 1 || k == 2 || k == 4);
  assert(dalign >= k);
  print("st%s %%r%d,[%%r%d+%d]\n", &"b\0h\0.\0\0"[2*(k-1)], tmp, reg, off);
}


static void defaddress(p) Symbol p; {
  if (p->scope == LABELS)
    print(".align 4; ");	/* for switch tables */
  print(".word %s\n", p->x.name);
}

/* defconst - define a constant */
static void defconst(ty, v) Value v; {
  struct real r;
  
  switch (ty) {
  case C: print(".byte %d\n",   v.uc); break;
  case S: print(".half %d\n",   v.ss); break;
  case I: print(".word %d\n",   v.i ); break;
  case U: print(".word 0x%x\n", v.u ); break;
  case F:
  case P: print(".word 0x%x\n", v.p ); break;
    /* commented out by mcc 6/24/93 as incorrect */
    /*  case F:
        r = decode(F, v.f);
        if (v.f)
        r.exp = (r.exp + 127)&0xff;
        print(".word 0x%x\n", (r.sign<<31) | (r.exp<<23) | (r.msb>>9));
        break;*/
  case D:
    r = decode(D, v.d);
    if (v.d)
      r.exp = (r.exp + 1023)&0x7ff;
    print(".word 0x%x,0x%x\n",
	  (r.sign<<31) | (r.exp<<20) | (r.msb>>12),
	  ( r.msb<<20) | (r.lsb>>12));
    
    break; 
  default:
    assert(0);
  }
}

static void defstring(n, s) char *s; {
  genascii(".ascii", ".byte", n, s);
}

/* defsymbol - compute and store p's back-end name */
static void defsymbol(p) Symbol p; {
  if (p->scope >= LOCAL && p->sclass == STATIC)
    p->x.name = stringf("%d", genlabel(1));
  else
    p->x.name = p->name;
  if (p->scope >= LABELS)
    p->x.name = stringf(p->generated ? "L%s" : "_%s", p->x.name);
}

/* doarg - assign offset for next ARG node */
static void doarg(p) Node p; {
  static int reg;
  
  if (anytests(p) && !firstarg) 
    error("Can't derefence pointer as procedure argument\n");
  if (firstarg) 
    {
      firstarg=0;
      lastarg=NULL;
      firstargptr=p;
      docall_part1(p);
    }
  /*p->x.args = lastarg;*/
  lastarg=p;
  if (argoffset == 0)
    reg = 0;
  assert(p);
  assert(p->syms[0]);
  assert(p->syms[1]);
  p->syms[2] = intconst(mkactual((p->syms[1]->u.c.v.i == 8 ?
                                  4 : p->syms[1]->u.c.v.i),
                                 p->syms[0]->u.c.v.i, 4)/4);
  p->syms[1] = intconst(reg/4);
  /* assert(p->op != ARG+B); */
  reg += roundup(p->syms[0]->u.c.v.i, 4);
}

#ifdef GEN4
char **opcodes;
#endif

static void migrate_spillfloat(mask)
{
  register int i;
  for (i=0; i<32; i++)
    if (fvreg[i] && (~mask & (1<<i))) {
      print("st %%f%d, [%%fp+%s]\n",i,fvreg[i]->x.name);
    }
}

static void migrate_reloadfloat(mask)
{
  register int i;
  for (i=0; i<32; i++)
    if (fvreg[i] && (~mask & (1<<i))) {
      print("ld [%%fp+%s],%%f%d\n",fvreg[i]->x.name,i);
    }
}

static void tempest_local(regnum,label,regnum2,kid,mask)
     Node kid;
{
  int genop = generic(kid->op);

  print("ld [%%r%d],%%g0 ! tempest ASGNB LOCAL\n",regnum);
  /* reemit kid in case fp has changed */
  assert(genop==ADDRL || genop==ADDRG || genop==ADDRF);
  kid->x.emitted = 0;
  emitasm(kid,kid->x.inst);
}

static void tempest_migrate()
{
   print("! TEMPEST migrate code for %s:\n",curfunc->x.name);
   print("sethi %%hi(_Olden_ref_addr),%%o4\n");
   print("or %%o4,%%lo(_Olden_ref_addr),%%o4\n");
   print("ld [%%o4],%%o0\n");
   print("sethi %%hi(_%s.cs),%%o4\n",curfunc->x.name);
   print("or %%o4,%%lo(_%s.cs),%%o4\n",curfunc->x.name);
   print("sethi %%hi(%d),%%o1\n",framesize);
   print("or %%o1,%%lo(%d),%%o1\n",framesize);
   assert(callerOffset <= 4095);
   print("add %%g0,%d,%%o2\n",callerOffset);
   print("call ___MigrateR; or %%g0,%d,%%o3\n",structReturn);
   print("\n");
}

static void emitprof(access_type,p,pointer_reg) Node p; char *pointer_reg;
{
  if (ProgBegFileName==NULL) ProgBegFileName = p->filename;
  else if (strcmp(p->filename,ProgBegFileName))
         warning("profile: line %d of file %s converted to file %s\n",
            p->lineno,p->filename,ProgBegFileName);
  print("mov %d,%%g3\n",access_type);
  print("mov %%%s,%%g4\n",pointer_reg);
  print("set Lfile,%%g5\n");
  print("call ___prof; mov %d,%%g6\n",p->lineno);
}

static void rpc_emitprof(access_type,p,pointer_reg) Node p; char *pointer_reg;
{
  print("mov %%g4,%%l0\n");
  print("mov %%g5,%%l1\n");
  print("mov %%g6,%%l2\n");
  emitprof(access_type,p,pointer_reg);
  print("mov %%l0,%%g4\n");
  print("mov %%l1,%%g5\n");
  print("mov %%l2,%%g6\n");
}

/* emitspecial - emit all sorts of special instructions */
static void emitspecial(p,kids,nts) Node p,kids[]; short nts[];
{
  int ty;
  int label = genlabel(1);
  
  if ((p->op == ASGN+B) || (p->op == MASGNB)) {
    static int tmp[] = { 4,5,6 };
    dalign = salign = p->syms[1]->u.c.v.i;
    /* In tempest, it is possible to have ASGNB(MTESTP...) */
    if (tempest) {
      if (!notmtestp(p->x.kids[0])) {
        /* removed INDIRB in killconv */
        assert(notmtestp(p->x.kids[1]));
        tempest_local(getregnode(p->x.kids[0]->syms[RX])->regnum,label,
                      getregnode(p->x.kids[1]->syms[RX])->regnum,
                      kids[1],p->x.freemask);
      }
      /* removed INDIRB in killconv */
      else if (!notmtestp(p->x.kids[1])) {
        assert(notmtestp(p->x.kids[0]));
        tempest_local(getregnode(p->x.kids[1]->syms[RX])->regnum,label,
                      getregnode(p->x.kids[0]->syms[RX])->regnum,
                      kids[0],p->x.freemask);
      } /* if TESTP */
    } /* if tempest */
    blkcopy(getregnode(p->kids[0]->syms[RX])->regnum, 0,
	    getregnode(p->kids[1]->syms[RX])->regnum, 0,
            p->syms[0]->u.c.v.i, tmp);
  } else if (p->op == ARG+D) {
    int dstoff = p->syms[2]->u.c.v.i;
    int dstreg = p->syms[1]->u.c.v.i;
    Symbol kidsrx = (kids[0]->syms[RX]->temporary) ?
      kids[0]->syms[RX]->x.dag->syms[RX] :
        kids[0]->syms[RX];
    int src = getregnode(kidsrx)->regnum;
    print("st %%f%d,[%%sp+4*%d+68]\n", src, dstoff);
    print("st %%f%d,[%%sp+4*%d+68]\n", src+1, dstoff+1);
    if (dstreg <= 5)
      print("ld [%%sp+4*%d+68],%%o%d\n", dstoff, dstreg);
    if (dstreg <= 4)
      print("ld [%%sp+4*%d+68],%%o%d\n", dstoff+1, dstreg+1);
  } else if (p->op == ARG+F) {
    int dstoff = p->syms[2]->u.c.v.i;
    int dstreg = p->syms[1]->u.c.v.i;
    Symbol kidsrx = (kids[0]->syms[RX]->temporary) ?
      kids[0]->syms[RX]->x.dag->syms[RX] :
        kids[0]->syms[RX];
    int src = getregnode(kidsrx)->regnum;
    print("st %%f%d,[%%sp+4*%d+68]\n", src, dstoff);
    if (dstreg <= 5)
      print("ld [%%sp+4*%d+68],%%o%d\n", dstoff, dstreg);
  } else if (p->op == LOAD+D) {
    int dst = getregnode(p->syms[RX])->regnum;
    Symbol kidsrx = (kids[0]->syms[RX]->temporary) ?
      kids[0]->syms[RX]->x.dag->syms[RX] :
        kids[0]->syms[RX];
    int src = getregnode(kidsrx)->regnum;
    print("fmovs %%f%d,%%f%d; fmovs %%f%d,%%f%d\n", src, dst, src+1, dst+1);
  } else if (p->op == NEG+D) {
    int dst = getregnode(p->syms[RX])->regnum;
    Symbol kidsrx = (kids[0]->syms[RX]->temporary) ?
      kids[0]->syms[RX]->x.dag->syms[RX] :
        kids[0]->syms[RX];
    int src = getregnode(kidsrx)->regnum;
    print("fnegs %%f%d,%%f%d; fmovs %%f%d,%%f%d\n", src, dst, src+1, dst+1);
  }
  else {
    switch(p->op) {
    case ADDP:
      if (p->islocal || !nflag) {
        print("add %%"); emitasm(kids[0],nts[0]); print(",");
        emitasm(kids[1],nts[1]); print(",%%%s\n",p->syms[RX]->x.name);
        }
      else {
        if (kids[1]->op == CNSTI) {
          unsigned int val = atoi(kids[1]->syms[0]->name);
 
          if (val > MAX_ADDP_CNST) {
            print("set %d,%%g4\n",val << PN_BITS);
            print("add %%"); emitasm(kids[0],nts[0]); 
            print(",%%g4,%%%s\n",p->syms[RX]->x.name);
            }
          else {
            print("add %%"); emitasm(kids[0],nts[0]); 
            print(",%d,%%%s\n",val << PN_BITS,p->syms[RX]->x.name);
            }
          }
        else {
          if ((kids[0]->op == ADDP) || (kids[0]->op == INDIRP))
            {
              assert(kids[1]->op != ADDP);
              assert(kids[1]->op != INDIRP);
              print("sll "); emitasm(kids[1],nts[1]);
              print(",%d,%%g4\n",PN_BITS);
              print("add %%g4,%%"); emitasm(kids[0],nts[0]);
              print(",%%%s\n",p->syms[RX]->x.name);
            }
          else 
            {
              print("sll %%"); emitasm(kids[0],nts[0]);
              print(",%d,%%g4\n",PN_BITS);
              print("add %%g4,"); emitasm(kids[1],nts[1]);
              print(",%%%s\n",p->syms[RX]->x.name);
            }
          }
        }
      break;
    case ADDRFP:
    case ADDRLP:
      print("add %%fp,%d,%%%s\n",p->syms[0]->x.offset,
	    p->syms[RX]->x.name);
      break;
    case BIGLP:
      print("set %d,%%%s\n",p->syms[0]->x.offset,p->syms[RX]->x.name);
      print("add %%fp,%%%s,%%%s\n",p->syms[RX]->x.name,p->syms[RX]->x.name);
      break;
    case GRI:
    case GRS:
    case GRU:
      if (p->syms[RX] != kids[0]->syms[RX]) {
        print("mov %%"); emitasm(kids[0],nts[0]); 
        print(", %%%s\n",p->syms[RX]->x.name);
        }
      break;
    case NOP:
    case I0I:  /* do nothing */
      break;
    /* CASGN only used in non-tempest ASGN(TEST...) */
    case CASGNF: case CASGND:
    case CASGNI: case CASGNC:
    case CASGNS: case CASGNP:
      {
        int testfloat=0;
        int label2 = genlabel(1);
        char *prefix;
        char *call;
        char *suffix;
        int sz=0;
        
        call = (p->op==CASGND) ? "2D" : "2";
        if ((p->op==CASGNF) || (p->op==CASGND)) testfloat = 1;
        if (testfloat) prefix="f"; else prefix="";
        if ((p->op==CASGNF) ||
            (p->op==CASGNI) ||
            (p->op==CASGNP))
          {
          sz = 4;
          suffix = "";
          }
        if (p->op==CASGNS) {suffix = "h"; sz = 2;}
        if (p->op==CASGNC) {suffix = "b"; sz = 1;}
        if (p->op==CASGND) suffix = "d";
        
        print("! CASGN\n");
        
        if (pflag) 
          {
            emitprof(REMOTE_WRITE_ACCESS,p,kids[0]->syms[RX]->x.name);
          }
        if (simflag) {
          print("set ___CacheableWrites, %%g4\n");
          print("ld [%%g4],%%g5\n");
          print("add %%g5,1,%%g5\n");
          print("st %%g5,[%%g4]\n");
          }

        print("xor %%"); emitasm(kids[0],nts[0]);
        print(",%s,%%g4\n",IDREGSTR);
        /* xor with IDREG into g4 */

        print("srl %%");
        emitasm(kids[0],nts[0]); 
        print(",%d,%%g5\n",PN_BITS);
        /* compute local address into g5 -- PN_BITS is sz(pn_id) */

        print("andcc %%g4,%d,%%g0\n",ADDR_MASK);
        print("be,a L.%d; ",label);

        /* delay slot-- scheme IV do store, o/w compute cache-line */
        if (cflag == 4) {
          print("st%s %%%s",suffix,prefix);
          emitasm(kids[1],nts[1]); print(",[%%g5]\n");
          }
        else {
          print("srl %%g5,%d,%%g4\n",OFFSET_BITS);
          }

        if (simflag) {
          print("set ___RemoteCacheWrites, %%g4\n");
          print("ld [%%g4],%%g5\n");
          print("add %%g5,1,%%g5\n");
          print("st %%g5,[%%g4]\n");
          }
        print("mov %%"); emitasm(kids[0],nts[0]);
        print(",%%o0\n");
        if (!testfloat) {
          print("mov %%"); emitasm(kids[1],nts[1]);
          print(",%%o1\n");
        }
        else {
          Symbol kidsrx = (kids[1]->syms[RX]->temporary) ?
            kids[1]->syms[RX]->x.dag->syms[RX] :
              kids[1]->syms[RX];
          int src = getregnode(kidsrx)->regnum;
          
          print("st %%f"); emitasm(kids[1],nts[1]);
          print(", [%%sp+68]; ld [%%sp+68], %%o1\n");
          if (p->op==CASGND) 
            print("st %%f%d, [%%sp+68]; ld [%%sp+68], %%o2\n",src+1);
        }

        if (sz) print("add %%g0,%d,%%o2\n",sz); 
        print("call ___CWrite%s; add %%sp,-80,%%sp\n",call);
        print("add %%sp,80,%%sp\n"); 
        if (cflag != 4) {
          print("ba L.%d; nop\n",label2);

          /* Store local stuff for schemes II & III */
          print("L.%d:\n",label);
          /* ONLY INVALIDATION SCHEME 2 !! */
          if (cflag==2) {
            /* g4 has address >> PN_BITS+OFFSET_BITS */
            print("and %%g4,1023,%%g6\n"); /* compute hashval */
            print("sll %%g6,%d,%%g6\n",ENTRY_SHIFT); 
            print("add %%g6,%d,%%g6\n",TAG_OFFSET);
            print("lduh [%s+%%g6],%%g4\n",TBL_REG);
            print("cmp %%g4,%%g0\n");
            print("be L.%d; ",label2);
          }
          print("st%s %%%s",suffix,prefix);
          emitasm(kids[1],nts[1]); print(",[%%g5]\n");
  
          print("call ___UpdateInvalidTable; ");
          print("mov %%"); emitasm(kids[0],nts[0]); print(", %%o0\n");
          print("add %%sp,80,%%sp\n");
          /* has +12 return */
  
          print("L.%d:\n",label2);
        } /* cflag != 4 */
        else {
          /* don't store local write in scheme IV */
          print("L.%d:\n",label);
          }
        print("! END of CASGN\n");
      } /* case */
      break;
    /* MASGN only used in non-tempest ASGN(TEST...) */
    case MASGNF: case MASGND:
    case MASGNI: case MASGNC:
    case MASGNS: case MASGNP:
      {
        int testfloat=0;
        char *prefix,*suffix;
        
        if ((p->op==MASGNF) || (p->op==MASGND)) testfloat = 1;
        if (testfloat) prefix="f"; else prefix="";
        if ((p->op==MASGNF) ||
            (p->op==MASGNI) ||
            (p->op==MASGNP))
          suffix = "";
        if (p->op==MASGNS) suffix = "h"; 
        if (p->op==MASGNC) suffix = "b"; 
        if (p->op==MASGND) suffix = "d";
        
        print("! MASGN\n");
        /* MASGN gets local address as kid 0 */
        if (simflag) {
          print("set ___MigrateableWrites, %%g4\n");
          print("ld [%%g4],%%g5\n");
          print("add %%g5,1,%%g5\n");
          print("st %%g5,[%%g4]\n");
          }

        /* ONLY INVALIDATION SCHEME 2 !! */
        if (cflag == 2) {
          print("srl %%");
          emitasm(kids[0],nts[0]);
          print(",%d,%%g4\n",OFFSET_BITS);
  
          print("and %%g4,1023,%%g6\n"); /* compute hashval */
          print("sll %%g6,%d,%%g6\n",ENTRY_SHIFT); 
          print("add %%g6,%d,%%g6\n",TAG_OFFSET);
          print("lduh [%s+%%g6],%%g4\n",TBL_REG);
          print("cmp %%g4,%%g0\n");
          print("be L.%d; ",label);
        }

        print("st%s %%%s",suffix,prefix);
        emitasm(kids[1],nts[1]); print(",[%%"); 
        emitasm(kids[0],nts[0]); print("]\n");

        if (cflag != 4)  {
          /* Track local writes except in scheme IV */
          print("call ___UpdateInvalidTable; ");
          print("sll %%"); emitasm(kids[0],nts[0]); 
          print(",%d,%%o0\n",PN_BITS); /* shift for (pseudo)global addr */
          print("add %%sp,80,%%sp\n");
          /* has +12 return */
          }

        /* ONLY INVALIDATION SCHEME 2 !! */
        if (cflag == 2) {
          print("L.%d:\n",label);
        }
        print("! END of MASGN\n");
      } /* case */
      break;
    case ASGND:
      if (p->x.kids[0]->op==VREGP) break;
      else
       {
         Symbol kidsrx = (kids[1]->syms[RX]->temporary) ?
            kids[1]->syms[RX]->x.dag->syms[RX] :
            kids[1]->syms[RX];
         if (kids[0]->op==ADDRFP) {
           print("st %%f%s, [%%",kidsrx->x.name);
           emitasm(kids[0],nts[0]);
           print("]\n");
           print("st %%f%d,[%%",kidsrx->x.regnode->regnum+1);
           emitasm(kids[0],nts[0]);
           print("+4]\n");
         } else {
           print("std %%f%s, [%%",kidsrx->x.name);
           emitasm(kids[0],nts[0]); print("]\n");
         }
       }
      break;
    case ASGNF: case ASGNI: case ASGNP:
    case ASGNC: case ASGNS:
      assert(p->x.kids[0]->op==VREGP); 
      break;
    case INDIRD:
      if (p->x.kids[0]->op==VREGP) break;
      if (kids[0]->op==ADDRFP) {
        print("ld [%%");
        emitasm(kids[0],nts[0]);
        print("], %%f%s\n",p->syms[RX]->x.name);
        print("ld [%%");
        emitasm(kids[0],nts[0]);
        print("+4], %%f%d\n",p->syms[RX]->x.regnode->regnum+1);
      } else {
        print("ldd [%%"); emitasm(kids[0],nts[0]);
        print("], %%f%s\n",p->syms[RX]->x.name);
      }
      break;
    case INDIRF: case INDIRP: case INDIRI: 
    case INDIRS: case INDIRC: 
      assert(p->x.kids[0]->op==VREGP);
      break;
    case RETV: case RETF: case RETD: case RETI: /* do nothing */
      break;
    case NEF: case NED: case EQD: case EQF:
      ty=optype(p->op);
      print("fcmp%s %%f",(ty==F) ? "s":"d");
      emitasm(kids[0],nts[0]);
      print(", %%f");
      emitasm(kids[1],nts[1]);
      print("; nop; fb%s %s; nop\n",(generic(p->op)==EQ) ? "e" : "ne",
            p->syms[0]->x.name);
      break;
    case LTF: case LTD: case GTF: case GTD:
      ty=optype(p->op);
      print("fcmp%s %%f",(ty==F) ? "s":"d");
      emitasm(kids[0],nts[0]);
      print(", %%f");
      emitasm(kids[1],nts[1]);
      print("; nop; fb%s %s; nop\n",(generic(p->op)==LT) ? "l" : "g",
            p->syms[0]->x.name);
      break;
    case LEF: case LED: case GEF: case GED:
      ty=optype(p->op);
      print("fcmp%s %%f",(ty==F) ? "s":"d");
      emitasm(kids[0],nts[0]);
      print(", %%f");
      emitasm(kids[1],nts[1]);
      print("; nop; fb%s %s; nop\n",(generic(p->op)==LE) ? "le" : "ge",
            p->syms[0]->x.name);
      break;
      /* must redo CALL nodes for spaghetti stack */
    case CALLD: case CALLF: case CALLI: case CALLV:
      print("call ");
      emitasm(kids[0],nts[0]);
      if (mflag) {
        print("; add %%o7,4,%%o7\n");
        print(".word _%s.cs\n",curfunc->x.name);
        print("add %%sp,%d,%%sp\n",p->syms[0]->u.c.v.i);
      }
      else print("; nop\n");
      break;
    case CALLB:
      if (mflag) 
        {
          print("st %%");
          emitasm(kids[1],nts[1]);
          print(",[%%sp+64]\n");
        }
      print("call ");
      emitasm(kids[0],nts[0]);
      if (mflag) 
        {
          print("; add %%o7,4,%%o7\n");
          print(".word _%s.cs\n",curfunc->x.name);
          print("add %%sp,%d,%%sp\n",p->syms[0]->u.c.v.i);
        }
      else
        {
          print("; st %%");
          emitasm(kids[1],nts[1]);
          print(",[%%sp+64]\n");
        }
      break;
    case ARGB:
      {
        Type type;
        Node kid;
        static int tmp[] = {4,5,6};
        dalign = 4;
        if (p->kids[0]->op==MTESTP && tempest) assert(0);
        kid = ((generic(p->kids[0]->op)==TEST) || (p->op==MTESTP)) 
          ? p->kids[0]->x.kids[0] :
            p->kids[0];
        type = (generic(kid->op)==INDIR) ?
          kid->x.kids[0]->syms[0]->type->type :
            kid->syms[0]->type;
        salign = type->align;
        blkcopy(14,68+p->syms[1]->u.c.v.i*4,
        	getregnode(p->kids[0]->syms[RX])->regnum,0,
        	type->size,tmp);
      }
      break;
    case RCALLF: case RCALLD: case RCALLI: case RCALLC: case RCALLS: 
    case RCALLU: case RCALLP: case RCALLV: case RCALLB:
      {
        char *funname=p->x.args->x.args->x.kids[0]->syms[0]->x.name;
        char *fcreg = p->x.args->syms[RX]->x.name;
        char *preg = p->x.args->x.args->x.args->syms[RX]->x.name;
        Node tmpnode;
        int label2=genlabel(1);
        int ty=optype(p->op);
        int tyret;
        int argcount=0;
        
        for (tmpnode=p->x.args->x.args->x.args->x.args; tmpnode;
             tmpnode=tmpnode->x.args) argcount++;
        tyret=1; /* all integer types */
        if (ty==F) tyret=2;  /* floating point return */
        if (ty==D) tyret=3;  /* double return */
        if (ty==B) tyret=
          p->x.args->x.args->x.kids[0]->syms[0]->type->type->size;
        /* perform test on pointer, if local, perform normal future */
        print("! RCALL\n");
        if (pflag) 
          {
            rpc_emitprof(MIG_ACCESS,p,preg);
          }

        if (simflag) {
          print("set ___RpcTests, %%l0\n");
          print("ld [%%l0],%%l1\n");
          print("add %%l1,1,%%l1\n");
          print("st %%l1,[%%l0]\n");
        }
        print("xor %%%s,%s,%%l0\n",preg,IDREGSTR);
        print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
        print("be L.%d; nop\n",label2);
        /* This is a non-local pointer -- send message and steal */
        print("cmp %%g0,%%%s\n",preg);
        print("be L.%d; nop\n",label2);
        /* check for null pointer before sending message */
        print("and %%%s,%d,%%l0\n",preg,ADDR_MASK);
        print("add %%g0,%d,%%l1\n",tyret);
        print("add %%g0,%d,%%l2\n",argcount);
        print("set %s,%%l3\n",funname);
        print("mov %%%s,%%l4\n",fcreg);
        print("st %%fp,[%%%s+%d]\n",fcreg,FBUF_FP);
        print("mov %%%s,%%fp\n",fcreg);
        print("call ___SendRpc; nop\n");
        /* Already got frame extension from this being a 1 argument function */
        print("nop\n"); /* has +12 return */
        print("mov %%fp,%%o0\n");
        print("ld [%%fp+%d],%%fp\n",FBUF_FP);
        print("sethi %%hi(_%s.cs),%%o2\n",curfunc->x.name);
        print("call ___Suspend; ");
        print("or %%o2,%%lo(_%s.cs),%%o2\n",curfunc->x.name);
        print("ba L.%d; nop\n",label);
        print("L.%d:\n",label2);
        print("st %%fp,[%%%s+%d]\n",fcreg,FBUF_FP);
        if (optype(p->op)==B)
          print("add %%%s,%d,%%l0; st %%l0,[%%sp+64]\n",fcreg,FCELL_VALUE);
        print("call %s; mov %%%s,%%fp\n",funname,fcreg);
        /* has +12 return */
        print(".word _%s.cs\n",curfunc->x.name);
        /* Normal return sequence begins here */
        switch(optype(p->op))
          {
          case I: case C: case U:
          case P: case S:
            print("st %%o0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          case F:
            print("stf %%f0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          case D:
            print("std %%f0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          default:
            break;
          }
        print("ld [%%fp+%d],%%fp\n",FBUF_FP);
        print("! END of RCALL\n");
        print("L.%d:\n",label);
        break;
      }
    case RPCF: case RPCD: case RPCI: case RPCC: case RPCS: case RPCU:
    case RPCP: case RPCV: case RPCB:
      {
        char *funname=p->x.args->x.args->x.kids[0]->syms[0]->x.name;
        char *fcreg = p->x.args->syms[RX]->x.name;
        char *preg = p->x.args->x.args->x.args->syms[RX]->x.name;
        Node tmpnode;
        int label2=genlabel(1);
        int ty=optype(p->op);
        int tyret;
        int argcount=0;
        
        for (tmpnode=p->x.args->x.args->x.args->x.args; tmpnode;
             tmpnode=tmpnode->x.args) argcount++;
        tyret=1; /* all integer types */
        if (ty==F) tyret=2;  /* floating point return */
        if (ty==D) tyret=3;  /* double return */
        if (ty==B) tyret=
          p->x.args->x.args->x.kids[0]->syms[0]->type->type->size;
        /* perform test on pointer, if local, perform normal future */
        print("! RPC\n");
        if (pflag) 
          {
            rpc_emitprof(MIG_ACCESS,p,preg);
          }

        if (simflag) {
          print("set ___RpcTests, %%l0\n");
          print("ld [%%l0],%%l1\n");
          print("add %%l1,1,%%l1\n");
          print("st %%l1,[%%l0]\n");
        }
        print("xor %%%s,%s,%%l0\n",preg,IDREGSTR);
        print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
        print("be L.%d; nop\n",label2);
        /* This is a non-local pointer -- send message and steal */
        print("cmp %%g0,%%%s\n",preg);
        print("be L.%d; nop\n",label2);
        /* check for null pointer before sending message */
        print("and %%%s,%d,%%l0\n",preg,ADDR_MASK);
        print("add %%g0,%d,%%l1\n",tyret);
        print("add %%g0,%d,%%l2\n",argcount);
        print("set %s,%%l3\n",funname);
        print("mov %%%s,%%l4\n",fcreg);
        print("call ___SendRpc; nop\n");
        /* Already got frame extension from this being a 1 argument function */
        print("nop\n"); /* has +12 return */
        print("ba L.%d; nop\n",label);
        print("L.%d:\n",label2);
      }
      /* Don't put a break here as we want to fall through into future */
    case FUTUREF:
    case FUTURED:
    case FUTUREI:
    case FUTUREB:
    case FUTUREC:
    case FUTURES:
    case FUTUREU:
    case FUTUREP:
    case FUTUREV:
      {
        char *funname=p->x.args->x.args->x.kids[0]->syms[0]->x.name;
        char *fcreg = p->x.args->x.kids[0]->syms[RX]->x.name;
        int label2 = genlabel(1);
        char *prefix;
        int offset3 = OFFSET3;
        
        print("! FUTURE\n");
        /* since we know FC_EMPTY is 0, can use %g0 */
        /*print("st %%g0,[%%%s+%d]\n",fcreg,FCELL_STATE);*/

        /* VISUALIZE */
        if (vflag) print("call _mccvisFstackPush; nop\n");

        print("st %s,[%%%s+%d]\n",FUTREGSTR,fcreg,FCELL_NEXT);
        /* We can find fp on rollback */
        /*        print("st %%fp,[%%%s+%d]\n",fcreg,FBUF_FP); */
        if (optype(p->op)==B)
          print("add %%%s,%d,%%l0; st %%l0,[%%sp+64]\n",fcreg,FCELL_VALUE);
        print("mov %%%s,%s\ncall %s; add %%o7,%d,%%o7\n",
              fcreg,FUTREGSTR,funname,offset3);
        print(".word _%s.cs\n",curfunc->x.name);
        print("nop\n");
        /* Abnormal return begins here */
        print("ba ___stolen; ");
        switch (optype(p->op))
          {
          case I: case S: case P:
          case U: case C:
            print("st %%o0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          case F:
            print("stf %%f0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          case D:
            print("std %%f0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          default:
            print("nop\n");
            break;
          }
        /* Note in the above code I do not reload the frame pointer,
           which currently points to the future-cell, as was done in
           the register unrolling code -- this will be done by resume.
           There can be no future-cells to be stolen according to the
           priority scheme, so I do not need to pass the frame pointer
           or a CSR address to message dispatch */
        
        /* Normal return sequence begins here */
        print(".word _%s.cs\n",curfunc->x.name);
        print("nop\n");
        switch(optype(p->op))
          {
          case I: case C: case U:
          case P: case S:
            print("st %%o0,[%s+%d]\n",FUTREGSTR,FCELL_VALUE);
            break;
          case F:
            print("stf %%f0,[%s+%d]\n",FUTREGSTR,FCELL_VALUE);
            break;
          case D:
            print("std %%f0,[%s+%d]\n",FUTREGSTR,FCELL_VALUE);
            break;
          default:
            print("nop\n");
            break;
          }
        /* I don't need to store a return address as this is also found
           in register unrolling.  Also, the frame pointer is correct
           here, and I know the future-cell is at the top of the stack
           since a normal return */
        print("ld [%s+%d],%s\n",FUTREGSTR,FCELL_NEXT,FUTREGSTR);
 
        /* VISUALIZE */
        if (vflag) print("call _mccvisFstackPop; nop\n");

        print("! END of FUTURE\n");
      }
      print("L.%d:\n",label);
      break;
    case MULTIRPCF: case MULTIRPCD: case MULTIRPCI: case MULTIRPCC: 
    case MULTIRPCS: case MULTIRPCU: case MULTIRPCP: case MULTIRPCV: 
    case MULTIRPCB:
      {
        char *funname=p->x.args->x.args->x.kids[0]->syms[0]->x.name;
        char *mcreg=p->x.args->syms[RX]->x.name;
        char *preg =p->x.args->x.args->x.args->x.args->syms[RX]->x.name;
        char *resultreg=p->x.args->x.args->x.args->syms[RX]->x.name;
        Node tmpnode;
        int label2=genlabel(1);
        int ty=optype(p->op);
        int tyret;
        int argcount=0;
        
        for (tmpnode=p->x.args->x.args->x.args->x.args->x.args; tmpnode;
             tmpnode=tmpnode->x.args) argcount++;
        tyret=1; /* all integer types */
        if (ty==F) tyret=2;  /* floating point return */
        if (ty==D) tyret=3;  /* double return */
        if (ty==B) tyret=
          p->x.args->x.args->x.kids[0]->syms[0]->type->type->size;
        /* perform test on pointer, if local, perform normal future */
        print("! MULTIRPC\n");
        if (pflag) 
          {
            rpc_emitprof(MIG_ACCESS,p,preg);
          }

        if (simflag) {
          print("set ___RpcTests, %%l0\n");
          print("ld [%%l0],%%l1\n");
          print("add %%l1,1,%%l1\n");
          print("st %%l1,[%%l0]\n");
        }
        /* Be sure to remember where to put answer */
        print("st %%%s,[%%%s+%d]\n",mcreg,resultreg,MCELL_SYNC);
        /* fp now stored in MULTIINIT */
        /*print("st %%fp,[%%%s+%d]\n",mcreg,MCELL_FP);*/
        print("xor %%%s,%s,%%l0\n",preg,IDREGSTR);
        print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
        print("be L.%d; nop\n",label2);
        /* This is a non-local pointer -- send message and steal */
        print("cmp %%g0,%%%s\n",preg);
        print("be L.%d; nop\n",label2);
        /* check for null pointer before sending message */
        print("and %%%s,%d,%%l0\n",preg,ADDR_MASK);
        print("add %%g0,%d,%%l1\n",tyret);
        print("add %%g0,%d,%%l2\n",argcount);
        print("set %s,%%l3\n",funname);
        print("mov %%%s,%%l4\n",resultreg);
        print("call ___SendMultiRpc; nop\n");
        /* Already got frame extension from this function having args */
        print("nop\n"); /* has +12 return */
        print("ba L.%d; nop\n",label);
        print("L.%d:\n",label2);
        /* Ready to call function here */
        if (optype(p->op)==B) {
          print("add %%%s,8,%%l0\n",resultreg);
          print("st %%l0,[%%sp+64]\n");
          }
        print("call %s; mov %%%s,%%fp\n",funname,resultreg);
        /* We know this function will clean up its stack frame and has
           +12 return */
        print(".word _%s.cs\n",curfunc->x.name);
        print("ld [%%fp+%d],%%l0\n",MCELL_SYNC);
        switch(optype(p->op))
          {
          case I: case C: case U:
          case P: case S:
            print("st %%o0,[%%fp+%d]\n",MC_INT_VAL);
            break;
          case F:
            print("stf %%f0,[%%fp+%d]\n",MC_FLT_VAL);
            break;
          case D:
            print("std %%f0,[%%fp+%d]\n",MC_DBL_VAL);
            break;
          default: /* don't need to do anything for block */
            break;
          }
        print("ld [%%l0+%d],%%fp\n",MCELL_FP);
        print("! END of MULTIRPC\n");
        print("L.%d:\n",label);
      }
      break;
    case MULTIFUTUREF: case MULTIFUTURED: case MULTIFUTUREI: case MULTIFUTUREC: 
    case MULTIFUTURES: case MULTIFUTUREU: case MULTIFUTUREP: case MULTIFUTUREV: 
    case MULTIFUTUREB:
      {
        char *funname=p->x.args->x.args->x.kids[0]->syms[0]->x.name;
        char *mcreg=p->x.args->syms[RX]->x.name;
        char *resultreg=p->x.args->x.args->x.args->syms[RX]->x.name;
        Node tmpnode;
        int label2=genlabel(1);
        int ty=optype(p->op);
        int tyret;
        int argcount=0;
        
        for (tmpnode=p->x.args->x.args->x.args->x.args->x.args; tmpnode;
             tmpnode=tmpnode->x.args) argcount++;
        tyret=1; /* all integer types */
        if (ty==F) tyret=2;  /* floating point return */
        if (ty==D) tyret=3;  /* double return */
        if (ty==B) tyret=
          p->x.args->x.args->x.kids[0]->syms[0]->type->type->size;
        print("! MULTIFUTURE\n");
      
        /* Be sure to remember where to put answer */
        print("st %%%s,[%%%s+%d]\n",mcreg,resultreg,MCELL_SYNC);
        /* fp now stored in MULTIINIT */
        /*print("st %%fp,[%%%s+%d]\n",mcreg,MCELL_FP);*/

/* new for MULTIFUTURE */
        print("set L.%d,%%l0\n",label);
        print("st %%l0,[%%%s+%d]\n",mcreg,MCELL_STEALADDR);
        print("set ___MultiFutStk,%%l0\n");
        print("st %%%s,[%%l0]\n",mcreg);

        /* Save callee-saves on stack */ 
        print("st %%i0,[%%fp+%d]\n",CSBUF_i0);
        print("st %%i1,[%%fp+%d]\n",CSBUF_i1);
        print("st %%i2,[%%fp+%d]\n",CSBUF_i2);
        print("st %%i3,[%%fp+%d]\n",CSBUF_i3);
        print("st %%i4,[%%fp+%d]\n",CSBUF_i4);
        print("st %%i5,[%%fp+%d]\n",CSBUF_i5);

        /* Ready to call function here */
        if (optype(p->op)==B) {
          print("add %%%s,8,%%l0\n",resultreg);
          print("st %%l0,[%%sp+64]\n");
          }
        print("call %s; mov %%%s,%%fp\n",funname,resultreg);
        print(".word _%s.cs\n",curfunc->x.name);
        /* We know this function will clean up its stack frame and has
           +12 return */
        print("set ___MultiFutStk,%%o1\n");
        print("ld [%%o1],%%l1\n");
        print("ld [%%fp+%d],%%l0\n",MCELL_SYNC);
        switch(optype(p->op))
          {
          case I: case C: case U:
          case P: case S:
            print("st %%o0,[%%fp+%d]\n",MC_INT_VAL);
            break;
          case F:
            print("stf %%f0,[%%fp+%d]\n",MC_FLT_VAL);
            break;
          case D:
            print("std %%f0,[%%fp+%d]\n",MC_DBL_VAL);
            break;
          default: /* don't need to do anything for block */
            break;
          }
        /* Check if not stolen, or something to steal! */
        print("cmp %%l0,%%l1\n");
        print("bne ___MultiStolen; mov %%l0,%%o0\n");
        print("ld [%%l0+%d],%%fp\n",MCELL_FP);
/* new for MULTIFUTURE */
        print("st %%g0,[%%o1]\n");
        /* Reload callee-saves from stack */ 
        print("ld [%%fp+%d],%%i0\n",CSBUF_i0);
        print("ld [%%fp+%d],%%i1\n",CSBUF_i1);
        print("ld [%%fp+%d],%%i2\n",CSBUF_i2);
        print("ld [%%fp+%d],%%i3\n",CSBUF_i3);
        print("ld [%%fp+%d],%%i4\n",CSBUF_i4);
        print("ld [%%fp+%d],%%i5\n",CSBUF_i5);
        print("! END of MULTIFUTURE\n");
        print("L.%d:\n",label);
      }
      break;
    case SRPCF: case SRPCD: case SRPCI: case SRPCC: case SRPCS: case SRPCU:
    case SRPCP: case SRPCV: case SRPCB:
      {
        char *funname=p->x.args->x.args->x.kids[0]->syms[0]->x.name;
        char *fcreg = p->x.args->syms[RX]->x.name;
        char *preg = p->x.args->x.args->x.args->syms[RX]->x.name;
        Node tmpnode;
        int label2=genlabel(1);
        int ty=optype(p->op);
        int tyret;
        int argcount=0;
        
        for (tmpnode=p->x.args->x.args->x.args->x.args; tmpnode;
             tmpnode=tmpnode->x.args) argcount++;
        tyret=1; /* all integer types */
        if (ty==F) tyret=2;  /* floating point return */
        if (ty==D) tyret=3;  /* double return */
        if (ty==B) tyret=
          p->x.args->x.args->x.kids[0]->syms[0]->type->type->size;
        /* perform test on pointer, if local, perform normal future */
        print("! SRPC\n");
        if (pflag) 
          {
            rpc_emitprof(MIG_ACCESS,p,preg);
          }

        if (simflag) {
          print("set ___RpcTests, %%l0\n");
          print("ld [%%l0],%%l1\n");
          print("add %%l1,1,%%l1\n");
          print("st %%l1,[%%l0]\n");
        }
        print("xor %%%s,%s,%%l0\n",preg,IDREGSTR);
        print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
        print("be L.%d; nop\n",label2);
        /* This is a non-local pointer -- send message and steal */
        print("cmp %%g0,%%%s\n",preg);
        print("be L.%d; nop\n",label2);
        /* check for null pointer before sending message */
        print("and %%%s,%d,%%l0\n",preg,ADDR_MASK);
        print("add %%g0,%d,%%l1\n",tyret);
        print("add %%g0,%d,%%l2\n",argcount);
        print("set %s,%%l3\n",funname);
        print("mov %%%s,%%l4\n",fcreg);
        print("call ___SendRpc; nop\n");
        /* Already got frame extension from this being a 1 argument function */
        print("nop\n"); /* has +12 return */
        print("ba L.%d; nop\n",label);
        print("L.%d:\n",label2);
      }
      /* Don't break here-- want to fall through */
    case SFUTUREF:
    case SFUTURED:
    case SFUTUREI:
    case SFUTUREB:
    case SFUTUREC:
    case SFUTURES:
    case SFUTUREU:
    case SFUTUREP:
    case SFUTUREV:
      {
        char *funname=p->x.args->x.args->x.kids[0]->syms[0]->x.name;
        char *fcreg = p->x.args->x.kids[0]->syms[RX]->x.name;
        int label2 = genlabel(1);
        char *prefix;
        int offset3 = SOFFSET3;
        
        print("! SFUTURE\n");
        /* since we know FC_EMPTY is 0, can use %g0 */
        /*print("st %%g0,[%%%s+%d]\n",fcreg,FCELL_STATE);*/
        print("st %s,[%%%s+%d]\n",FUTREGSTR,fcreg,FCELL_NEXT);
        /* We can find fp on rollback */
        /*        print("st %%fp,[%%%s+%d]\n",fcreg,FBUF_FP); */
        if (optype(p->op)==B)
          print("add %%%s,%d,%%l0; st %%l0,[%%sp+64]\n",fcreg,FCELL_VALUE);
        print("mov %%%s,%s\ncall %s; add %%o7,%d,%%o7\n",
              fcreg,FUTREGSTR,funname,offset3);
        
        /* Remote Steal code-- have %o0 be pointer for migration */
        print("set _%s.cs,%%o4\n",curfunc->x.name);
        print("set %d,%%o1\n",framesize);
        print("set %d,%%o2\n",callerOffset);
        print("call ___Migrate; or %%g0,%d,%%o3\n",structReturn);
        print("ba L.%d; nop\n",label);

        /* Abnormal returns begin here */
        print(".word _%s.cs\n",curfunc->x.name);
        print("nop\n");
        print("ba ___lazy_stolen_remote; ");
        switch (optype(p->op))
          {
          case F:
            print("mov 2,%%o1\n");
            break;
          case D:
            print("mov 3,%%o1\n");
            break;
          case I: case S: case P:
          case U: case C:
            print("mov 1,%%o1\n");
            break;
          case B:
            print("mov 4,%%o1\n");
            break;
          default:
            print("mov %%g0,%%o1\n");
            break;
          }
        print(".word _%s.cs\n",curfunc->x.name);
        print("nop\n");
        switch (optype(p->op))
          {
          case F:
            print("mov 2,%%o1\n");
            break;
          case D:
            print("mov 3,%%o1\n");
            break;
          case I: case S: case P:
          case U: case C:
            print("mov 1,%%o1\n");
            break;
          case B:
            print("mov 4,%%o1\n");
            break;
          default:
            print("mov %%g0,%%o1\n");
            break;
          }
        print("ba ___lazy_stolen; ");
        switch (optype(p->op))
          {
          case I: case S: case P:
          case U: case C:
            print("st %%o0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          case F:
            print("stf %%f0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          case D:
            print("std %%f0,[%%fp+%d]\n",FCELL_VALUE);
            break;
          default:
            print("nop\n");
            break;
          }

        /* Note in the above code I do not reload the frame pointer,
           which currently points to the future-cell, as was done in
           the register unrolling code -- this will be done by resume.
           There can be no future-cells to be stolen according to the
           priority scheme, so I do not need to pass the frame pointer
           or a CSR address to message dispatch */
        
        /* Normal return sequence begins here */
        print(".word _%s.cs\n",curfunc->x.name);
        print("nop\n");
        switch(optype(p->op))
          {
          case I: case C: case U:
          case P: case S:
            print("st %%o0,[%s+%d]\n",FUTREGSTR,FCELL_VALUE);
            break;
          case F:
            print("stf %%f0,[%s+%d]\n",FUTREGSTR,FCELL_VALUE);
            break;
          case D:
            print("std %%f0,[%s+%d]\n",FUTREGSTR,FCELL_VALUE);
            break;
          default:
            print("nop\n");
            break;
          }
        /* I don't need to store a return address as this is also found
           in register unrolling.  Also, the frame pointer is correct
           here, and I know the future-cell is at the top of the stack
           since a normal return */
        print("ld [%s+%d],%s\n",FUTREGSTR,FCELL_NEXT,FUTREGSTR);
        print("! END of SFUTURE\n");
      }
      print("L.%d:\n",label);
      break;
    case RTOUCH:
      /* I assume the argument will take care of this being in %o0 */
      {
        print("! BEGIN of EAGER_TOUCH\n");
        /*print("ld [%%o0+%d],%%l0\n",FCELL_STATE);*/
        print("ld [%%o0+%d],%%l0\n",FCELL_NEXT);
        print("andcc %%l0,3,%%g0\n");
        print("be L.%d\n",label);
        print("sethi %%hi(_%s.cs),%%o2\n",curfunc->x.name);
        print("call ___EagerSuspend; ");
        print("or %%o2,%%lo(_%s.cs),%%o2\n",curfunc->x.name);
        print("L.%d:\n",label);
        print("! END of EAGER_TOUCH\n");
      }
      break;
    case TOUCHI:
      /* I assume the argument will take care of this being in %o0 */
      {
        print("! BEGIN of TOUCH\n");
        /*print("ld [%%o0+%d],%%l0\n",FCELL_STATE);*/
        print("ld [%%o0+%d],%%l0\n",FCELL_NEXT);
        print("andcc %%l0,3,%%g0\n");
        print("be L.%d\n",label);

        /* VISUALIZE */
        if (vflag) print("nop\ncall _mccvisProcTouch; nop\n");

        print("sethi %%hi(_%s.cs),%%o2\n",curfunc->x.name);
        print("call ___Suspend; ");
        print("or %%o2,%%lo(_%s.cs),%%o2\n",curfunc->x.name);
        print("L.%d:\n",label);
        print("! END of TOUCH\n");
      }
      break;
    case STOUCH:
      /* I assume the argument will take care of this being in %o0 */
      {
        int label2 = genlabel(1);

        print("! BEGIN of STOUCH\n");
        /*print("ld [%%o0+%d],%%l0\n",FCELL_STATE);*/
        print("ld [%%o0+%d],%%l0\n",FCELL_NEXT);
        print("andcc %%l0,3,%%g0\n");
        print("be L.%d\n",label);
        print("ld [%%fp-8],%%l0\n"); /* get ret addr */
        print("set retaddr,%%l1\n");
        print("cmp %%l0,%%l1\n");
        print("bne L.%d; sethi %%hi(_%s.cs),%%o2\n",label2,curfunc->x.name);
        print("or %%o2,%%lo(_%s.cs),%%o2\n",curfunc->x.name);
        print("call ___LazySuspend; add %%o7,8,%%o7\n");
        /* jump over suspend code below */
        print("L.%d:\n",label2);
        print("call ___Suspend; ");
        print("or %%o2,%%lo(_%s.cs),%%o2\n",curfunc->x.name);
        print("L.%d:\n",label);
        print("! END of STOUCH\n");
      }
      break;
    case MULTIINIT:
      /* I assume the argument will take care of this being in %o0 */
      print("! MULTIINIT (store count of 0 and fp)\n");
      print("st %%g0,[%%o0+%d]\n",MCELL_COUNT);
      print("st %%fp,[%%o0+%d]\n",MCELL_FP);
      print("st %%g0,[%%o0+%d]\n",MCELL_PC);
      print("! END of MULTIINIT\n");
      break;
    case MTOUCH:
      print("! MTOUCH\n");
      print("ld [%%o0+%d],%%l0\n",MCELL_COUNT);
      print("cmp %%l0,%%g0\n");
      print("be L.%d\n",label);
      print("sethi %%hi(_%s.cs),%%o2\n",curfunc->x.name);
      print("call ___MultiSuspend; ");
      print("or %%o2,%%lo(_%s.cs),%%o2\n",curfunc->x.name);
      print("L.%d:\n",label);
      print("! END of MTOUCH\n");
      break;
    case MERGEPH:
    case UNPHASE:
    case MIGRPH:
      break;
    case ABORTONMISS:
      AbortOnMiss = 1;
      break;
    case ENDABORTONMISS:
      AbortOnMiss = 0;
      break;
    case NOTEST:
      DOTEST = 0;
      break;
    case RETEST:
      DOTEST = 1;
      break;
    case PREFETCHP:
      if (tempest) {
        print("ld [%%r8],%%g0 ! LOCAL\n");
        break;
      }
      
      if (!p->reallytest) 
        {
          print("! NOTEST -- PREFETCH\n");
          if (simflag) {
            print("set ___Notests, %%l0\n");
            print("ld [%%l0],%%l1\n");
            print("add %%l1,1,%%l1\n");
            print("st %%l1,[%%l0]\n");
          }
          print("srl %%r8,%d,%%%s\n",PN_BITS,p->syms[2]->x.name);
          break;
        }
      
      print("! PREFETCH \n");
      if (pflag) 
        {
          emitprof(CACHE_ACCESS,p,"r8");
        }
      if (simflag) {
        print("set ___TotalCacheReads, %%l0\n");
        print("ld [%%l0],%%l1\n");
        print("add %%l1,1,%%l1\n");
        print("st %%l1,[%%l0]\n");
      }
      print("xor %%r8, %s, %%l0\n",IDREGSTR);
      print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
      print("be,a L.%d; srl %%r8,%d,%%%s\n",label,
            PN_BITS,p->syms[RX]->x.name);
      print("call ___Cache2; nop\n");
      print("add %%sp,88,%%sp\n"); /* fix up stack, if msg3  */    
      print("L.%d:\n",label);
      print("! END of PREFETCH\n");
      break; /* jump out of case CALLV */
    case LOCALP:
      if (tempest) {
        print("ld [%%r8],%%g0 ! LOCAL\n");
        break;
      }
      if (DOTEST && p->reallytest) 
        {
          print("! LOCALP \n");
          if (pflag) 
            {
              emitprof(MIG_ACCESS,p,"r8");
            }
          if (simflag) {
            print("set ___TotalMigAccesses, %%l0\n");
            print("ld [%%l0],%%l1\n");
            print("add %%l1,1,%%l1\n");
            print("st %%l1,[%%l0]\n");
          }
          print("xor %%r8, %s, %%l0\n",IDREGSTR);
          print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
          print("be L.%d; srl %%r8,%d,%%%s\n",label,
                PN_BITS,p->syms[RX]->x.name);
          migrate_spillfloat(p->x.freemask);
          print("set _%s.cs,%%o4\n",curfunc->x.name);
          print("set %d,%%o1\n",framesize);
          print("set %d,%%o2\n",callerOffset);
          /* Why do we do this? -- because %o0 may be modified by srl */
          print("xor %%l0,%s,%%o0\n",IDREGSTR);
          print("call ___Migrate; or %%g0,%d,%%o3\n",structReturn);
          migrate_reloadfloat(p->x.freemask);
          print("L.%d:\n",label);
          print("! END of LOCALP\n");
        }
      else 
        {
          print("! NOTEST --LOCALP\n");
          if (simflag) {
            print("set ___Notests, %%l0\n");
            print("ld [%%l0],%%l1\n");
            print("add %%l1,1,%%l1\n");
            print("st %%l1,[%%l0]\n");
          }
          print("srl %%r8,%d,%%%s\n",PN_BITS,p->syms[2]->x.name);
        }
      break; /* leaves the switch statement */
    case MTESTP:
      if (tempest) {
        assert(p->syms[RX]==kids[0]->syms[RX]);
        break;
      }
      if (DOTEST && p->reallytest) 
        {
          print("! TESTP ");
          emitasm(kids[0],nts[0]);
          print("\n");
          if (pflag) 
            {
              emitprof(MIG_ACCESS,p,kids[0]->syms[RX]->x.name);
            }
          if (simflag) {
            print("set ___TotalMigAccesses, %%l0\n");
            print("ld [%%l0],%%l1\n");
            print("add %%l1,1,%%l1\n");
            print("st %%l1,[%%l0]\n");
          }
          print("xor %%"); emitasm(kids[0],nts[0]);
          print(",%s,%%l0\n",IDREGSTR);
          print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
          print("be,a L.%d; srl %%",label);
            emitasm(kids[0],nts[0]);
            print(",%d,%%%s\n",PN_BITS,p->syms[RX]->x.name);
          migrate_spillfloat(p->x.freemask);
          print("set _%s.cs,%%o4\n",curfunc->x.name);
          print("set %d,%%o1\n",framesize);
          print("set %d,%%o2\n",callerOffset);
          print("mov %%"); emitasm(kids[0],nts[0]);
          print(", %%o0\n");
          print("call ___Migrate; or %%g0,%d,%%o3\n",structReturn);
          print("mov %%o0,%%%s\n",p->syms[RX]->x.name);
          migrate_reloadfloat(p->x.freemask);
          print("L.%d:\n",label);
          print("! END of TESTP\n");
        }
      else 
        {
          print("! NOTEST ");
          emitasm(kids[0],nts[0]);
          print("\n");
          if (simflag) {
            print("set ___Notests, %%l0\n");
            print("ld [%%l0],%%l1\n");
            print("add %%l1,1,%%l1\n");
            print("st %%l1,[%%l0]\n");
          }
          print("srl %%");
          emitasm(kids[0],nts[0]);
          print(",%d,%%%s\n",PN_BITS,p->syms[RX]->x.name);
        }
      break;
    case TESTP:
      if (tempest) {
        assert(p->syms[RX]==kids[0]->syms[RX]);
        break;
      }
      print("! MERGEPH ");
      emitasm(kids[0],nts[0]);
      print("\n");
      if (!p->reallytest) 
        {
          if (simflag) {
            print("set ___Notests, %%l0\n");
            print("ld [%%l0],%%l1\n");
            print("add %%l1,1,%%l1\n");
            print("st %%l1,[%%l0]\n");
          }
          print("srl %%"); emitasm(kids[0],nts[0]);
          print(",%d,%%%s\n",PN_BITS,p->syms[2]->x.name);
          print("! EEB notest\n");
          break;
        }
      if (pflag) 
        {
          emitprof(CACHE_ACCESS,p,kids[0]->syms[RX]->x.name);
        }

      if (simflag) {
        print("set ___TotalCacheReads, %%l0\n");
        print("ld [%%l0],%%l1\n");
        print("add %%l1,1,%%l1\n");
        print("st %%l1,[%%l0]\n");
      }
      print("xor %%"); emitasm(kids[0],nts[0]);
      print(",%s,%%l0\n",IDREGSTR);
      print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
      print("be,a L.%d; srl %%",label);
      emitasm(kids[0],nts[0]);
      print(",%d,%%%s\n",PN_BITS,p->syms[RX]->x.name);
      if (simflag) {
        print("set ___RemoteCacheReads, %%l0\n");
        print("ld [%%l0],%%l1\n");
        print("add %%l1,1,%%l1\n");
        print("st %%l1,[%%l0]\n");
      }
      if (AbortOnMiss) print("call ___CacheAbort; ");
      else print("call ___Cache2; ");
      print("mov %%");
      emitasm(kids[0],nts[0]);
      print(",%%o0\n");
      print("add %%sp,88,%%sp\n"); /* fix stack if msg3 */
      print("mov %%o0,%%%s\n",p->syms[RX]->x.name);
      print("L.%d:\n",label);
      print("! END of MERGPH--Local\n");
      break;
    case MIGRATEV:
      print("! MIGRATE\n");
      if (pflag) 
        {
          emitprof(MIG_ACCESS,p,"r8");
        }

      if (simflag) {
        print("set ___DirectMigrations, %%l0\n");
        print("ld [%%l0],%%l1\n");
        print("add %%l1,1,%%l1\n");
        print("st %%l1,[%%l0]\n");
      }
      if (!tempest) migrate_spillfloat(p->x.freemask);
      print("set _%s.cs,%%o4\n",curfunc->x.name);
      print("set %d,%%o1\n",framesize);
      print("set %d,%%o2\n",callerOffset);
      print("call ___Migrate; or %%g0,%d,%%o3\n",structReturn);
      if (!tempest) migrate_reloadfloat(p->x.freemask);
      print("! END of MIGRATE\n");
      break;
    case RESTORE:
      print("call _END%s; st %%o7,[%%fp-8]\n",curfunc->x.name);
      /* We didn't add 4 so we only need o7+12 */
      print("nop ! dummy where .word usually goes\n");
      print("mov %%sp,%%o0\n");
      print("call %s; add %%sp,%d,%%sp\n",
            p->x.args->x.kids[0]->syms[0]->x.name,
            -p->syms[0]->u.c.v.i);
      break;
    case ATOMICINC:
      if (cflag != 4) {
        /* Track local writes in AtomicInc */
        print("! ATOMICINC\n");
        print("call ___AtomicInc; add %%sp,-72,%%sp\n");
        print("add %%sp,72,%%sp ! AtomicInc has +12 return\n");
        print("! END of ATOMICINC\n");
        }
      else {
        /* perform local increments here in-line */
        print("! ATOMICINC\n");
        print("xor %%o0,%s,%%l0\n",IDREGSTR);
        print("andcc %%l0,%d,%%g0\n",ADDR_MASK);
        print("be,a L.%d; srl %%o0,%d,%%l0\n",label,PN_BITS);
        print("add %%sp,-72,%%sp\n");
        print("call ___AtomicInc; add %%o7,28,%%o7\n");
        /* Skip past the seven incrementing instructions below */
        print("nop ! AtomicInc has +12 return\n");
        print("L.%d:\n",label);
        print("call _CMAML_disable_interrupts; nop\n");
        print("ld [%%l0],%%o0\n");
        print("add %%o0,1,%%l1\n");
        print("call _CMAML_enable_interrupts; st %%l1,[%%l0]\n");
        print("sub %%l1,1,%%o0\n");
        print("! END of ATOMICINC\n");
        }
      break;
    case NONLOCAL: /* targetted to o0 so ok to modify */
      print("! NONLOCAL\n");
      print("xor %%o0,%s,%%o0\n",IDREGSTR);
      print("and %%o0,%d,%%o0\n",ADDR_MASK);
      break;
    case ISLOCPTR: /* targetted to o0 so ok to modify */
      {
        print("! ISLOCPTR\n");
        print("xor %%o0,%s,%%o0\n",IDREGSTR);
        print("andcc %%o0,%d,%%g0\n",ADDR_MASK);
        print("be L.%d; or %%g0,1,%%%s\n",label,p->syms[RX]->x.name);
        print("mov %%g0,%%%s\n",p->syms[RX]->x.name);
        print("L.%d:\n",label);
      }
      break;
    default:
      {int *foo=0 ; *foo=5;};
      print("# UNDEFINED instruction SEQUENCE!!\n");
      break;
    }
  } /* else */
}

#define CSBUF 32
static void emit_callee_restore_code(name) char *name;
{
  funcload("ld",0,5,1,usedmask[IREG],1,savebase[IREG],ireg,name);
}

#define MDIST 12

static void end(s1,framesize,extsize) Symbol s1;
{
  
  if (!strcmp(s1->x.name,"_main") || !strcmp(s1->x.name,"_usermain"))
    {
      print("ret; restore\n");
      print("_%s.cs: .word 0x0\n",s1->x.name);
    }
  else if (!mflag)
    {
      print("ld [%%fp+-8],%%l0\n");
      print("ld [%%fp+-4],%%fp\n");
      if (framesize<4096)
        print("jmpl %%l0+8,%%g0; add %%sp,%d,%%sp\n",framesize);
      else
        {
          print("set %d,%%l1\n",framesize);
          print("jmpl %%l0+8,%%g0; add %%sp,%%l1,%%sp\n");
        }
    }
  else 
    {
      if (kflag) {
        print("andcc %s,%d,%%g0\n",EXPRESSREGSTR,EXPRESSMASK);
        print("be _NoExpressEND%s; nop\n",s1->x.name);
        print("ld [%%fp+-8],%%l3\n");
        print("ld [%%fp+-4],%%fp\n");
        if (framesize+extsize>4095) print("set %d,%%l4\n",framesize+extsize);
        if (vflag)
          {
            print("call _mccvisStackDeallocate; ");
            if (framesize+extsize<4096)
              print("add %%sp,%d,%%g6\n",framesize+extsize);
            else
              print("add %%sp,%%l4,%%g6\n");
          }
        print("jmpl %%l3+%d,%%g0;",MDIST);
        if (framesize+extsize<4096)
          print(" add %%sp,%d,%%sp\n",framesize+extsize);
        else
          print(" add %%sp,%%l4,%%sp\n");
        print("_NoExpressEND%s:\n",s1->x.name);
      }
      /* No registers used up to this point */
      if (framesize<4096) 
        {
          print("add %%fp,%d,%%l3\n",-framesize);
        }
      else
        {
          print("set %d,%%l3\n",-framesize);
          print("add %%fp,%%l3,%%l3\n");
        }
      print("subcc %%sp,%%l3,%%g0\n");
      print("bne _END%s.2; ld [%%fp+-8],%%l4\n",s1->x.name);
      
      /* We are now the bottom frame */
      print("ld [%%fp+%d],%%l1\n",extsize+64);
      /* extra 64 offset for exception extension */
      print("subcc %%l1,%%g0,%%g0\n");
      if (framesize+extsize>4095)
        print("set %d,%%l2\n",framesize+extsize);
      print("bne _END%s.1; ld [%%fp+-4],%%fp\n",s1->x.name);
      
      /* bottom frame, We have a zero above us */
      /* l3 = frame_sp, l1 = splink, l2 = fs+extsz, l4=retaddr */
        if (vflag)
          {
            print("call _mccvisStackDeallocate; ");
            if (framesize+extsize<4096)
              print("add %%l3,%d,%%g6\n",framesize+extsize);
            else
              print("add %%l3,%%l2,%%g6\n");
          }
      print("jmpl %%l4+%d,%%g0;",MDIST);
      if (framesize+extsize<4096)
        print(" add %%l3,%d,%%sp\n",framesize+extsize);
      else print(" add %%l3,%%l2,%%sp\n");
      
      /* bottom frame, follow chain */
      print("_END%s.1:\n",s1->x.name);
      if (framesize+extsize<4096)
        print("add %%l3,%d,%%sp\n",extsize+framesize);
      else print("add %%l3,%%l2,%%sp\n");
      /* following chain--loop here until we find a zero */
      print("_END%s.1.1:\n",s1->x.name);
      print("ld [%%sp+64],%%l3\n"); /* extra 64 for extension */
      print("subcc %%l3,%%g0,%%g0\n");
      print("bne,a _END%s.1.1; mov %%l3,%%sp\n",s1->x.name);
        if (vflag)
          {
            print("call _mccvisStackDeallocate; mov %%l3,%%g6\n");
          }
      print("jmpl %%l4+%d,%%g0; nop\n",MDIST);
      
      /* Not bottom frame, simply insert link */
      /* l3 = frame_sp, l1 = splink, l2 = fs+extsz, l4=retaddr */
      print("_END%s.2:\n",s1->x.name);
      print("add %%fp,%d,%%l1\n",extsize);
      print("st %%l1,[%%l3+64]\n"); /* extra 64 for extension */
      if (vflag) 
        {
          print("call _mccvisStackDeactivate; mov %%l3,%%g6\n");
        }
       
      print("jmpl %%l4+%d,%%g0; ld [%%fp+-4],%%fp\n",MDIST);
      /* skip extra instruction for stack deallocation */
      print("_%s.cs:\n",s1->x.name);
      if (framesize<4096)
        {
          savebase[IREG] -= framesize;
          emit_callee_restore_code(FPREG);
          savebase[IREG] += framesize;
        }
      else {
        print("set %d,%%l1\n",-framesize);
        print("add %s,%%l1,%%l1\n",FPREG);
        emit_callee_restore_code("%l1");
      }
      print("jmpl %%o7+8,%%g0; nop\n");
    }
  print("\n\n");
}

/* Need precisely three instructions from start to call */
static void tempest_entry(s1,ptr,offset,delay)
Symbol s1;
char *ptr,*delay;
int offset;
{
  print("call %s_temp; %s\n",s1->x.name,delay);
  print("%s_temp:\n",s1->x.name);
  print("st %%o7,[%s+%d]\n",ptr,offset);
}

static void entry(s1,framesize,extsize) Symbol s1; {
  print("\n");
  if (!strcmp(s1->x.name,"_main") || !strcmp(s1->x.name,"_usermain")) 
    {
      if (framesize <= 4095)
        {
          int temp_loc = (mflag) ? 12+CSBUF : 12;

          print("save %%sp,%d,%%sp\n",-framesize);
          print("mov %%i0,%%o0\n");
          if (tempest) tempest_entry(s1,"%fp",(-temp_loc),"mov %i1,%o1");
          else print("mov %%i1,%%o1\n");
        }
      else
        {
          int temp_loc = (mflag) ? 12+CSBUF : 12;

          print("set %d,%%g4\n",-framesize);
          print("save %%sp,%%g4,%%sp\n");
          if (tempest) tempest_entry(s1,"%fp",(-temp_loc),"mov %i0,%o0");
          else print("mov %%i0,%%o0\n");
          print("mov %%i1,%%o1\n");
        }
      if (mflag) print("st %%g0,[%%sp+64]\n"); /* extra 64 for ext */
      return;
    }
  if (vflag) 
    {
      print("set %d,%%g4\n",framesize+extsize);
      print("set %d,%%g5\n",framesize);
      print("call _mccvisStackAlloc; sub %%sp,%%g5,%%g6\n");
    }
  
  /* allocate stack space */
  if (framesize <= 4095)
    {
      int temp_loc = (mflag) ? framesize-12-CSBUF : framesize-12;
      char delay[25];

      print("add %%sp,%d,%%sp\n", -framesize);
      /* Save the frame pointer, return address */
      print("st %%fp,[%%sp+%d]\n",framesize-4);
      print("st %%o7,[%%sp+%d]\n",framesize-8);

      if (tempest) {
        sprintf(delay,"add %%sp,%d,%%fp",framesize);
        tempest_entry(s1,"%sp",temp_loc,delay);
        }
      else print("add %%sp,%d,%%fp\n",framesize);
    }
  else
    {
      int temp_stack = (mflag) ? 80+CSBUF : 80;
      char delay[25];

      print("add %%sp,-%d,%%sp\n",temp_stack);
      print("st %%fp,[%%sp+%d]\n",temp_stack-4);
      print("st %%o7,[%%sp+%d]\n",temp_stack-8);
      if (tempest) {
        sprintf(delay,"add %%sp,%d,%%fp",temp_stack);
        tempest_entry(s1,"%sp",4,delay);
       }
      else
        print("add %%sp,%d,%%fp\n",temp_stack);
      print("set %d,%%g4; add %%sp,%%g4,%%sp\n", -framesize+temp_stack);
    }
  
  if (mflag) print("st %%g0,[%%sp+64]\n"); /* extra 64 for ext */
}    


/* function - generate code for a function */
void function(f, caller, callee, n) Symbol f, callee[], caller[]; {
  int fpused = 0, i, reg = 0, varargs;
  int calleesave;
  Symbol p, q;
  
  /* Only use one temporary location for each fvreg */
  for (i=0; i<32; i++) fvreg[i]=0;
  
  /* This loop looks useless, but look at varargs below */
  for (i=0; callee[i]; i++);
  
  /* 64 for reg windows, 4 for hidden parameter */
  initfunc(n + glevel /*+ pflag*/, 68, 6*4);
  varargs = variadic(f->type) || i > 0 &&
    strcmp(callee[i-1]->name, "__builtin_va_alist") == 0;
  for (i=0; p=callee[i]; i++)
    {
      assert(q=caller[i]);
      switch(ttob(q->type)) 
        {
        case F:
        case D:
        case B:
          p->x.offset = offset;
          p->x.name = q->x.name = stringd(p->x.offset);
          p->sclass = q->sclass = AUTO;
          fpused++;
          break;
        case I:
        case P:
        case U:
          if (reg>=6) 
            {
              p->x.offset = offset;
              p->x.name = q->x.name = stringd(p->x.offset);
              p->sclass = q->sclass = AUTO;
              fpused++;
            }
          else if ((p->sclass==REGISTER) &&
                   !(p->addressed || varargs || glevel && glevel !=3)
        	   && getregvar(p,rmap[I]))
            {
              q->sclass = REGISTER;
            }
          else
            {  
              p->x.offset = offset;
              q->x.name = p->x.name = stringd(p->x.offset);
              p->sclass = AUTO;
              q->sclass = AUTO;
              fpused++;
            }
          break;
        }
      /*reg += isstruct(p->type) ? 1 : roundup(q->type->size, 4)/4;*/
      reg += roundup(q->type->size, 4)/4;
      offset += roundup(q->type->size, 4);
    }
  assert(caller[i] == 0);
  callerOffset = roundup(offset,8);
  curfunc = f;
  nlocals = 0;
  /* allocate space for fp, ret addr, and migrated callee-saves */
  offset = (mflag) ? 8+(CSBUF) : 8;
  if (tempest) offset += 4; /* 4 for location of migrate code */
  gencode(caller, callee);
  freeregvars();
  if (isstruct(freturn(f->type)))
    {
      fpused++;
      structReturn=freturn(f->type)->size;
    }
  else structReturn = 0;
  
  
  if (maxoffset > 0 || (usedmask[IREG]&0x00ffff00) ||
      (usedmask[FREG]&~3) || varargs)
    ncalls++;
  
  /* Compute where things belong in stack frame */
  savemask[IREG] = 0x3f000000 & usedmask[IREG];
  calleesave = 4*bitcount(savemask[IREG]);
  if (!strcmp(f->x.name,"_main") || !strcmp(f->x.name,"_usermain")) 
    calleesave=0;
  
  /* mcc note: below we have 64 for reg windows & 8 for CVID = 72 */
  if (mflag) /* 72 for possible exceptions & CVID +4 for splink */
    framesize = roundup(72+4 + calleesave + maxoffset, 8);
  else
    /* 16 words for regs plus 1 for struct ret + 2 for fp, ret addr */
    framesize = roundup(72 + calleesave + argbuildsize + maxoffset,8);
  /* Preserve 72 here for use by CVID and tempest ASGND */
  savebase[IREG] = (mflag) ? 72+4 : /* extra space for CVID */
    72+argbuildsize;
  print(".seg \"text\"\n");
  print(".align 4\n.proc 4\n");

  if (tempest) tempest_migrate();
  print("%s:", f->x.name);
  entry(f,framesize,callerOffset);
  
  if (strcmp(f->x.name,"_main") && strcmp(f->x.name,"_usermain"))
    funcsave("st",0,5,1,usedmask[IREG],1,savebase[IREG],ireg);
  
  /* Store arguments to this function as necessary */
  if (varargs)
    for (; reg < 6; reg++)
      print("st %%i%d,[%%fp+%d]\n", reg, 4*reg + 68);
  else
    for (offset = 68, reg = i = 0; p = caller[i]; i++) {
      if (isdouble(p->type) && reg <= 4)
        {
          print("st %%%s,[%%fp+%d]\n", oreg[reg]->x.name, offset);
          print("st %%%s,[%%fp+%d]\n", oreg[reg+1]->x.name, offset + 4);
        }
      else if (isfloat(p->type) && reg <= 5)
        print("st %%%s,[%%fp+%d]\n", oreg[reg]->x.name, offset);
      else if ((p->sclass == REGISTER) && reg<=5)
        print ("mov %%%s,%%%s\n",oreg[reg]->x.name,callee[i]->x.name);
      else if (!isstruct(p->type) && reg<=5)
        print("st %%%s,[%%fp+%d]\n",oreg[reg]->x.name,offset);
      /* reg++; */
      reg += (roundup(p->type->size, 4)/4);
      offset += roundup(p->type->size, 4);
    }
  /******* removed by mcc
    if (pflag) {
    int lab = genlabel(1);
    print("set L%d,%%o0; call mcount; nop\n", lab);
    print(".seg \"data\"\n.align 4; L%d:.word 0\n.seg \"text\"\n", lab);
    }
    *********/
  
  
  emitcode();
  print("_END%s:\n",f->x.name);
  if (strcmp(f->x.name,"_main") && strcmp(f->x.name,"_usermain"))
    if (framesize < 4096) {
      savebase[IREG] -= framesize;
      emit_callee_restore_code("%fp");
      savebase[IREG] += framesize;
    }
    else {
      print("set %d,%%l0\n",-framesize);
      print("add %%l0,%%fp,%%l0\n");
      emit_callee_restore_code("%l0");
    }
  end(f,framesize,callerOffset);
}
/* funcsave - generate register save sequences -- sparc*/
/* Use the operator op from lo to hi by inc, 
   saving only those used and masked.  base is a constant offset from
   the frame pointer */
static void funcsave(op, lo, hi, inc, used, mask, base, syms) 
     char *op;
     Symbol syms[];
     unsigned used, mask; 
{
  for (; lo <= hi; lo += inc)
    if (used&syms[lo]->x.regnode->mask) {
      print("%s %%%s,[%%sp+%d]\n",op,syms[lo]->x.name,base); 
      base += 4*inc;
    }
}

/* funcload - generate register load sequences -- sparc*/
/* Use the operator op from lo to hi by inc, 
   restoring only those used and masked.  base is a constant offset from
   the frame pointer */

static void funcload(op, lo, hi, inc,used,mask,base,syms,regname) 
     char *op, *regname;
     Symbol syms[];
     unsigned used, mask; {
       for (; lo <= hi; lo += inc)
         if (used&syms[lo]->x.regnode->mask) {
           print("%s [%s+%d],%%%s\n",op,regname,base,syms[lo]->x.name); 
           base += 4*inc;
         }
     }
     
     /* global - global id */
     static void global(p) Symbol p; {
       if (p->type->align > 1)
         print(".align %d; ", p->type->align);
       assert(p->u.seg);
       if (p->u.seg == BSS && (p->sclass == STATIC || Aflag >= 2))
         print(".reserve %s,", p->x.name);
       else if (p->u.seg == BSS)
         print(".common %s,", p->x.name);
       else
         print("%s:", p->x.name);
     }
     
     static void import(p) Symbol p; {
       p->x.name = stringf("_%s", p->name);
     }
     
     /* local - local */
     static void local(p) Symbol p; {
       /* hidden parameter */
       if (nlocals++ == 0 && isstruct(freturn(curfunc->type))) {
         p->x.name = stringd(4*16);
         return;
       }
       /* commented out by mcc -- this prevents things from 
          ever being AUTO (almost)! */
       /*if (!p->addressed && isscalar(p->type) && !isfloat(p->type))*/
       /*p->sclass = REGISTER;*/
       if (glevel && glevel != 3)
         p->sclass = AUTO;
       if (getregvar(p, rmap[ttob(p->type)]) == 0)
         p->x.name = stringd(mkauto(p, p->type->align));
     }
     
     static Symbol nextreg(p) Symbol p; {
       return freg[getregnode(p)->regnum+1];
     }
     
     /* progbeg - beginning of program */
     void progbeg(argc, argv) char *argv[]; {
       int i;
       
       nregsets = 2;
       /* callee save mask */
       eemask[IREG] = 0x3f000000; eemask[FREG] = 0;
       /* Temporary mask screens l5-l7 for runtime system */
       /* useable as temporaries */
       tmask[IREG]  = 0x3f1fff00; tmask[FREG]  = -1;
       /* useable as VREG -- reg vars */
       vmask[IREG]  = 0x3f000000; vmask[FREG]  = 0xff000000;
       parseflags(argc, argv);
       initgen();
       d0 = mkregs(  "0",  0,  0, 2, 3, FREG, D, 0);
       f0 = mkregs(  "0",  0,  0, 1, 1, FREG, F, 0);
       g0 = mkregs( "r0",  0,  0, 1, 1, IREG, I, 0);
       g4 = mkregs( "g4",  4,  4, 1, 0, IREG, I, 0); /* zero mask--only GRS*/
       g5 = mkregs( "g5",  5,  5, 1, 0, IREG, I, 0); /* zero mask--only GRI*/
       g6 = mkregs( "g6",  6,  6, 1, 0, IREG, I, 0); /* zero mask--only GRU*/
       i0 = mkregs("r24", 24, 24, 1, 0, IREG, I, 0);  /* zero mask; use only for RETI. */
       for (i = 0; i < 6; i++) {
         oreg[i]  = mkregs("r%d", i +  8, i +  8, 1, 1, IREG, I, 0);
         ireg[i]  = mkregs("r%d", i + 24, i + 24, 1, 1, IREG, I, 0);
       }
       for (i = 0; i < 32; i++)
         freg[i] = mkregs("%d", i, i, 1, 1, FREG, F, 0);
       rmap[I] = mkregs("r%d",  2,  4, 1, 1, IREG, I, rmap[I]);
       rmap[I] = mkregs("r%d",  8, 13, 1, 1, IREG, I, rmap[I]);
       rmap[I] = mkregs("r%d", 16, 23, 1, 1, IREG, I, rmap[I]);
       rmap[I] = mkregs("r%d", 24, 29, 1, 1, IREG, I, rmap[I]);
       rmap[F] = mkregs("%d", 0, 31, 1, 1, FREG, F, rmap[F]);
       rmap[D] = mkregs("%d", 0, 31 , 2, 3, FREG, D, rmap[D]);
       rmap[C] = rmap[S] = rmap[P] = rmap[U] = rmap[I];
       if (pflag) 
         ProgBegFileName = NULL;
     }
     
     static void rename(inc) {
       Symbol p;
       
       for (p = regs; p; p = p->x.regnode->next)
         if (p == i0 || p->x.regnode->regset == IREG && p->x.regnode->mask&0x3f000000)
           p->x.name = stringf("r%d", p->x.regnode->regnum += inc);
     }
     
     static void segment(n) {
       setseg(n);
     }
     
     static void space(n) {
       spacen((n), ".skip");
     }
