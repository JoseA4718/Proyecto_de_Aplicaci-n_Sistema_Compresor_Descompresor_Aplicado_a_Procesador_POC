10: operands of = have illegal types `pointer to struct this' and `int'
13: operands of = have illegal types `pointer to struct this' and `int'
22: warning: unreachable code
24: warning: unreachable code
.seg "text"

.global _main
ASGNI(ADDRLP(y), CNSTI(1))
was node 0 of type other
with successors:1, 

ARGI(CNSTU(4))
CALLI(ADDRGP(mymalloc))
was node 1 of type call
with successors:2, 

ASGNI(ADDRLP(true), CALLI(ADDRGP(mymalloc)))
was node 2 of type other
with successors:3, 

CALLI(ADDRGP(MIGRATE))
was node 3 of type call
with successors:4, 

was node 4 of type other
with successors:5, 

CALLI(ADDRGP(MIGRPH))
was node 5 of type call
with successors:6, 

was node 6 of type other
with successors:7, 

ARGI(CNSTU(4))
CALLI(ADDRGP(mymalloc))
was node 7 of type call
with successors:8, 

ASGNI(ADDRLP(thing), CALLI(ADDRGP(mymalloc)))
was node 8 of type other
with successors:9, 

LABELV(2)
was node 9 of type head
with successors:10, 

LABELV(3)
was node 10 of type other
with successors:11, 

ASGNI(INDIRP(ADDRLP(true)), CNSTI(3))
was node 11 of type other
with successors:12, 

LABELV(5)
was node 12 of type head
with successors:13, 

LABELV(6)
was node 13 of type other
with successors:14, 

ASGNI(INDIRP(ADDRLP(thing)), CNSTI(4))
was node 14 of type other
with successors:15, 

JUMPV(ADDRGP(5))
was node 15 of type tail
with successors:12, 

ASGNI(ADDRLP(y), CNSTI(0))
was node 16 of type other
with successors:17, 

JUMPV(ADDRGP(2))
was node 17 of type tail
with successors:9, 

ASGNI(ADDRLP(y), INDIRI(INDIRP(ADDRLP(thing))))
was node 18 of type other
with successors:19, 

RETV()
was node 19 of type other
with successors:

LABELV(1)
was node 20 of type other
with successors:

