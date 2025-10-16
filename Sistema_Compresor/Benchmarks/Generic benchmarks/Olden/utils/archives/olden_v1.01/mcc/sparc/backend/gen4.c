#include "c.h"
#include "runtime.h"

Interface *IR;
extern short sparc_cost[][4];
/* additions by mcc for runtime system */
int extension = 0;
int firstarg = 1;
Node firstargptr=NULL,lastarg=NULL;
extern Symbol fvreg[32];
/* end of additions */
  
unsigned dclproto((*emitter),(Node, int)) = emitasm;
unsigned freemask[3];
int savebase[3];
unsigned savemask[3];
unsigned usedmask[3];
unsigned eemask[3];
unsigned tmask[3];
unsigned vmask[3];
static unsigned char ResultType[1194] = {
	0,0,0,0,0,0,0,0,0,0, /* 0 through 9 */
	0,0,0,0,0,0,0,
	F,	/* CNSTF=17 */
	D,	/* CNSTD=18 */
	C,	/* CNSTC=19 */
	S,	/* CNSTS=20 */
	I,	/* CNSTI=21 */
	U,	/* CNSTU=22 */
	P,	/* CNSTP=23 */
	0,0,0,0,0,0, /* through 29 */
	0,0,0,0,0,0,0,0,0,0, /* through 39 */
	0,0,0,0,0,0,0,0,0,0, /* through 49 */
	0,0,0,0,0,0,0,0,0,0, /* through 59 */
	0,0,0,0,0,
	F,	/* INDIRF=65 */
	D,	/* INDIRD=66 */
	C,	/* INDIRC=67 */
	S,	/* INDIRS=68 */
	I,	/* INDIRI=69 */
	0,
	P,	/* INDIRP=71 */
	0,
	P,	/* INDIRB=73 */
	0,0,0,0,0,0, /* through 79 */
	0,0,0,0,0,
	I,	/* CVCI=85 */
	U,	/* CVCU=86 */
	0,0,0, /* through 89 */
	0,0,0,0,0,0,0, /* through 96 */
	F,	/* CVDF=97 */
	0,0,0,
	I,	/* CVDI=101 */
	0,0,0,0,0,0,0,0,0,0,0,0,
	D,	/* CVFD=114 */
	0,0,0,0,0, /* through 119 */
	0,0,0,0,0,0,0,0,0,0, /* though 129 */
	D,	/* CVID=130 */
	C,	/* CVIC=131 */
	S,	/* CVIS=132 */
	0,
	U,	/* CVIU=134 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	U,	/* CVPU=150 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	I,	/* CVSI=165 */
	U,	/* CVSU=166 */
	0,0,0, /* through 169 */
	0,0,0,0,0,0,0,0,0,
	C,	/* CVUC=179 */
	S,	/* CVUS=180 */
	I,	/* CVUI=181 */
	0,
	P,	/* CVUP=183 */
	0,0,0,0,0,0,0,0,0,
	F,	/* NEGF=193 */
	D,	/* NEGD=194 */
	0,0,
	I,	/* NEGI=197 */
	0,0,0,0,0,0,0,0,0,0,0,
	F,	/* CALLF=209 */
	D,	/* CALLD=210 */
	0,0,
	I,	/* CALLI=213 */
	0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0, /* through 229 */
	0,0,0,0,0,0,0,0,0,0, /* through 239 */
	0,0,0,0,0,0,0,0,0,0, /* through 249 */
	0,0,0,0,0,0,0,0,0,0, /* through 259 */
	0,0,0,
	P,	/* ADDRGP=263 */
	0,0,0,0,0,0, /* through 269 */
	0,0,0,0,0,0,0,0,0,
	P,	/* ADDRFP=279 */
	0,0,0,0,0,0,0,0,0,0, /* 289 */
	0,0,0,0,0,
	P,	/* ADDRLP=295 */
	0,0,0,0,0,0,0,0,0,
	F,	/* ADDF=305 */
	D,	/* ADDD=306 */
	0,0,
	I,	/* ADDI=309 */
	U,	/* ADDU=310 */
	P,	/* ADDP=311 */
	0,0,0,0,0,0,0,0,0,
	F,	/* SUBF=321 */
	D,	/* SUBD=322 */
	0,0,
	I,	/* SUBI=325 */
	U,	/* SUBU=326 */
	P,	/* SUBP=327 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,
	I,	/* LSHI=341 */
	U,	/* LSHU=342 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	I,	/* MODI=357 */
	U,	/* MODU=358 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	I,	/* RSHI=373 */
	U,	/* RSHU=374 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	U,	/* BANDU=390 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	U,	/* BCOMU=406 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	U,	/* BORU=422 */
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	U,	/* BXORU=438 */
	0,0,0,0,0,0,0,0,0,0,
	F,	/* DIVF=449 */
	D,	/* DIVD=450 */
	0,0,
	I,	/* DIVI=453 */
	U,	/* DIVU=454 */
	0,0,0,0,0,0,0,0,0,0,
	F,	/* MULF=465 */
	D,	/* MULD=466 */
	0,0,
	I,	/* MULI=469 */
	U,	/* MULU=470 */
	0,0,0,0,0,0,0,0,0, /* 479 */
	0,0,0,0,0,0,0,0,0,0, /* 489 */
	0,0,0,0,0,0,0,0,0,0, /* 499 */
	0,0,0,0,0,0,0,0,0,0, /* 509 */
	0,0,0,0,0,0,0,0,0,0, /* 519 */
	0,0,0,0,0,0,0,0,0,0, /* 529 */
	0,0,0,0,0,0,0,0,0,0, /* 539 */
	0,0,0,0,0,0,0,0,0,0, /* 549 */
	0,0,0,0,0,0,0,0,0,0, /* 559 */
	0,0,0,0,0,0,0,0,0,0, /* 569 */
	0,0,0,0,0,0,0,0,0,0, /* 579 */
	0,0,0,0,0,0,0,0,0,0, /* 589 */
	0,0,0,0,0,0,0,0,0,0, /* 599 */
	0,0,0,0,0,0,0,0,0,0, /* 609 */
	0,0,0,0,0,
	P, /* TESTP=615 */
	0,0,0,0, /* 619 */
	0,0,0,0,0,0,0,0,0,0, /* 629 */
	0,0,0,0,0,0,0,0,0,0, /* 639 */
	0,0,0,0,0,0,0,0,0,0, /* 649 */
	0,0,0,0,0,0,0,0,0,0, /* 659 */
	0,
	I,	/* I0I=661 */
	0, 0, 0, 0, 0, 0, 0, 0, /* 669 */
	0, 0, 0, 0, 0, 0, 0,
	I,	/* I1I=677 */
	0, 0, /* 679 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, /* 689 */
	0, 0, 0,
	I,	/* I2I=693 */
	0, 0, 0, 0, 0, 0, /* 699 */
	0, 0, 0, 0, 0, 0, 0, 0, 0,
	I,	/* I3I=709 */
	0,0,0,0,0,0,0,0,0,0, /* through 719 */
	0,0,0,0,0,0,0,0,0,0, /* through 729 */
	0,0,0,0,0,0,0,0,0,0, /* through 739 */
	0,
	I,      /* LGCNSTI=741 */
	0,0,0,0,0,0,0,0, /* through 749 */
	0,0,0,0,0,0,0,0,0,0, /* through 759 */
	0,0,0,0,0,0,0,0,0,0, /* through 769 */
	0,0,0,0,0,0,0,0,0,0, /* through 779 */
	0,0,0,0,0,0,0,0,0,0, /* through 789 */
	0,0,0,0,0,0,0,0,0,0, /* through 799 */
	0,0,0,0,0,0,0,0,0,0, /* through 809 */
	0,0,0,0,0,0,0,0,0,0, /* through 819 */
	0,0,0,0,0,0,0,0,0,0, /* through 829 */
	0,0,0,0,0,0,0,0,0,0, /* through 839 */
	0,0,0,0,0,0,0,0,0,0, /* through 849 */
	0,0,0,0,0,0,0,0,0,0, /* through 859 */
	0,0,0,0,0,0,0,0,0,0, /* through 869 */
	0,0,0,0,0,0,0,0,0,0, /* through 879 */
	0,0,0,0,0,0,0,0,0,0, /* through 889 */ /* NOTEST = 880 */
	0,0,0,0,0,0,0,0,0,0, /* through 899 */ /* RETEST = 896 */
	0,0,0,0,0,0,0,0,0,0, /* through 909 */
	0,0,0,0,0,0,0,0,0,0, /* through 919 */
	0,0,0,0,0,0,0,0,I,0, /* through 929 */ /* NONLOCAL = 928 */
	0,0,0,0,0,0,0,0,0,0, /* through 939 */
	0,0,0,0,I,0,0,0,0,0, /* through 949 */ /* ISLOCPTR = 944 */
	0,0,0,0,0,0,0,0,0,0, /* through 959 */
	0,0,0,0,0,0,0,0,0,0, /* through 969 */
	0,0,0,0,0,0,0,0,0,0, /* through 979 */
	0,0,0,P,0,0,0,0,0,0, /* through 989 */ /* BIGLP = 983 */
	0,0,0,0,0,0,0,0,0,0, /* through 999 */
	0,0,0,0,0,0,0,0,0,0, /* through 1009 */
	0,0,0,0,0,0,0,0,0,0, /* through 1019 */
	0,0,0,0,0,0,0,0,0,0, /* through 1029 */
	0,0,0,0,0,0,0,0,0,0, /* through 1039 */
	0,0,0,0,0,0,0,0,0,0, /* through 1049 */
	0,0,0,0,0,0,0,0,0,0, /* through 1059 */
	0,I,0,0,0,0,0,0,0,0, /* through 1069 */ /* ATOMICINC = 1061 */
   0,0,0,0,0,0,0,0,0,P, /* through 1079 */ /* MTESTP = 1079 */
   0,0,0,0,0,0,0,0,0,0, /* through 1089 */ 
   0,0,0,0,0,0,0,0,0,0, /* through 1099 */ 
   0,0,0,0,0,0,0,0,0,0, /* through 1109 */ 
   0,0,0,0,0,0,0,0,0,0, /* through 1119 */ 
   0,0,0,0,0,0,0,0,0,0, /* through 1129 */ 
   0,0,0,0,0,0,0,0,0,0, /* through 1139 */ 
   0,0,0,0,0,0,0,0,0,0, /* through 1149 */
   0,0,0,0,0,0,0,0,0,0, /* through 1159 */
   0,0,0,0,0,0,0,0,0,0, /* through 1169 */
   0,0,0,0,0,0,0,0,0,0, /* through 1179 */
   0,0,0,0,0,0,0,0,0,0, /* through 1189 */
   0,0,0,0 /* through 1193 */
};

