# Compilation provided by Compiler Explorer at https://godbolt.org/
dotProduct:
0
add     r7, sp, #0
str     r0, [r7, #4]
str     r1, [r7]
movs    r3, #0
str     r3, [r7, #12]
movs    r3, #0
str     r3, [r7, #8]
b       .L2
.L3:
ldr     r3, [r7, #8]
2
4
ldr     r2, [r7, #8]
6
8
10
12
ldr     r3, [r7, #8]
adds    r3, r3, #1
2
4
ldr     r2, [r7, #8]
adds    r2, r2, #1
6
8
10
12
ldr     r3, [r7, #8]
adds    r3, r3, #2
str     r3, [r7, #8]
.L2:
ldr     r3, [r7, #8]
cmp     r3, #2
ble     .L3
ldr     r3, [r7, #12]
mov     r0, r3
14
16
crossProduct:
0
add     r7, sp, #0
str     r0, [r7, #12]
str     r1, [r7, #8]
str     r2, [r7, #4]
18
20
22
mul     r2, r3, r2
24
ldr     r3, [r3]
ldr     r1, [r7, #8]
adds    r1, r1, #4
ldr     r1, [r1]
mul     r3, r1, r3
subs    r2, r2, r3
ldr     r3, [r7, #4]
str     r2, [r3]
24
20
26
ldr     r3, [r7, #12]
20
22
28
adds    r3, r3, #4
30
ldr     r3, [r7, #12]
20
adds    r2, r2, #4
26
18
20
ldr     r2, [r2]
28
adds    r3, r3, #8
30
nop
14
16
