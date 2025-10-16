10: operands of = have illegal types `pointer to struct this' and `int'
13: operands of = have illegal types `pointer to struct this' and `int'
15: operands of = have illegal types `pointer to struct this' and `int'
20: operands of = have illegal types `int' and `pointer to struct this'
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

CALLI(ADDRGP(MIGRATE))
was node 8 of type call
with successors:9, 

was node 9 of type other
with successors:10, 

ARGI(CNSTU(4))
CALLI(ADDRGP(mymalloc))
was node 10 of type call
with successors:11, 

ASGNI(ADDRLP(p), CALLI(ADDRGP(mymalloc)))
was node 11 of type other
with successors:12, 

EQI(INDIRI(ADDRLP(y)), CNSTI(0))
was node 12 of type other
with successors:16, 13, 

ASGNI(INDIRP(ADDRLP(thing)), CNSTI(2))
was node 13 of type other
with successors:14, 

ASGNP(ADDRLP(p), INDIRP(ADDRLP(true)))
ASGNI(INDIRP(ADDRLP(true)), CNSTI(3))
was node 14 of type other
with successors:15, 

JUMPV(ADDRGP(3))
was node 15 of type other
with successors:18, 

LABELV(2)
was node 16 of type other
with successors:17, 

ASGNI(INDIRP(ADDRLP(true)), CNSTI(7))
was node 17 of type other
with successors:18, 

LABELV(3)
was node 18 of type other
with successors:19, 

ASGNP(ADDRLP(y), INDIRP(ADDRLP(thing)))
ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(thing))))
ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(true))))
was node 19 of type other
with successors:20, 

RETV()
was node 20 of type other
with successors:

LABELV(1)
was node 21 of type other
with successors:

