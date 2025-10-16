	.arch armv8-a
	.file	"vector_add.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"Addition vector:"
	.align	3
.LC2:
	.string	"%d "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -160]!
	add	x29, sp, 0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, 152]
	mov	x1,0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, x29, 32
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, x29, 72
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	mov	w0, 10
	str	w0, [x29, 28]
	str	wzr, [x29, 24]
	b	.L2
.L3:
	ldrsw	x0, [x29, 24]
	lsl	x0, x0, 2
	add	x1, x29, 32
	ldr	w1, [x1, x0]
	ldrsw	x0, [x29, 24]
	lsl	x0, x0, 2
	add	x2, x29, 72
	ldr	w0, [x2, x0]
	add	w2, w1, w0
	ldrsw	x0, [x29, 24]
	lsl	x0, x0, 2
	add	x1, x29, 112
	str	w2, [x1, x0]
	ldr	w0, [x29, 24]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x29, 32
	ldr	w1, [x1, x0]
	ldr	w0, [x29, 24]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, x29, 72
	ldr	w0, [x2, x0]
	ldr	w2, [x29, 24]
	add	w3, w2, 1
	add	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, x29, 112
	str	w2, [x1, x0]
	ldr	w0, [x29, 24]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x29, 32
	ldr	w1, [x1, x0]
	ldr	w0, [x29, 24]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, x29, 72
	ldr	w0, [x2, x0]
	ldr	w2, [x29, 24]
	add	w3, w2, 2
	add	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, x29, 112
	str	w2, [x1, x0]
	ldr	w0, [x29, 24]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x29, 32
	ldr	w1, [x1, x0]
	ldr	w0, [x29, 24]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, x29, 72
	ldr	w0, [x2, x0]
	ldr	w2, [x29, 24]
	add	w3, w2, 3
	add	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, x29, 112
	str	w2, [x1, x0]
	ldr	w0, [x29, 24]
	add	w0, w0, 4
	str	w0, [x29, 24]
.L2:
	ldr	w1, [x29, 24]
	ldr	w0, [x29, 28]
	cmp	w1, w0
	blt	.L3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	str	wzr, [x29, 24]
	b	.L4
.L5:
	ldrsw	x0, [x29, 24]
	lsl	x0, x0, 2
	add	x1, x29, 112
	ldr	w1, [x1, x0]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [x29, 24]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x29, 112
	ldr	w1, [x1, x0]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [x29, 24]
	add	w0, w0, 2
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x29, 112
	ldr	w1, [x1, x0]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [x29, 24]
	add	w0, w0, 3
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x29, 112
	ldr	w1, [x1, x0]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [x29, 24]
	add	w0, w0, 1
	str	w0, [x29, 24]
.L4:
	ldr	w1, [x29, 24]
	ldr	w0, [x29, 28]
	cmp	w1, w0
	blt	.L5
	mov	w0, 10
	bl	putchar
	mov	w0, 0
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x29, 152]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cmp	x1, 0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	ldp	x29, x30, [sp], 160
	ret
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.text
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