int nregsets;
int maxoffset;
int ncalls;
int offset;
int argoffset;
int argbuildsize;
int bflag=0, vflag=0, dflag=0, kflag=0, pflag=0, rflag=0; 
int mflag=0, nflag=0, cflag=4, fflag=0, simflag=0; 
int tempest;
Symbol regs;
Symbol regvars;
Symbol rmap[8];
int dalign, salign;
Node curnode;
static Node *headptr;
int genx = 4;

static int cseg;
static Symbol tempregs = NULL;

dclproto(static void dotarget,(Node));
dclproto(static void dumpcover,(Node, int, int));
dclproto(static void dumpmatches,(Node));
dclproto(static void dumprule,(int));
dclproto(static void dumptree,(Node));
dclproto(static int label,(Node));
dclproto(static Node *prune,(Node, Node*));
dclproto(static void reduce,(Node, int));
dclproto(static int refresh,(Node*, int, int, Node));
dclproto(static void freereg,(Symbol));
dclproto(static void genreload,(Node, Symbol, Symbol, int));
dclproto(static void genspill,(Symbol, Node, Symbol));
dclproto(static Symbol getreg,(Symbol, unsigned*));
dclproto(static void linearize,(Node, Node));
dclproto(static void lin1,(Node, Node));
dclproto(static Symbol mkreg,(char *, int, int, int, Symbol));
dclproto(static void ralloc,(Node));
dclproto(static void rewrite,(Node));
dclproto(static Symbol spillee,(Symbol, Node));
dclproto(static void spillr,(Symbol, Node));
dclproto(static int uses,(Node, Regnode));


static int label(p) Node p; {
	int l, r;

	if (p == 0)
		return 0;
   if (p->x.state)
     if ((p->op == TESTP) || (p->op == MTESTP) || (p->x.labelled))
       return p->x.state;
	l = label(p->kids[0]);
	r = label(p->kids[1]);
	curnode = p;
	p->x.state = (*IR->x.burm_state)(p->op, l, r);
	p->x.kids[0] = p->kids[0];
	p->x.kids[1] = p->kids[1];
	p->kids[0] = p->kids[1] = 0;
	debug(dflag, dumpmatches(p));
	assert(p->x.state);
	return p->x.state;
}
static void reduce(p, nt) Node p; {
  int eruleno, i;
  short *nts;
  Node kids[10];
  
  if (p->op == INDIRI && p->x.kids[0]->op == VREGP &&
      p->syms[RX]->x.dag && cost(p->syms[RX]->x.dag, nt) == 0)
    {
      p->x.inst = nt;
      p = p->syms[RX]->x.dag;
    }
  eruleno = getrule("reduce", p, nt);
  nts = IR->x.burm_nts[eruleno];
  (*IR->x.burm_kids)(p, eruleno, kids);
  for (i = 0; nts[i]; i++)
    reduce(kids[i], nts[i]);
  if (IR->x.rules[eruleno].inst) {
    assert(p->x.inst == 0 || p->x.inst == nt);
    p->x.inst = nt;
    if (p->syms[RX] && p->syms[RX]->temporary) {
      p->syms[RX]->x.count++;
      debug(rflag, fprint(2, "(using %s)\n", p->syms[RX]->name));
    }
  }
}
int getrule(caller, p, nt) char *caller; Node p; {
	int eruleno;

	assert(p);
	eruleno = (*IR->x.burm_rule)(p->x.state, nt);
	assert(eruleno);
	debug(dflag, {fprint(2, "%s(%x) = ", caller, p); dumprule(eruleno);})
	return eruleno;
}
static Node *prune(p, pp) Node p, *pp; {
	if (p == 0)
		return pp;
	else if (p->x.inst == 0)
		return prune(p->x.kids[1], prune(p->x.kids[0], pp));
	else if (p->syms[RX] && p->syms[RX]->temporary &&
		 p->syms[RX]->x.count < 2) {
		p->x.inst = 0;
		debug(rflag, fprint(2, "(clobbering %s)\n", p->syms[RX]->name));
		return prune(p->x.kids[1], prune(p->x.kids[0], pp));
   }
	else {
		prune(p->x.kids[1], prune(p->x.kids[0], &p->kids[0]));
		*pp = p;
		return pp + 1;
	}
}
extern char *sparc_opname[];
extern char sparc_arity[];

static void dumplist(p) Node p;
{
  for(;p;p=p->x.next) {dumptree(p); fprint(2,"\n");
           }
  
}
void dumplink(p) Node p;
{
  for(;p;p=p->link) {dumptree(p); fprint(2,"\n");
		   }
  
}


