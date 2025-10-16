# Compilation provided by Compiler Explorer at https://godbolt.org/
convolve:
        push    {r7}
        sub     sp, sp, #52
        add     r7, sp, #0
        str     r0, [r7, #12]
        str     r1, [r7, #8]
        str     r2, [r7, #4]
        str     r3, [r7]
        movs    r3, #0
        str     r3, [r7, #44]
        b       .L2
.L11:
        mov     r2, #0
        mov     r3, #0
        strd    r2, [r7, #32]
        movs    r3, #1
        str     r3, [r7, #28]
        b       .L3
.L4:
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #28]
        add     r3, r3, r2
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
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #28]
        add     r3, r3, r2
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #28]
        subs    r3, r2, r3
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #28]
        add     r3, r3, r2
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #28]
        subs    r3, r2, r3
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #28]
        add     r3, r3, r2
        adds    r3, r3, #3
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #28]
        subs    r3, r2, r3
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r3, [r7, #28]
        adds    r3, r3, #4
        str     r3, [r7, #28]
.L3:
        ldr     r2, [r7, #28]
        ldr     r3, [r7, #4]
        cmp     r2, r3
        bcc     .L4
        ldr     r3, [r7, #44]
        lsls    r3, r3, #2
        ldr     r2, [r7]
        add     r3, r3, r2
        vldr.64 d16, [r7, #32]
        vcvt.f32.f64    s15, d16
        vstr.32 s15, [r3]
        mov     r2, #0
        mov     r3, #0
        strd    r2, [r7, #32]
        movs    r3, #1
        str     r3, [r7, #24]
        b       .L5
.L6:
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #24]
        add     r3, r3, r2
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #24]
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
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #24]
        add     r3, r3, r2
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #24]
        subs    r3, r2, r3
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #24]
        add     r3, r3, r2
        adds    r3, r3, #3
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #24]
        subs    r3, r2, r3
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #24]
        add     r3, r3, r2
        adds    r3, r3, #4
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #24]
        subs    r3, r2, r3
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r3, [r7, #24]
        adds    r3, r3, #4
        str     r3, [r7, #24]
.L5:
        ldr     r2, [r7, #24]
        ldr     r3, [r7, #4]
        cmp     r2, r3
        bcc     .L6
        ldr     r3, [r7, #44]
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7]
        add     r3, r3, r2
        vldr.64 d16, [r7, #32]
        vcvt.f32.f64    s15, d16
        vstr.32 s15, [r3]
        mov     r2, #0
        mov     r3, #0
        strd    r2, [r7, #32]
        movs    r3, #1
        str     r3, [r7, #20]
        b       .L7
.L8:
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #20]
        add     r3, r3, r2
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #20]
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
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #20]
        add     r3, r3, r2
        adds    r3, r3, #3
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #20]
        subs    r3, r2, r3
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #20]
        add     r3, r3, r2
        adds    r3, r3, #4
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #20]
        subs    r3, r2, r3
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #20]
        add     r3, r3, r2
        adds    r3, r3, #5
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #20]
        subs    r3, r2, r3
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r3, [r7, #20]
        adds    r3, r3, #4
        str     r3, [r7, #20]
.L7:
        ldr     r2, [r7, #20]
        ldr     r3, [r7, #4]
        cmp     r2, r3
        bcc     .L8
        ldr     r3, [r7, #44]
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7]
        add     r3, r3, r2
        vldr.64 d16, [r7, #32]
        vcvt.f32.f64    s15, d16
        vstr.32 s15, [r3]
        mov     r2, #0
        mov     r3, #0
        strd    r2, [r7, #32]
        movs    r3, #1
        str     r3, [r7, #16]
        b       .L9
.L10:
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #16]
        add     r3, r3, r2
        adds    r3, r3, #3
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #16]
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
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #16]
        add     r3, r3, r2
        adds    r3, r3, #4
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #16]
        subs    r3, r2, r3
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #16]
        add     r3, r3, r2
        adds    r3, r3, #5
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #16]
        subs    r3, r2, r3
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #16]
        add     r3, r3, r2
        adds    r3, r3, #6
        lsls    r3, r3, #2
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        vldr.32 s14, [r3]
        ldr     r2, [r7, #4]
        ldr     r3, [r7, #16]
        subs    r3, r2, r3
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #32]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #32]
        ldr     r3, [r7, #16]
        adds    r3, r3, #4
        str     r3, [r7, #16]
.L9:
        ldr     r2, [r7, #16]
        ldr     r3, [r7, #4]
        cmp     r2, r3
        bcc     .L10
        ldr     r3, [r7, #44]
        adds    r3, r3, #3
        lsls    r3, r3, #2
        ldr     r2, [r7]
        add     r3, r3, r2
        vldr.64 d16, [r7, #32]
        vcvt.f32.f64    s15, d16
        vstr.32 s15, [r3]
        ldr     r3, [r7, #44]
        adds    r3, r3, #1
        str     r3, [r7, #44]
.L2:
        ldr     r2, [r7, #44]
        ldr     r3, [r7, #56]
        cmp     r2, r3
        bcc     .L11
        nop
        nop
        adds    r7, r7, #52
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
