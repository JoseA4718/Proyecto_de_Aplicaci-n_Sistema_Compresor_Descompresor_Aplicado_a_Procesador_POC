# Compilation provided by Compiler Explorer at https://godbolt.org/
convolve:
        push    {r7}
        sub     sp, sp, #44
        add     r7, sp, #0
        str     r0, [r7, #12]
        str     r1, [r7, #8]
        str     r2, [r7, #4]
        str     r3, [r7]
        movs    r3, #0
        str     r3, [r7, #36]
        b       .L2
.L7:
        mov     r2, #0
        mov     r3, #0
        strd    r2, [r7, #24]
        movs    r3, #1
        str     r3, [r7, #20]
        b       .L3
.L4:
        ldr     r2, [r7, #36]
        ldr     r3, [r7, #20]
        add     r3, r3, r2
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
        vldr.64 d17, [r7, #24]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #24]
        ldr     r2, [r7, #36]
        ldr     r3, [r7, #20]
        add     r3, r3, r2
        adds    r3, r3, #1
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
        vldr.64 d17, [r7, #24]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #24]
        ldr     r2, [r7, #36]
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
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #24]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #24]
        ldr     r2, [r7, #36]
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
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #24]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #24]
        ldr     r3, [r7, #20]
        adds    r3, r3, #4
        str     r3, [r7, #20]
.L3:
        ldr     r2, [r7, #20]
        ldr     r3, [r7, #4]
        cmp     r2, r3
        bcc     .L4
        ldr     r3, [r7, #36]
        lsls    r3, r3, #2
        ldr     r2, [r7]
        add     r3, r3, r2
        vldr.64 d16, [r7, #24]
        vcvt.f32.f64    s15, d16
        vstr.32 s15, [r3]
        mov     r2, #0
        mov     r3, #0
        strd    r2, [r7, #24]
        movs    r3, #1
        str     r3, [r7, #16]
        b       .L5
.L6:
        ldr     r2, [r7, #36]
        ldr     r3, [r7, #16]
        add     r3, r3, r2
        adds    r3, r3, #1
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
        vldr.64 d17, [r7, #24]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #24]
        ldr     r2, [r7, #36]
        ldr     r3, [r7, #16]
        add     r3, r3, r2
        adds    r3, r3, #2
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
        vldr.64 d17, [r7, #24]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #24]
        ldr     r2, [r7, #36]
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
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #24]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #24]
        ldr     r2, [r7, #36]
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
        adds    r3, r3, #2
        lsls    r3, r3, #2
        ldr     r2, [r7, #8]
        add     r3, r3, r2
        vldr.32 s15, [r3]
        vmul.f32        s15, s14, s15
        vcvt.f64.f32    d16, s15
        vldr.64 d17, [r7, #24]
        vadd.f64        d16, d17, d16
        vstr.64 d16, [r7, #24]
        ldr     r3, [r7, #16]
        adds    r3, r3, #4
        str     r3, [r7, #16]
.L5:
        ldr     r2, [r7, #16]
        ldr     r3, [r7, #4]
        cmp     r2, r3
        bcc     .L6
        ldr     r3, [r7, #36]
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7]
        add     r3, r3, r2
        vldr.64 d16, [r7, #24]
        vcvt.f32.f64    s15, d16
        vstr.32 s15, [r3]
        ldr     r3, [r7, #36]
        adds    r3, r3, #1
        str     r3, [r7, #36]
.L2:
        ldr     r2, [r7, #36]
        ldr     r3, [r7, #48]
        cmp     r2, r3
        bcc     .L7
        nop
        nop
        adds    r7, r7, #44
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
iirfilter:
        push    {r7}
        sub     sp, sp, #36
        add     r7, sp, #0
        str     r0, [r7, #20]
        str     r1, [r7, #16]
        str     r2, [r7, #12]
        str     r3, [r7, #8]
        vstr.32 s0, [r7, #4]
        movs    r3, #0
        str     r3, [r7, #28]
        movs    r3, #0
        str     r3, [r7, #28]
        b       .L9
.L10:
        ldr     r3, [r7, #12]
        ldr     r2, [r3, #4]      @ float
        ldr     r3, [r7, #12]
        str     r2, [r3]  @ float
        ldr     r3, [r7, #12]
        adds    r3, r3, #4
        ldr     r2, [r7, #12]
        ldr     r2, [r2, #8]      @ float
        str     r2, [r3]  @ float
        ldr     r3, [r7, #20]
        vldr.32 s14, [r3]
        ldr     r3, [r7, #12]
        adds    r3, r3, #8
        vldr.32 s15, [r7, #4]
        vmul.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        ldr     r2, [r3, #4]      @ float
        ldr     r3, [r7, #8]
        str     r2, [r3]  @ float
        ldr     r3, [r7, #8]
        adds    r3, r3, #4
        ldr     r2, [r7, #8]
        ldr     r2, [r2, #8]      @ float
        str     r2, [r3]  @ float
        ldr     r3, [r7, #12]
        vldr.32 s14, [r3]
        ldr     r3, [r7, #40]
        adds    r3, r3, #8
        vldr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vmul.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vldr.32 s14, [r3]
        ldr     r3, [r7, #12]
        adds    r3, r3, #4
        vldr.32 s13, [r3]
        ldr     r3, [r7, #40]
        adds    r3, r3, #4
        vldr.32 s15, [r3]
        vmul.f32        s15, s13, s15
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vadd.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vldr.32 s14, [r3]
        ldr     r3, [r7, #12]
        adds    r3, r3, #8
        vldr.32 s13, [r3]
        ldr     r3, [r7, #40]
        vldr.32 s15, [r3]
        vmul.f32        s15, s13, s15
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vadd.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vldr.32 s14, [r3]
        ldr     r3, [r7, #8]
        vldr.32 s13, [r3]
        ldr     r3, [r7, #40]
        adds    r3, r3, #16
        vldr.32 s15, [r3]
        vmul.f32        s15, s13, s15
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vsub.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vldr.32 s14, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #4
        vldr.32 s13, [r3]
        ldr     r3, [r7, #40]
        adds    r3, r3, #12
        vldr.32 s15, [r3]
        vmul.f32        s15, s13, s15
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vsub.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        ldr     r2, [r3, #8]      @ float
        ldr     r3, [r7, #20]
        str     r2, [r3]  @ float
        ldr     r3, [r7, #20]
        adds    r3, r3, #4
        str     r3, [r7, #20]
        ldr     r3, [r7, #28]
        adds    r3, r3, #1
        str     r3, [r7, #28]
.L9:
        ldr     r2, [r7, #28]
        ldr     r3, [r7, #16]
        cmp     r2, r3
        blt     .L10
        nop
        nop
        adds    r7, r7, #36
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
iirfilter_unscaled:
        push    {r7}
        sub     sp, sp, #36
        add     r7, sp, #0
        str     r0, [r7, #20]
        str     r1, [r7, #16]
        str     r2, [r7, #12]
        str     r3, [r7, #8]
        vstr.32 s0, [r7, #4]
        movs    r3, #0
        str     r3, [r7, #28]
        movs    r3, #0
        str     r3, [r7, #28]
        b       .L12
.L13:
        ldr     r3, [r7, #12]
        ldr     r2, [r3, #4]      @ float
        ldr     r3, [r7, #12]
        str     r2, [r3]  @ float
        ldr     r3, [r7, #12]
        adds    r3, r3, #4
        ldr     r2, [r7, #12]
        ldr     r2, [r2, #8]      @ float
        str     r2, [r3]  @ float
        ldr     r3, [r7, #12]
        adds    r3, r3, #8
        ldr     r2, [r7, #20]
        ldr     r2, [r2]  @ float
        str     r2, [r3]  @ float
        ldr     r3, [r7, #8]
        ldr     r2, [r3, #4]      @ float
        ldr     r3, [r7, #8]
        str     r2, [r3]  @ float
        ldr     r3, [r7, #8]
        adds    r3, r3, #4
        ldr     r2, [r7, #8]
        ldr     r2, [r2, #8]      @ float
        str     r2, [r3]  @ float
        ldr     r3, [r7, #12]
        vldr.32 s14, [r3]
        ldr     r3, [r7, #40]
        adds    r3, r3, #8
        vldr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vmul.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vldr.32 s14, [r3]
        ldr     r3, [r7, #12]
        adds    r3, r3, #4
        vldr.32 s13, [r3]
        ldr     r3, [r7, #40]
        adds    r3, r3, #4
        vldr.32 s15, [r3]
        vmul.f32        s15, s13, s15
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vadd.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vldr.32 s14, [r3]
        ldr     r3, [r7, #12]
        adds    r3, r3, #8
        vldr.32 s13, [r3]
        ldr     r3, [r7, #40]
        vldr.32 s15, [r3]
        vmul.f32        s15, s13, s15
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vadd.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vldr.32 s14, [r3]
        ldr     r3, [r7, #8]
        vldr.32 s13, [r3]
        ldr     r3, [r7, #40]
        adds    r3, r3, #16
        vldr.32 s15, [r3]
        vmul.f32        s15, s13, s15
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vsub.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vldr.32 s14, [r3]
        ldr     r3, [r7, #8]
        adds    r3, r3, #4
        vldr.32 s13, [r3]
        ldr     r3, [r7, #40]
        adds    r3, r3, #12
        vldr.32 s15, [r3]
        vmul.f32        s15, s13, s15
        ldr     r3, [r7, #8]
        adds    r3, r3, #8
        vsub.f32        s15, s14, s15
        vstr.32 s15, [r3]
        ldr     r3, [r7, #8]
        ldr     r2, [r3, #8]      @ float
        ldr     r3, [r7, #20]
        str     r2, [r3]  @ float
        ldr     r3, [r7, #20]
        adds    r3, r3, #4
        str     r3, [r7, #20]
        ldr     r3, [r7, #28]
        adds    r3, r3, #1
        str     r3, [r7, #28]
.L12:
        ldr     r2, [r7, #28]
        ldr     r3, [r7, #16]
        cmp     r2, r3
        blt     .L13
        nop
        nop
        adds    r7, r7, #36
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
