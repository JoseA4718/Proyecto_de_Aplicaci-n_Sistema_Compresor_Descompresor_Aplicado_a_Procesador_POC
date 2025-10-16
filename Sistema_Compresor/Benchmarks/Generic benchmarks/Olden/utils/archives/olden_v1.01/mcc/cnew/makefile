SHELL=/bin/sh

COBJS=$(D)/dag.o \
	$(D)/decl.o \
	$(D)/enode.o \
	$(D)/error.o \
	$(D)/expr.o \
	$(D)/init.o \
	$(D)/input.o \
	$(D)/lex.o \
	$(D)/main.o \
	$(D)/output.o \
	$(D)/profio.o \
	$(D)/simp.o \
	$(D)/stmt.o \
	$(D)/string.o \
	$(D)/sym.o \
	$(D)/tree.o \
	$(D)/types.o \
   $(D)/pass1.o \
   $(D)/pass2.o \
   $(D)/table.o \
   $(D)/vector.o \
   $(D)/debug.o \
   $(D)/callgraph.o  \
   $(D)/eebtest.o \
   $(D)/sets.o


c-makefile:
	@echo 1>&2 run make from a target-specific directory

$(D)/mcc:	$(COBJS) $(OBJS)
		$(CC) $(LDFLAGS) -o $@ $(COBJS) $(OBJS)

C=../cnew

$(COBJS):	$(C)/c.h $(C)/token.h $(C)/ops.h
$(OBJS):	$(C)/c.h $(C)/token.h $(C)/ops.h

CCOPT=$(CFLAGS) $(INCLUDES)

$(D)/lex.o:	$(C)/keywords.h

$(D)/dag.o:	$(C)/dag.c;	$(CC) -c -o $@ $(CCOPT) $(C)/dag.c
$(D)/decl.o:	$(C)/decl.c;	$(CC) -c -o $@ $(CCOPT) $(C)/decl.c
$(D)/enode.o:	$(C)/enode.c;	$(CC) -c -o $@ $(CCOPT) $(C)/enode.c
$(D)/error.o:	$(C)/error.c;	$(CC) -c -o $@ $(CCOPT) $(C)/error.c
$(D)/expr.o:	$(C)/expr.c;	$(CC) -c -o $@ $(CCOPT) $(C)/expr.c
$(D)/init.o:	$(C)/init.c;	$(CC) -c -o $@ $(CCOPT) $(C)/init.c
$(D)/input.o:	$(C)/input.c;	$(CC) -c -o $@ $(CCOPT) $(C)/input.c
$(D)/lex.o:	$(C)/lex.c;	$(CC) -c -o $@ $(CCOPT) $(C)/lex.c
$(D)/main.o:	$(C)/main.c;	$(CC) -c -o $@ $(CCOPT) $(C)/main.c
$(D)/output.o:	$(C)/output.c;	$(CC) -c -o $@ $(CCOPT) $(C)/output.c
$(D)/profio.o:	$(C)/profio.c;	$(CC) -c -o $@ $(CCOPT) $(C)/profio.c
$(D)/simp.o:	$(C)/simp.c;	$(CC) -c -o $@ $(CCOPT) $(C)/simp.c
$(D)/stmt.o:	$(C)/stmt.c;	$(CC) -c -o $@ $(CCOPT) $(C)/stmt.c
$(D)/string.o:	$(C)/string.c;	$(CC) -c -o $@ $(CCOPT) $(C)/string.c
$(D)/sym.o:	$(C)/sym.c;	$(CC) -c -o $@ $(CCOPT) $(C)/sym.c
$(D)/tree.o:	$(C)/tree.c;	$(CC) -c -o $@ $(CCOPT) $(C)/tree.c
$(D)/types.o:	$(C)/types.c;	$(CC) -c -o $@ $(CCOPT) $(C)/types.c
$(D)/callgraph.o:	$(C)/c.h $(C)/callgraph.c $(C)/table.h $(C)/vector.h $(C)/callgraph.h;	$(CC) -c -o $@ $(CCOPT) $(C)/callgraph.c
$(D)/table.o:	$(C)/table.c $(C)/table.h;	$(CC) -c -o $@ $(CCOPT) $(C)/table.c
$(D)/vector.o:	$(C)/vector.c $(C)/vector.h;	$(CC) -c -o $@ $(CCOPT) $(C)/vector.c
$(D)/debug.o:	$(C)/c.h $(C)/debug.c $(C)/vector.h $(C)/pass1.h $(C)/callgraph.h $(C)/pass2.h $(C)/debug.h;	$(CC) -c -o $@ $(CCOPT) $(C)/debug.c
$(D)/pass1.o:	$(C)/pass1.c $(C)/c.h $(C)/vector.h $(C)/callgraph.h $(C)/pass1.h;	$(CC) -c -o $@ $(CCOPT) $(C)/pass1.c
$(D)/pass2.o:	$(C)/pass2.c $(C)/c.h $(C)/pass2.h $(C)/vector.h $(C)/callgraph.h $(C)/pass1.h;	$(CC) -c -o $@ $(CCOPT) $(C)/pass2.c
$(D)/eebtest.o:   $(C)/eebtest.c $(C)/sets.h $(C)/callgraph.h $(C)/c.h; $(CC) -c -o $@ $(CCOPT) $(C)/eebtest.c
$(D)/sets.o:   $(C)/sets.h $(C)/sets.c; $(CC) -c -o $@ $(CCOPT) $(C)/sets.c
