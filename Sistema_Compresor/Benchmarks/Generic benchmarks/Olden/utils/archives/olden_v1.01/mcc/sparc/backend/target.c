extern int tempest,cflag;
extern Symbol g4,g5,g6;
static int ISNOTEST=0;
static unsigned emit2(p, kids, nts) Node p, kids[]; short nts[]; {
/*
.=="st %f^n,[%sp+4*^c+68]" (6>a->syms[2]->u.c.v.i?) .="st %f^n,[%sp+4*^c+68]; ld [%sp+4*^c+68],%o^c"
.=="std %f^n,[%sp+4*^c+68]" 	.="# argd" (spill(5>=a->syms[1]->u.c.v.i ? 256*("\003\006\014\030\060\040"[a->syms[1]->u.c.v.i]) : 0, IREG, a))
*/

	emitspecial(p,kids,nts);
	return 0;
}

static void initgen() {
	IR->emit = emit;
}

static void target(p) Node p; {
  assert(p);
  switch (p->op) {
  case BIGLP:
    setreg(p, g6); break;
  case GRS:
    setreg(p, g4); rtarget(p,0,g4); break;
  case GRI:
    setreg(p, g5); rtarget(p,0,g5); break;
  case GRU:
    setreg(p, g6); rtarget(p,0,g6); break;
  case ARGI: case ARGP:
    if (p->syms[1]->u.c.v.i < 6) {
      rtarget(p,0,oreg[p->syms[1]->u.c.v.i]);
      p->x.registered = 1;
      p->op = NOP;
      /*p->op = LOAD+optype(p->op);
	setreg(p, oreg[p->syms[1]->u.c.v.i]); */
    }
    break;
  case CALLB:	setreg(p, oreg[0]); break;
  case CALLD:	setreg(p, d0); break;
  case CALLF:	setreg(p, f0); break;
  case LOCALP:
  case PREFETCHP:
  case CALLI: case CALLV:	setreg(p, oreg[0]); break;
  case DIVI: case MODI: case MULI: case DIVU: case MODU: case MULU:
    ncalls++; setreg(p, oreg[0]); break;
  case I0I:	setreg(p, g0);  p->x.registered = 1; break;
  case RETD:	rtarget(p, 0, d0); break;
  case RETF:	rtarget(p, 0, f0); break;
  case RETI:	rtarget(p, 0, oreg[0]); break;
    /* additions by mcc for runtime system */
  case TESTP: case MTESTP: 
    if (tempest) setreg(p,p->kids[0]->syms[RX]); break;
  case ATOMICINC:
  case MAKELOCAL: case NONLOCAL: case ISLOCPTR: 
    /* target of o0 assumed in pseudos.c */
    setreg(p, oreg[0]); 
    break;
    /* end of additions for runtime system */
  }
}

