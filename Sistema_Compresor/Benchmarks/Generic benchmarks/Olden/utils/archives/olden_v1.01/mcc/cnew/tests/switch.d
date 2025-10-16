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

EQI(INDIRI(ADDRLP(y)), CNSTI(1))
EQI(INDIRI(ADDRLP(y)), CNSTI(2))
EQI(INDIRI(ADDRLP(y)), CNSTI(3))
was node 8 of type other
with successors:12, 9, 

EQI(INDIRI(ADDRLP(y)), CNSTI(2))
EQI(INDIRI(ADDRLP(y)), CNSTI(3))
was node 9 of type other
with successors:15, 10, 

EQI(INDIRI(ADDRLP(y)), CNSTI(3))
was node 10 of type other
with successors:18, 11, 

JUMPV(ADDRGP(2))
was node 11 of type other
with successors:21, 

LABELV(4)
was node 12 of type other
with successors:13, 

ASGNI(INDIRP(ADDRLP(thing)), CNSTI(2))
was node 13 of type other
with successors:14, 

JUMPV(ADDRGP(3))
was node 14 of type other
with successors:23, 

LABELV(5)
was node 15 of type other
with successors:16, 

ASGNI(INDIRP(ADDRLP(thing)), CNSTI(3))
was node 16 of type other
with successors:17, 

JUMPV(ADDRGP(3))
was node 17 of type other
with successors:23, 

LABELV(6)
was node 18 of type other
with successors:19, 

ASGNI(INDIRP(ADDRLP(true)), CNSTI(78))
was node 19 of type other
with successors:20, 

JUMPV(ADDRGP(3))
was node 20 of type other
with successors:23, 

LABELV(2)
was node 21 of type other
with successors:22, 

ASGNP(ADDRLP(true), INDIRP(ADDRLP(thing)))
was node 22 of type other
with successors:23, 

LABELV(3)
was node 23 of type other
with successors:24, 

ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(thing))))
was node 24 of type other
with successors:25, 

RETV()
was node 25 of type other
with successors:

LABELV(1)
was node 26 of type other
with successors:

