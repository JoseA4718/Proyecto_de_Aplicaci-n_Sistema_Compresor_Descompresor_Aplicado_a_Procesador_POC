# Compilation provided by Compiler Explorer at https://godbolt.org/
.LC1:
        .ascii  "Addition vector:\000"
.LC2:
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
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      puts
        movs    r3, #0
        str     r3, [r7, #124]
        b       .L4
.L5:
        ldr     r3, [r7, #124]
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r3, [r3, #-128]
        mov     r1, r3
        movw    r0, #:lower16:.LC2
        movt    r0, #:upper16:.LC2
        bl      printf
        ldr     r3, [r7, #124]
        adds    r3, r3, #1
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r3, [r3, #-128]
        mov     r1, r3
        movw    r0, #:lower16:.LC2
        movt    r0, #:upper16:.LC2
        bl      printf
        ldr     r3, [r7, #124]
        adds    r3, r3, #2
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r3, [r3, #-128]
        mov     r1, r3
        movw    r0, #:lower16:.LC2
        movt    r0, #:upper16:.LC2
        bl      printf
        ldr     r3, [r7, #124]
        adds    r3, r3, #3
        lsls    r3, r3, #2
        adds    r3, r3, #128
        add     r3, r3, r7
        ldr     r3, [r3, #-128]
        mov     r1, r3
        movw    r0, #:lower16:.LC2
        movt    r0, #:upper16:.LC2
        bl      printf
        ldr     r3, [r7, #124]
        adds    r3, r3, #1
        str     r3, [r7, #124]
.L4:
        ldr     r2, [r7, #124]
        ldr     r3, [r7, #120]
        cmp     r2, r3
        blt     .L5
        movs    r0, #10
        bl      putchar
        nop
        mov     r0, r3
        adds    r7, r7, #128
        mov     sp, r7
        pop     {r4, r5, r7, pc}
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
        b       .L7
.L8:
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
.L7:
        ldr     r3, [r7, #8]
        cmp     r3, #2
        ble     .L8
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
