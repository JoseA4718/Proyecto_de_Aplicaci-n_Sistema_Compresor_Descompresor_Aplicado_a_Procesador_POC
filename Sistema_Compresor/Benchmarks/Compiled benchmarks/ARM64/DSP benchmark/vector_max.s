	.arch armv8-a
	.file	"vector_max.c"
	.text
	.align	2
	.global	largest
	.type	largest, %function
largest:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L2
.L5:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L3
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
.L3:
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L4
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
.L4:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
	.size	largest, .-largest
	.section	.rodata
	.align	3
.LC1:
	.string	"The largest number is %d \n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, 56]
	mov	x1,0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, x29, 32
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	mov	w0, 5
	str	w0, [x29, 24]
	str	wzr, [x29, 28]
	add	x0, x29, 32
	ldr	w1, [x29, 24]
	bl	largest
	str	w0, [x29, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	ldr	w1, [x29, 28]
	bl	printf
	mov	w0, 0
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x29, 56]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cmp	x1, 0
	beq	.L9
	bl	__stack_chk_fail
.L9:
	ldp	x29, x30, [sp], 64
	ret
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	10
	.word	324
	.word	45
	.word	90
	.word	9808
	.text
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
