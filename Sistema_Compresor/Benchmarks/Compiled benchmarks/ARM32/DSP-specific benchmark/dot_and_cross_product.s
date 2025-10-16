# Compilation provided by Compiler Explorer at https://godbolt.org/
dotProduct:
        push    {r7}
        sub     sp, sp, #20
        add     r7, sp, #0
        str     r0, [r7, #4]
        str     r1, [r7]
        movs    r3, #0
        str     r3, [r7, #12]
        movs    r3, #0
        str     r3, [r7, #8]
        b       .L2
.L3:
        ldr     r3, [r7, #8]
        lsls    r3, r3, #2
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
        ldr     r3, [r7, #8]
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #4]
        add     r3, r3, r2
        ldr     r3, [r3]
        ldr     r2, [r7, #8]
        adds    r2, r2, #1
        lsls    r2, r2, #2
        ldr     r1, [r7]
        add     r2, r2, r1
        ldr     r2, [r2]
        mul     r3, r2, r3
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        str     r3, [r7, #12]
        ldr     r3, [r7, #8]
        adds    r3, r3, #2
        str     r3, [r7, #8]
.L2:
        ldr     r3, [r7, #8]
        cmp     r3, #2
        ble     .L3
        ldr     r3, [r7, #12]
        mov     r0, r3
        adds    r7, r7, #20
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
crossProduct:
        push    {r7}
        sub     sp, sp, #20
        add     r7, sp, #0
        str     r0, [r7, #12]
        str     r1, [r7, #8]
        str     r2, [r7, #4]
        ldr     r3, [r7, #12]
        adds    r3, r3, #4
        ldr     r3, [r3]
        ldr     r2, [r7, #8]
        adds    r2, r2, #8
        ldr     r2, [r2]
        mul     r2, r3, r2
        ldr     r3, [r7, #12]
        adds    r3, r3, #8
        ldr     r3, [r3]
        ldr     r1, [r7, #8]
        adds    r1, r1, #4
        ldr     r1, [r1]
        mul     r3, r1, r3
        subs    r2, r2, r3
        ldr     r3, [r7, #4]
        str     r2, [r3]
        ldr     r3, [r7, #12]
        adds    r3, r3, #8
        ldr     r3, [r3]
        ldr     r2, [r7, #8]
        ldr     r2, [r2]
        mul     r1, r2, r3
        ldr     r3, [r7, #12]
        ldr     r3, [r3]
        ldr     r2, [r7, #8]
        adds    r2, r2, #8
        ldr     r2, [r2]
        mul     r2, r3, r2
        ldr     r3, [r7, #4]
        adds    r3, r3, #4
        subs    r2, r1, r2
        str     r2, [r3]
        ldr     r3, [r7, #12]
        ldr     r3, [r3]
        ldr     r2, [r7, #8]
        adds    r2, r2, #4
        ldr     r2, [r2]
        mul     r1, r2, r3
        ldr     r3, [r7, #12]
        adds    r3, r3, #4
        ldr     r3, [r3]
        ldr     r2, [r7, #8]
        ldr     r2, [r2]
        mul     r2, r3, r2
        ldr     r3, [r7, #4]
        adds    r3, r3, #8
        subs    r2, r1, r2
        str     r2, [r3]
        nop
        adds    r7, r7, #20
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
