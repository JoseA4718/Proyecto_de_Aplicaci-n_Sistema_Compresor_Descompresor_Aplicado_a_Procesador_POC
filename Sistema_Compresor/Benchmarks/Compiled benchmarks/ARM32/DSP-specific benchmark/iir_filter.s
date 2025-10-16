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
        movs    r3, #0
        str     r3, [r7, #28]
        movs    r3, #0
        str     r3, [r7, #28]
        b       .L2
.L3:
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
        adds    r3, r3, #3
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
        b       .L5
.L6:
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
        adds    r3, r3, #3
        str     r3, [r7, #28]
.L5:
        ldr     r2, [r7, #28]
        ldr     r3, [r7, #16]
        cmp     r2, r3
        blt     .L6
        nop
        nop
        adds    r7, r7, #36
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
