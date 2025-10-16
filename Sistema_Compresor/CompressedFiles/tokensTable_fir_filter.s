mov     r2, #0
mov     r3, #0
strd    r2, [r7, #32]
movs    r3, #1
ldr     r2, [r7, #44]
ldr     r3, [r7, #28]
lsls    r3, r3, #2
ldr     r2, [r7, #12]
add     r3, r3, r2
vldr.32 s14, [r3]
ldr     r2, [r7, #4]
ldr     r3, [r7, #28]
subs    r3, r2, r3
subs    r3, r3, #1
lsls    r3, r3, #2
ldr     r2, [r7, #8]
add     r3, r3, r2
vldr.32 s15, [r3]
vmul.f32        s15, s14, s15
vcvt.f64.f32    d16, s15
vldr.64 d17, [r7, #32]
vadd.f64        d16, d17, d16
add     r3, r3, r2
adds    r3, r3, #1
add     r3, r3, r2
adds    r3, r3, #2
subs    r3, r2, r3
adds    r3, r3, #1
add     r3, r3, r2
adds    r3, r3, #3
subs    r3, r2, r3
adds    r3, r3, #2
ldr     r3, [r7, #4]
cmp     r2, r3
lsls    r3, r3, #2
ldr     r2, [r7]
add     r3, r3, r2
vldr.64 d16, [r7, #32]
vcvt.f32.f64    s15, d16
vstr.32 s15, [r3]
ldr     r2, [r7, #44]
ldr     r3, [r7, #24]
ldr     r2, [r7, #4]
ldr     r3, [r7, #24]
add     r3, r3, r2
adds    r3, r3, #4
ldr     r3, [r7, #44]
adds    r3, r3, #1
ldr     r2, [r7, #44]
ldr     r3, [r7, #20]
ldr     r2, [r7, #4]
ldr     r3, [r7, #20]
add     r3, r3, r2
adds    r3, r3, #5
ldr     r2, [r7, #44]
ldr     r3, [r7, #16]
ldr     r2, [r7, #4]
ldr     r3, [r7, #16]
