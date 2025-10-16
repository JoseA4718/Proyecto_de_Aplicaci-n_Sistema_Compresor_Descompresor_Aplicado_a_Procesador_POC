	.arch armv8-a
	.file	"dot_and_cross_product.c"
	.text
	.align	2
	.global	dotProduct
	.type	dotProduct, %function
dotProduct:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldrsw	x0, [sp, 28]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp]
	add	x0, x2, x0
	ldr	w0, [x0]
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	ble	.L3
	ldr	w0, [sp, 24]
	add	sp, sp, 32
	ret
	.size	dotProduct, .-dotProduct
	.align	2
	.global	crossProduct
	.type	crossProduct, %function
crossProduct:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	w2, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	w0, [x0]
	mul	w0, w2, w0
	sub	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	mul	w2, w1, w0
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	sub	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	w0, [x0]
	mul	w2, w1, w0
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	sub	w1, w2, w1
	str	w1, [x0]
	nop
	add	sp, sp, 32
	ret
	.size	crossProduct, .-crossProduct
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