#define CLiSPi 0x001ffe00
#define CLxSPi 0x001fff00
#define CLfSPf 0xfffffffe
#define CLdSPf 0xfffffffc
#define CLxSPf 0xffffffff
#define TPxSPf 0x00ffffff
static void final(p) Node p; {
  unsigned mask,mask2;

  assert(p);
  switch (p->op) {
  case NOTEST: ISNOTEST = 1; break;
  case RETEST: ISNOTEST = 0; break;
  case ARGB:	spill(0xc0, IREG, p);  break;
  case ASGNB:  if (!tempest) {spill(0xc0, IREG, p);  break;}
    else {
      if (notmtestp(p->x.kids[0]) && notmtestp(p->x.kids[1]->x.kids[0]))
        spill(0xc0, IREG, p);
      else {
        mask = (p->x.kids[0]->syms[RX]) ?
                p->x.kids[0]->syms[RX]->x.regnode->mask : 0;
        mask2 = (p->x.kids[1]->syms[RX]) ?
                 p->x.kids[1]->syms[RX]->x.regnode->mask : 0;
        mask = ((CLxSPi & ~mask) & ~mask2);
        p->x.freemask = freemask[1];
        spill(mask,0,p); spill(TPxSPf,1,p);
      }
    }
    break;
  case CALLB:	spill(CLxSPi, 0, p);  spill(CLxSPf, 1, p);  break;
  case CALLD:	spill(CLxSPi, 0, p);  spill(CLdSPf, 1, p);  break;
  case CALLF:	spill(CLxSPi, 0, p);  spill(CLfSPf, 1, p);  break;
  case ATOMICINC:
  case MASGNF: case MASGND: 
  case MASGNI: case MASGNC: case MASGNS: case MASGNP: 
      if ((cflag == 2) || (cflag == 3)) {
        spill(CLiSPi, 0, p);  spill(0, 1, p);
        }
      break;
  case CASGNF: case CASGND: 
  case CASGNI: case CASGNC: case CASGNS: case CASGNP: 
        	      spill(CLiSPi, 0, p);  spill(0, 1, p);  break;
  case CALLI:	spill(CLiSPi, 0, p);  spill(CLxSPf, 1, p);  break;
  case CALLV:     spill(CLxSPi, 0, p);  spill(CLxSPf, 1, p);  break;
  case MULI: case MULU: case DIVI: case DIVU: case MODI: case MODU:
    spill(CLiSPi, 0, p);  spill(CLxSPf, 1, p);
    break;
    /* additions by mcc for runtime system */
  /* Caches */
  case ASGNF: case ASGND: 
    if (nottestp(p->x.kids[0]) || (!tempest)) break;
    if (ISNOTEST) break;
    mask = (p->x.kids[1]->syms[RX]) ?
            p->x.kids[1]->syms[RX]->x.regnode->mask : 0;
    p->x.freemask = freemask[1];
    mask = TPxSPf & ~mask;
    mask2 = (p->x.kids[0]->syms[RX]) ?
             p->x.kids[0]->syms[RX]->x.regnode->mask : 0;
    mask2 = CLxSPi & ~mask;
    if (p->x.kids[0]->op==MTESTP && p->x.kids[0]->reallytest)
      {spill(mask2,0,p); spill(mask,1,p);}
    else
      {spill(mask2,0,p); spill(0,1,p);}
    break;
  case ASGNI: case ASGNP: case ASGNC: case ASGNS: 
    if (nottestp(p->x.kids[0]) || (!tempest)) break;
    if (ISNOTEST) break;
    mask = (p->x.kids[1]->syms[RX]) ?
            p->x.kids[1]->syms[RX]->x.regnode->mask : 0;
    mask = CLxSPi & ~mask;
    mask2 = (p->x.kids[0]->syms[RX]) ?
             p->x.kids[0]->syms[RX]->x.regnode->mask : 0;
    mask = mask & ~mask2;
    p->x.freemask = freemask[1];
    if (p->x.kids[0]->op==MTESTP && p->x.kids[0]->reallytest)
      {spill(mask,0,p); spill(TPxSPf,1,p);}
    else
      {spill(mask,0,p); spill(0,1,p);}
    break;
  case INDIRI: case INDIRP: case INDIRC: case INDIRS:
    if (nottestp(p->x.kids[0]) || (!tempest)) break;
    if (ISNOTEST) break;
    mask = (p->syms[RX]) ?
            p->syms[RX]->x.regnode->mask : 0;
    mask = CLxSPi & ~mask;
    p->x.freemask = freemask[1];
    if (p->x.kids[0]->op==MTESTP && p->x.kids[0]->reallytest)
      {spill(mask,0,p); spill(TPxSPf,1,p);}
    else
      {spill(mask,0,p); spill(0,1,p);}
    break;
  case INDIRF: case INDIRD: 
    if (nottestp(p->x.kids[0]) || (!tempest)) break;
    if (ISNOTEST) break;
    mask = (p->syms[RX]) ?
            p->syms[RX]->x.regnode->mask : 0;
    p->x.freemask = freemask[1];
    mask = TPxSPf & ~mask;
    if (p->x.kids[0]->op==MTESTP && p->x.kids[0]->reallytest)
      {spill(CLxSPi,0,p); spill(mask,1,p);}
    else
      {spill(CLxSPi,0,p); spill(0,1,p);}
    break;
  case PREFETCHP:
    if (ISNOTEST) break;
    spill(CLxSPi & ~p->syms[RX]->x.regnode->mask,0,p); spill(0,1,p);
    break;
  case TESTP:
    if (tempest || ISNOTEST || !p->reallytest) break;
    spill(CLxSPi & ~p->syms[RX]->x.regnode->mask,0,p); spill(0,1,p);
    break;
  /* Migrates */
  case LOCALP:
    if (ISNOTEST || !p->reallytest) break;
    p->x.freemask = freemask[1];
    spill(CLxSPi & ~p->syms[RX]->x.regnode->mask,0,p); spill(TPxSPf,1,p);
    break;
  case MTESTP:
    if (tempest || ISNOTEST || !p->reallytest) break;
    p->x.freemask = freemask[1];
    spill(CLxSPi & ~p->syms[RX]->x.regnode->mask,0,p); spill(TPxSPf,1,p);
    break;
  case MIGRATEV: 
    p->x.freemask = freemask[1];
    spill(CLiSPi,0,p); spill(TPxSPf,1,p); break;
  case MULTIINIT:
  case MTOUCH:
  case RTOUCH:
  case TOUCHI: case MAKELOCAL:
  case FUTUREI: case FUTUREP: case FUTUREC: case FUTUREU: case FUTURES:
  case RPCI: case RPCP: case RPCC: case RPCU: case RPCS:
  case SRPCI: case SRPCP: case SRPCC: case SRPCU: case SRPCS:
  case SFUTUREI: case SFUTUREP: case SFUTUREC: case SFUTUREU: case SFUTURES:
  case RCALLI: case RCALLP: case RCALLC: case RCALLU: case RCALLS:
  case MULTIRPCI: case MULTIRPCP: case MULTIRPCC: case MULTIRPCU: 
  case MULTIFUTUREI: case MULTIFUTUREP: case MULTIFUTUREC: case MULTIFUTUREU: 
  case MULTIRPCS: case MULTIFUTURES:
    spill(CLiSPi,0,p); spill(CLxSPf,1,p); break;
  case RPCF:
  case RCALLF:
  case MULTIRPCF:
  case MULTIFUTUREF:
  case FUTUREF:
  case SFUTUREF:
  case SRPCF:
    spill(CLxSPi,0,p); spill(CLfSPf,1,p); break;
  case SRPCD:
  case SFUTURED:
  case RPCD:
  case RCALLD:
  case FUTURED:
  case MULTIRPCD:
  case MULTIFUTURED:
    spill(CLxSPi,0,p); spill(CLdSPf,1,p); break;
  case MULTIRPCB: case MULTIRPCV:
  case MULTIFUTUREB: case MULTIFUTUREV:
  case RPCB: case RPCV:
  case RCALLB: case RCALLV:
  case FUTUREB: case FUTUREV:
  case SFUTUREB: case SFUTUREV:
  case SRPCB: case SRPCV:
    spill(CLxSPi,0,p); spill(CLxSPf,1,p); break;
    /* end of additions */
  }
  /*
    %kills IREG 0x0000ff00 "mov ^x,%o1; call ^f,2; mov ^y,%o0; mov %o0,^z"
    %kills FREG 0xfffffffc "call ^y; nop" "call ^y; st ^z,[%sp+64]"
    %kills FREG 0x00000001 "fdtoi ^y,%f0; st %f0,[%sp+64]; ld [%sp+64],^z"
    */
}
