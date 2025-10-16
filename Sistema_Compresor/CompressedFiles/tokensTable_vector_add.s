movw    r3, #:lower16:.LC0
movt    r3, #:upper16:.LC0
mov     r5, r3
ldmia   r5!, {r0, r1, r2, r3}
stmia   r4!, {r0, r1, r2, r3}
ldmia   r5!, {r0, r1, r2, r3}
stmia   r4!, {r0, r1, r2, r3}
ldm     r5, {r0, r1}
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
mov     r1, r3
movw    r0, #:lower16:.LC1
movt    r0, #:upper16:.LC1
bl      printf