static void dumptree(p) Node p; {
  if (!p) return;
  fprint(2, "%s(", sparc_opname[p->op]);
  if (sparc_arity[p->op] == 0 && p->syms[0])
    fprint(2, "%s", p->syms[0]->name);
  else if (sparc_arity[p->op] == 1)
    dumptree(p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
  else if (sparc_arity[p->op] == 2) {
    dumptree(p->x.kids[0] ? p->x.kids[0] : p->kids[0]);
    fprint(2, ", ");
    dumptree(p->x.kids[1] ? p->x.kids[1] : p->kids[1]);
  }
  fprint(2, ")");
}

int cost(p, nt) Node p; {
  struct burm_state {
    int op;
    struct vax_state *left, *right;
    short cost[47];
  };
  
  return sparc_cost[p->x.state][nt];
}

static void dumpcover(p, nt, indent) Node p; {
  int eruleno, i;
  short *nts;
  Node kids[10];
  
  if (p->op == INDIRI && p->x.kids[0]->op == VREGP && p->syms[RX]->x.dag && cost(p->syms[RX]->x.dag, nt) == 0)
    p = p->syms[RX]->x.dag;
  eruleno = (*IR->x.burm_rule)(p->x.state, nt);
  nts = IR->x.burm_nts[eruleno];
  fprint(2, "dumpcover(%x) = ", p);
  for (i = 0; i < indent; i++)
    fprint(2, " ");
  dumprule(eruleno);
  (*IR->x.burm_kids)(p, eruleno, kids);
  for (i = 0; nts[i]; i++)
    dumpcover(kids[i], nts[i], indent+1);
}

static void dumprule(eruleno) {
  assert(eruleno);
  fprint(2, "%s / %s", IR->x.burm_string[eruleno], IR->x.rules[eruleno].template);
  if (!IR->x.rules[eruleno].inst)
    fprint(2, "\n");
}
static void dumpmatches(p) Node p; {
  int eruleno, i;
  
  fprint(2, "dumpmatches(%x)=", p);
  dumptree(p);
  fprint(2, ":\n");
  for (i = 1; IR->x.burm_ntname[i]; i++)
    if (eruleno = (*IR->x.burm_rule)(p->x.state, i)) {
      fprint(2, "\t");
      dumprule(eruleno);
    }
}
unsigned emitasm(p, nt) Node p; {
  int eruleno;
  short *nts;
  char *fmt;
  Node kids[10];
  
  if (generic(p->op) == INDIR && p->x.kids[0]->op == VREGP && p->syms[RX]->x.dag && cost(p->syms[RX]->x.dag,nt) == 0)
    {
      /* special modification by mcc */
      if (nt != p->syms[RX]->x.dag->x.inst)  {
        assert(p->syms[RX]->x.dag->x.emitted);
        p->syms[RX] = p->syms[RX]->x.dag->syms[RX];
      }
      else p = p->syms[RX]->x.dag;
    }
  else if (generic(p->op) == INDIR && p->x.kids[0]->op == VREGP
	   && p->syms[RX]->x.dag && !nt)
    {
      p = p->syms[RX]->x.dag;
      nt = p->x.inst;
    }
  
  eruleno = getrule("emitasm", p, nt);
  nts = IR->x.burm_nts[eruleno];
  fmt = IR->x.rules[eruleno].template;
  assert(fmt);
  if (IR->x.rules[eruleno].inst && p->x.emitted)
    outs(p->syms[RX]->x.name);
  else if (*fmt == '#')
    (*IR->x.emit2)(p, (*IR->x.burm_kids)(p, eruleno, kids), nts);
  else
    
    for ((*IR->x.burm_kids)(p, eruleno, kids); *fmt; fmt++)
      if (*fmt != '%')
	*bp++ = *fmt;
      else if (*++fmt >= '0' && *fmt <= '9')
	emitasm(kids[*fmt - '0'], nts[*fmt - '0']);
      else if (*fmt >= 'a' && *fmt < 'a' + MAXSYMS)
	outs(p->syms[*fmt - 'a']->x.name);
      else
	*bp++ = *fmt;
  return 0;
}
void emit(p) Node p; {
  for (; p; p = p->x.next) {
    if (generic(p->op) != INDIR ||
	generic(p->x.kids[0]->op) != VREG) (*emitter)(p, p->x.inst);
    p->x.emitted = 1;
  }
}
/* bitcount - count number of 1 bits in mask */
int bitcount(mask) unsigned mask; {
  unsigned i, n = 0;
  
  for (i = 1; i; i <<= 1)
    if (mask&i)
      n++;
  return n;
}

/* blkcopy - emit code to copy size bytes from sreg+soff to dreg+doff using tmp regs */
void blkcopy(dreg, doff, sreg, soff, size, tmp) int tmp[]; {
  if (size <= 0)
    return;
  else if (size <= 1) {
    blkunroll(1, dreg, doff, sreg, soff, size, tmp);
  } else if (size <= 3) {
    blkunroll(2, dreg, doff, sreg, soff, 2, tmp);
    blkcopy(dreg, doff+(size&~(2-1)), sreg, soff+(size&~(2-1)), size&(2-1), tmp);
  } else if (size <= 16) {
    blkunroll(4, dreg, doff, sreg, soff, size&~(4-1), tmp);
    blkcopy(dreg, doff+(size&~(4-1)), sreg, soff+(size&~(4-1)), size&(4-1), tmp);
  } else
    (*IR->x.blkloop)(dreg, doff, sreg, soff, size, tmp);
}

/* blkunroll - blkcopy as an unrolled loop using k-byte chunks */
void blkunroll(k, dreg, doff, sreg, soff, size, tmp) int tmp[]; {
  int i;
  
  assert(IR->x.maxunalignedload);
  if ((salign < k || dalign < k) && k > IR->x.maxunalignedload)
    k = IR->x.maxunalignedload;
  (*IR->x.blkfetch)(k, soff, sreg, tmp[0]);
  for (i = k; i <= size - k; i += k) {
    (*IR->x.blkfetch)(k, i+soff,   sreg, tmp[(i&k)==k]);
    (*IR->x.blkstore)(k, i+doff-k, dreg, tmp[(i&k)!=k]); 
  }
  (*IR->x.blkstore)(k, i+doff-k, dreg, tmp[((i-k)&k)==k]);
}

/* blockbeg - begin a compound statement */
void blockbeg(e) Env *e; {
  int i;
  
  e->off = offset;
  for (i = 0; i < nregsets; i++)
    e->freemask[i] = freemask[i];
}

/* blockend - end a compound statement */
void blockend(e) Env *e; {
  int i;
  
  if (offset > maxoffset)
    maxoffset = offset;
  offset = e->off;
  for (i = 0; i < nregsets; i++)
    freemask[i] = e->freemask[i];
}

void docall_part1(p) Node p;
{
  char *name;
  Node lastargseen = NULL;

  for (; (generic(p->op) != CALL) &&
         ((generic(p->op) != ASGN) || (generic(p->kids[1]->op) != CALL)); 
         p=p->link) {
    if (generic(p->op) == ARG) {
      p->x.args = lastargseen;
      lastargseen = p;
      }
    }
   
  p->x.args = lastargseen;

  if (p->kids[0] && p->kids[0]->syms[0] && p->kids[0]->syms[0]->x.name)
    {
      name=p->kids[0]->syms[0]->x.name;
    }
  else name="nomatch";
  if (!strcmp(name,"_FUTURE"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args))
         fatal("FUTURE","argument count error\n");
      p->x.args->op = NOP;
      p->x.args->x.args->op = NOP;
    }
  if (!strcmp(name,"_SFUTURE"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args))
         fatal("SFUTURE","argument count error\n");
      p->x.args->op = NOP;
      p->x.args->x.args->op = NOP;
    }
  if (!strcmp(name,"_RPC"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.args))
         fatal("RPC","argument count error\n");
      /* future cell ptr */
      p->x.args->op = GRU;
      /* fn ptr */
      p->x.args->x.args->op = NOP;
      /* This is the pointer for migration testing */
      p->x.args->x.args->x.args->op = GRS;
    }
  if (!strcmp(name,"_SRPC"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.args))
         fatal("SRPC","argument count error\n");
      /* future cell ptr */
      p->x.args->op = GRU;
      /* fn ptr */
      p->x.args->x.args->op = NOP;
      /* This is the pointer for migration testing */
      p->x.args->x.args->x.args->op = GRS;
    }
  if (!strcmp(name,"_RCALL"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.args))
         fatal("RCALL","argument count error\n");
      /* fc ptr */
      p->x.args->op = GRU;
      /* fn ptr */
      p->x.args->x.args->op = NOP;
      /* This is the pointer for migration testing */
      p->x.args->x.args->x.args->op = GRS;
    }

  if (!strcmp(name,"_MULTIRPC"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.args) ||
         !(p->x.args->x.args->x.args->x.args))
         fatal("MULTIRPC","argument count error\n");
      /* This is the multicell */
      p->x.args->op = GRI;
      /* This is the function name */
      p->x.args->x.args->op = NOP;
      /* This is the result cell */
      p->x.args->x.args->x.args->op = GRU;
      /* This is the pointer for migration testing */
      p->x.args->x.args->x.args->x.args->op = GRS;
    }
  if (!strcmp(name,"_MULTIFUTURE"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.args))
         fatal("MULTIFUTURE","argument count error\n");
      /* This is the multicell */
      p->x.args->op = GRI;
      /* This is the function name */
      p->x.args->x.args->op = NOP;
      /* This is the result cell */
      p->x.args->x.args->x.args->op = GRU;
    }
}

