	.file	"compute.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	find_g
	.type	find_g, @function
find_g:
.LFB5:
	.file 1 "../olden/power/src/compute.c"
	.loc 1 238 0
	.cfi_startproc
	.loc 1 239 0
	movsd	P(%rip), %xmm0
	movsd	Q(%rip), %xmm1
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	subsd	.LC0(%rip), %xmm0
	.loc 1 240 0
	ret
	.cfi_endproc
.LFE5:
	.size	find_g, .-find_g
	.p2align 4,,15
	.globl	find_h
	.type	find_h, @function
find_h:
.LFB6:
	.loc 1 243 0
	.cfi_startproc
	.loc 1 244 0
	movsd	.LC1(%rip), %xmm1
	movsd	P(%rip), %xmm0
	mulsd	Q(%rip), %xmm1
	subsd	%xmm1, %xmm0
	.loc 1 245 0
	ret
	.cfi_endproc
.LFE6:
	.size	find_h, .-find_h
	.p2align 4,,15
	.globl	find_gradient_f
	.type	find_gradient_f, @function
find_gradient_f:
.LFB7:
	.loc 1 248 0
	.cfi_startproc
.LVL0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 255 0
	pxor	%xmm4, %xmm4
	.loc 1 252 0
	movsd	.LC2(%rip), %xmm2
	movsd	P(%rip), %xmm3
	movapd	%xmm2, %xmm5
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm5
	movapd	%xmm5, %xmm3
	subsd	%xmm0, %xmm3
	.loc 1 253 0
	movsd	Q(%rip), %xmm0
.LVL1:
	addsd	%xmm2, %xmm0
	.loc 1 252 0
	movsd	%xmm3, (%rdi)
	.loc 1 253 0
	divsd	%xmm0, %xmm2
	.loc 1 255 0
	movapd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	.loc 1 253 0
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
.LVL2:
	movsd	%xmm2, 8(%rdi)
.LVL3:
	.loc 1 255 0
	movapd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	addsd	%xmm4, %xmm2
.LVL4:
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
.LVL5:
	ucomisd	%xmm0, %xmm4
	.loc 1 256 0
	sqrtsd	%xmm0, %xmm2
	ja	.L7
.LVL6:
.L5:
	.loc 1 258 0
	divsd	%xmm2, %xmm3
	.loc 1 261 0
	movapd	%xmm2, %xmm0
	.loc 1 258 0
	divsd	%xmm2, %xmm1
	movsd	%xmm3, (%rdi)
.LVL7:
	movsd	%xmm1, 8(%rdi)
.LVL8:
	.loc 1 261 0
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL9:
.L7:
	.cfi_restore_state
	movq	%rdi, 8(%rsp)
	movsd	%xmm2, (%rsp)
	.loc 1 256 0
	call	sqrt@PLT
.LVL10:
	movq	8(%rsp), %rdi
	movsd	(%rsp), %xmm2
	movsd	(%rdi), %xmm3
	movsd	8(%rdi), %xmm1
	jmp	.L5
	.cfi_endproc
.LFE7:
	.size	find_gradient_f, .-find_gradient_f
	.p2align 4,,15
	.globl	find_gradient_g
	.type	find_gradient_g, @function
find_gradient_g:
.LFB8:
	.loc 1 264 0
	.cfi_startproc
.LVL11:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 271 0
	pxor	%xmm4, %xmm4
	.loc 1 268 0
	movsd	P(%rip), %xmm2
	.loc 1 269 0
	movsd	Q(%rip), %xmm1
	.loc 1 268 0
	addsd	%xmm2, %xmm2
	.loc 1 269 0
	addsd	%xmm1, %xmm1
	.loc 1 271 0
	movapd	%xmm2, %xmm0
	.loc 1 268 0
	movsd	%xmm2, (%rdi)
	.loc 1 269 0
	movsd	%xmm1, 8(%rdi)
.LVL12:
	.loc 1 271 0
	mulsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm3
	movapd	%xmm1, %xmm0
	addsd	%xmm4, %xmm3
.LVL13:
	mulsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
.LVL14:
	ucomisd	%xmm0, %xmm4
	.loc 1 272 0
	sqrtsd	%xmm0, %xmm3
	ja	.L11
.LVL15:
.L9:
	.loc 1 274 0
	divsd	%xmm3, %xmm2
	.loc 1 277 0
	movapd	%xmm3, %xmm0
	.loc 1 274 0
	divsd	%xmm3, %xmm1
	movsd	%xmm2, (%rdi)
.LVL16:
	movsd	%xmm1, 8(%rdi)
.LVL17:
	.loc 1 277 0
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL18:
.L11:
	.cfi_restore_state
	movq	%rdi, 8(%rsp)
	movsd	%xmm3, (%rsp)
	.loc 1 272 0
	call	sqrt@PLT
.LVL19:
	movq	8(%rsp), %rdi
	movsd	(%rsp), %xmm3
	movsd	(%rdi), %xmm2
	movsd	8(%rdi), %xmm1
	jmp	.L9
	.cfi_endproc
.LFE8:
	.size	find_gradient_g, .-find_gradient_g
	.p2align 4,,15
	.globl	find_gradient_h
	.type	find_gradient_h, @function
find_gradient_h:
.LFB9:
	.loc 1 280 0
	.cfi_startproc
.LVL20:
	.loc 1 290 0
	movq	.LC4(%rip), %rax
	.loc 1 293 0
	movsd	.LC6(%rip), %xmm0
	.loc 1 290 0
	movq	%rax, (%rdi)
.LVL21:
	movq	.LC5(%rip), %rax
	movq	%rax, 8(%rdi)
.LVL22:
	.loc 1 293 0
	ret
	.cfi_endproc
.LFE9:
	.size	find_gradient_h, .-find_gradient_h
	.p2align 4,,15
	.globl	find_dd_grad_f
	.type	find_dd_grad_f, @function
find_dd_grad_f:
.LFB10:
	.loc 1 296 0
	.cfi_startproc
.LVL23:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 297 0
	movsd	.LC2(%rip), %xmm2
	movsd	P(%rip), %xmm3
	movapd	%xmm2, %xmm5
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm5
.LVL24:
	.loc 1 298 0
	movsd	Q(%rip), %xmm3
	addsd	%xmm2, %xmm3
	.loc 1 299 0
	movapd	%xmm5, %xmm4
	subsd	%xmm0, %xmm4
	.loc 1 298 0
	divsd	%xmm3, %xmm2
.LVL25:
	.loc 1 300 0
	movapd	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
.LVL26:
	.loc 1 303 0
	movapd	%xmm4, %xmm1
.LVL27:
	mulsd	%xmm4, %xmm1
	movapd	%xmm3, %xmm0
.LVL28:
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	sqrtsd	%xmm1, %xmm6
	ja	.L16
.LVL29:
.L14:
	.loc 1 305 0
	movq	.LC7(%rip), %xmm0
	movapd	%xmm5, %xmm1
	xorpd	%xmm0, %xmm1
	.loc 1 306 0
	xorpd	%xmm2, %xmm0
	.loc 1 305 0
	mulsd	%xmm5, %xmm1
	.loc 1 306 0
	mulsd	%xmm2, %xmm0
	.loc 1 305 0
	mulsd	%xmm4, %xmm1
	.loc 1 306 0
	mulsd	%xmm3, %xmm0
	.loc 1 305 0
	divsd	%xmm6, %xmm1
	.loc 1 306 0
	divsd	%xmm6, %xmm0
	.loc 1 305 0
	movsd	%xmm1, (%rdi)
	.loc 1 306 0
	movsd	%xmm0, 8(%rdi)
	.loc 1 307 0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL30:
.L16:
	.cfi_restore_state
	.loc 1 303 0
	movapd	%xmm1, %xmm0
	movq	%rdi, 40(%rsp)
	movsd	%xmm6, 32(%rsp)
	movsd	%xmm3, 24(%rsp)
	movsd	%xmm4, 16(%rsp)
	movsd	%xmm2, 8(%rsp)
	movsd	%xmm5, (%rsp)
	call	sqrt@PLT
.LVL31:
	movq	40(%rsp), %rdi
	movsd	32(%rsp), %xmm6
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm4
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm5
	jmp	.L14
	.cfi_endproc
.LFE10:
	.size	find_dd_grad_f, .-find_dd_grad_f
	.p2align 4,,15
	.globl	make_orthogonal
	.type	make_orthogonal, @function
make_orthogonal:
.LFB11:
	.loc 1 310 0
	.cfi_startproc
