push    {r7}
sub     sp, sp, #20
lsls    r3, r3, #2
ldr     r2, [r7, #4]
add     r3, r3, r2
ldr     r3, [r3]
lsls    r2, r2, #2
ldr     r1, [r7]
add     r2, r2, r1
ldr     r2, [r2]
mul     r3, r2, r3
ldr     r2, [r7, #12]
add     r3, r3, r2
str     r3, [r7, #12]
adds    r7, r7, #20
mov     sp, r7
ldr     r7, [sp], #4
bx      lr
ldr     r3, [r7, #12]
adds    r3, r3, #4
ldr     r3, [r3]
ldr     r2, [r7, #8]
adds    r2, r2, #8
ldr     r2, [r2]
ldr     r3, [r7, #12]
adds    r3, r3, #8
ldr     r2, [r2]
mul     r1, r2, r3
mul     r2, r3, r2
ldr     r3, [r7, #4]
subs    r2, r1, r2
str     r2, [r3]
