# Compilation provided by Compiler Explorer at https://godbolt.org/
.LC0:
        .ascii  "r\000"
.LC1:
        .ascii  "pano.txt\000"
.LC2:
        .ascii  "%d\000"
.LC3:
        .ascii  "w\000"
.LC4:
        .ascii  "meanPano.txt\000"
.LC5:
        .ascii  "%d \000"
main:
        push    {r7, lr}
        sub     sp, sp, #32
        add     r7, sp, #0
        movs    r3, #2
        str     r3, [r7, #8]
        movw    r1, #:lower16:.LC0
        movt    r1, #:upper16:.LC0
        movw    r0, #:lower16:.LC1
        movt    r0, #:upper16:.LC1
        bl      fopen
        str     r0, [r7, #4]
        movs    r3, #0
        str     r3, [r7, #28]
        b       .L2
.L5:
        movs    r3, #0
        str     r3, [r7, #24]
        b       .L3
.L4:
        ldr     r3, [r7, #28]
        movw    r2, #6640
        mul     r2, r3, r2
        ldr     r3, [r7, #24]
        add     r3, r3, r2
        lsls    r2, r3, #2
        movw    r3, #:lower16:image.1
        movt    r3, #:upper16:image.1
        add     r3, r3, r2
        mov     r2, r3
        movw    r1, #:lower16:.LC2
        movt    r1, #:upper16:.LC2
        ldr     r0, [r7, #4]
        bl      __isoc99_fscanf
        ldr     r3, [r7, #24]
        adds    r3, r3, #1
        str     r3, [r7, #24]
.L3:
        ldr     r3, [r7, #24]
        movw    r2, #6639
        cmp     r3, r2
        ble     .L4
        ldr     r3, [r7, #28]
        adds    r3, r3, #1
        str     r3, [r7, #28]
.L2:
        ldr     r3, [r7, #28]
        cmp     r3, #2144
        blt     .L5
        ldr     r3, [r7, #28]
        adds    r2, r3, #1
        ldr     r3, [r7, #24]
        adds    r3, r3, #1
        movw    r1, #6640
        mul     r2, r1, r2
        add     r3, r3, r2
        lsls    r2, r3, #2
        movw    r3, #:lower16:image.1
        movt    r3, #:upper16:image.1
        add     r3, r3, r2
        mov     r2, r3
        movw    r1, #:lower16:.LC2
        movt    r1, #:upper16:.LC2
        ldr     r0, [r7, #4]
        bl      __isoc99_fscanf
        ldr     r3, [r7, #28]
        adds    r2, r3, #2
        ldr     r3, [r7, #24]
        adds    r3, r3, #2
        movw    r1, #6640
        mul     r2, r1, r2
        add     r3, r3, r2
        lsls    r2, r3, #2
        movw    r3, #:lower16:image.1
        movt    r3, #:upper16:image.1
        add     r3, r3, r2
        mov     r2, r3
        movw    r1, #:lower16:.LC2
        movt    r1, #:upper16:.LC2
        ldr     r0, [r7, #4]
        bl      __isoc99_fscanf
        ldr     r3, [r7, #28]
        adds    r2, r3, #3
        ldr     r3, [r7, #24]
        adds    r3, r3, #3
        movw    r1, #6640
        mul     r2, r1, r2
        add     r3, r3, r2
        lsls    r2, r3, #2
        movw    r3, #:lower16:image.1
        movt    r3, #:upper16:image.1
        add     r3, r3, r2
        mov     r2, r3
        movw    r1, #:lower16:.LC2
        movt    r1, #:upper16:.LC2
        ldr     r0, [r7, #4]
        bl      __isoc99_fscanf
        ldr     r0, [r7, #4]
        bl      fclose
        movs    r3, #0
        str     r3, [r7, #28]
        b       .L6
.L9:
        movs    r3, #0
        str     r3, [r7, #24]
        b       .L7
.L8:
        movw    r3, #:lower16:image.1
        movt    r3, #:upper16:image.1
        ldr     r2, [r7, #28]
        movw    r1, #6640
        mul     r1, r2, r1
        ldr     r2, [r7, #24]
        add     r2, r2, r1
        ldr     r1, [r3, r2, lsl #2]
        movw    r3, #:lower16:imageN.0
        movt    r3, #:upper16:imageN.0
        ldr     r2, [r7, #28]
        movw    r0, #6640
        mul     r0, r2, r0
        ldr     r2, [r7, #24]
        add     r2, r2, r0
        str     r1, [r3, r2, lsl #2]
        ldr     r3, [r7, #24]
        adds    r3, r3, #1
        str     r3, [r7, #24]
.L7:
        ldr     r3, [r7, #24]
        movw    r2, #6639
        cmp     r3, r2
        ble     .L8
        ldr     r3, [r7, #28]
        adds    r3, r3, #1
        str     r3, [r7, #28]
.L6:
        ldr     r3, [r7, #28]
        cmp     r3, #2144
        blt     .L9
        ldr     r3, [r7, #8]
        str     r3, [r7, #28]
        b       .L10
.L17:
        ldr     r3, [r7, #8]
        str     r3, [r7, #24]
        b       .L11
.L16:
        movs    r3, #0
        str     r3, [r7, #12]
        ldr     r3, [r7, #8]
        rsbs    r3, r3, #0
        str     r3, [r7, #20]
        b       .L12
.L15:
        ldr     r3, [r7, #8]
        rsbs    r3, r3, #0
        str     r3, [r7, #16]
        b       .L13
.L14:
        ldr     r2, [r7, #28]
        ldr     r3, [r7, #20]
        adds    r1, r2, r3
        ldr     r2, [r7, #24]
        ldr     r3, [r7, #16]
        add     r2, r2, r3
        movw    r3, #:lower16:image.1
        movt    r3, #:upper16:image.1
        movw    r0, #6640
        mul     r1, r0, r1
        add     r2, r2, r1
        ldr     r3, [r3, r2, lsl #2]
        ldr     r2, [r7, #12]
        add     r3, r3, r2
        str     r3, [r7, #12]
        ldr     r3, [r7, #16]
        adds    r3, r3, #1
        str     r3, [r7, #16]
.L13:
        ldr     r2, [r7, #16]
        ldr     r3, [r7, #8]
        cmp     r2, r3
        ble     .L14
        ldr     r3, [r7, #20]
        adds    r3, r3, #1
        str     r3, [r7, #20]
.L12:
        ldr     r2, [r7, #20]
        ldr     r3, [r7, #8]
        cmp     r2, r3
        ble     .L15
        ldr     r3, [r7, #12]
        vmov    s15, r3 @ int
        vcvt.f64.s32    d17, s15
        vmov.f64        d18, #2.5e+1
        vdiv.f64        d16, d17, d18
        vcvt.s32.f64    s15, d16
        vmov    r0, s15 @ int
        movw    r3, #:lower16:imageN.0
        movt    r3, #:upper16:imageN.0
        ldr     r2, [r7, #28]
        movw    r1, #6640
        mul     r1, r2, r1
        ldr     r2, [r7, #24]
        add     r2, r2, r1
        str     r0, [r3, r2, lsl #2]
        ldr     r3, [r7, #24]
        adds    r3, r3, #1
        str     r3, [r7, #24]
.L11:
        ldr     r3, [r7, #8]
        rsb     r3, r3, #6624
        adds    r3, r3, #16
        ldr     r2, [r7, #24]
        cmp     r2, r3
        blt     .L16
        ldr     r3, [r7, #28]
        adds    r3, r3, #1
        str     r3, [r7, #28]
.L10:
        ldr     r3, [r7, #8]
        rsb     r3, r3, #2144
        ldr     r2, [r7, #28]
        cmp     r2, r3
        blt     .L17
        movw    r1, #:lower16:.LC3
        movt    r1, #:upper16:.LC3
        movw    r0, #:lower16:.LC4
        movt    r0, #:upper16:.LC4
        bl      fopen
        str     r0, [r7]
        movs    r3, #0
        str     r3, [r7, #28]
        b       .L18
.L21:
        movs    r3, #0
        str     r3, [r7, #24]
        b       .L19
.L20:
        movw    r3, #:lower16:imageN.0
        movt    r3, #:upper16:imageN.0
        ldr     r2, [r7, #28]
        movw    r1, #6640
        mul     r1, r2, r1
        ldr     r2, [r7, #24]
        add     r2, r2, r1
        ldr     r3, [r3, r2, lsl #2]
        mov     r2, r3
        movw    r1, #:lower16:.LC5
        movt    r1, #:upper16:.LC5
        ldr     r0, [r7]
        bl      fprintf
        ldr     r3, [r7, #24]
        adds    r3, r3, #1
        str     r3, [r7, #24]
.L19:
        ldr     r3, [r7, #24]
        movw    r2, #6639
        cmp     r3, r2
        ble     .L20
        ldr     r1, [r7]
        movs    r0, #10
        bl      fputc
        ldr     r3, [r7, #28]
        adds    r3, r3, #1
        str     r3, [r7, #28]
.L18:
        ldr     r3, [r7, #28]
        cmp     r3, #2144
        blt     .L21
        ldr     r0, [r7]
        bl      fclose
        movs    r3, #0
        mov     r0, r3
        adds    r7, r7, #32
        mov     sp, r7
        pop     {r7, pc}
