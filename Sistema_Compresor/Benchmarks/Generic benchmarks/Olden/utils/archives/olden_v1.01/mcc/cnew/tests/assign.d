18: operands of = have illegal types `pointer to struct this' and `int'
.seg "text"

.global _main
ARGI(CNSTU(4))
CALLI(ADDRGP(mymalloc))
was node 0 of type call
with successors:1, 

ASGNP(ADDRLP(true), CVUP(CVIU(CALLI(ADDRGP(mymalloc)))))
CALLI(ADDRGP(MIGRATE))
was node 1 of type call
with successors:2, 

was node 2 of type other
with successors:3, 

CALLI(ADDRGP(MIGRPH))
was node 3 of type call
with successors:4, 

was node 4 of type other
with successors:5, 

ARGI(CNSTU(4))
CALLI(ADDRGP(mymalloc))
was node 5 of type call
with successors:6, 

ASGNP(ADDRLP(thing), CVUP(CVIU(CALLI(ADDRGP(mymalloc)))))
ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(thing))))
ASGNP(ADDRLP(true), INDIRP(ADDRLP(thing)))
ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(true))))
ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(thing))))
ASGNI(ADDRLP(thing), INDIRI(ADDRLP(y)))
ASGNI(INDIRP(ADDRLP(thing)), INDIRI(ADDRLP(y)))
was node 6 of type other
with successors:7, 

ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(true))))
was node 7 of type other
with successors:8, 

RETV()
was node 8 of type other
with successors:

LABELV(1)
was node 9 of type other
with successors:

