# Compilation provided by Compiler Explorer at https://godbolt.org/
.LC1:
.ascii  "%d \000"
.LC0:
.word   0
.word   1
.word   2
.word   3
.word   4
.word   5
.word   6
.word   7
.word   8
.word   9
vector_add:
push    {r4, r5, r7, lr}
sub     sp, sp, #128
add     r7, sp, #0
0
add     r4, r7, #80
2
4
6
stm     r4, {r0, r1}
0
add     r4, r7, #40
2
4
6
stm     r4, {r0, r1}
movs    r3, #10
str     r3, [r7, #120]
movs    r3, #0
str     r3, [r7, #124]
b       .L2
.L3:
8
10
ldr     r2, [r3, #-48]
8
10
ldr     r3, [r3, #-88]
add     r2, r2, r3
8
10
12
14
10
16
14
10
18
adds    r3, r3, #1
20
10
12
22
10
16
22
10
18
adds    r3, r3, #2
20
10
12
24
10
16
24
10
18
adds    r3, r3, #3
20
10
12
adds    r3, r3, #4
str     r3, [r7, #124]
.L2:
ldr     r2, [r7, #124]
ldr     r3, [r7, #120]
cmp     r2, r3
blt     .L3
ldr     r3, [r7]
26
28
ldr     r3, [r7, #4]
26
28
ldr     r3, [r7, #8]
26
28
ldr     r3, [r7, #12]
26
28
ldr     r3, [r7, #16]
26
28
ldr     r3, [r7, #20]
26
28
ldr     r3, [r7, #24]
26
28
ldr     r3, [r7, #28]
26
28
ldr     r3, [r7, #32]
26
28
ldr     r3, [r7, #36]
26
28
movs    r0, #10
bl      putchar
nop
mov     r0, r3
adds    r7, r7, #128
mov     sp, r7
pop     {r4, r5, r7, pc}