/* docall - finalize a call */
void docall(p,r) Node p,r; {
  Node tmp=newnode(ALLOCEXT,0,0,0);
  char *name;
  
  if (!firstargptr) firstargptr=r;
  /*p->x.args = lastarg;*/
  
  if (p->kids[0] && p->kids[0]->syms[0] && p->kids[0]->syms[0]->x.name)
    {
      name=p->kids[0]->syms[0]->x.name;
    }
  else name="nomatch";
  if (!strcmp(name,"_NOTEST"))
   {
    p->op = NOTEST;
   }
  else if (!strcmp(name,"_RETEST"))
   {
    p->op = RETEST;
   }
  else if (!strcmp(name,"_MERGEPH")) {
    p->op = MERGEPH;
   }
  else if (!strcmp(name,"_ABORTonMISS")) {
    p->op = ABORTONMISS;
   }
  else if (!strcmp(name,"_endABORTonMISS")) {
    p->op = ENDABORTONMISS;
   }
  else if (!strcmp(name,"_UNPHASE")) {
    p->op = UNPHASE;
   }
  else if (!strcmp(name,"_MIGRPH")) 
   {
    p->op = MIGRPH;
   }
  else if (!strcmp(name,"_MAKELOCAL"))
    p->op = MAKELOCAL;
  else if (!strcmp(name,"_NONLOCAL"))
    p->op = NONLOCAL;
  else if ((!strcmp(name,"_ATOMICINC")) ||
           (!strcmp(name,"___Invalid2")) ||
           (!strcmp(name,"_Invalid2sim")))
    {
    if (!strcmp(name,"_ATOMICINC")) p->op = ATOMICINC;
    /* mcc addition for removal of #pragma's 10/11/94 */
    if ((p->x.args->x.kids[0]->op == TESTP) ||
        (p->x.args->x.kids[0]->op == MTESTP))
      {
        p->x.args->x.kids[0]->op = p->x.args->x.kids[0]->x.kids[0]->op;
        p->x.args->x.kids[0]->x.state = 
           p->x.args->x.kids[0]->x.kids[0]->x.state;
        p->x.args->x.kids[0]->x.kids[1] = 
           p->x.args->x.kids[0]->x.kids[0]->x.kids[1];
        p->x.args->x.kids[0]->x.kids[0] =
           p->x.args->x.kids[0]->x.kids[0]->x.kids[0];
      }
    }
  else if (!strcmp(name,"_NORETURN"))
    {
      p->op = RESTORE;
      p->x.kids[0] = p->x.args->x.kids[0];
      *(p->x.args->x.prevlink) = r;
      argoffset -= 4;
    }
  else if (!strcmp(name,"_ISLOCPTR"))
    p->op = ISLOCPTR;
  else if (!strcmp(name,"_TOUCH"))
    p->op=TOUCHI;
  else if (!strcmp(name,"_MTOUCH"))
    p->op=MTOUCH;
  else if (!strcmp(name,"_MULTIINIT"))
    p->op=MULTIINIT;
  else if (!strcmp(name,"_RTOUCH"))
    p->op=RTOUCH;
  else if (!strcmp(name,"_STOUCH"))
    p->op=STOUCH;
  else if (!strcmp(name,"_MIGRATE"))
    p->op=MIGRATEV;
  else if (!strcmp(name,"_PREFETCH")) 
    p->op = PREFETCHP;
  else if (!strcmp(name,"_LOCAL"))
    p->op=LOCALP;
  else if (!strcmp(name,"_MLOCAL"))
    p->op=LOCALP;
/* This has the very important effect of not causing an extension
   frame to be generated */
  else if (mflag)
    {
      /* insert something to allocate extension frame */
      *(firstargptr->x.prevlink) = tmp;
      tmp->link = firstargptr;
      tmp->x.registered = 1;
      rewrite(tmp);
    }
  
  if (!strcmp(name,"_FUTURE"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.kids[0]))
         fatal("FUTURE","syntax error\n");
      if (!(p->x.args->x.args->x.kids[0]->syms[0]) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type->type))
         fatal("FUTURE","argument error\n");
      *(p->x.args->x.args->x.prevlink) = p->x.args;
      /* Don't compute function name */
      p->op = FUTURE+p->x.args->x.args->x.kids[0]->syms[0]->type->type->op;
      /* fix for new part1 */
      /*argoffset -= 8;*/
    }
  if (!strcmp(name,"_SFUTURE"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.kids[0]))
         fatal("SFUTURE","syntax error\n");
      if (!(p->x.args->x.args->x.kids[0]->syms[0]) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type->type))
         fatal("SFUTURE","argument error\n");
      *(p->x.args->x.args->x.prevlink) = p->x.args;
      /* Don't compute function name */
      p->op = SFUTURE+p->x.args->x.args->x.kids[0]->syms[0]->type->type->op;
      /* fix for new part1 */
      /*argoffset -= 8;*/
    }
  if (!strcmp(name,"_RPC"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.kids[0]) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.kids[0]) ||
         !(p->x.args->x.args->x.args) ||
         !(p->x.args->x.args->x.args->x.kids[0]))
         fatal("RPC","syntax error\n");
      if (!(p->x.args->x.args->x.kids[0]->syms[0]) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type->type))
         fatal("RPC","argument error\n");
      *(p->x.args->x.args->x.prevlink) = p->x.args;
      /* Don't compute function name */
      p->op = RPC+p->x.args->x.args->x.kids[0]->syms[0]->type->type->op;
      /* fix for new part 1 */
      /*argoffset -= 12;*/
    }
  if (!strcmp(name,"_SRPC"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.kids[0]) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.kids[0]) ||
         !(p->x.args->x.args->x.args) ||
         !(p->x.args->x.args->x.args->x.kids[0]))
         fatal("SRPC","syntax error\n");
      if (!(p->x.args->x.args->x.kids[0]->syms[0]) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type->type))
         fatal("SRPC","argument error\n");
      *(p->x.args->x.args->x.prevlink) = p->x.args;
      /* Don't compute function name */
      p->op = SRPC+p->x.args->x.args->x.kids[0]->syms[0]->type->type->op;
      /* fix for new part 1 */
      /*argoffset -= 12;*/
    }
  if (!strcmp(name,"_RCALL"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.kids[0]) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.kids[0]) ||
         !(p->x.args->x.args->x.args) ||
         !(p->x.args->x.args->x.args->x.kids[0]))
         fatal("RCALL","syntax error\n");
      if (!(p->x.args->x.args->x.kids[0]->syms[0]) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type->type))
         fatal("RCALL","argument error\n");
      *(p->x.args->x.args->x.prevlink) = p->x.args;
      /* Don't compute function name */
      p->op = RCALL+p->x.args->x.args->x.kids[0]->syms[0]->type->type->op;
      /* fix for new part 1 */
      /*argoffset -= 12;*/
    }

  if (!strcmp(name,"_MULTIRPC"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.kids[0]) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.kids[0]) ||
         !(p->x.args->x.args->x.args) ||
         !(p->x.args->x.args->x.args->x.kids[0]) ||
         !(p->x.args->x.args->x.args->x.args) ||
         !(p->x.args->x.args->x.args->x.args->x.kids[0]))
         fatal("MULTIRPC","syntax error\n");
      if (!(p->x.args->x.args->x.kids[0]->syms[0]) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type->type))
         fatal("MULTIRPC","argument error\n");
      *(p->x.args->x.args->x.prevlink) = p->x.args;
      /* Don't compute function name */
      p->op = MULTIRPC+p->x.args->x.args->x.kids[0]->syms[0]->type->type->op;
      /* fix for new part 1 */
      /*argoffset -= 16;*/
    }
  if (!strcmp(name,"_MULTIFUTURE"))
    {
      if (!(p->x.args) ||
         !(p->x.args->x.kids[0]) ||
         !(p->x.args->x.args) ||
         !(p->x.args->x.args->x.kids[0]) ||
         !(p->x.args->x.args->x.args) ||
         !(p->x.args->x.args->x.args->x.kids[0]))
         fatal("MULTIFUTURE","syntax error\n");
      if (!(p->x.args->x.args->x.kids[0]->syms[0]) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type) ||
         !(p->x.args->x.args->x.kids[0]->syms[0]->type->type))
         fatal("MULTIFUTURE","argument error\n");
      *(p->x.args->x.args->x.prevlink) = p->x.args;
      /* Don't compute function name */
      p->op = MULTIFUTURE+p->x.args->x.args->x.kids[0]->syms[0]->type->type->op;
      /* fix for new part 1 */
      /*argoffset -= 12;*/
    }
  if (argoffset > argbuildsize)
    argbuildsize = argoffset;
  p->syms[0] = intconst(roundup(argoffset+68,8));
  if (mflag) tmp->syms[0] = intconst(roundup(argoffset+68,8));
  
  /* prepare for next call */
  firstargptr=NULL;
  firstarg = 1;
  argoffset = 0;
}