.LVL32:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 316 0
	pxor	%xmm4, %xmm4
	movsd	(%rdi), %xmm2
	movsd	(%rsi), %xmm0
	movapd	%xmm2, %xmm3
	movsd	8(%rdi), %xmm1
	movsd	8(%rsi), %xmm5
	mulsd	%xmm0, %xmm3
	mulsd	%xmm1, %xmm5
	addsd	%xmm4, %xmm3
.LVL33:
	addsd	%xmm5, %xmm3
.LVL34:
	.loc 1 318 0
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm2
	.loc 1 319 0
	movapd	%xmm2, %xmm0
	.loc 1 318 0
	movsd	%xmm2, (%rdi)
	.loc 1 319 0
	mulsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm5
	.loc 1 318 0
	movsd	8(%rsi), %xmm0
	.loc 1 319 0
	addsd	%xmm4, %xmm5
.LVL35:
	.loc 1 318 0
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm1
	.loc 1 319 0
	movapd	%xmm1, %xmm0
	.loc 1 318 0
	movsd	%xmm1, 8(%rdi)
	.loc 1 319 0
	mulsd	%xmm1, %xmm0
	addsd	%xmm5, %xmm0
.LVL36:
	ucomisd	%xmm0, %xmm4
	.loc 1 321 0
	sqrtsd	%xmm0, %xmm5
	ja	.L22
.LVL37:
.L18:
	.loc 1 323 0
	divsd	%xmm5, %xmm1
	divsd	%xmm5, %xmm2
	movsd	%xmm1, 8(%rdi)
	.loc 1 325 0
	mulsd	%xmm3, %xmm3
	movsd	.LC2(%rip), %xmm0
	.loc 1 326 0
	pxor	%xmm1, %xmm1
	.loc 1 323 0
	movsd	%xmm2, (%rdi)
.LVL38:
	.loc 1 325 0
	subsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.L17
	.loc 1 328 0
	sqrtsd	%xmm0, %xmm1
	ja	.L23
.LVL39:
.L17:
	.loc 1 329 0
	movapd	%xmm1, %xmm0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL40:
.L22:
	.cfi_restore_state
	movq	%rdi, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm5, (%rsp)
	movsd	%xmm4, 24(%rsp)
	.loc 1 321 0
	call	sqrt@PLT
.LVL41:
	movq	16(%rsp), %rdi
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm5
	movsd	(%rdi), %xmm2
	movsd	8(%rdi), %xmm1
	jmp	.L18
.LVL42:
.L23:
	movsd	%xmm1, (%rsp)
	.loc 1 328 0
	call	sqrt@PLT
.LVL43:
	movsd	(%rsp), %xmm1
	jmp	.L17
	.cfi_endproc
.LFE11:
	.size	make_orthogonal, .-make_orthogonal
	.p2align 4,,15
	.globl	optimize_node
	.type	optimize_node, @function
optimize_node:
.LFB4:
	.loc 1 171 0
	.cfi_startproc
.LVL44:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$136, %rsp
	.cfi_def_cfa_offset 176
	.loc 1 171 0
	movsd	%xmm0, (%rsp)
	leaq	80(%rsp), %rbx
	leaq	64(%rsp), %r12
	movsd	%xmm1, 8(%rsp)
	leaq	48(%rsp), %rbp
	leaq	96(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movsd	Q(%rip), %xmm3
	movsd	P(%rip), %xmm2
.LVL45:
	.p2align 4,,10
	.p2align 3
.L25:
.LBB12:
.LBB13:
	.loc 1 244 0
	movsd	.LC1(%rip), %xmm0
	movapd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm1
.LBE13:
.LBE12:
	.loc 1 188 0
	movapd	%xmm1, %xmm0
	andpd	.LC8(%rip), %xmm0
	ucomisd	.LC9(%rip), %xmm0
	ja	.L42
.L26:
.LBB14:
.LBB15:
	.loc 1 239 0
	movapd	%xmm3, %xmm0
	movapd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	subsd	.LC0(%rip), %xmm1
.LBE15:
.LBE14:
	.loc 1 197 0
	ucomisd	.LC9(%rip), %xmm1
	ja	.L43
.L28:
	.loc 1 207 0
	movsd	8(%rsp), %xmm1
	movq	%rbp, %rdi
	movsd	(%rsp), %xmm0
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm3, 24(%rsp)
	call	find_gradient_f
.LVL46:
	.loc 1 208 0
	movsd	8(%rsp), %xmm1
	movq	%r13, %rdi
	.loc 1 207 0
	movsd	%xmm0, 16(%rsp)
.LVL47:
	.loc 1 208 0
	movsd	(%rsp), %xmm0
.LVL48:
	call	find_dd_grad_f
.LVL49:
	.loc 1 211 0
	movsd	48(%rsp), %xmm0
	.loc 1 213 0
	movq	%rbx, %rdi
	.loc 1 211 0
	pxor	%xmm1, %xmm1
	mulsd	96(%rsp), %xmm0
	.loc 1 212 0
	movsd	16(%rsp), %xmm4
	.loc 1 211 0
	addsd	%xmm0, %xmm1
.LVL50:
	movsd	56(%rsp), %xmm0
	mulsd	104(%rsp), %xmm0
	addsd	%xmm1, %xmm0
.LVL51:
	.loc 1 212 0
	andpd	.LC8(%rip), %xmm0
.LVL52:
	divsd	%xmm0, %xmm4
.LVL53:
	movsd	%xmm4, 16(%rsp)
.LVL54:
	.loc 1 213 0
	call	find_gradient_h
.LVL55:
	.loc 1 214 0
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	make_orthogonal
.LVL56:
	movsd	16(%rsp), %xmm1
	.loc 1 215 0
	movq	%r12, %rdi
	.loc 1 214 0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)
.LVL57:
	.loc 1 215 0
	call	find_gradient_g
.LVL58:
	.loc 1 218 0
	movsd	48(%rsp), %xmm5
	movsd	64(%rsp), %xmm6
	pxor	%xmm4, %xmm4
	mulsd	%xmm5, %xmm6
	movsd	56(%rsp), %xmm0
	.loc 1 219 0
	pxor	%xmm7, %xmm7
	movsd	16(%rsp), %xmm1
	.loc 1 218 0
	addsd	%xmm6, %xmm4
.LVL59:
	movsd	72(%rsp), %xmm6
	.loc 1 219 0
	movsd	24(%rsp), %xmm3
	.loc 1 218 0
	mulsd	%xmm0, %xmm6
	.loc 1 219 0
	movsd	32(%rsp), %xmm2
	.loc 1 218 0
	addsd	%xmm4, %xmm6
.LVL60:
	.loc 1 219 0
	ucomisd	%xmm7, %xmm6
	jbe	.L30
.LBB16:
.LBB17:
	.loc 1 239 0
	movapd	%xmm3, %xmm7
	movapd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm7
	mulsd	%xmm2, %xmm4
	addsd	%xmm7, %xmm4
	subsd	.LC0(%rip), %xmm4
.LBE17:
.LBE16:
	.loc 1 220 0
	xorpd	.LC7(%rip), %xmm4
	divsd	%xmm6, %xmm4
.LVL61:
	.loc 1 222 0
	minsd	%xmm1, %xmm4
.LVL62:
	movapd	%xmm4, %xmm1
.L30:
.LVL63:
	.loc 1 224 0
	mulsd	%xmm1, %xmm5
	.loc 1 229 0
	movq	%rbp, %rdi
	.loc 1 225 0
	mulsd	%xmm0, %xmm1
.LVL64:
.LBB18:
.LBB19:
	.loc 1 244 0
	movsd	.LC1(%rip), %xmm0
.LBE19:
.LBE18:
	.loc 1 224 0
	addsd	%xmm5, %xmm2
	.loc 1 225 0
	addsd	%xmm1, %xmm3
	.loc 1 229 0
	movsd	8(%rsp), %xmm1
.LBB24:
.LBB20:
	.loc 1 244 0
	movapd	%xmm2, %xmm4
.LBE20:
.LBE24:
	.loc 1 224 0
	movsd	%xmm2, P(%rip)
.LBB25:
.LBB21:
	.loc 1 244 0
	mulsd	%xmm3, %xmm0
.LBE21:
.LBE25:
	.loc 1 225 0
	movsd	%xmm3, Q(%rip)
.LBB26:
.LBB22:
	.loc 1 244 0
	movsd	%xmm3, 32(%rsp)
	movsd	%xmm2, 24(%rsp)
	subsd	%xmm0, %xmm4
