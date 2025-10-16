# Compilation provided by Compiler Explorer at https://godbolt.org/
k:
        .word   20
.LC0:
        .ascii  "Discrete Fourier Transform using naive method\000"
.LC1:
        .ascii  "Enter the coefficient of simple linear function:\000"
.LC2:
        .ascii  "ax + by = c\000"
.LC3:
        .ascii  "where a = 1, b =2 and c = 3\000"
.LC4:
        .ascii  "The coefficients are: \000"
.LC5:
        .ascii  "( %e ) - ( %e i)\012\000"
main:
        push    {r4, r5, r6, r7, r8, r9, r10, fp, lr}
        sub     sp, sp, #116
        add     r7, sp, #8
        str     r0, [r7, #44]
        str     r1, [r7, #40]
        mov     r3, sp
        mov     r6, r3
        movs    r3, #10
        str     r3, [r7, #92]
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r1, [r3]
        subs    r3, r1, #1
        str     r3, [r7, #96]
        mov     r2, r1
        movs    r3, #0
        mov     r4, r2
        mov     r5, r3
        mov     r2, #0
        mov     r3, #0
        lsls    r3, r5, #7
        orr     r3, r3, r4, lsr #25
        lsls    r2, r4, #7
        mov     r2, r1
        movs    r3, #0
        mov     r8, r2
        mov     r9, r3
        mov     r2, #0
        mov     r3, #0
        lsl     r3, r9, #7
        orr     r3, r3, r8, lsr #25
        lsl     r2, r8, #7
        mov     r3, r1
        lsls    r3, r3, #4
        adds    r3, r3, #7
        lsrs    r3, r3, #3
        lsls    r3, r3, #3
        sub     sp, sp, r3
        add     r3, sp, #8
        adds    r3, r3, #7
        lsrs    r3, r3, #3
        lsls    r3, r3, #3
        str     r3, [r7, #100]
        ldr     r1, [r7, #92]
        subs    r3, r1, #1
        str     r3, [r7, #80]
        mov     r2, r1
        movs    r3, #0
        mov     r10, r2
        mov     fp, r3
        mov     r2, #0
        mov     r3, #0
        lsl     r3, fp, #6
        orr     r3, r3, r10, lsr #26
        lsl     r2, r10, #6
        mov     r2, r1
        movs    r3, #0
        str     r2, [r7, #32]
        str     r3, [r7, #36]
        mov     r2, #0
        mov     r3, #0
        ldrd    r4, [r7, #32]
        mov     r0, r5
        lsls    r3, r0, #6
        mov     r0, r4
        orr     r3, r3, r0, lsr #26
        mov     r0, r4
        lsls    r2, r0, #6
        mov     r3, r1
        lsls    r3, r3, #3
        adds    r3, r3, #7
        lsrs    r3, r3, #3
        lsls    r3, r3, #3
        sub     sp, sp, r3
        add     r3, sp, #8
        adds    r3, r3, #7
        lsrs    r3, r3, #3
        lsls    r3, r3, #3
        str     r3, [r7, #76]
        ldr     r1, [r7, #92]
        subs    r3, r1, #1
        str     r3, [r7, #72]
        mov     r2, r1
        movs    r3, #0
        str     r2, [r7, #24]
        str     r3, [r7, #28]
        mov     r2, #0
        mov     r3, #0
        ldrd    r4, [r7, #24]
        mov     r0, r5
        lsls    r3, r0, #6
        mov     r0, r4
        orr     r3, r3, r0, lsr #26
        mov     r0, r4
        lsls    r2, r0, #6
        mov     r2, r1
        movs    r3, #0
        str     r2, [r7, #16]
        str     r3, [r7, #20]
        mov     r2, #0
        mov     r3, #0
        ldrd    r4, [r7, #16]
        mov     r0, r5
        lsls    r3, r0, #6
        mov     r0, r4
        orr     r3, r3, r0, lsr #26
        mov     r0, r4
        lsls    r2, r0, #6
        mov     r3, r1
        lsls    r3, r3, #3
        adds    r3, r3, #7
        lsrs    r3, r3, #3
        lsls    r3, r3, #3
        sub     sp, sp, r3
        add     r3, sp, #8
        adds    r3, r3, #7
        lsrs    r3, r3, #3
        lsls    r3, r3, #3
        str     r3, [r7, #68]
        movw    r0, #:lower16:.LC0
        movt    r0, #:upper16:.LC0
        bl      puts
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      puts
        movw    r0, #:lower16:.LC2
        movt    r0, #:upper16:.LC2
        bl      puts
        movw    r0, #:lower16:.LC3
        movt    r0, #:upper16:.LC3
        bl      printf
        ldr     r1, [r7, #92]
        subs    r3, r1, #1
        str     r3, [r7, #64]
        mov     r2, r1
        movs    r3, #0
        str     r2, [r7, #8]
        str     r3, [r7, #12]
        mov     r2, #0
        mov     r3, #0
        ldrd    r4, [r7, #8]
        mov     r0, r5
        lsls    r3, r0, #6
        mov     r0, r4
        orr     r3, r3, r0, lsr #26
        mov     r0, r4
        lsls    r2, r0, #6
        mov     r2, r1
        movs    r3, #0
        str     r2, [r7]
        str     r3, [r7, #4]
        mov     r2, #0
        mov     r3, #0
        ldrd    r4, [r7]
        mov     r0, r5
        lsls    r3, r0, #6
        mov     r0, r4
        orr     r3, r3, r0, lsr #26
        mov     r0, r4
        lsls    r2, r0, #6
        mov     r3, r1
        lsls    r3, r3, #3
        adds    r3, r3, #7
        lsrs    r3, r3, #3
        lsls    r3, r3, #3
        sub     sp, sp, r3
        add     r3, sp, #8
        adds    r3, r3, #7
        lsrs    r3, r3, #3
        lsls    r3, r3, #3
        str     r3, [r7, #60]
        movs    r3, #0
        str     r3, [r7, #84]
        b       .L2
.L3:
        vldr.32 s15, [r7, #56]
        vcvt.f64.f32    d17, s15
        ldr     r3, [r7, #84]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vmul.f64        d17, d17, d16
        vldr.32 s15, [r7, #52]
        vcvt.f64.f32    d18, s15
        ldr     r3, [r7, #84]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vmul.f64        d16, d18, d16
        vadd.f64        d17, d17, d16
        vldr.32 s15, [r7, #48]
        vcvt.f64.f32    d16, s15
        vsub.f64        d16, d17, d16
        ldr     r2, [r7, #60]
        ldr     r3, [r7, #84]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        vldr.32 s15, [r7, #56]
        vcvt.f64.f32    d17, s15
        ldr     r3, [r7, #84]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vmul.f64        d16, d17, d16
        vmov.f64        d17, #1.0e+0
        vadd.f64        d17, d16, d17
        vldr.32 s15, [r7, #52]
        vcvt.f64.f32    d18, s15
        ldr     r3, [r7, #84]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vmul.f64        d16, d18, d16
        vmov.f64        d18, #1.0e+0
        vadd.f64        d16, d16, d18
        vadd.f64        d17, d17, d16
        vldr.32 s15, [r7, #48]
        vcvt.f64.f32    d16, s15
        ldr     r3, [r7, #84]
        adds    r3, r3, #1
        vsub.f64        d16, d17, d16
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        vldr.32 s15, [r7, #56]
        vcvt.f64.f32    d17, s15
        ldr     r3, [r7, #84]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vmul.f64        d16, d17, d16
        vmov.f64        d17, #2.0e+0
        vadd.f64        d17, d16, d17
        vldr.32 s15, [r7, #52]
        vcvt.f64.f32    d18, s15
        ldr     r3, [r7, #84]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vmul.f64        d16, d18, d16
        vmov.f64        d18, #2.0e+0
        vadd.f64        d16, d16, d18
        vadd.f64        d17, d17, d16
        vldr.32 s15, [r7, #48]
        vcvt.f64.f32    d16, s15
        ldr     r3, [r7, #84]
        adds    r3, r3, #2
        vsub.f64        d16, d17, d16
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        vldr.32 s15, [r7, #56]
        vcvt.f64.f32    d17, s15
        ldr     r3, [r7, #84]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vmul.f64        d16, d17, d16
        vmov.f64        d17, #3.0e+0
        vadd.f64        d17, d16, d17
        vldr.32 s15, [r7, #52]
        vcvt.f64.f32    d18, s15
        ldr     r3, [r7, #84]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vmul.f64        d16, d18, d16
        vmov.f64        d18, #3.0e+0
        vadd.f64        d16, d16, d18
        vadd.f64        d17, d17, d16
        vldr.32 s15, [r7, #48]
        vcvt.f64.f32    d16, s15
        ldr     r3, [r7, #84]
        adds    r3, r3, #3
        vsub.f64        d16, d17, d16
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #4
        str     r3, [r7, #84]
.L2:
        ldr     r2, [r7, #84]
        ldr     r3, [r7, #92]
        cmp     r2, r3
        blt     .L3
        movs    r3, #0
        str     r3, [r7, #84]
        b       .L4
.L5:
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        ldr     r2, [r7, #84]
        mul     r3, r2, r3
        lsls    r3, r3, #1
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vldr.64 d17, .L11
        vmul.f64        d17, d16, d17
        ldr     r3, [r7, #92]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vdiv.f64        d18, d17, d16
        vmov.f64        d0, d18
        bl      cos
        vmov.f64        d16, d0
        ldr     r2, [r7, #76]
        ldr     r3, [r7, #84]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        ldr     r2, [r7, #84]
        mul     r3, r2, r3
        lsls    r3, r3, #1
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vldr.64 d17, .L11
        vmul.f64        d17, d16, d17
        ldr     r3, [r7, #92]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vdiv.f64        d18, d17, d16
        vmov.f64        d0, d18
        bl      sin
        vmov.f64        d16, d0
        ldr     r2, [r7, #68]
        ldr     r3, [r7, #84]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r2, r3, #1
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        mul     r3, r2, r3
        lsls    r3, r3, #1
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vldr.64 d17, .L11
        vmul.f64        d17, d16, d17
        ldr     r3, [r7, #92]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vdiv.f64        d18, d17, d16
        ldr     r3, [r7, #84]
        adds    r4, r3, #1
        vmov.f64        d0, d18
        bl      cos
        vmov.f64        d16, d0
        ldr     r2, [r7, #76]
        lsls    r3, r4, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r2, r3, #1
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        mul     r3, r2, r3
        lsls    r3, r3, #1
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vldr.64 d17, .L11
        vmul.f64        d17, d16, d17
        ldr     r3, [r7, #92]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vdiv.f64        d18, d17, d16
        ldr     r3, [r7, #84]
        adds    r4, r3, #1
        vmov.f64        d0, d18
        bl      sin
        vmov.f64        d16, d0
        ldr     r2, [r7, #68]
        lsls    r3, r4, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r2, r3, #2
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        mul     r3, r2, r3
        lsls    r3, r3, #1
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vldr.64 d17, .L11
        vmul.f64        d17, d16, d17
        ldr     r3, [r7, #92]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vdiv.f64        d18, d17, d16
        ldr     r3, [r7, #84]
        adds    r4, r3, #2
        vmov.f64        d0, d18
        bl      cos
        vmov.f64        d16, d0
        ldr     r2, [r7, #76]
        lsls    r3, r4, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r2, r3, #2
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        mul     r3, r2, r3
        lsls    r3, r3, #1
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vldr.64 d17, .L11
        vmul.f64        d17, d16, d17
        ldr     r3, [r7, #92]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vdiv.f64        d18, d17, d16
        ldr     r3, [r7, #84]
        adds    r4, r3, #2
        vmov.f64        d0, d18
        bl      sin
        vmov.f64        d16, d0
        ldr     r2, [r7, #68]
        lsls    r3, r4, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r2, r3, #3
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        mul     r3, r2, r3
        lsls    r3, r3, #1
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vldr.64 d17, .L11
        vmul.f64        d17, d16, d17
        ldr     r3, [r7, #92]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vdiv.f64        d18, d17, d16
        ldr     r3, [r7, #84]
        adds    r4, r3, #3
        vmov.f64        d0, d18
        bl      cos
        vmov.f64        d16, d0
        ldr     r2, [r7, #76]
        lsls    r3, r4, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r2, r3, #3
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        mul     r3, r2, r3
        lsls    r3, r3, #1
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vldr.64 d17, .L11
        vmul.f64        d17, d16, d17
        ldr     r3, [r7, #92]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d16, s15
        vdiv.f64        d18, d17, d16
        ldr     r3, [r7, #84]
        adds    r4, r3, #3
        vmov.f64        d0, d18
        bl      sin
        vmov.f64        d16, d0
        ldr     r2, [r7, #68]
        lsls    r3, r4, #3
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #4
        str     r3, [r7, #84]
.L4:
        ldr     r2, [r7, #84]
        ldr     r3, [r7, #92]
        cmp     r2, r3
        blt     .L5
        movw    r0, #:lower16:.LC4
        movt    r0, #:upper16:.LC4
        bl      printf
        movs    r3, #0
        str     r3, [r7, #88]
        b       .L6
.L9:
        movs    r3, #0
        str     r3, [r7, #84]
        b       .L7
.L11:
        .word   1405670641
        .word   1074340347
.L8:
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        vldr.64 d17, [r3]
        ldr     r2, [r7, #60]
        ldr     r3, [r7, #84]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d18, [r3]
        ldr     r2, [r7, #76]
        ldr     r3, [r7, #84]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d16, [r3]
        vmul.f64        d16, d18, d16
        vadd.f64        d16, d17, d16
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        vldr.64 d17, [r3]
        ldr     r2, [r7, #60]
        ldr     r3, [r7, #84]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d18, [r3]
        ldr     r2, [r7, #68]
        ldr     r3, [r7, #84]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d16, [r3]
        vmul.f64        d16, d18, d16
        vadd.f64        d16, d17, d16
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        vstr.64 d16, [r3]
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        vldr.64 d17, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #1
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d18, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #1
        ldr     r2, [r7, #76]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d16, [r3]
        vmul.f64        d16, d18, d16
        vadd.f64        d16, d17, d16
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        vldr.64 d17, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #1
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d18, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #1
        ldr     r2, [r7, #68]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d16, [r3]
        vmul.f64        d16, d18, d16
        vadd.f64        d16, d17, d16
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        vstr.64 d16, [r3]
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        vldr.64 d17, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #2
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d18, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #2
        ldr     r2, [r7, #76]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d16, [r3]
        vmul.f64        d16, d18, d16
        vadd.f64        d16, d17, d16
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        vldr.64 d17, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #2
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d18, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #2
        ldr     r2, [r7, #68]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d16, [r3]
        vmul.f64        d16, d18, d16
        vadd.f64        d16, d17, d16
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        vstr.64 d16, [r3]
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        vldr.64 d17, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #3
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d18, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #3
        ldr     r2, [r7, #76]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d16, [r3]
        vmul.f64        d16, d18, d16
        vadd.f64        d16, d17, d16
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        vstr.64 d16, [r3]
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        vldr.64 d17, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #3
        ldr     r2, [r7, #60]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d18, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #3
        ldr     r2, [r7, #68]
        lsls    r3, r3, #3
        add     r3, r3, r2
        vldr.64 d16, [r3]
        vmul.f64        d16, d18, d16
        vadd.f64        d16, d17, d16
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        vstr.64 d16, [r3]
        ldr     r3, [r7, #84]
        adds    r3, r3, #4
        str     r3, [r7, #84]
.L7:
        ldr     r2, [r7, #84]
        ldr     r3, [r7, #92]
        cmp     r2, r3
        blt     .L8
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        ldrd    r0, [r3]
        ldr     r2, [r7, #100]
        ldr     r3, [r7, #88]
        lsls    r3, r3, #4
        add     r3, r3, r2
        adds    r3, r3, #8
        ldrd    r2, [r3]
        strd    r2, [sp]
        mov     r2, r0
        mov     r3, r1
        movw    r0, #:lower16:.LC5
        movt    r0, #:upper16:.LC5
        bl      printf
        ldr     r3, [r7, #88]
        adds    r3, r3, #1
        str     r3, [r7, #88]
.L6:
        movw    r3, #:lower16:k
        movt    r3, #:upper16:k
        ldr     r3, [r3]
        ldr     r2, [r7, #88]
        cmp     r2, r3
        blt     .L9
        movs    r3, #0
        mov     sp, r6
        mov     r0, r3
        adds    r7, r7, #108
        mov     sp, r7
        pop     {r4, r5, r6, r7, r8, r9, r10, fp, pc}
