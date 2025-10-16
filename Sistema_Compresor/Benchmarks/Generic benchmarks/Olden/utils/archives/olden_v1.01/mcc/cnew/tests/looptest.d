11: operands of = have illegal types `pointer to struct node' and `int'
19: warning: unreachable code
.seg "text"

.global _main
ARGI(CNSTU(4))
CALLI(ADDRGP(mymalloc))
was node 0 of type call
with successors:1, 

ASGNI(ADDRLP(q), CALLI(ADDRGP(mymalloc)))
was node 1 of type other
with successors:2, 

ASGNI(ADDRLP(w), CNSTI(3))
was node 2 of type other
with successors:3, 

LABELV(2)
was node 3 of type head
with successors:4, 

LABELV(3)
was node 4 of type other
with successors:5, 

NEI(INDIRI(ADDRLP(w)), CNSTI(3))
was node 5 of type other
with successors:8, 6, 

ASGNI(ADDRLP(w), ADDI(INDIRI(ADDRLP(w)), CNSTI(1)))
was node 6 of type other
with successors:7, 

JUMPV(ADDRGP(6))
was node 7 of type tail
with successors:3, 

LABELV(5)
was node 8 of type other
with successors:9, 

ASGNI(ADDRLP(w), CNSTI(5))
was node 9 of type other
with successors:10, 

JUMPV(ADDRGP(2))
was node 10 of type tail
with successors:3, 

ASGNI(ADDRLP(w), CNSTI(4))
was node 11 of type other
with successors:12, 

RETV()
was node 12 of type other
with successors:

LABELV(1)
was node 13 of type other
with successors:

.seg "bss"

.global _p
.align 4; .common _p,12
