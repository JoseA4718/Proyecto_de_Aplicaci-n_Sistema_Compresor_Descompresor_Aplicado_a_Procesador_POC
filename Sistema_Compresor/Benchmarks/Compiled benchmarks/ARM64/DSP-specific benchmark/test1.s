	.arch armv8-a
	.file	"test1.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"r"
	.align	3
.LC1:
	.string	"pano.txt"
	.align	3
.LC2:
	.string	"%d"
	.align	3
.LC3:
	.string	"w"
	.align	3
.LC4:
	.string	"meanPano.txt"
	.align	3
.LC5:
	.string	"%d "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	mov	w0, 2
	str	w0, [x29, 44]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	fopen
	str	x0, [x29, 48]
	str	wzr, [x29, 24]
	b	.L2
.L5:
	str	wzr, [x29, 28]
	b	.L3
.L4:
	ldrsw	x1, [x29, 28]
	ldrsw	x2, [x29, 24]
	mov	x0, 6640
	mul	x0, x2, x0
	add	x0, x1, x0
	lsl	x1, x0, 2
	adrp	x0, image.3581
	add	x0, x0, :lo12:image.3581
	add	x1, x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [x29, 48]
	bl	__isoc99_fscanf
	ldr	w0, [x29, 28]
	add	w0, w0, 1
	str	w0, [x29, 28]
.L3:
	ldr	w1, [x29, 28]
	mov	w0, 6639
	cmp	w1, w0
	ble	.L4
	ldr	w0, [x29, 24]
	add	w0, w0, 1
	str	w0, [x29, 24]
.L2:
	ldr	w0, [x29, 24]
	cmp	w0, 2143
	ble	.L5
	ldr	x0, [x29, 48]
	bl	fclose
	str	wzr, [x29, 24]
	b	.L6
.L9:
	str	wzr, [x29, 28]
	b	.L7
.L8:
	adrp	x0, image.3581
	add	x0, x0, :lo12:image.3581
	ldrsw	x1, [x29, 28]
	ldrsw	x3, [x29, 24]
	mov	x2, 6640
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, imageN.3582
	add	x0, x0, :lo12:imageN.3582
	ldrsw	x1, [x29, 28]
	ldrsw	x4, [x29, 24]
	mov	x3, 6640
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 28]
	add	w0, w0, 1
	str	w0, [x29, 28]
.L7:
	ldr	w1, [x29, 28]
	mov	w0, 6639
	cmp	w1, w0
	ble	.L8
	ldr	w0, [x29, 24]
	add	w0, w0, 1
	str	w0, [x29, 24]
.L6:
	ldr	w0, [x29, 24]
	cmp	w0, 2143
	ble	.L9
	ldr	w0, [x29, 44]
	str	w0, [x29, 24]
	b	.L10
.L17:
	ldr	w0, [x29, 44]
	str	w0, [x29, 28]
	b	.L11
.L16:
	str	wzr, [x29, 40]
	ldr	w0, [x29, 44]
	neg	w0, w0
	str	w0, [x29, 32]
	b	.L12
.L15:
	ldr	w0, [x29, 44]
	neg	w0, w0
	str	w0, [x29, 36]
	b	.L13
.L14:
	ldr	w1, [x29, 24]
	ldr	w0, [x29, 32]
	add	w2, w1, w0
	ldr	w1, [x29, 28]
	ldr	w0, [x29, 36]
	add	w1, w1, w0
	adrp	x0, image.3581
	add	x0, x0, :lo12:image.3581
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 6640
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [x29, 40]
	add	w0, w1, w0
	str	w0, [x29, 40]
	ldr	w0, [x29, 36]
	add	w0, w0, 1
	str	w0, [x29, 36]
.L13:
	ldr	w1, [x29, 36]
	ldr	w0, [x29, 44]
	cmp	w1, w0
	ble	.L14
	ldr	w0, [x29, 32]
	add	w0, w0, 1
	str	w0, [x29, 32]
.L12:
	ldr	w1, [x29, 32]
	ldr	w0, [x29, 44]
	cmp	w1, w0
	ble	.L15
	ldr	w0, [x29, 40]
	scvtf	d1, w0
	fmov	d0, 2.5e+1
	fdiv	d0, d1, d0
	fcvtzs	w2, d0
	adrp	x0, imageN.3582
	add	x0, x0, :lo12:imageN.3582
	ldrsw	x1, [x29, 28]
	ldrsw	x4, [x29, 24]
	mov	x3, 6640
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 28]
	add	w0, w0, 1
	str	w0, [x29, 28]
.L11:
	mov	w1, 6640
	ldr	w0, [x29, 44]
	sub	w0, w1, w0
	ldr	w1, [x29, 28]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [x29, 24]
	add	w0, w0, 1
	str	w0, [x29, 24]
.L10:
	mov	w1, 2144
	ldr	w0, [x29, 44]
	sub	w0, w1, w0
	ldr	w1, [x29, 24]
	cmp	w1, w0
	blt	.L17
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	fopen
	str	x0, [x29, 56]
	str	wzr, [x29, 24]
	b	.L18
.L21:
	str	wzr, [x29, 28]
	b	.L19
.L20:
	adrp	x0, imageN.3582
	add	x0, x0, :lo12:imageN.3582
	ldrsw	x1, [x29, 28]
	ldrsw	x3, [x29, 24]
	mov	x2, 6640
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [x29, 56]
	bl	fprintf
	ldr	w0, [x29, 28]
	add	w0, w0, 1
	str	w0, [x29, 28]
.L19:
	ldr	w1, [x29, 28]
	mov	w0, 6639
	cmp	w1, w0
	ble	.L20
	ldr	x1, [x29, 56]
	mov	w0, 10
	bl	fputc
	ldr	w0, [x29, 24]
	add	w0, w0, 1
	str	w0, [x29, 24]
.L18:
	ldr	w0, [x29, 24]
	cmp	w0, 2143
	ble	.L21
	ldr	x0, [x29, 56]
	bl	fclose
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	.size	main, .-main
	.local	image.3581
	.comm	image.3581,56944640,8
	.local	imageN.3582
	.comm	imageN.3582,56944640,8
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