static void dotarget(p) Node p; {
  if (ResultType[LOAD+I] == 0) {
    ResultType[LOAD+B] = P;
    ResultType[LOAD+C] = C;
    ResultType[LOAD+D] = D;
    ResultType[LOAD+F] = F;
    ResultType[LOAD+I] = I;
    ResultType[LOAD+P] = P;
    ResultType[LOAD+S] = S;
    ResultType[LOAD+U] = U;
  }
  if (p && p->x.state == 0) {
    if (ResultType[p->op]) 
      setreg(p, rmap[ResultType[p->op]]);
    dotarget(p->kids[0]);
    dotarget(p->kids[1]);
    switch (p->op) {
    case ADDRFP: case ADDRLP:
      if (p->syms[0]->sclass == REGISTER)
	     p->op = VREG+P;
      else if (abs(p->syms[0]->x.offset) > 4095)
        p->op = BIGLP;
      break;
    case ASGNC: case ASGND: case ASGNF: case ASGNI: case ASGNP: case ASGNS:
      if (p->kids[0]->op == VREGP) {
	setreg(p,p->kids[0]->syms[0]);
	rtarget(p, 1, p->kids[0]->syms[0]);
	if (p->kids[0]->syms[0]->temporary)
	  p->kids[0]->syms[0]->x.dag = p->kids[0]->syms[0]->x.dag ?
	    /*0*/ p->kids[1] : p->kids[1];
	/*p->kids[0]->syms[0]->x.dag = 0;*/
      }
      break;
    case CNSTC: case CNSTI: case CNSTS: {
      int i = getint(p->syms[0]);
      /* if (i >= 0 && i <= 3)
         p->op = (I0 + (i<<4))+I;*/
      if (i==0) p->op == I0+I;
      if (i < -4096 || i > 4095)
	p->op = LGCNST+I;
    }
      break;
    case CNSTU: {
      unsigned i = getunsigned(p->syms[0]);
      if (i <= 3)
	p->op = (I0 + (i<<4))+I;
      if (i > 4095) p->op = LGCNST+I;
    }
      break;
    case INDIRC: case INDIRD: case INDIRF: case INDIRI: case INDIRP: case INDIRS:
      if (p->kids[0]->op == VREGP)
	setreg(p, p->kids[0]->syms[0]);
      break;
    }
    (IR->x.target)(p);
  }
}
/* dumpregs - trace register allocation */
void dumpregs(msg, a, b) char *a, *b, *msg; {
  int i;
  
  fprint(2, msg, a, b);
  for (i = 0; i < nregsets; i++)
    fprint(2, "(free[%d]=%x)\n", i, freemask[i]);
}

void export(p) Symbol p; {
  if (!bflag)
    print(IR->x.exportfmt, p->x.name);
}

/* freereg - free register p */
static void freereg(p) Symbol p; {
  assert(p && p->x.regnode);
  freemask[p->x.regnode->regset] |= p->x.regnode->mask;
  debug(rflag, dumpregs("(freeing %s)\n", p->x.name, 0));
}

/* freeregvars - free register variables */
void freeregvars() {
  Symbol p;
  
  for (p = regvars; p; p = p->x.nextregvar) {
    usedmask[p->x.regnode->regset] |= p->x.regnode->mask;
    freereg(p);
  }
}

static void change_to_migrate(p) Node p; 
{
  if (!p) return;
  if (p->op==TESTP) {
    warning("block assign converted to use migration\n");
    p->op = MTESTP;
    }
  change_to_migrate(p->kids[0]);
  change_to_migrate(p->kids[1]);
}

/* Check for cacheing, modify tree if necessary */
void doasgn(p) Node p;
{
  if (tempest) return;
  /* used to test GENMERGE here, and return if 0 -- now have MTESTPs */
  /* modify this later, check for child of test, want to add ADDP(TESTP..)*/
  if (optype(p->op)==B) {
    change_to_migrate(p);
    }
  if (generic(p->kids[0]->op)==TEST) {
    if (p->kids[0]->reallytest) {
      if (p->op==ASGNB) {
         warning("Cached block assignment being changed to migrating\n");
         p->op = MASGNB;
         p->kids[0]->op=MTESTP;
         return; 
       }
      /* remove the TESTP from the links */
      *(p->kids[0]->x.prevlink)=p->kids[0]->link;
      p->filename = p->kids[0]->filename;
      p->lineno = p->kids[0]->lineno;
      /* remove the TESTP from the ASGN statment */
      p->kids[0]=p->kids[0]->x.kids[0];
      p->kids[0]->x.labelled=1;
      p->op = CASGN + optype(p->op);
      return;
     }
    else
      p->kids[0]->op = MTEST + P;
  }
  if (generic(p->kids[0]->op)==MTEST) p->op = MASGN + optype(p->op);
}

Node killconversions(p) Node p; {
int i;
if (!p) return 0;
switch (p->op) {
  case CVIC: case CVIS: case CVIU: case CVUC: case CVUS: case CVUI:
  case CVPU: case CVUP: case INDIRB:
    return (killconversions(p->kids[0]));
    break;
  case ARGB:
    return p;
  default:
    for (i=0; i<MAXKIDS; i++) {
      p->kids[i]=killconversions(p->kids[i]);
    }
  }
return p;
}
 


