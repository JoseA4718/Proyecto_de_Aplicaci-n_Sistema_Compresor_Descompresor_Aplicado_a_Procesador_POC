# Compilation provided by Compiler Explorer at https://godbolt.org/
.LC1:
        .ascii  "%d \000"
.LC0:
        .word   0
        .word   1
        .word   2
        .word   3
        .word   4
        .word   5
        .word   6
        .word   7
        .word   8
        .word   9
vector_add:
        push    {r4, r5, r7, lr}
        sub     sp, sp, #128
        add     r7, sp, #0
        movw    r3, #:lower16:.LC0
        movt    r3, #:upper16:.LC0
        add     r4, r7, #80
        mov     r5, r3
        ldmia   r5!, {r0, r1, r2, r3}
        stmia   r4!, {r0, r1, r2, r3}
        ldmia   r5!, {r0, r1, r2, r3}
        stmia   r4!, {r0, r1, r2, r3}
        ldm     r5, {r0, r1}
        stm     r4, {r0, r1}
        movw    r3, #:lower16:.LC0
        movt    r3, #:upper16:.LC0
        add     r4, r7, #40
        mov     r5, r3
        ldmia   r5!, {r0, r1, r2, r3}
        stmia   r4!, {r0, r1, r2, r3}
        ldmia   r5!, {r0, r1, r2, r3}
        stmia   r4!, {r0, r1, r2, r3}
        ldm     r5, {r0, r1}
        stm     r4, {r0, r1}
        movs    r3, #10
        str     r3, [r7, #120]
        movs    r3, #0
        str     r3, [r7, #124]
        b       .L2
.L3:
        ldr     r3, [r7, #124]
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r2, [r3, #-48]
        ldr     r3, [r7, #124]
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r3, [r3, #-88]
        add     r2, r2, r3
        ldr     r3, [r7, #124]
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        str     r2, [r3, #-128]
        ldr     r3, [r7, #124]
        adds    r3, r3, #1
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r1, [r3, #-48]
        ldr     r3, [r7, #124]
        adds    r3, r3, #1
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r2, [r3, #-88]
        ldr     r3, [r7, #124]
        adds    r3, r3, #1
        add     r2, r2, r1
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        str     r2, [r3, #-128]
        ldr     r3, [r7, #124]
        adds    r3, r3, #2
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r1, [r3, #-48]
        ldr     r3, [r7, #124]
        adds    r3, r3, #2
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r2, [r3, #-88]
        ldr     r3, [r7, #124]
        adds    r3, r3, #2
        add     r2, r2, r1
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        str     r2, [r3, #-128]
        ldr     r3, [r7, #124]
        adds    r3, r3, #3
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r1, [r3, #-48]
        ldr     r3, [r7, #124]
        adds    r3, r3, #3
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r2, [r3, #-88]
        ldr     r3, [r7, #124]
        adds    r3, r3, #3
        add     r2, r2, r1
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        str     r2, [r3, #-128]
        ldr     r3, [r7, #124]
        adds    r3, r3, #4
        str     r3, [r7, #124]
.L2:
        ldr     r2, [r7, #124]
        ldr     r3, [r7, #120]
        cmp     r2, r3
        blt     .L3
        ldr     r3, [r7]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #4]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #8]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #12]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #16]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #20]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #24]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #28]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #32]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        ldr     r3, [r7, #36]
        mov     r1, r3
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      printf
        movs    r0, #10
        bl      putchar
        nop
        mov     r0, r3
        adds    r7, r7, #128
        mov     sp, r7
        pop     {r4, r5, r7, pc}
