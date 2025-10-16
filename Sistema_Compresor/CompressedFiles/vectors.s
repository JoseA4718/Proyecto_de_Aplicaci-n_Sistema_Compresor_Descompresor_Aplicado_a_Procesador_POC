# Compilation provided by Compiler Explorer at https://godbolt.org/
.LC1:
.ascii  "Addition vector:\000"
.LC2:
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
8
b       .L2
.L3:
10
12
ldr     r2, [r3, #-48]
10
12
ldr     r3, [r3, #-88]
add     r2, r2, r3
10
12
14
16
12
18
16
12
20
adds    r3, r3, #1
22
12
14
24
12
18
24
12
20
adds    r3, r3, #2
22
12
14
26
12
18
26
12
20
adds    r3, r3, #3
22
12
14
adds    r3, r3, #4
str     r3, [r7, #124]
.L2:
28
cmp     r2, r3
blt     .L3
movw    r0, #:lower16:.LC1
movt    r0, #:upper16:.LC1
bl      puts
8
b       .L4
.L5:
10
12
30
32
34
16
12
30
32
34
24
12
30
32
34
26
12
30
32
34
adds    r3, r3, #1
str     r3, [r7, #124]
.L4:
28
cmp     r2, r3
blt     .L5
movs    r0, #10
bl      putchar
nop
mov     r0, r3
adds    r7, r7, #128
mov     sp, r7
pop     {r4, r5, r7, pc}
dotProduct:
36
add     r7, sp, #0
str     r0, [r7, #4]
str     r1, [r7]
movs    r3, #0
str     r3, [r7, #12]
movs    r3, #0
str     r3, [r7, #8]
b       .L7
.L8:
ldr     r3, [r7, #8]
lsls    r3, r3, #2
38
40
42
44
46
48
ldr     r3, [r7, #8]
16
38
40
adds    r2, r2, #1
42
44
46
48
ldr     r3, [r7, #8]
adds    r3, r3, #2
str     r3, [r7, #8]
.L7:
ldr     r3, [r7, #8]
cmp     r3, #2
ble     .L8
ldr     r3, [r7, #12]
mov     r0, r3
50
52
crossProduct:
36
add     r7, sp, #0
str     r0, [r7, #12]
str     r1, [r7, #8]
str     r2, [r7, #4]
54
40
56
mul     r2, r3, r2
58
ldr     r3, [r3]
ldr     r1, [r7, #8]
adds    r1, r1, #4
ldr     r1, [r1]
mul     r3, r1, r3
subs    r2, r2, r3
ldr     r3, [r7, #4]
str     r2, [r3]
58
40
60
ldr     r3, [r7, #12]
40
56
62
adds    r3, r3, #4
64
ldr     r3, [r7, #12]
40
adds    r2, r2, #4
60
54
40
ldr     r2, [r2]
62
adds    r3, r3, #8
64
nop
50
52