/* gen - drive forest from front end through all but emitter */
Node gen(head) Node head; {
  int i;
  struct node sentinel;
  Node p, tmp;
  Node *prevlink;

  /* insertion by mcc -- this allows us to insert things more easily */
  for (p = head, prevlink = &head; ; )
    {
      p->x.prevlink = prevlink;
      if (!p->link) break;
      prevlink = &p->link;
      p = p->link;
    }
  /* end of insertion */
  for (p = head; p; p = p->link) {
    p->x.listed = 1;
    if (generic(p->op) == CALL)
      (*IR->x.docall)(p,p);
    else if (generic(p->op) == ASGN && generic(p->kids[1]->op) == CALL)
      {
	p->kids[1]->x.prevlink=p->x.prevlink;
   p->kids[1]->x.args = p->x.args;
	(*IR->x.docall)(p->kids[1],p);
   if (generic(p->kids[1]->op)==TOUCH) {  
     *(p->x.prevlink) = p->kids[1];
     p->kids[1]->link = p->link->link;
     p=p->kids[1];
     }
      }
    else if (generic(p->op) == ASGN)
      {
	doasgn(p);
      }
    else if (generic(p->op) == ARG)
      (*IR->x.doarg)(p);
    tmp = killconversions(p);
    assert(tmp==p);
    rewrite(p);
  }
  for (p = head; p; p = p->link)
    prune(p, &tmp);
  sentinel.x.prev = sentinel.x.next = &sentinel;
  linearize(head, &sentinel);
  head = sentinel.x.next;
  assert(head);
  sentinel.x.next->x.prev = 0;
  sentinel.x.prev->x.next = 0;
  for (p = head; p; p = p->x.next)
    for (i = 0; i < MAXKIDS && p->kids[i]; i++) {
      assert(p->kids[i]->syms[RX]);
      if (p->kids[i]->syms[RX]->temporary) {
	p->kids[i]->x.nextuse = p->kids[i]->syms[RX]->x.uses;
	p->kids[i]->syms[RX]->x.uses = p->kids[i];
      }
    }
  assert(head);
  headptr = &head;
  for (p = head; p; p = p->x.next)
    ralloc(p);
  for (; tempregs; tempregs = tempregs->x.nexttempreg) freereg(tempregs);
  return head;
}

/* genascii - emit ascii string str */
void genascii(ascii, byte, len, str) char *ascii, *byte, *str; {
  char *s = str;
  int m, n;
  
  for (n = 5, m = 9; s < str + len; s++) {
    if (*s == '"' || *s == '\\')
      m += 2;
    else
      m += *s < ' ' || *s >= 0177 ? 4 : 1;
    n += *s < 10 ? 2 : *s < 100 ? 3 : 4;
  }
  s = str;
  if (ascii == 0 || n < m) {
    print("%s %d", byte, (*s++)&0xff);
    for (n = 0; s < str + len; n++)
      if (n > 10) {
	n = 0;
	print("\n%s %d", byte, (*s++)&0xff);
      } else
	print(",%d", (*s++)&0xff);
    outs("\n");
  } else {
    n = 0;
    print("%s \"", ascii);
    for (s = str; s < str + len; s++) {
      if (n >= 64) {
	print("\"\n%s \"", ascii);
	n = 0;
      }
      if (*s == '"' || *s == '\\') {
	print("\\%c", *s);
	n += 2;
      } else if (*s >= ' ' && *s < 0177) {
	*bp++ = *s;
	n += 1;
      } else {
	print("\\%d%d%d", (*s>>6)&3, (*s>>3)&7, *s&7);
	n += 4;
      }
    }
    outs("\"\n");
  }
}

/* genreload - make p->kids[i] use a reload instead of r */
static void genreload(p, tmp, r, i) Node p; Symbol r, tmp; {
  Node q;
  Symbol target = p->kids[i]->x.rtarget;
  int ty;
  int notest = nottestp(p->kids[i]);
  int testop = p->kids[i]->op;
  
  debug(rflag, fprint(2, "(replacing %x with a reload from %s)\n", p->kids[i], tmp->x.name));
  debug(rflag, fprint(2, "genreload: "));
  debug(rflag, dumptree(p->kids[i]));
  debug(rflag, fprint(2, "\n"));
  q = newnode(ADDRL+P, 0, 0, tmp);
  ty = optype(p->kids[i]->op);
  if (ty == U)
    ty = I;
  p->kids[i] = newnode(INDIR + ty, q, 0, 0);
  if (!notest && tempest) p->kids[i]=newnode(testop,p->kids[i],0,0);
  if (target)
    rtarget(p, i, target);
  rewrite(p->kids[i]);
  prune(p->kids[i], &q);
  refresh(&p->x.kids[1], refresh(&p->x.kids[0], 0, i, p), i, p);
  prune(p, &q);
  linearize(p->kids[i], p);
}

static void genspill(r, last, tmp) Symbol r, tmp; Node last; {
  Node p, q;
  Symbol s;
  static struct symbol z;
  unsigned ty;
  
  debug(rflag, fprint(2, "(spilling %s to local %s)\n", r->x.name, tmp->x.name));
  debug(rflag, fprint(2, "genspill: "));
  debug(rflag, dumptree(last));
  debug(rflag, fprint(2, "\n"));
  ty = optype(last->op);
  if (ty == U)
    ty = I;
  s = (Symbol) talloc(sizeof *s);
  *s = z;
  s->sclass = REGISTER;
  s->x.name = r->x.name;
  symeaddr(s) = symeaddr(r);
  s->x.regvar = r;
  s->x.regnode = r->x.regnode;
  q = newnode(ADDRL+P, 0, 0, s);
  q = newnode(INDIR + ty, q, 0, 0);
  p = newnode(ADDRL+P, 0, 0, tmp);
  p = newnode(ASGN + ty, p, q, 0);
  rewrite(p);
  prune(p, &q);
  q = last->x.next;
  linearize(p, q);
  for (p = last->x.next; p != q; p = p->x.next)
    ralloc(p);
}

/* getint - return value of signed integer constant */
int getint(p) Symbol p; {
  switch (ttob(p->type)) {
  case C:		return p->u.c.v.sc;
  case S:		return p->u.c.v.ss;
  default:	return p->u.c.v.i;
  }
}

/* getreg - assign a register from set rs to node p */
static Symbol getreg(rs, rmask) Symbol rs; unsigned rmask[]; {
  Regnode rn;
  Symbol r;
  
  for (r = rs; r; r = rn->link) {
    rn = r->x.regnode;
    assert(rn);
    if ((rn->mask&~(freemask[rn->regset]&rmask[rn->regset])) == 0) {
      freemask[rn->regset] &= ~rn->mask;
      if (rn->regset==1) 
        {
          if (!fvreg[rn->regnum]) {
            Symbol tmp = newtemp(AUTO,F);
            fvreg[rn->regnum]=tmp;
            }
          if ((1 << (rn->regnum+1)) & rn->mask) {
            if (!fvreg[rn->regnum+1]) {
              Symbol tmp = newtemp(AUTO,F);
              fvreg[rn->regnum+1]=tmp;
              }
            }
        }
      return r;
    }
  }
  return 0;
}

/* getregnode - return regnode for register variable or codegen temp */
Regnode getregnode(p) Symbol p; {
  assert(p);
  if (p->x.regnode)
    return p->x.regnode;
  else if (p->x.regvar && p->x.regvar->x.regnode)
    return p->x.regvar->x.regnode;
  else
    assert(0);
  return 0;
}

static void dclproto(getregvar2,(Symbol, Symbol));
     
     /* getregvar - assign variable p to a register if possible */
     int getregvar(p, regs) Symbol p, regs; {
       Symbol r;
       
       assert(p);
       if (p->sclass != REGISTER || !isscalar(p->type)) {
	 p->sclass = AUTO;
	 return 0;
       } else if (p->temporary) {
	 p->x.name = "?";
	 return 1;
       } else if (r = getreg(regs, vmask)) {
	 getregvar2(p, r);
	 return 1;
       } else {
	 p->sclass = AUTO;
	 return 0;
       }
     }
     
static void getregvar2(p, r) Symbol p, r; {
       Symbol tmp;
       p->x.regvar = r;
       p->x.regnode = r->x.regnode;
       p->x.name = r->x.name;
       symeaddr(p) = symeaddr(r);
       p->x.nextregvar = regvars;
       regvars = p;
       if (r->x.regnode->regset == FREG) {
        tmp = newtemp(AUTO,F); fvreg[symeaddr(r)] = tmp;
        if (r->x.regnode->mask & (1<<(symeaddr(r)+1))) {
          tmp = newtemp(AUTO,F); fvreg[symeaddr(r)+1] = tmp; 
          }
        }
       debug(rflag, dumpregs("(allocating %s to symbol %s)\n", p->x.name, p->name));
     }
     
     /* getunsigned - return value of unsigned integer constant */
     unsigned getunsigned(p) Symbol p; {
       switch (ttob(p->type)) {
       case C:		return p->u.c.v.uc;
       case S:		return p->u.c.v.us;
       default:	return p->u.c.v.u;
       }
     }
     
     /* initfunc - common function initialization */
     void initfunc(a, b, c) {
       int i;
       
       offset = b;
       maxoffset = 0;
       argbuildsize = c;
       ncalls = a;
       regvars = 0;
       for (i = 0; i < nregsets; i++) {
	 usedmask[i] = 0;
	 freemask[i] = -1;
       }
     }
     
