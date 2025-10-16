10: operands of = have illegal types `pointer to struct this' and `int'
13: operands of = have illegal types `pointer to struct this' and `int'
.seg "text"

.global _main
ARGI(CNSTU(4))
CALLI(ADDRGP(mymalloc))
was node 0 of type call
with successors:1, 

ASGNI(ADDRLP(true), CALLI(ADDRGP(mymalloc)))
was node 1 of type other
with successors:2, 

CALLI(ADDRGP(MIGRATE))
was node 2 of type call
with successors:3, 

was node 3 of type other
with successors:4, 

CALLI(ADDRGP(MIGRPH))
was node 4 of type call
with successors:5, 

was node 5 of type other
with successors:6, 

ARGI(CNSTU(4))
CALLI(ADDRGP(mymalloc))
was node 6 of type call
with successors:7, 

ASGNI(ADDRLP(thing), CALLI(ADDRGP(mymalloc)))
was node 7 of type other
with successors:8, 

ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(thing))))
ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(true))))
ASGNI(INDIRP(ADDRLP(true)), INDIRI(ADDRLP(y)))
was node 8 of type other
with successors:9, 

ASGNI(INDIRP(ADDRLP(thing)), INDIRI(ADDRLP(y)))
was node 9 of type other
with successors:10, 

RETV()
was node 10 of type other
with successors:

LABELV(1)
was node 11 of type other
with successors:

