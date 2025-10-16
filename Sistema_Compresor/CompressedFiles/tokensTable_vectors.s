movw    r3, #:lower16:.LC0
movt    r3, #:upper16:.LC0
mov     r5, r3
ldmia   r5!, {r0, r1, r2, r3}
stmia   r4!, {r0, r1, r2, r3}
ldmia   r5!, {r0, r1, r2, r3}
stmia   r4!, {r0, r1, r2, r3}
ldm     r5, {r0, r1}
movs    r3, #0
str     r3, [r7, #124]
ldr     r3, [r7, #124]
lsls    r3, r3, #2
adds    r3, r3, #128
add     r3, r3, r7
str     r2, [r3, #-128]
ldr     r3, [r7, #124]
adds    r3, r3, #1
lsls    r3, r3, #2
ldr     r1, [r3, #-48]
ldr     r3, [r7, #124]
ldr     r2, [r3, #-88]
ldr     r3, [r7, #124]
add     r2, r2, r1
lsls    r3, r3, #2
adds    r3, r3, #2
lsls    r3, r3, #2
adds    r3, r3, #3
lsls    r3, r3, #2
ldr     r2, [r7, #124]
ldr     r3, [r7, #120]
ldr     r3, [r3, #-128]
mov     r1, r3
movw    r0, #:lower16:.LC2
movt    r0, #:upper16:.LC2
bl      printf
ldr     r3, [r7, #124]
push    {r7}
sub     sp, sp, #20
ldr     r2, [r7, #4]
add     r3, r3, r2
ldr     r3, [r3]
ldr     r2, [r7, #8]
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