/* linearize - linearize nodelist p */
static void linearize(p, next) Node next, p; {
  for (; p; p = p->link)
/** mcc fix 1/11/95 so that multiple dereferences may occur **/
    if ((p->op != MTESTP) && (p->op != TESTP)) lin1(p, next);
}

static int anytests(p) Node p; {
  if (!p) return 0;
  if ((p->op == MTESTP) || (p->op == TESTP)) return 1;
  return (anytests(p->kids[0]) || anytests(p->kids[1]));
}
     
/* lin1 - insert p before next */
static void lin1(p, next) Node next, p; {
  int i;
       
  if (p->x.linearized)
	 return;
 if (((generic(p->op)==ASGN) || (generic(p->op)==MASGN) || 
      (generic(p->op==CASGN)))
      && p->kids[1] && anytests(p->kids[1]))
     /** mcc fix 1/11/95 so that multiple derefs may occur-- do right hand
         side of assignment 1st if test occurs in left side!! **/
    {
     lin1(p->kids[1], next);
     lin1(p->kids[0], next);
    }
  else
   for (i = 0; i < MAXKIDS && p->kids[i]; i++)
	 lin1(p->kids[i], next);
  p->x.linearized = 1;
  p->x.prev = next->x.prev;
  next->x.prev->x.next = p;
  p->x.next = next;
  next->x.prev = p;
  debug(rflag, fprint(2, "(listing %x)\n", p));
}
     
/* mkactual - make next frame offset */
int mkactual(prealign, size, postalign) {
  int n = roundup(argoffset, prealign);
  argoffset = roundup(n + size, postalign);
  return n;
}

/* mkauto - make next local */
int mkauto(p, align) Symbol p; {
  /* changed by mcc 6/23/93 */
  p->sclass = AUTO;
  offset = roundup(offset + p->type->size, align);
  p->x.offset = -offset;
  return -offset;
}
     
/* mkreg - create register s with given mask, regset, and link */
static Symbol mkreg(s, n, mask, regset, link) char *s; Symbol link; {
  static struct symbol zs;
  static struct regnode zr;
  Symbol q = (Symbol)alloc(sizeof *q);
  struct regnode *r;
  
  *q = zs;
  q->x.name = string(s);
  symeaddr(q) = atoi(s);
  q->x.regnode = r = (Regnode)alloc(sizeof *r);
  *r = zr;
  r->regnum = n;
  r->mask = mask;
  r->link = link;
  r->regset = regset;
  r->next = regs;
  regs = q;
  return q;
}

/* mkregs - create registers lo to hi by inc with given mask and type */
Symbol mkregs(fmt, lo, hi, inc, mask, regset, regtype, p) char *fmt; Symbol p; {
  for (; lo*inc <= hi*inc; lo += inc)
    p = mkreg(stringf(fmt, lo), lo, mask << lo, regset, p);
  return p;
}

/* mvregvars - move register variables to reduce callee saves */
void mvregvars() {
  freeregvars();
}

/* parseflags - parse back end flags */
void parseflags(argc, argv) char *argv[]; {
  for (++argv; --argc > 0; ++argv)
    if (strcmp(*argv, "-d") == 0)
      dflag++;
    else if (strcmp(*argv, "-v") == 0)
      vflag++;
    else if (strcmp(*argv, "-p") == 0 || strcmp(*argv, "-pg") == 0)
      pflag++;
    else if (strncmp(*argv, "-c", 2) == 0)
      {
      char *flag = (*argv)+2;
     
      if (*flag == 's') {simflag++; flag++;}
      cflag=atoi(flag);
      if ((cflag>4) || (cflag < 2)) {
        fprint(2,"Unsupported cache protocol %d\n",cflag);
        assert(0);
        }
      }
    else if (strcmp(*argv, "-f") == 0)
      fflag++;
    else if (strcmp(*argv, "-m") == 0)
      mflag++;
    else if (strcmp(*argv, "-n") == 0)
      nflag++;
    else if (strcmp(*argv, "-k") == 0)
      kflag++;
    else if (strcmp(*argv, "-pr") == 0)
      {
       warning("Proteus version no longer supported\n");
      }
    else if (strcmp(*argv, "-Temp") == 0)
      tempest++;
}

void progend()
{
  pseudos_endprog();
}
     
/* ralloc - assign register to p */
static void ralloc(p) Node p; {
  Symbol s, v;
  int i;
  Node q;
  
  assert(p);
  debug(rflag, fprint(2, "(rallocing %x)\n", p));
  if ((generic(p->op) != ASGN) || (p->x.kids[0] &&
				   generic(p->x.kids[0]->op) != VREG))
    for (i = 0; i < MAXKIDS && p->kids[i]; i++) {
      assert(p->kids[i]->x.registered);
      s = p->kids[i]->syms[RX];
      assert(s);
      if (s->sclass != REGISTER && s->x.uses == p->kids[i])
	freereg(s);
    }
  if (p->x.registered)
    return;
  s = v = p->syms[RX];
  if (v && v->temporary)
    s = rmap[ResultType[p->op]];
  assert(s || ResultType[p->op] == 0);
  if (ResultType[p->op] && s->sclass != REGISTER) {
    Symbol r;
    assert(s->x.regnode);
    r = getreg(s, tmask);
    if (r == 0) {
      r = spillee(s, p);
      spill(r->x.regnode->mask, r->x.regnode->regset, p);
      r = getreg(s, tmask);
      assert(r);
    }
    if (v->temporary) {
      int inlist=0;
      Symbol check;
      
      for (check=tempregs; check && !inlist; check=check->x.nexttempreg)
	if (check==r) inlist=1;
      if (!inlist) 
	{
	  r->x.nexttempreg = tempregs;
	  tempregs=r;
	}
      r->x.uses = v->x.uses;
      for (q = v->x.uses; q; q = q->x.nextuse) {
	q->x.registered = 1;
	q->syms[RX] = r;
      }
      /* assert(r->x.uses->x.nextuse);*/
    } else {
      r->x.uses = p;
      p->syms[RX] = r;
    }
    usedmask[r->x.regnode->regset] |= r->x.regnode->mask;
    debug(rflag, dumpregs("(allocating %s to node %x)\n", r->x.name, (char *) p));
  }
  p->x.registered = 1;
  (*IR->x.final)(p);
  if (p->x.listed && ResultType[p->op] && generic(p->op)!=TEST && p->op!=MTESTP)
    freereg(p->syms[RX]);
}

     /* refresh - p->kids[n] has changed;  update the corresponding x.kid */
     static int refresh(pp, k, n, p) Node p, *pp; {
       Node q = *pp;
       
       if (q == 0 || k > n)
	 return k;
       else if (q->x.inst == 0)
	 return refresh(&q->x.kids[1], refresh(&q->x.kids[0], k, n, p), n, p);
       else if (k == n) {
	 debug(dflag, fprint(2, "(refresh changes %x from %x to %x)\n", pp, *pp, p->kids[n]));
	 *pp = p->kids[n];
	 return k + 1;
       } else
	 return k + 1;
     }
     
     /* regloc - return "id" for p's register */
     unsigned regloc(p) Symbol p; {
       assert(p && p->sclass == REGISTER && p->sclass == REGISTER && p->x.regnode);
       return p->x.regnode->regset<<8 | p->x.regnode->regnum;
     }
     
     static void rewrite(p) Node p; {
       assert(p->x.inst == 0 || generic(p->op)==TEST || p->op == MTESTP);
       dotarget(p);
       label(p);
       debug(dflag, dumpcover(p, 1, 0));
       reduce(p, 1);
     }
     
     /* rtarget - evaluate p->kids[n] into register r */
     void rtarget(p, n, r) Node p; Symbol r; {
       Node q;
       Symbol s;
       
       assert(p && p->kids[n] && (r->sclass == REGISTER || r->x.regnode->link == 0));
       q = p->kids[n];
       s = q->syms[RX];
       assert(s);
       if (s != r && (s->sclass == REGISTER || s->x.regnode->link == 0))
	 p->kids[n] = q = newnode(LOAD + optype(q->op), q, 0, q->syms[0]);
       q->syms[RX] = r;
       if (!r->temporary)
	 q->x.rtarget = r;
       debug(rflag, fprint(2, "(targeting %x->kids[%d]=%x to %s)\n", p, n, p->kids[n], r->x.name));
     }
     
     /* setseg - switch to logical segment n (1..5) */
     void setseg(n) {
       assert(n >= 0 && n < sizeof IR->x.segnames/sizeof IR->x.segnames[0]);
       cseg = n;  
       if (IR->x.segnames[n-1])
	 print("%s\n", IR->x.segnames[n-1]); 
     }
     
     /* spacen - allocate n bytes of space in the current segment */
     void spacen(n, prefix) char *prefix; {
       if (cseg != BSS)
	 print("%s ", prefix);
       print("%d\n", n);
     }

