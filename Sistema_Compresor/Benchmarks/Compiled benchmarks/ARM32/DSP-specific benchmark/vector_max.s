# Compilation provided by Compiler Explorer at https://godbolt.org/
largest:
        push    {r7}
        sub     sp, sp, #20
        add     r7, sp, #0
        str     r0, [r7, #4]
        str     r1, [r7]
        ldr     r3, [r7, #4]
        ldr     r3, [r3]
        str     r3, [r7, #8]
        movs    r3, #1
        str     r3, [r7, #12]
        b       .L2
.L5:
        ldr     r3, [r7, #12]
        lsls    r3, r3, #2
        ldr     r2, [r7, #4]
        add     r3, r3, r2
        ldr     r3, [r3]
        ldr     r2, [r7, #8]
        cmp     r2, r3
        bge     .L3
        ldr     r3, [r7, #12]
        lsls    r3, r3, #2
        ldr     r2, [r7, #4]
        add     r3, r3, r2
        ldr     r3, [r3]
        str     r3, [r7, #8]
.L3:
        ldr     r3, [r7, #12]
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #4]
        add     r3, r3, r2
        ldr     r3, [r3]
        ldr     r2, [r7, #8]
        cmp     r2, r3
        bge     .L4
        ldr     r3, [r7, #12]
        adds    r3, r3, #1
        lsls    r3, r3, #2
        ldr     r2, [r7, #4]
        add     r3, r3, r2
        ldr     r3, [r3]
        str     r3, [r7, #8]
.L4:
        ldr     r3, [r7, #12]
        adds    r3, r3, #1
        str     r3, [r7, #12]
.L2:
        ldr     r2, [r7, #12]
        ldr     r3, [r7]
        cmp     r2, r3
        blt     .L5
        ldr     r3, [r7, #8]
        mov     r0, r3
        adds    r7, r7, #20
        mov     sp, r7
        ldr     r7, [sp], #4
        bx      lr
.LC1:
        .ascii  "The largest number is %d \012\000"
.LC0:
        .word   10
        .word   324
        .word   45
        .word   90
        .word   9808
main:
        push    {r4, r5, r7, lr}
        sub     sp, sp, #32
        add     r7, sp, #0
        movw    r3, #:lower16:.LC0
        movt    r3, #:upper16:.LC0
        adds    r4, r7, #4
        mov     r5, r3
        ldmia   r5!, {r0, r1, r2, r3}
        stmia   r4!, {r0, r1, r2, r3}
        ldr     r3, [r5]
        str     r3, [r4]
        movs    r3, #5
        str     r3, [r7, #28]
        movs    r3, #0
        str     r3, [r7, #24]
        adds    r3, r7, #4
        ldr     r1, [r7, #28]
        mov     r0, r3
        bl      largest
        str     r0, [r7, #24]
        ldr     r1, [r7, #24]
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        movs    r3, #0
        mov     r0, r3
        adds    r7, r7, #32
        mov     sp, r7
        pop     {r4, r5, r7, pc}
