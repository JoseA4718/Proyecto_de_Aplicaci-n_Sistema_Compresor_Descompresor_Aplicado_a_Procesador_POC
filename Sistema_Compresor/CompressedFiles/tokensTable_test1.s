movs    r3, #0
str     r3, [r7, #28]
movs    r3, #0
str     r3, [r7, #24]
add     r3, r3, r2
lsls    r2, r3, #2
movw    r3, #:lower16:image.1
movt    r3, #:upper16:image.1
add     r3, r3, r2
mov     r2, r3
movw    r1, #:lower16:.LC2
movt    r1, #:upper16:.LC2
ldr     r0, [r7, #4]
bl      __isoc99_fscanf
ldr     r3, [r7, #24]
adds    r3, r3, #1
ldr     r3, [r7, #24]
movw    r2, #6639
ldr     r3, [r7, #28]
adds    r3, r3, #1
ldr     r3, [r7, #28]
cmp     r3, #2144
movw    r1, #6640
mul     r2, r1, r2
ldr     r2, [r7, #28]
movw    r1, #6640
mul     r1, r2, r1
ldr     r2, [r7, #24]
movw    r3, #:lower16:imageN.0
movt    r3, #:upper16:imageN.0
ldr     r3, [r7, #8]
rsbs    r3, r3, #0
add     r2, r2, r1
ldr     r3, [r3, r2, lsl #2]
ldr     r3, [r7, #8]
cmp     r2, r3