/* genspillreload - spill a register before and reload after dot */
void genspillreloadfloat(r,dot) Symbol r; Node dot; {
Symbol tmp;
Symbol s;
Node p,q,last = dot->x.prev;
Node tmpnode;
static struct symbol z;

assert(fvreg[symeaddr(r)]);
tmp=fvreg[symeaddr(r)];
s=(Symbol) talloc(sizeof(*s));
*s = z;
s->sclass = REGISTER;
s->x.name = r->x.name;
symeaddr(s) = symeaddr(r);
s->x.regvar = r;
s->x.regnode = r->x.regnode;
q = newnode(ADDRL+P,0,0,s);
q = newnode(INDIR+F,q,0,0);
p = newnode(ADDRL+P,0,0,tmp);
p = newnode(ASGN+F,p,q,0);
rewrite(p);
prune(p,&q);
if (last) {
  q = last->x.next;
  linearize(p,q);
  p = last->x.next;
}
else {
  struct node sentinel;
  sentinel.x.prev = sentinel.x.next = &sentinel;
  linearize(p,&sentinel);
  *headptr = sentinel.x.next;
  sentinel.x.next->x.prev = 0;
  sentinel.x.prev->x.next = dot;
  dot->x.prev = *headptr;
}
/* Above is the spill code */
/* Below is the reload code */
/*for (p=last->x.next; p!=q; p=p->x.next) ralloc(p);*/
q = newnode(ADDRL+P,0,0,tmp);
q = newnode(INDIR+F,q,0,0);
p = newnode(ADDRL+P,0,0,s);
p = newnode(ASGN+F,p,q,0);
tmpnode = q;
rewrite(p);
prune(p,&tmpnode);
/* It is important to set prev fields */
/* dot => q => p => dot->x.next */
q->x.next=p;
p->x.prev=q;
p->x.next=dot->x.next;
if (dot->x.next) dot->x.next->x.prev=p;
dot->x.next=q;
q->x.prev=dot;
}
     
     /* spill - spill all busy registers in regset n that overlap mask */
     void spill(mask, n, dot) unsigned mask; Node dot; {
       int i;
       Node p;
       
       if (mask&~freemask[n])
	 for (p = dot; p; p = p->x.next)
	   for (i = 0; i < MAXKIDS && p->kids[i]; i++) {
	     Symbol r = p->kids[i]->syms[RX];
	     if (
		 p->kids[i]->x.registered &&
		 r->x.regnode->regset == n &&
		 r->x.regnode->mask&mask
		 )
	       spillr(r, dot);
	   }
       usedmask[n] |= mask;
       /* Want VREGS for floating point operations */
       if (n==FREG)
         {
         Symbol r;
         if ((mask&~freemask[1]) & vmask[FREG])
         for (r=rmap[F]; r; r=r->x.regnode->link)
           if (((mask&~freemask[1]) & vmask[FREG]) & r->x.regnode->mask)
             {
             genspillreloadfloat(r,dot);
             }
         }
     }
     
#define isvreguse(p) (generic((p)->op) == INDIR && (p)->x.kids[0]->op == VREGP)
     
/* spillr - spill register r */
static void spillr(r, dot) Symbol r; Node dot; {
       int i, istemp = (r->x.uses && (r->x.uses->x.nextuse != 0));
       Node p;
       Symbol tmp;
       
       /* dot can't have set it yet, so no spill is needed */
       /* shouldn't happen anyway:  edit final to avoid spilling dot's reg */
       /* assert(!dot->x.registered || r->x.regnode && dot->syms[RX]->x.regnode && (r->x.regnode->regset != dot->syms[RX]->x.regnode->regset || (r->x.regnode->mask&dot->syms[RX]->x.regnode->mask) == 0)); */
       tmp = newtemp(AUTO, optype(r->x.uses->op));
       for (p = r->x.uses; p; p = p->x.nextuse) {
	 assert(r == p->syms[RX]);
	 if (p->x.registered && (!istemp || !isvreguse(p)))
	   genspill(r, p, tmp);
       }
       for (p = dot->x.next; p; p = p->x.next)
	 {
	   for (i = 0; i < MAXKIDS && p->kids[i]; i++)
	     if (
		 p->kids[i]->x.registered &&
		 r == p->kids[i]->syms[RX] &&
		 (!istemp || isvreguse(p->kids[i]))
		 )
	       genreload(p, tmp, r, i);
	 }
       freereg(r);
     }
     
     /* spillee - identify most-distantly-used register in register class r */
     static Symbol spillee(r, dot) Node dot; Symbol r; {
       int bestdist = -1;
       Symbol bestreg = 0;
       
       if (rflag) {
	 Node q;
	 int i;
	 fprint(2, "(spillee:)\n");
	 for (q = dot; q; q = q->x.next) {
	   fprint(2, "(dot=%x)\n", q);
	   for (i = 0; i < MAXKIDS && q->kids[i]; i++)
	     fprint(2, "(%x->kids[%d]=%x is using %s)\n", q, i, q->kids[i], (q->kids[i]->x.registered ? q->kids[i]->syms[RX]->x.name : "?"));
	 }
       }
       for (; r; r = r->x.regnode->link) {
	 Node q;
	 int dist = 0;
	 for (q = dot; q && !uses(q, r->x.regnode); q = q->x.next)
	   dist++;
	 if (q && dist > bestdist && tmask[r->x.regnode->regset]&r->x.regnode->mask) {  /* no local use => reg vbl */
	   bestdist = dist;
	   bestreg = r;
	 }
       }
       assert(bestreg);
       return bestreg;
     }
     
     /* uses - does node p read register r? */
     static int uses(p, r) Node p; Regnode r; {
       int i;
       
       if (0 && r->mask&vmask[r->regset])
	 switch (generic(p->op)) {
	 case JUMP: case LABEL:
	 case EQ: case NE:
	 case GT: case LT:
	 case GE: case LE:
	   return 1;
	 default:
	   return 0;
	 }
       for (i = 0; i < MAXKIDS && p->kids[i]; i++)
	 if (
	     p->kids[i]->x.registered &&
	     r->mask&p->kids[i]->syms[RX]->x.regnode->mask
	     )
	   return 1;
       for (i = 0; i < 2 && p->x.kids[i]; i++)
	 if (p->x.kids[i]->syms[RX] && p->x.kids[i]->syms[RX]->temporary &&
	     p->x.kids[i]->syms[RX]->x.dag &&
	     p->x.kids[i]->syms[RX]->x.dag->x.registered &&
	     r->mask&p->x.kids[i]->syms[RX]->x.dag->syms[RX]->x.regnode->mask)
	   return 1;
       return 0;
     }
     
     