.LBE22:
.LBE26:
	.loc 1 229 0
	movsd	(%rsp), %xmm0
.LBB27:
.LBB23:
	.loc 1 244 0
	movsd	%xmm4, 16(%rsp)
.LBE23:
.LBE27:
	.loc 1 229 0
	call	find_gradient_f
.LVL65:
	.loc 1 230 0
	movq	%rbx, %rdi
	call	find_gradient_h
.LVL66:
	.loc 1 232 0
	movsd	16(%rsp), %xmm4
	.loc 1 234 0
	movsd	24(%rsp), %xmm2
	.loc 1 232 0
	andpd	.LC8(%rip), %xmm4
	.loc 1 234 0
	movsd	32(%rsp), %xmm3
	ucomisd	.LC9(%rip), %xmm4
	ja	.L25
.LBB28:
.LBB29:
	.loc 1 239 0
	movapd	%xmm3, %xmm1
	movapd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	subsd	.LC0(%rip), %xmm0
.LBE29:
.LBE28:
	.loc 1 232 0
	ucomisd	.LC9(%rip), %xmm0
	ja	.L25
	.loc 1 233 0 discriminator 1
	andpd	.LC8(%rip), %xmm0
	.loc 1 232 0 discriminator 1
	ucomisd	.LC9(%rip), %xmm0
	jbe	.L24
	.loc 1 234 0
	movsd	48(%rsp), %xmm0
	movsd	56(%rsp), %xmm1
	mulsd	88(%rsp), %xmm0
	mulsd	80(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	andpd	.LC8(%rip), %xmm0
	.loc 1 233 0
	ucomisd	.LC9(%rip), %xmm0
	ja	.L25
.L24:
	.loc 1 235 0
	movq	120(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L44
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
.LVL67:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.LVL68:
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
	.loc 1 198 0
	movq	%r12, %rdi
	movsd	%xmm2, 40(%rsp)
	movsd	%xmm3, 32(%rsp)
	movsd	%xmm1, 24(%rsp)
	call	find_gradient_g
.LVL69:
	.loc 1 199 0
	movq	%rbx, %rdi
	.loc 1 198 0
	movsd	%xmm0, 16(%rsp)
.LVL70:
	.loc 1 199 0
	call	find_gradient_h
.LVL71:
	.loc 1 200 0
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	make_orthogonal
.LVL72:
	mulsd	16(%rsp), %xmm0
.LVL73:
	.loc 1 201 0
	movsd	24(%rsp), %xmm1
	.loc 1 202 0
	movsd	40(%rsp), %xmm2
	.loc 1 203 0
	movsd	32(%rsp), %xmm3
	.loc 1 201 0
	divsd	%xmm0, %xmm1
.LVL74:
	.loc 1 202 0
	movsd	64(%rsp), %xmm0
.LVL75:
	mulsd	%xmm1, %xmm0
	.loc 1 203 0
	mulsd	72(%rsp), %xmm1
.LVL76:
	.loc 1 202 0
	subsd	%xmm0, %xmm2
	.loc 1 203 0
	subsd	%xmm1, %xmm3
	.loc 1 202 0
	movsd	%xmm2, P(%rip)
	.loc 1 203 0
	movsd	%xmm3, Q(%rip)
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L42:
	.loc 1 189 0
	movq	%rbx, %rdi
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm3, 16(%rsp)
	call	find_gradient_h
.LVL77:
	.loc 1 190 0
	divsd	%xmm0, %xmm1
.LVL78:
	.loc 1 191 0
	movsd	80(%rsp), %xmm0
.LVL79:
	movsd	24(%rsp), %xmm2
	.loc 1 192 0
	movsd	16(%rsp), %xmm3
	.loc 1 191 0
	mulsd	%xmm1, %xmm0
	.loc 1 192 0
	mulsd	88(%rsp), %xmm1
.LVL80:
	.loc 1 191 0
	subsd	%xmm0, %xmm2
	.loc 1 192 0
	subsd	%xmm1, %xmm3
	.loc 1 191 0
	movsd	%xmm2, P(%rip)
	.loc 1 192 0
	movsd	%xmm3, Q(%rip)
	jmp	.L26
.LVL81:
.L44:
	.loc 1 235 0
	call	__stack_chk_fail@PLT
.LVL82:
	.cfi_endproc
.LFE4:
	.size	optimize_node, .-optimize_node
	.p2align 4,,15
	.globl	Compute_Leaf
	.type	Compute_Leaf, @function
Compute_Leaf:
.LFB3:
	.loc 1 153 0
	.cfi_startproc
.LVL83:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 154 0
	movsd	(%rdi), %xmm2
	movsd	%xmm2, P(%rip)
	.loc 1 155 0
	movsd	8(%rdi), %xmm2
	movsd	%xmm2, Q(%rip)
	.loc 1 157 0
	call	optimize_node
.LVL84:
	.loc 1 159 0
	pxor	%xmm0, %xmm0
	movsd	P(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.L46
	movsd	Q(%rip), %xmm0
.L47:
	.loc 1 163 0
	movsd	%xmm1, (%rbx)
	.loc 1 165 0
	movq	(%rbx), %rdx
	.loc 1 164 0
	movsd	%xmm0, 8(%rbx)
	.loc 1 165 0
	movq	8(%rbx), %rax
	movq	%rdx, 8(%rsp)
	movsd	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm1
	.loc 1 166 0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL85:
	ret
.LVL86:
	.p2align 4,,10
	.p2align 3
.L46:
	.cfi_restore_state
	.loc 1 160 0
	movq	$0x000000000, P(%rip)
	.loc 1 161 0
	movq	$0x000000000, Q(%rip)
	pxor	%xmm1, %xmm1
	jmp	.L47
	.cfi_endproc
.LFE3:
	.size	Compute_Leaf, .-Compute_Leaf
	.p2align 4,,15
	.globl	Compute_Branch
	.type	Compute_Branch, @function
Compute_Branch:
.LFB2:
	.loc 1 102 0
	.cfi_startproc
.LVL87:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 114 0
	movq	48(%rdi), %r13
	.loc 1 111 0
	movsd	40(%rdi), %xmm6
	movsd	32(%rdi), %xmm4
	movapd	%xmm6, %xmm5
	.loc 1 115 0
	testq	%r13, %r13
	.loc 1 111 0
	mulsd	%xmm1, %xmm5
	divsd	%xmm4, %xmm5
	.loc 1 112 0
	mulsd	%xmm0, %xmm4
	.loc 1 111 0
	addsd	%xmm0, %xmm5
	.loc 1 112 0
	divsd	%xmm6, %xmm4
	.loc 1 111 0
	mulsd	16(%rdi), %xmm5
	.loc 1 112 0
	addsd	%xmm1, %xmm4
	.loc 1 111 0
	addsd	%xmm2, %xmm5
	.loc 1 112 0
	mulsd	24(%rdi), %xmm4
	.loc 1 111 0
	movsd	%xmm5, 16(%rsp)
.LVL88:
	.loc 1 112 0
	addsd	%xmm3, %xmm4
	movsd	%xmm4, 24(%rsp)
.LVL89:
	.loc 1 115 0
	jne	.L60
.LVL90:
.L50:
	.loc 1 102 0 discriminator 3
	pxor	%xmm3, %xmm3
	leaq	56(%rbp), %rbx
	leaq	152(%rbp), %r12
	pxor	%xmm2, %xmm2
	.p2align 4,,10
	.p2align 3
.L51:
	.loc 1 124 0 discriminator 3
	movq	(%rbx), %rdi
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	addq	$8, %rbx
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm2, (%rsp)
.LVL91:
	call	Compute_Leaf
.LVL92:
	.loc 1 125 0 discriminator 3
	movsd	(%rsp), %xmm2
	.loc 1 122 0 discriminator 3
	cmpq	%rbx, %r12
	.loc 1 126 0 discriminator 3
	movsd	8(%rsp), %xmm3
	.loc 1 125 0 discriminator 3
	addsd	%xmm0, %xmm2
.LVL93:
	.loc 1 126 0 discriminator 3
	addsd	%xmm1, %xmm3
.LVL94:
	.loc 1 122 0 discriminator 3
	jne	.L51
	.loc 1 128 0
	testq	%r13, %r13
	je	.L52
	.loc 1 129 0
	addsd	32(%rsp), %xmm2
.LVL95:
	.loc 1 130 0
	addsd	40(%rsp), %xmm3
.LVL96:
	.loc 1 129 0
	movsd	%xmm2, 0(%rbp)
	.loc 1 130 0
	movsd	%xmm3, 8(%rbp)
.L53:
	.loc 1 137 0
	movsd	32(%rbp), %xmm7
	movsd	40(%rbp), %xmm8
	movapd	%xmm7, %xmm9
	.loc 1 138 0
	movapd	%xmm7, %xmm6
	.loc 1 137 0
	movapd	%xmm8, %xmm0
.LVL97:
	mulsd	%xmm7, %xmm9
	.loc 1 138 0
	movapd	%xmm8, %xmm5
	.loc 1 137 0
	mulsd	%xmm8, %xmm0
	.loc 1 138 0
	addsd	%xmm7, %xmm6
	addsd	%xmm8, %xmm5
	movapd	%xmm8, %xmm1
.LVL98:
	.loc 1 139 0
	movapd	%xmm8, %xmm4
	.loc 1 140 0
	movapd	%xmm7, %xmm10
	pxor	%xmm11, %xmm11
	.loc 1 137 0
	addsd	%xmm0, %xmm9
.LVL99:
	.loc 1 138 0
	movapd	%xmm8, %xmm0
	mulsd	%xmm5, %xmm1
	mulsd	%xmm6, %xmm0
	.loc 1 139 0
	mulsd	%xmm2, %xmm4
	.loc 1 140 0
	mulsd	%xmm2, %xmm10
	.loc 1 138 0
	mulsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm0
	subsd	%xmm1, %xmm0
	.loc 1 139 0
	movapd	%xmm7, %xmm1
	mulsd	%xmm3, %xmm1
	.loc 1 138 0
	subsd	%xmm7, %xmm0
.LVL100:
	.loc 1 139 0
	subsd	%xmm4, %xmm1
.LVL101:
	.loc 1 141 0
	movapd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm0
.LVL102:
	.loc 1 140 0
	mulsd	%xmm1, %xmm1
.LVL103:
	.loc 1 141 0
	xorpd	.LC7(%rip), %xmm4
.LVL104:
	.loc 1 140 0
	addsd	%xmm10, %xmm1
.LVL105:
	.loc 1 141 0
	movsd	.LC10(%rip), %xmm10
	mulsd	%xmm9, %xmm10
	mulsd	%xmm10, %xmm1
.LVL106:
	subsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm11
	sqrtsd	%xmm0, %xmm1
	ja	.L61
.LVL107:
.L54:
	subsd	%xmm1, %xmm4
	addsd	%xmm9, %xmm9
	movapd	%xmm4, %xmm1
	divsd	%xmm9, %xmm1
.LVL108:
	.loc 1 142 0
	movapd	%xmm1, %xmm0
	.loc 1 143 0
	movsd	%xmm1, 0(%rbp)
	.loc 1 145 0
	mulsd	%xmm6, %xmm1
.LVL109:
	.loc 1 150 0
	movq	0(%rbp), %rdx
	.loc 1 142 0
	subsd	%xmm2, %xmm0
.LVL110:
	.loc 1 150 0
	movq	%rdx, (%rsp)
	.loc 1 142 0
	mulsd	%xmm8, %xmm0
	divsd	%xmm7, %xmm0
	addsd	%xmm0, %xmm3
	.loc 1 147 0
	movsd	.LC2(%rip), %xmm0
	subsd	%xmm1, %xmm0
	.loc 1 142 0
	movsd	%xmm3, 8(%rbp)
	.loc 1 146 0
	mulsd	%xmm5, %xmm3
.LVL111:
	.loc 1 150 0
	movq	8(%rbp), %rax
	.loc 1 147 0
	subsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm1
.LVL112:
	.loc 1 148 0
	divsd	%xmm0, %xmm3
.LVL113:
	.loc 1 147 0
	movsd	%xmm1, 16(%rbp)
	.loc 1 150 0
	movsd	(%rsp), %xmm0
	movq	%rax, (%rsp)
	movsd	(%rsp), %xmm1
	.loc 1 148 0
	movsd	%xmm3, 24(%rbp)
	.loc 1 151 0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL114:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL115:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL116:
	ret
.LVL117:
	.p2align 4,,10
	.p2align 3
.L52:
	.cfi_restore_state
	.loc 1 132 0
	movsd	%xmm2, 0(%rbp)
	.loc 1 133 0
	movsd	%xmm3, 8(%rbp)
	jmp	.L53
.LVL118:
	.p2align 4,,10
	.p2align 3
.L60:
	.loc 1 116 0
	movapd	%xmm4, %xmm3
.LVL119:
	movq	%r13, %rdi
.LVL120:
	movapd	%xmm5, %xmm2
.LVL121:
	call	Compute_Branch
.LVL122:
	movsd	%xmm0, 32(%rsp)
	movsd	%xmm1, 40(%rsp)
	jmp	.L50
.LVL123:
.L61:
	movsd	%xmm9, 16(%rsp)
.LVL124:
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm4, (%rsp)
	.loc 1 141 0
	call	sqrt@PLT
.LVL125:
	movsd	40(%rbp), %xmm8
	movsd	32(%rbp), %xmm7
	movapd	%xmm8, %xmm5
	movsd	8(%rbp), %xmm3
	movapd	%xmm7, %xmm6
	movsd	0(%rbp), %xmm2
	addsd	%xmm8, %xmm5
	addsd	%xmm7, %xmm6
	movsd	16(%rsp), %xmm9
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm4
	jmp	.L54
	.cfi_endproc
.LFE2:
	.size	Compute_Branch, .-Compute_Branch
	.p2align 4,,15
	.globl	Compute_Lateral
	.type	Compute_Lateral, @function
Compute_Lateral:
.LFB1:
	.loc 1 58 0
	.cfi_startproc
.LVL126:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm6
	movq	%rdi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 66 0
	movsd	40(%rdi), %xmm0
.LVL127:
	movsd	32(%rdi), %xmm4
	movapd	%xmm0, %xmm5
	mulsd	%xmm1, %xmm5
	divsd	%xmm4, %xmm5
	.loc 1 67 0
	mulsd	%xmm6, %xmm4
	.loc 1 66 0
	addsd	%xmm6, %xmm5
	.loc 1 67 0
	divsd	%xmm0, %xmm4
	.loc 1 66 0
	mulsd	16(%rdi), %xmm5
	.loc 1 67 0
	addsd	%xmm1, %xmm4
	.loc 1 66 0
	addsd	%xmm2, %xmm5
.LVL128:
	.loc 1 67 0
	mulsd	24(%rdi), %xmm4
	.loc 1 69 0
	movq	48(%rdi), %rdi
.LVL129:
	.loc 1 70 0
	testq	%rdi, %rdi
	.loc 1 67 0
	addsd	%xmm3, %xmm4
.LVL130:
	.loc 1 70 0
	jne	.L68
.LVL131:
	.loc 1 74 0
	movq	56(%rbx), %rdi
.LVL132:
	movapd	%xmm6, %xmm0
	movapd	%xmm4, %xmm3
.LVL133:
	movapd	%xmm5, %xmm2
.LVL134:
	call	Compute_Branch
.LVL135:
	movapd	%xmm1, %xmm6
.LVL136:
	.loc 1 80 0
	movsd	%xmm0, (%rbx)
	.loc 1 81 0
	movsd	%xmm1, 8(%rbx)
.LVL137:
.L65:
	.loc 1 85 0
	movsd	32(%rbx), %xmm7
	movsd	40(%rbx), %xmm1
.LVL138:
	movapd	%xmm7, %xmm8
	.loc 1 86 0
	movapd	%xmm7, %xmm5
	.loc 1 85 0
	movapd	%xmm1, %xmm2
	mulsd	%xmm7, %xmm8
	.loc 1 86 0
	movapd	%xmm1, %xmm4
	.loc 1 85 0
	mulsd	%xmm1, %xmm2
	.loc 1 86 0
	addsd	%xmm7, %xmm5
	addsd	%xmm1, %xmm4
	movapd	%xmm1, %xmm3
	.loc 1 87 0
	movapd	%xmm1, %xmm9
	.loc 1 88 0
	movapd	%xmm7, %xmm10
	.loc 1 85 0
	addsd	%xmm2, %xmm8
.LVL139:
	.loc 1 86 0
	movapd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm3
	mulsd	%xmm5, %xmm2
	.loc 1 87 0
	mulsd	%xmm0, %xmm9
	.loc 1 88 0
	mulsd	%xmm0, %xmm10
	.loc 1 86 0
	mulsd	%xmm0, %xmm3
	mulsd	%xmm6, %xmm2
	subsd	%xmm3, %xmm2
	.loc 1 87 0
	movapd	%xmm7, %xmm3
	mulsd	%xmm6, %xmm3
	.loc 1 86 0
	subsd	%xmm7, %xmm2
.LVL140:
	.loc 1 87 0
	subsd	%xmm9, %xmm3
.LVL141:
	.loc 1 88 0
	mulsd	%xmm3, %xmm3
.LVL142:
	movapd	%xmm3, %xmm9
.LVL143:
	.loc 1 89 0
	movapd	%xmm2, %xmm3
.LVL144:
	mulsd	%xmm2, %xmm2
.LVL145:
	.loc 1 88 0
	addsd	%xmm10, %xmm9
.LVL146:
	.loc 1 89 0
	movsd	.LC10(%rip), %xmm10
	xorpd	.LC7(%rip), %xmm3
.LVL147:
	mulsd	%xmm8, %xmm10
	mulsd	%xmm10, %xmm9
.LVL148:
	pxor	%xmm10, %xmm10
	subsd	%xmm9, %xmm2
	ucomisd	%xmm2, %xmm10
	sqrtsd	%xmm2, %xmm9
	ja	.L69
.LVL149:
.L64:
	subsd	%xmm9, %xmm3
	addsd	%xmm8, %xmm8
	divsd	%xmm8, %xmm3
	movapd	%xmm3, %xmm2
.LVL150:
	.loc 1 90 0
	subsd	%xmm0, %xmm3
	.loc 1 96 0
	movsd	.LC2(%rip), %xmm0
	.loc 1 91 0
	movsd	%xmm2, (%rbx)
	.loc 1 94 0
	mulsd	%xmm5, %xmm2
.LVL151:
	.loc 1 98 0
	movq	(%rbx), %rdx
	.loc 1 90 0
	mulsd	%xmm3, %xmm1
	.loc 1 98 0
	movq	%rdx, (%rsp)
	.loc 1 96 0
	subsd	%xmm2, %xmm0
	.loc 1 90 0
	divsd	%xmm7, %xmm1
	addsd	%xmm6, %xmm1
	movsd	%xmm1, 8(%rbx)
	.loc 1 95 0
	mulsd	%xmm4, %xmm1
.LVL152:
	.loc 1 98 0
	movq	8(%rbx), %rax
	.loc 1 96 0
	subsd	%xmm1, %xmm0
	.loc 1 97 0
	divsd	%xmm0, %xmm1
.LVL153:
	.loc 1 96 0
	divsd	%xmm0, %xmm2
.LVL154:
	.loc 1 97 0
	movsd	%xmm1, 24(%rbx)
	.loc 1 98 0
	movsd	(%rsp), %xmm0
	movq	%rax, (%rsp)
	movsd	(%rsp), %xmm1
	.loc 1 96 0
	movsd	%xmm2, 16(%rbx)
	.loc 1 99 0
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL155:
	ret
.LVL156:
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
	.loc 1 71 0
	movapd	%xmm6, %xmm0
	movsd	%xmm4, 40(%rsp)
	movapd	%xmm4, %xmm3
.LVL157:
	movsd	%xmm5, 32(%rsp)
	movapd	%xmm5, %xmm2
.LVL158:
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm6, 16(%rsp)
	call	Compute_Lateral
.LVL159:
	.loc 1 74 0
	movsd	16(%rsp), %xmm6
	movsd	40(%rsp), %xmm4
	movq	56(%rbx), %rdi
	movsd	32(%rsp), %xmm5
	movsd	24(%rsp), %xmm7
	movapd	%xmm4, %xmm3
	.loc 1 71 0
	movsd	%xmm0, (%rsp)
	.loc 1 74 0
	movapd	%xmm5, %xmm2
	movapd	%xmm6, %xmm0
	.loc 1 71 0
	movsd	%xmm1, 8(%rsp)
	.loc 1 74 0
	movapd	%xmm7, %xmm1
	call	Compute_Branch
.LVL160:
	.loc 1 78 0
	movsd	8(%rsp), %xmm6
	.loc 1 77 0
	addsd	(%rsp), %xmm0
.LVL161:
	.loc 1 78 0
	addsd	%xmm1, %xmm6
	.loc 1 77 0
	movsd	%xmm0, (%rbx)
	.loc 1 78 0
	movsd	%xmm6, 8(%rbx)
	jmp	.L65
.LVL162:
.L69:
	.loc 1 89 0
	movapd	%xmm2, %xmm0
.LVL163:
	movsd	%xmm8, 16(%rsp)
	movsd	%xmm9, 8(%rsp)
	movsd	%xmm3, (%rsp)
	call	sqrt@PLT
.LVL164:
	movsd	40(%rbx), %xmm1
	movsd	32(%rbx), %xmm7
	movapd	%xmm1, %xmm4
	movsd	8(%rbx), %xmm6
	movapd	%xmm7, %xmm5
	movsd	(%rbx), %xmm0
	addsd	%xmm1, %xmm4
	addsd	%xmm7, %xmm5
	movsd	16(%rsp), %xmm8
	movsd	8(%rsp), %xmm9
	movsd	(%rsp), %xmm3
	jmp	.L64
	.cfi_endproc
.LFE1:
	.size	Compute_Lateral, .-Compute_Lateral
	.p2align 4,,15
	.globl	Compute_Tree
	.type	Compute_Tree, @function
Compute_Tree:
.LFB0:
	.loc 1 36 0
	.cfi_startproc
.LVL165:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 44 0
	pxor	%xmm4, %xmm4
	.loc 1 36 0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	.loc 1 43 0
	pxor	%xmm5, %xmm5
	.loc 1 36 0
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	152(%rdi), %r12
	leaq	64(%rdi), %rbx
	movq	%rdi, %rbp
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
.LVL166:
	.p2align 4,,10
	.p2align 3
.L71:
	.loc 1 49 0 discriminator 3
	movsd	24(%rbp), %xmm3
	movq	(%rbx), %rdi
	addq	$8, %rbx
	movsd	16(%rbp), %xmm2
	movapd	%xmm3, %xmm1
	movsd	%xmm4, 8(%rsp)
	movapd	%xmm2, %xmm0
	movsd	%xmm5, (%rsp)
.LVL167:
	call	Compute_Lateral
.LVL168:
	.loc 1 50 0 discriminator 3
	movsd	(%rsp), %xmm5
	.loc 1 45 0 discriminator 3
	cmpq	%rbx, %r12
	.loc 1 51 0 discriminator 3
	movsd	8(%rsp), %xmm4
	.loc 1 50 0 discriminator 3
	addsd	%xmm0, %xmm5
.LVL169:
	.loc 1 51 0 discriminator 3
	addsd	%xmm1, %xmm4
.LVL170:
	.loc 1 45 0 discriminator 3
	jne	.L71
	.loc 1 53 0
	movsd	%xmm5, 0(%rbp)
	.loc 1 54 0
	movsd	%xmm4, 8(%rbp)
	.loc 1 55 0
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL171:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL172:
	ret
	.cfi_endproc
.LFE0:
	.size	Compute_Tree, .-Compute_Tree
	.data
	.align 8
	.type	Q, @object
	.size	Q, 8
Q:
	.long	0
	.long	1072693248
	.align 8
	.type	P, @object
	.size	P, 8
P:
	.long	0
	.long	1072693248
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	2576980378
	.long	1072273817
	.align 8
.LC1:
	.long	0
	.long	1075052544
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	1632728604
	.long	1070144085
	.align 8
.LC5:
	.long	3114652579
	.long	-1074831126
	.align 8
.LC6:
	.long	1595027446
	.long	1075078501
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC7:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC8:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC9:
	.long	2696277389
	.long	1051772663
	.align 8
.LC10:
	.long	0
	.long	1074790400
	.text
.Letext0:
	.file 2 "../olden/power/src/power.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbd0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0xc
	.long	.LASF66
	.long	.LASF67
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF10
	.byte	0x10
	.byte	0x2
	.byte	0x11
	.long	0x55
	.uleb128 0x4
	.string	"P"
	.byte	0x2
	.byte	0x12
	.long	0x2d
	.byte	0
	.uleb128 0x4
	.string	"Q"
	.byte	0x2
	.byte	0x13
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF23
	.byte	0x2
	.byte	0x14
	.long	0x34
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF11
	.byte	0x98
	.byte	0x2
	.byte	0x32
	.long	0x105
	.uleb128 0x4
	.string	"D"
	.byte	0x2
	.byte	0x33
	.long	0x55
	.byte	0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0x34
	.long	0x2d
	.byte	0x10
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x35
	.long	0x2d
	.byte	0x18
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0x36
	.long	0x55
	.byte	0x20
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0x37
	.long	0x2d
	.byte	0x30
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0x38
	.long	0x2d
	.byte	0x38
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.byte	0x39
	.long	0x105
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x115
	.long	0x115
	.uleb128 0x9
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x11b
	.uleb128 0x3
	.long	.LASF18
	.byte	0x40
	.byte	0x2
	.byte	0x3c
	.long	0x176
	.uleb128 0x4
	.string	"D"
	.byte	0x2
	.byte	0x3d
	.long	0x55
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0x3e
	.long	0x2d
	.byte	0x10
	.uleb128 0x7
	.long	.LASF20
	.byte	0x2
	.byte	0x3f
	.long	0x2d
	.byte	0x18
	.uleb128 0x4
	.string	"R"
	.byte	0x2
	.byte	0x40
	.long	0x2d
	.byte	0x20
	.uleb128 0x4
	.string	"X"
	.byte	0x2
	.byte	0x41
	.long	0x2d
	.byte	0x28
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.byte	0x42
	.long	0x115
	.byte	0x30
	.uleb128 0x7
	.long	.LASF22
	.byte	0x2
	.byte	0x43
	.long	0x1e2
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x2
	.byte	0x3a
	.long	0x181
	.uleb128 0xa
	.byte	0x8
	.long	0xa6
	.uleb128 0x3
	.long	.LASF22
	.byte	0x98
	.byte	0x2
	.byte	0x46
	.long	0x1e2
	.uleb128 0x4
	.string	"D"
	.byte	0x2
	.byte	0x47
	.long	0x55
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0x48
	.long	0x2d
	.byte	0x10
	.uleb128 0x7
	.long	.LASF20
	.byte	0x2
	.byte	0x49
	.long	0x2d
	.byte	0x18
	.uleb128 0x4
	.string	"R"
	.byte	0x2
	.byte	0x4a
	.long	0x2d
	.byte	0x20
	.uleb128 0x4
	.string	"X"
	.byte	0x2
	.byte	0x4b
	.long	0x2d
	.byte	0x28
	.uleb128 0x7
	.long	.LASF25
	.byte	0x2
	.byte	0x4c
	.long	0x1e2
	.byte	0x30
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.byte	0x4d
	.long	0x1f3
	.byte	0x38
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x187
	.uleb128 0x5
	.long	.LASF27
	.byte	0x2
	.byte	0x44
	.long	0x115
	.uleb128 0x8
	.long	0x203
	.long	0x203
	.uleb128 0x9
	.long	0x75
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x209
	.uleb128 0x3
	.long	.LASF28
	.byte	0x20
	.byte	0x2
	.byte	0x50
	.long	0x238
	.uleb128 0x4
	.string	"D"
	.byte	0x2
	.byte	0x51
	.long	0x55
	.byte	0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x2
	.byte	0x52
	.long	0x2d
	.byte	0x10
	.uleb128 0x7
	.long	.LASF30
	.byte	0x2
	.byte	0x53
	.long	0x2d
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF31
	.byte	0x2
	.byte	0x4e
	.long	0x1e2
	.uleb128 0x5
	.long	.LASF32
	.byte	0x2
	.byte	0x54
	.long	0x203
	.uleb128 0xb
	.string	"P"
	.byte	0x1
	.byte	0x13
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	P
	.uleb128 0xb
	.string	"Q"
	.byte	0x1
	.byte	0x14
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	Q
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.value	0x135
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ff
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.value	0x135
	.long	0x2ff
	.long	.LLST17
	.uleb128 0xd
	.long	.LASF34
	.byte	0x1
	.value	0x135
	.long	0x2ff
	.long	.LLST18
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.value	0x137
	.long	0x8a
	.long	.LLST19
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.value	0x138
	.long	0x2d
	.long	.LLST20
	.uleb128 0xf
	.long	.LASF36
	.byte	0x1
	.value	0x139
	.long	0x2d
	.long	.LLST21
	.uleb128 0x10
	.quad	.LVL41
	.long	0xbbf
	.uleb128 0x10
	.quad	.LVL43
	.long	0xbbf
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2d
	.uleb128 0x11
	.long	.LASF51
	.byte	0x1
	.value	0x127
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cd
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.value	0x127
	.long	0x2d
	.long	.LLST9
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.value	0x127
	.long	0x2d
	.long	.LLST10
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.value	0x127
	.long	0x2ff
	.long	.LLST11
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.value	0x129
	.long	0x2d
	.long	.LLST12
	.uleb128 0xf
	.long	.LASF39
	.byte	0x1
	.value	0x12a
	.long	0x2d
	.long	.LLST13
	.uleb128 0xf
	.long	.LASF40
	.byte	0x1
	.value	0x12b
	.long	0x2d
	.long	.LLST14
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.value	0x12c
	.long	0x2d
	.long	.LLST15
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.value	0x12d
	.long	0x2d
	.long	.LLST16
	.uleb128 0x12
	.quad	.LVL31
	.long	0xbbf
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x17
	.byte	0x91
	.sleb128 -48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x91
	.sleb128 -48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF44
	.byte	0x1
	.value	0x117
	.long	0x2d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x421
	.uleb128 0x14
	.long	.LASF45
	.byte	0x1
	.value	0x117
	.long	0x2ff
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.value	0x119
	.long	0x8a
	.long	.LLST8
	.uleb128 0x15
	.long	.LASF46
	.byte	0x1
	.value	0x11a
	.long	0x2d
	.byte	0x8
	.long	0x5f122ff6
	.long	0x40146565
	.byte	0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x1
	.value	0x107
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x47f
	.uleb128 0xd
	.long	.LASF45
	.byte	0x1
	.value	0x107
	.long	0x2ff
	.long	.LLST5
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.value	0x109
	.long	0x8a
	.long	.LLST6
	.uleb128 0xf
	.long	.LASF46
	.byte	0x1
	.value	0x10a
	.long	0x2d
	.long	.LLST7
	.uleb128 0x10
	.quad	.LVL19
	.long	0xbbf
	.byte	0
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.byte	0xf7
	.long	0x2d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f7
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0xf7
	.long	0x2d
	.long	.LLST0
	.uleb128 0x17
	.long	.LASF30
	.byte	0x1
	.byte	0xf7
	.long	0x2d
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xf7
	.long	0x2ff
	.long	.LLST2
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xf9
	.long	0x8a
	.long	.LLST3
	.uleb128 0x19
	.long	.LASF46
	.byte	0x1
	.byte	0xfa
	.long	0x2d
	.long	.LLST4
	.uleb128 0x10
	.quad	.LVL10
	.long	0xbbf
	.byte	0
	.uleb128 0x1a
	.long	.LASF49
	.byte	0x1
	.byte	0xf2
	.long	0x2d
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF50
	.byte	0x1
	.byte	0xed
	.long	0x2d
	.byte	0x1
	.uleb128 0x1b
	.long	.LASF52
	.byte	0x1
	.byte	0xaa
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x79c
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0xaa
	.long	0x2d
	.long	.LLST22
	.uleb128 0x17
	.long	.LASF30
	.byte	0x1
	.byte	0xaa
	.long	0x2d
	.long	.LLST23
	.uleb128 0x1c
	.string	"g"
	.byte	0x1
	.byte	0xac
	.long	0x2d
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.byte	0xad
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF53
	.byte	0x1
	.byte	0xaf
	.long	0x79c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1d
	.long	.LASF54
	.byte	0x1
	.byte	0xb0
	.long	0x79c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.byte	0xb1
	.long	0x79c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x1
	.byte	0xb2
	.long	0x79c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF46
	.byte	0x1
	.byte	0xb3
	.long	0x2d
	.long	.LLST24
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.long	0x8a
	.long	.LLST25
	.uleb128 0x19
	.long	.LASF35
	.byte	0x1
	.byte	0xb6
	.long	0x2d
	.long	.LLST26
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0xb7
	.long	0x2d
	.long	.LLST27
	.uleb128 0x1e
	.long	0x4f7
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x1
	.byte	0xbb
	.uleb128 0x1e
	.long	0x503
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x1
	.byte	0xc4
	.uleb128 0x1e
	.long	0x503
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0xdc
	.uleb128 0x1f
	.long	0x4f7
	.quad	.LBB18
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe3
	.uleb128 0x1e
	.long	0x503
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.byte	0xe4
	.uleb128 0x20
	.quad	.LVL46
	.long	0x47f
	.long	0x66c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -168
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL49
	.long	0x305
	.long	0x697
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -168
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL55
	.long	0x3cd
	.long	0x6af
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL56
	.long	0x274
	.long	0x6cd
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL58
	.long	0x421
	.long	0x6e5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL65
	.long	0x47f
	.long	0x710
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -168
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL66
	.long	0x3cd
	.long	0x728
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL69
	.long	0x421
	.long	0x740
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL71
	.long	0x3cd
	.long	0x758
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL72
	.long	0x274
	.long	0x776
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL77
	.long	0x3cd
	.long	0x78e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.quad	.LVL82
	.long	0xbca
	.byte	0
	.uleb128 0x8
	.long	0x2d
	.long	0x7ac
	.uleb128 0x9
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x99
	.long	0x55
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x819
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.byte	0x99
	.long	0x243
	.long	.LLST28
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x99
	.long	0x2d
	.long	.LLST29
	.uleb128 0x17
	.long	.LASF30
	.byte	0x1
	.byte	0x99
	.long	0x2d
	.long	.LLST30
	.uleb128 0x12
	.quad	.LVL84
	.long	0x50f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0x65
	.long	0x55
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x97c
	.uleb128 0x21
	.string	"br"
	.byte	0x1
	.byte	0x65
	.long	0x238
	.long	.LLST31
	.uleb128 0x17
	.long	.LASF12
	.byte	0x1
	.byte	0x65
	.long	0x2d
	.long	.LLST32
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.byte	0x65
	.long	0x2d
	.long	.LLST33
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.long	.LLST34
	.uleb128 0x17
	.long	.LASF30
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.long	.LLST35
	.uleb128 0x1c
	.string	"a2"
	.byte	0x1
	.byte	0x67
	.long	0x55
	.uleb128 0x18
	.string	"tmp"
	.byte	0x1
	.byte	0x67
	.long	0x55
	.long	.LLST36
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.byte	0x68
	.long	0x2d
	.long	.LLST37
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.byte	0x68
	.long	0x2d
	.long	.LLST38
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.byte	0x69
	.long	0x2d
	.long	.LLST39
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0x69
	.long	0x2d
	.long	.LLST40
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x69
	.long	0x2d
	.long	.LLST41
	.uleb128 0x19
	.long	.LASF11
	.byte	0x1
	.byte	0x69
	.long	0x2d
	.long	.LLST42
	.uleb128 0x1c
	.string	"l"
	.byte	0x1
	.byte	0x6a
	.long	0x243
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.byte	0x6b
	.long	0x238
	.long	.LLST43
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.long	0x8a
	.uleb128 0x1c
	.string	"a1"
	.byte	0x1
	.byte	0x6d
	.long	0x55
	.uleb128 0x20
	.quad	.LVL92
	.long	0x7ac
	.long	0x942
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x20
	.quad	.LVL122
	.long	0x819
	.long	0x96e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x10
	.quad	.LVL125
	.long	0xbbf
	.byte	0
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.byte	0x39
	.long	0x55
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0d
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.byte	0x39
	.long	0x1e8
	.long	.LLST44
	.uleb128 0x17
	.long	.LASF12
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.long	.LLST45
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.long	.LLST46
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x3a
	.long	0x2d
	.long	.LLST47
	.uleb128 0x17
	.long	.LASF30
	.byte	0x1
	.byte	0x3a
	.long	0x2d
	.long	.LLST48
	.uleb128 0x1c
	.string	"a1"
	.byte	0x1
	.byte	0x3b
	.long	0x55
	.uleb128 0x18
	.string	"a2"
	.byte	0x1
	.byte	0x3c
	.long	0x55
	.long	.LLST49
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.byte	0x3d
	.long	0x2d
	.long	.LLST50
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.byte	0x3d
	.long	0x2d
	.long	.LLST51
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.byte	0x3e
	.long	0x2d
	.long	.LLST52
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.byte	0x3e
	.long	0x2d
	.long	.LLST53
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x3e
	.long	0x2d
	.long	.LLST54
	.uleb128 0x19
	.long	.LASF11
	.byte	0x1
	.byte	0x3e
	.long	0x2d
	.long	.LLST55
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.byte	0x3f
	.long	0x1e8
	.long	.LLST56
	.uleb128 0x18
	.string	"br"
	.byte	0x1
	.byte	0x40
	.long	0x238
	.long	.LLST57
	.uleb128 0x20
	.quad	.LVL135
	.long	0x819
	.long	0xa93
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0
	.uleb128 0x20
	.quad	.LVL159
	.long	0x97c
	.long	0xac9
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x91
	.sleb128 -48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x5
	.byte	0x91
	.sleb128 -32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x5
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x20
	.quad	.LVL160
	.long	0x819
	.long	0xaff
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x91
	.sleb128 -48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x5
	.byte	0x91
	.sleb128 -32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x5
	.byte	0x91
	.sleb128 -24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x10
	.quad	.LVL164
	.long	0xbbf
	.byte	0
	.uleb128 0x1b
	.long	.LASF64
	.byte	0x1
	.byte	0x24
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xb91
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.byte	0x24
	.long	0x176
	.long	.LLST58
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x25
	.long	0x8a
	.long	.LLST59
	.uleb128 0x1c
	.string	"l"
	.byte	0x1
	.byte	0x26
	.long	0x1e8
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x27
	.long	0x55
	.uleb128 0x18
	.string	"tmp"
	.byte	0x1
	.byte	0x28
	.long	0x55
	.long	.LLST60
	.uleb128 0x19
	.long	.LASF12
	.byte	0x1
	.byte	0x29
	.long	0x2d
	.long	.LLST61
	.uleb128 0x19
	.long	.LASF13
	.byte	0x1
	.byte	0x29
	.long	0x2d
	.long	.LLST62
	.uleb128 0x10
	.quad	.LVL168
	.long	0x97c
	.byte	0
	.uleb128 0x22
	.long	0x503
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	0x4f7
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF68
	.long	.LASF68
	.byte	0x3
	.byte	0x8f
	.uleb128 0x24
	.long	.LASF69
	.long	.LASF69
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST17:
	.quad	.LVL32-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL37-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL41-1-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL42-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL32-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL37-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL41-1-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LFE11-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL33-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-1-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL41-1-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL32-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-1-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL23-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL28-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL23-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL27-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL23-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL31-1-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL24-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL31-1-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL25-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL31-1-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL25-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL31-1-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL26-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL31-1-.Ltext0
	.quad	.LFE10-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LFE9-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL11-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL15-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL19-1-.Ltext0
	.quad	.LFE8-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LFE8-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL15-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL1-.Ltext0
	.quad	.LFE7-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL2-.Ltext0
	.quad	.LFE7-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL10-1-.Ltext0
	.quad	.LFE7-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LFE7-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL45-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL67-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -176
	.quad	.LVL68-.Ltext0
	.quad	.LFE4-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL45-.Ltext0
	.quad	.LFE4-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -168
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL50-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL58-1-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL72-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0xb
	.byte	0x91
	.sleb128 -160
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL73-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL77-.Ltext0
	.quad	.LVL79-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL60-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL81-.Ltext0
	.quad	.LFE4-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x12
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL52-.Ltext0
	.quad	.LVL55-1-.Ltext0
	.value	0x12
	.byte	0x91
	.sleb128 -120
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL60-.Ltext0
	.quad	.LVL65-1-.Ltext0
	.value	0x1
	.byte	0x67
	.quad	.LVL74-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL78-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL83-.Ltext0
	.quad	.LVL84-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL84-1-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL86-.Ltext0
	.quad	.LFE3-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL83-.Ltext0
	.quad	.LVL84-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL84-1-.Ltext0
	.quad	.LFE3-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL83-.Ltext0
	.quad	.LVL84-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL84-1-.Ltext0
	.quad	.LFE3-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL87-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL90-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL114-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0x4
	.byte	0x7c
	.sleb128 -152
	.byte	0x9f
	.quad	.LVL115-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL118-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL120-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL87-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL90-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LVL122-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL122-1-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL87-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL90-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LVL122-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL122-1-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL87-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL90-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL121-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL87-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL90-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LVL119-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL119-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL91-.Ltext0
	.quad	.LVL92-1-.Ltext0
	.value	0x6
	.byte	0x63
	.byte	0x93
	.uleb128 0x8
	.byte	0x64
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL92-1-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x8
	.byte	0x63
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL94-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x6
	.byte	0x63
	.byte	0x93
	.uleb128 0x8
	.byte	0x64
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL95-.Ltext0
	.quad	.LVL96-.Ltext0
	.value	0xf
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.byte	0x64
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL96-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x19
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL97-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0xf
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x6
	.byte	0x63
	.byte	0x93
	.uleb128 0x8
	.byte	0x64
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL88-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL90-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL118-.Ltext0
	.quad	.LVL122-1-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL122-1-.Ltext0
	.quad	.LVL124-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL89-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL90-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL118-.Ltext0
	.quad	.LVL122-1-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL122-1-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL99-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x1
	.byte	0x6a
	.quad	.LVL109-.Ltext0
	.quad	.LVL112-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL112-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0xa
	.byte	0x76
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL114-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0xb
	.byte	0x7c
	.sleb128 -152
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL115-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0xc
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x2d
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL123-.Ltext0
	.quad	.LVL125-1-.Ltext0
	.value	0x1
	.byte	0x6a
	.quad	.LVL125-1-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL100-.Ltext0
	.quad	.LVL102-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL102-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL104-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL111-.Ltext0
	.quad	.LVL113-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL113-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0xa
	.byte	0x76
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL114-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0xb
	.byte	0x7c
	.sleb128 -144
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL115-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL123-.Ltext0
	.quad	.LVL125-1-.Ltext0
	.value	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL101-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL103-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0xc
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x28
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL123-.Ltext0
	.quad	.LVL125-1-.Ltext0
	.value	0x28
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL108-.Ltext0
	.quad	.LVL109-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL109-.Ltext0
	.quad	.LVL110-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL110-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 0
	.quad	.LVL114-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 -152
	.quad	.LVL115-.Ltext0
	.quad	.LVL117-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x2d
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL89-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL117-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL126-.Ltext0
	.quad	.LVL129-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL129-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL155-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL156-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL126-.Ltext0
	.quad	.LVL127-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL127-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x1
	.byte	0x67
	.quad	.LVL135-1-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL156-.Ltext0
	.quad	.LVL159-1-.Ltext0
	.value	0x1
	.byte	0x67
	.quad	.LVL159-1-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.quad	.LVL162-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL126-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL135-1-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL156-.Ltext0
	.quad	.LVL159-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL159-1-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	.LVL162-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL126-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL134-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL156-.Ltext0
	.quad	.LVL158-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL158-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL126-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL133-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL156-.Ltext0
	.quad	.LVL157-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL157-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL135-.Ltext0
	.quad	.LVL136-.Ltext0
	.value	0x5
	.byte	0x61
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL136-.Ltext0
	.quad	.LVL137-.Ltext0
	.value	0x6
	.byte	0x61
	.byte	0x93
	.uleb128 0x8
	.byte	0x62
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL137-.Ltext0
	.quad	.LVL138-.Ltext0
	.value	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x62
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL160-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x6
	.byte	0x61
	.byte	0x93
	.uleb128 0x8
	.byte	0x62
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x62
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL128-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL156-.Ltext0
	.quad	.LVL159-1-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL159-1-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL130-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL156-.Ltext0
	.quad	.LVL159-1-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL159-1-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL139-.Ltext0
	.quad	.LVL149-.Ltext0
	.value	0x1
	.byte	0x69
	.quad	.LVL151-.Ltext0
	.quad	.LVL154-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL154-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0xa
	.byte	0x73
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL155-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL162-.Ltext0
	.quad	.LVL164-1-.Ltext0
	.value	0x1
	.byte	0x69
	.quad	.LVL164-1-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL140-.Ltext0
	.quad	.LVL145-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL145-.Ltext0
	.quad	.LVL147-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL147-.Ltext0
	.quad	.LVL149-.Ltext0
	.value	0x1c
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL152-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0xa
	.byte	0x73
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL155-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1c
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0xc
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0xc
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL144-.Ltext0
	.quad	.LVL146-.Ltext0
	.value	0xc
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL146-.Ltext0
	.quad	.LVL148-.Ltext0
	.value	0x1
	.byte	0x6a
	.quad	.LVL148-.Ltext0
	.quad	.LVL149-.Ltext0
	.value	0x28
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x28
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x2d
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x1c
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL150-.Ltext0
	.quad	.LVL151-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL151-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	.LVL155-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL130-.Ltext0
	.quad	.LVL132-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL132-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 48
	.quad	.LVL156-.Ltext0
	.quad	.LVL159-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL131-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 56
	.quad	.LVL159-.Ltext0
	.quad	.LVL160-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 56
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL165-.Ltext0
	.quad	.LVL166-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL166-.Ltext0
	.quad	.LVL171-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL171-.Ltext0
	.quad	.LVL172-.Ltext0
	.value	0x4
	.byte	0x7c
	.sleb128 -152
	.byte	0x9f
	.quad	.LVL172-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL165-.Ltext0
	.quad	.LVL166-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL165-.Ltext0
	.quad	.LVL166-.Ltext0
	.value	0x18
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL167-.Ltext0
	.quad	.LVL168-1-.Ltext0
	.value	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x8
	.byte	0x65
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL168-1-.Ltext0
	.quad	.LVL169-.Ltext0
	.value	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL169-.Ltext0
	.quad	.LVL170-.Ltext0
	.value	0x7
	.byte	0x66
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL170-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x8
	.byte	0x65
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL167-.Ltext0
	.quad	.LVL168-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL167-.Ltext0
	.quad	.LVL168-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"grad_h"
.LASF39:
	.string	"Q_plus_1_inv"
.LASF59:
	.string	"Compute_Branch"
.LASF23:
	.string	"Demand"
.LASF6:
	.string	"short int"
.LASF31:
	.string	"Branch"
.LASF51:
	.string	"find_dd_grad_f"
.LASF42:
	.string	"grad_mag"
.LASF57:
	.string	"max_dist"
.LASF56:
	.string	"dd_grad_f"
.LASF13:
	.string	"theta_I"
.LASF38:
	.string	"P_plus_1_inv"
.LASF34:
	.string	"v_static"
.LASF24:
	.string	"Root"
.LASF12:
	.string	"theta_R"
.LASF66:
	.string	"../olden/power/src/compute.c"
.LASF30:
	.string	"pi_I"
.LASF47:
	.string	"find_gradient_g"
.LASF44:
	.string	"find_gradient_h"
.LASF29:
	.string	"pi_R"
.LASF19:
	.string	"alpha"
.LASF16:
	.string	"last_theta_I"
.LASF69:
	.string	"__stack_chk_fail"
.LASF28:
	.string	"leaf"
.LASF15:
	.string	"last_theta_R"
.LASF9:
	.string	"float"
.LASF37:
	.string	"dd_grad"
.LASF63:
	.string	"Compute_Lateral"
.LASF33:
	.string	"v_mod"
.LASF7:
	.string	"long int"
.LASF64:
	.string	"Compute_Tree"
.LASF26:
	.string	"leaves"
.LASF46:
	.string	"magnitude"
.LASF36:
	.string	"length"
.LASF1:
	.string	"unsigned char"
.LASF65:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF5:
	.string	"signed char"
.LASF62:
	.string	"next"
.LASF3:
	.string	"unsigned int"
.LASF27:
	.string	"Lateral"
.LASF14:
	.string	"last"
.LASF2:
	.string	"short unsigned int"
.LASF52:
	.string	"optimize_node"
.LASF48:
	.string	"find_gradient_f"
.LASF8:
	.string	"char"
.LASF50:
	.string	"find_g"
.LASF49:
	.string	"find_h"
.LASF45:
	.string	"gradient"
.LASF17:
	.string	"feeders"
.LASF21:
	.string	"next_lateral"
.LASF25:
	.string	"next_branch"
.LASF20:
	.string	"beta"
.LASF58:
	.string	"Compute_Leaf"
.LASF4:
	.string	"long unsigned int"
.LASF0:
	.string	"double"
.LASF68:
	.string	"sqrt"
.LASF61:
	.string	"new_pi_I"
.LASF10:
	.string	"demand"
.LASF60:
	.string	"new_pi_R"
.LASF41:
	.string	"Q_grad_term"
.LASF22:
	.string	"branch"
.LASF35:
	.string	"total"
.LASF53:
	.string	"grad_f"
.LASF54:
	.string	"grad_g"
.LASF18:
	.string	"lateral"
.LASF40:
	.string	"P_grad_term"
.LASF43:
	.string	"make_orthogonal"
.LASF11:
	.string	"root"
.LASF32:
	.string	"Leaf"
.LASF67:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
