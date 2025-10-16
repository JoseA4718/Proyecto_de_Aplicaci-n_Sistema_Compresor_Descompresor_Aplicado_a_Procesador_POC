#define NODAG 1
#define GEN4
#define RX		2		/* symbol holding target register */
#define MAXSYMS 	4		/* symbols/node */
#define MAXINTS 	5		/* codes/node */
#define MAXKIDS 	6		/* children/node */

#define	VREG	(47<<4)
#define	I0	(41<<4)
#define	I1	(42<<4)
#define	I2	(43<<4)
#define	I3	(44<<4)
#define  NOP (45<<4)
#define LGCNST (46<<4)
#define LGCNSTI (LGCNST+I)

#define VREGP	(VREG+P)
#define I0I	(I0+I)
#define I1I	(I1+I)
#define I2I	(I2+I)
#define I3I	(I3+I)

typedef struct regnode *Regnode;

typedef struct {		/* back end's block record */
	int off;			/* offset for locals */
	unsigned freemask[3];		/* free registers */
} Env;

typedef struct {
	char *exportfmt;
	unsigned twoop:1;
	unsigned char maxunalignedload;
	char *segnames[5];
	dclproto(void (*doarg),(Node));
	dclproto(void (*docall),(Node));
	dclproto(void (*blkfetch),(int, int, int, int));
	dclproto(void (*blkloop),(int, int, int, int, int, int[]));
	dclproto(void (*blkstore),(int, int, int, int));
	dclproto(void (*final),(Node));
	dclproto(void (*rewrite),(Node));
	dclproto(void (*emitspecial),(Node));
	dclproto(Node *(*burm_kids),(Node, int, Node*));
	char **burm_ntname;
	short **burm_nts;
	dclproto(int (*burm_rule),(int, int));
	dclproto(int (*burm_state),(int, int, int));
	char **burm_string;
	short (*burm_cost)[4];
	struct rule *rules;
	dclproto(unsigned (*emit2),(Node,Node[],short[]));
	dclproto(void (*target),(Node));
} Xinterface;

struct real {			/* canonical real */
	unsigned sign;
	unsigned exp;			/* unbiased exponent */
	unsigned msb;			/* most significant fraction bits */
	unsigned lsb;			/* least significant fraction bits */
};

struct rule {
	unsigned inst:1;
	char *template;
};

typedef struct {		/* back end's node fields */
	unsigned listed:1;
	unsigned linearized:1;
	unsigned registered:1;
	unsigned labelled:1;
	unsigned emitted:1;
	unsigned isvararg:1;
   unsigned freemask; /* used for tempest */
	short inst;
	Symbol rtarget;
	Node args;
	Node prev, next;
   Node *prevlink;
	Node kids[2];
	unsigned state;
	Node nextuse;
} Xnode;

typedef struct {		/* back end's symbol fields */
	char *name;			/* name for back end */
	unsigned int eaddr;		/* effective address of symbol */
	int offset;			/* offset for locals, formals */
	Regnode regnode;		/* mkregs's register id, if any */
	Node uses;
	Symbol regvar;			/* register allocated to this symbol, if any */
	Symbol nextregvar;		/* links function's register variables */
   Symbol nexttempreg;     /* links temporaries for deallocation */
	Node dag;
	int count;
} Xsymbol;

struct regnode {		/* register */
	unsigned char regset;		/* register set */
	unsigned char regnum;		/* register number */
	unsigned mask;			/* underlying basic registers */
	Symbol link;			/* next register in this class */
	Symbol next;			/* next register in any class */
};

#define setreg(p,r) ((p)->syms[RX]=r)
#define symeaddr(_s)	((_s)->x.eaddr)

/* gen.c */
dclproto(extern void blockbeg,(Env *));
dclproto(extern void blockend,(Env *));
dclproto(extern void export,(Symbol));
dclproto(extern Node gen,(Node));
dclproto(extern void progend,(void));

dclproto(extern int bitcount,(unsigned));
dclproto(extern void blkcopy,(int, int, int, int, int, int[]));
dclproto(extern void blkunroll,(int, int, int, int, int, int, int[]));
dclproto(extern int cost,(Node, int));
dclproto(extern void delay,(Node, int));
dclproto(extern void docall,(Node));
dclproto(extern void dumpregs,(char *, char *, char *));
dclproto(extern unsigned emitasm,(Node, int));
dclproto(extern unsigned emitbin,(Node, int));
dclproto(extern void emit,(Node));
dclproto(extern void freeregvars,(void));
dclproto(extern void genascii,(char *, char *, int, char *));
dclproto(extern int getint,(Symbol));
dclproto(extern Regnode getregnode,(Symbol));
dclproto(extern int getregvar,(Symbol, Symbol));
dclproto(extern int getrule,(char*, Node, int));
dclproto(extern unsigned getunsigned,(Symbol));
dclproto(extern int hasinst,(Node, int));
dclproto(extern void initfunc,(int, int, int));
dclproto(extern int mkactual,(int, int, int));
dclproto(extern int mkauto,(Symbol, int));
dclproto(extern Symbol mkregs,(char *, int, int, int, int, int, int, Symbol));
dclproto(extern void mvregvars,(void));
dclproto(extern void parseflags,(int, char **));
dclproto(extern unsigned regloc,(Symbol));
dclproto(extern void rtarget,(Node, int, Symbol));
dclproto(extern void setseg,(int));
dclproto(extern void spacen,(int, char *));
dclproto(extern void spill,(unsigned, int, Node));
extern int argbuildsize;
extern int argoffset;
extern int dalign, salign;
extern unsigned eemask[];
extern unsigned freemask[];
extern Node last;
extern int maxoffset;
extern int ncalls;
extern int nregsets;
extern int offset;
extern int bflag, dflag, kflag, pflag, rflag;
extern Symbol regs;
extern Symbol regvars;
extern Symbol rmap[];
extern int savebase[];
extern unsigned savemask[];
extern unsigned tmask[];
extern unsigned usedmask[];
extern unsigned vmask[];
extern Node curnode;
extern int genx;
/* decode.c */
dclproto(struct real decode,(int, double));
/* emit.c */
dclproto(extern unsigned emitbin,(Node, int));

dclproto(extern void abort,(void));

#ifdef DEBUG
#define debug(f,x) if(f)x
#else
#define debug(f,x)
#endif
