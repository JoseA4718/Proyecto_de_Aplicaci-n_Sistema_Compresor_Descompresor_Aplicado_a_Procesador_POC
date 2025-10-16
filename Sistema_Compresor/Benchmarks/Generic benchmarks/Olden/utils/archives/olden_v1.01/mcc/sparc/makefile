TARGET=sparc
OS=
CC=cc
CFLAGS=-g
LDFLAGS=-g
INCLUDES=-I.. -I../cnew -I../../cnew
C=../../cnew
CNEW=../cnew
D=backend

all:	$(D)/mcc

OBJS=  $(D)/burm.o $(D)/gen4.o $(D)/decode.o $(D)/bind.o $(D)/mcc.o $(D)/chartable.o

$(D)/gen4.o:         $(D)/gen4.c;         cd $(D); $(CC) -c $(CCOPT) gen4.c
$(D)/burm.o:		$(D)/burm.c $(D)/pseudos.c $(D)/target.c; 	cd $(D); $(CC) -c $(CCOPT) burm.c
$(D)/decode.o:		$(D)/decode.c;	cd $(D); $(CC) -c $(CCOPT) decode.c
$(D)/bind.o:		$(D)/bind.c;	cd $(D); $(CC) -c $(CCOPT) bind.c
$(D)/mcc.o:			$(D)/chartable.h $(CNEW)/pass1.h $(CNEW)/pass2.h $(CNEW)/vector.h $(CNEW)/table.h $(CNEW)/callgraph.h $(CNEW)/c.h $(CNEW)/eebtest.h $(CNEW)/sets.h $(D)/mcc.c;		cd $(D); $(CC) -c $(CCOPT) mcc.c
$(D)/chartable.o:		$(D)/chartable.h $(D)/chartable.c;	cd $(D); $(CC) -c $(CCOPT) chartable.c

include ../cnew/makefile

$(COBJS) $(OBJS):	$(D)/config.h 

RUN=run

