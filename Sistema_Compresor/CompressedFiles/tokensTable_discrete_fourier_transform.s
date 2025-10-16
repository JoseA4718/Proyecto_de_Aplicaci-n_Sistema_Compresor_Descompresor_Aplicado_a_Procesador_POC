movw    r3, #:lower16:k
movt    r3, #:upper16:k
mov     r2, r1
movs    r3, #0
mov     r2, #0
mov     r3, #0
adds    r3, r3, #7
lsrs    r3, r3, #3
lsls    r3, r3, #3
sub     sp, sp, r3
ldr     r1, [r7, #92]
subs    r3, r1, #1
mov     r0, r5
lsls    r3, r0, #6
mov     r0, r4
orr     r3, r3, r0, lsr #26
mov     r0, r4
lsls    r2, r0, #6
mov     r3, r1
lsls    r3, r3, #3
movs    r3, #0
str     r3, [r7, #84]
vldr.32 s15, [r7, #56]
vcvt.f64.f32    d17, s15
ldr     r3, [r7, #84]
vmov    s15, r3 @ int
vldr.32 s15, [r7, #52]
vcvt.f64.f32    d18, s15
vcvt.f64.s32    d16, s15
vmul.f64        d16, d18, d16
vadd.f64        d17, d17, d16
vldr.32 s15, [r7, #48]
vsub.f64        d16, d17, d16
ldr     r2, [r7, #60]
ldr     r3, [r7, #84]
lsls    r3, r3, #3
add     r3, r3, r2
vstr.64 d16, [r3]
vcvt.f64.s32    d16, s15
vmul.f64        d16, d17, d16
vcvt.f64.f32    d16, s15
ldr     r3, [r7, #84]
ldr     r3, [r7, #84]
adds    r3, r3, #4
ldr     r2, [r7, #84]
ldr     r3, [r7, #92]
ldr     r3, [r3]
ldr     r2, [r7, #84]
mul     r3, r2, r3
lsls    r3, r3, #1
vmov    s15, r3 @ int
vcvt.f64.s32    d16, s15
vldr.64 d17, .L11
vmul.f64        d17, d16, d17
vdiv.f64        d18, d17, d16
vmov.f64        d0, d18
bl      cos
vmov.f64        d16, d0
bl      sin
vmov.f64        d16, d0
ldr     r3, [r7, #84]
adds    r2, r3, #1
vdiv.f64        d18, d17, d16
ldr     r3, [r7, #84]
adds    r4, r3, #1
vmov.f64        d0, d18
ldr     r2, [r7, #76]
lsls    r3, r4, #3
ldr     r2, [r7, #68]
lsls    r3, r4, #3
ldr     r3, [r7, #84]
adds    r2, r3, #2
adds    r4, r3, #2
vmov.f64        d0, d18
ldr     r3, [r7, #84]
adds    r2, r3, #3
adds    r4, r3, #3
vmov.f64        d0, d18
ldr     r2, [r7, #100]
ldr     r3, [r7, #88]
lsls    r3, r3, #4
add     r3, r3, r2
vldr.64 d17, [r3]
ldr     r2, [r7, #60]
add     r3, r3, r2
vldr.64 d18, [r3]
add     r3, r3, r2
vldr.64 d16, [r3]
vmul.f64        d16, d18, d16
vadd.f64        d16, d17, d16
adds    r3, r3, #8
vstr.64 d16, [r3]
vldr.64 d17, [r3]
ldr     r3, [r7, #84]
adds    r3, r3, #1
ldr     r2, [r7, #60]
ldr     r3, [r7, #84]
adds    r3, r3, #1
ldr     r2, [r7, #76]
lsls    r3, r3, #3
ldr     r2, [r7, #68]
lsls    r3, r3, #3
adds    r3, r3, #2
ldr     r2, [r7, #60]
ldr     r3, [r7, #84]
adds    r3, r3, #2
adds    r3, r3, #3
ldr     r2, [r7, #60]
ldr     r3, [r7, #84]
adds    r3, r3, #3
