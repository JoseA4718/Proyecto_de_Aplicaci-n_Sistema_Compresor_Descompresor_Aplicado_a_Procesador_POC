# Compilation provided by Compiler Explorer at https://godbolt.org/
iirfilter:
push    {r7}
sub     sp, sp, #36
add     r7, sp, #0
str     r0, [r7, #20]
str     r1, [r7, #16]
str     r2, [r7, #12]
str     r3, [r7, #8]
vstr.32 s0, [r7, #4]
0
0
b       .L2
.L3:
ldr     r3, [r7, #12]
ldr     r2, [r3, #4]      @ float
ldr     r3, [r7, #12]
2
adds    r3, r3, #4
ldr     r2, [r7, #12]
ldr     r2, [r2, #8]      @ float
4
6
adds    r3, r3, #8
vldr.32 s15, [r7, #4]
8
ldr     r3, [r7, #8]
ldr     r2, [r3, #4]      @ float
ldr     r3, [r7, #8]
str     r2, [r3]  @ float
10
ldr     r2, [r7, #8]
ldr     r2, [r2, #8]      @ float
2
vldr.32 s14, [r3]
ldr     r3, [r7, #40]
adds    r3, r3, #8
vldr.32 s15, [r3]
12
8
12
6
adds    r3, r3, #4
14
adds    r3, r3, #4
16
12
18
12
6
adds    r3, r3, #8
14
16
12
18
12
vldr.32 s14, [r3]
ldr     r3, [r7, #8]
14
adds    r3, r3, #16
16
12
20
12
vldr.32 s14, [r3]
10
14
adds    r3, r3, #12
16
12
20
ldr     r3, [r7, #8]
ldr     r2, [r3, #8]      @ float
ldr     r3, [r7, #20]
4
adds    r3, r3, #4
str     r3, [r7, #20]
ldr     r3, [r7, #28]
adds    r3, r3, #1
str     r3, [r7, #28]
.L2:
ldr     r2, [r7, #28]
ldr     r3, [r7, #16]
cmp     r2, r3
blt     .L3
nop
nop
adds    r7, r7, #36
mov     sp, r7
ldr     r7, [sp], #4
bx      lr
