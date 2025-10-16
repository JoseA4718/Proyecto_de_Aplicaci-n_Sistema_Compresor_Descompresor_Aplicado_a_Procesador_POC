	.file	"output.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Dedge %g %g %g %g \n"
	.text
	.p2align 4,,15
	.globl	plot_dedge
	.type	plot_dedge, @function
plot_dedge:
.LFB12:
	.file 1 "../olden/voronoi/src/output.c"
	.loc 1 20 0
	.cfi_startproc
.LVL0:
	.loc 1 29 0
	pxor	%xmm3, %xmm3
.LBB20:
.LBB21:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	$4, %eax
.LBE21:
.LBE20:
	.loc 1 29 0
	pxor	%xmm2, %xmm2
	.loc 1 28 0
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	.loc 1 29 0
	cvtsd2ss	8(%rsi), %xmm3
.LBB26:
.LBB22:
	.loc 2 104 0
	cvtss2sd	%xmm3, %xmm3
.LBE22:
.LBE26:
	.loc 1 29 0
	cvtsd2ss	(%rsi), %xmm2
.LBB27:
.LBB23:
	.loc 2 104 0
	leaq	.LC0(%rip), %rsi
.LVL1:
	cvtss2sd	%xmm2, %xmm2
.LBE23:
.LBE27:
	.loc 1 28 0
	cvtsd2ss	8(%rdi), %xmm1
.LBB28:
.LBB24:
	.loc 2 104 0
	cvtss2sd	%xmm1, %xmm1
.LBE24:
.LBE28:
	.loc 1 28 0
	cvtsd2ss	(%rdi), %xmm0
	cvtss2sd	%xmm0, %xmm0
.LBB29:
.LBB25:
	.loc 2 104 0
	movl	$1, %edi
.LVL2:
	jmp	__printf_chk@PLT
.LVL3:
.LBE25:
.LBE29:
	.cfi_endproc
.LFE12:
	.size	plot_dedge, .-plot_dedge
	.section	.rodata.str1.1
.LC2:
	.string	"Vedge %g %g %g %g \n"
	.text
	.p2align 4,,15
	.globl	plot_vedge
	.type	plot_vedge, @function
plot_vedge:
.LFB13:
	.loc 1 34 0
	.cfi_startproc
	.loc 1 45 0
	pxor	%xmm1, %xmm1
	.loc 1 46 0
	pxor	%xmm2, %xmm2
	.loc 1 47 0
	pxor	%xmm3, %xmm3
	.loc 1 45 0
	cvtsd2ss	8(%rsp), %xmm1
.LVL4:
	.loc 1 50 0
	ucomiss	%xmm1, %xmm1
	.loc 1 48 0
	pxor	%xmm4, %xmm4
	.loc 1 46 0
	cvtsd2ss	16(%rsp), %xmm2
.LVL5:
	pxor	%xmm0, %xmm0
	.loc 1 47 0
	cvtsd2ss	32(%rsp), %xmm3
.LVL6:
	.loc 1 48 0
	cvtsd2ss	40(%rsp), %xmm4
.LVL7:
	cvtss2sd	%xmm1, %xmm0
	.loc 1 50 0
	jp	.L8
.LVL8:
	.loc 1 52 0
	ucomiss	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	jp	.L9
.L5:
.LVL9:
	.loc 1 54 0
	ucomiss	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	jp	.L10
.LVL10:
.L6:
	.loc 1 56 0
	ucomiss	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm4, %xmm3
	jp	.L11
.LVL11:
.L7:
.LBB30:
.LBB31:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	movl	$4, %eax
	jmp	__printf_chk@PLT
.LVL12:
	.p2align 4,,10
	.p2align 3
.L11:
.LBE31:
.LBE30:
	.loc 1 57 0
	andpd	.LC1(%rip), %xmm3
.LVL13:
	cvtsd2ss	%xmm3, %xmm3
	cvtss2sd	%xmm3, %xmm3
	jmp	.L7
.LVL14:
	.p2align 4,,10
	.p2align 3
.L8:
	.loc 1 51 0
	andpd	.LC1(%rip), %xmm0
.LVL15:
	.loc 1 52 0
	ucomiss	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	.loc 1 51 0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm1
	cvtss2sd	%xmm0, %xmm0
	.loc 1 52 0
	jnp	.L5
	.p2align 4,,10
	.p2align 3
.L9:
.LVL16:
	.loc 1 53 0
	andpd	.LC1(%rip), %xmm1
.LVL17:
	.loc 1 54 0
	ucomiss	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	.loc 1 53 0
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm2
	cvtss2sd	%xmm1, %xmm1
	.loc 1 54 0
	jnp	.L6
	.p2align 4,,10
	.p2align 3
.L10:
.LVL18:
	.loc 1 55 0
	andpd	.LC1(%rip), %xmm2
.LVL19:
	cvtsd2ss	%xmm2, %xmm2
	cvtss2sd	%xmm2, %xmm2
	jmp	.L6
	.cfi_endproc
.LFE13:
	.size	plot_vedge, .-plot_vedge
	.p2align 4,,15
	.globl	circle_center
	.type	circle_center, @function
circle_center:
.LFB14:
	.loc 1 64 0
	.cfi_startproc
.LVL20:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$280, %rsp
	.cfi_def_cfa_offset 304
	.loc 1 68 0
	leaq	48(%rsp), %rbp
	.loc 1 64 0
	movq	%fs:40, %rax
	movq	%rax, 264(%rsp)
	xorl	%eax, %eax
	.loc 1 68 0
	pushq	368(%rsp)
	.cfi_def_cfa_offset 312
	pushq	368(%rsp)
	.cfi_def_cfa_offset 320
	movq	%rbp, %rdi
.LVL21:
	pushq	368(%rsp)
	.cfi_def_cfa_offset 328
	pushq	368(%rsp)
	.cfi_def_cfa_offset 336
	pushq	368(%rsp)
	.cfi_def_cfa_offset 344
	pushq	368(%rsp)
	.cfi_def_cfa_offset 352
	call	V2_sub@PLT
.LVL22:
	.loc 1 69 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 312
	pushq	72(%rsp)
	.cfi_def_cfa_offset 320
	pushq	72(%rsp)
	.cfi_def_cfa_offset 328
	pushq	72(%rsp)
	.cfi_def_cfa_offset 336
	call	V2_magn@PLT
.LVL23:
	movsd	%xmm0, 32(%rsp)
.LVL24:
	.loc 1 70 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 304
	movq	%rbp, %rdi
	pushq	344(%rsp)
	.cfi_def_cfa_offset 312
	pushq	344(%rsp)
	.cfi_def_cfa_offset 320
	pushq	344(%rsp)
	.cfi_def_cfa_offset 328
	pushq	344(%rsp)
	.cfi_def_cfa_offset 336
	pushq	344(%rsp)
	.cfi_def_cfa_offset 344
	pushq	344(%rsp)
	.cfi_def_cfa_offset 352
	call	V2_sum@PLT
.LVL25:
	.loc 1 71 0
	leaq	128(%rsp), %rdi
	addq	$40, %rsp
	.cfi_def_cfa_offset 312
	pushq	72(%rsp)
	.cfi_def_cfa_offset 320
	movsd	.LC3(%rip), %xmm0
	pushq	72(%rsp)
	.cfi_def_cfa_offset 328
	pushq	72(%rsp)
	.cfi_def_cfa_offset 336
	call	V2_times@PLT
.LVL26:
	.loc 1 72 0
	pxor	%xmm0, %xmm0
	addq	$32, %rsp
	.cfi_def_cfa_offset 304
	ucomisd	(%rsp), %xmm0
	ja	.L20
	.loc 1 75 0
	leaq	112(%rsp), %rdi
	pushq	320(%rsp)
	.cfi_def_cfa_offset 312
	pushq	320(%rsp)
	.cfi_def_cfa_offset 320
	pushq	320(%rsp)
	.cfi_def_cfa_offset 328
	pushq	368(%rsp)
	.cfi_def_cfa_offset 336
	pushq	368(%rsp)
	.cfi_def_cfa_offset 344
	pushq	368(%rsp)
	.cfi_def_cfa_offset 352
	call	V2_sub@PLT
.LVL27:
	.loc 1 76 0
	leaq	192(%rsp), %rdi
	addq	$48, %rsp
	.cfi_def_cfa_offset 304
	pushq	320(%rsp)
	.cfi_def_cfa_offset 312
	pushq	320(%rsp)
	.cfi_def_cfa_offset 320
	pushq	320(%rsp)
	.cfi_def_cfa_offset 328
	pushq	392(%rsp)
	.cfi_def_cfa_offset 336
	pushq	392(%rsp)
	.cfi_def_cfa_offset 344
	pushq	392(%rsp)
	.cfi_def_cfa_offset 352
	call	V2_sub@PLT
.LVL28:
	.loc 1 77 0
	addq	$48, %rsp
	.cfi_def_cfa_offset 304
	pushq	160(%rsp)
	.cfi_def_cfa_offset 312
	pushq	160(%rsp)
	.cfi_def_cfa_offset 320
	pushq	160(%rsp)
	.cfi_def_cfa_offset 328
	pushq	152(%rsp)
	.cfi_def_cfa_offset 336
	pushq	152(%rsp)
	.cfi_def_cfa_offset 344
	pushq	152(%rsp)
	.cfi_def_cfa_offset 352
	call	V2_cprod@PLT
.LVL29:
	.loc 1 79 0
	leaq	224(%rsp), %rdi
	.loc 1 77 0
	movsd	%xmm0, 56(%rsp)
.LVL30:
	.loc 1 79 0
	addq	$48, %rsp
	.cfi_def_cfa_offset 304
	pushq	344(%rsp)
	.cfi_def_cfa_offset 312
	pushq	344(%rsp)
	.cfi_def_cfa_offset 320
	pushq	344(%rsp)
	.cfi_def_cfa_offset 328
	pushq	392(%rsp)
	.cfi_def_cfa_offset 336
	pushq	392(%rsp)
	.cfi_def_cfa_offset 344
	pushq	392(%rsp)
	.cfi_def_cfa_offset 352
	call	V2_sub@PLT
.LVL31:
	.loc 1 80 0
	addq	$48, %rsp
	.cfi_def_cfa_offset 304
	pushq	160(%rsp)
	.cfi_def_cfa_offset 312
	pushq	160(%rsp)
	.cfi_def_cfa_offset 320
	pushq	160(%rsp)
	.cfi_def_cfa_offset 328
	pushq	216(%rsp)
	.cfi_def_cfa_offset 336
	pushq	216(%rsp)
	.cfi_def_cfa_offset 344
	pushq	216(%rsp)
	.cfi_def_cfa_offset 352
	call	V2_dot@PLT
.LVL32:
	.loc 1 81 0
	leaq	256(%rsp), %rdi
	.loc 1 80 0
	movsd	%xmm0, 48(%rsp)
.LVL33:
	.loc 1 81 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 312
	pushq	136(%rsp)
	.cfi_def_cfa_offset 320
	pushq	136(%rsp)
	.cfi_def_cfa_offset 328
	pushq	136(%rsp)
	.cfi_def_cfa_offset 336
	call	V2_cross@PLT
.LVL34:
	.loc 1 82 0
	leaq	272(%rsp), %rdi
	addq	$24, %rsp
	.cfi_def_cfa_offset 312
	.loc 1 78 0
	movsd	16(%rsp), %xmm1
	.loc 1 82 0
	movsd	8(%rsp), %xmm0
	pushq	232(%rsp)
	.cfi_def_cfa_offset 320
	.loc 1 78 0
	mulsd	.LC5(%rip), %xmm1
	.loc 1 82 0
	pushq	232(%rsp)
	.cfi_def_cfa_offset 328
	pushq	232(%rsp)
	.cfi_def_cfa_offset 336
	divsd	%xmm1, %xmm0
	call	V2_times@PLT
.LVL35:
	.loc 1 83 0
	leaq	48(%rsp), %rdi
	addq	$32, %rsp
	.cfi_def_cfa_offset 304
.LVL36:
	pushq	256(%rsp)
	.cfi_def_cfa_offset 312
.LVL37:
	pushq	256(%rsp)
	.cfi_def_cfa_offset 320
	pushq	256(%rsp)
	.cfi_def_cfa_offset 328
	pushq	120(%rsp)
	.cfi_def_cfa_offset 336
	pushq	120(%rsp)
	.cfi_def_cfa_offset 344
	pushq	120(%rsp)
	.cfi_def_cfa_offset 352
	call	V2_sum@PLT
.LVL38:
	.loc 1 84 0
	movdqa	64(%rsp), %xmm0
	movq	80(%rsp), %rax
	addq	$48, %rsp
	.cfi_def_cfa_offset 304
.LVL39:
	movups	%xmm0, (%rbx)
	movq	%rax, 16(%rbx)
.LVL40:
.L12:
	.loc 1 86 0
	movq	264(%rsp), %rdx
	xorq	%fs:40, %rdx
	movq	%rbx, %rax
	jne	.L21
.LVL41:
	addq	$280, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL42:
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore_state
	.loc 1 73 0
	movq	96(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 16(%rbx)
	movups	%xmm0, (%rbx)
	jmp	.L12
.LVL43:
.L21:
	.loc 1 86 0
	call	__stack_chk_fail@PLT
.LVL44:
	.cfi_endproc
.LFE14:
	.size	circle_center, .-circle_center
	.section	.rodata.str1.1
.LC7:
	.string	"mystack_ptr = %d\n"
	.text
	.p2align 4,,15
	.globl	output_voronoi_diagram
	.type	output_voronoi_diagram, @function
output_voronoi_diagram:
.LFB15:
	.loc 1 91 0
	.cfi_startproc
.LVL45:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbp
	subq	$328, %rsp
	.cfi_def_cfa_offset 384
	.loc 1 99 0
	movl	voronoi(%rip), %ecx
	.loc 1 91 0
	movq	%fs:40, %rax
	movq	%rax, 312(%rsp)
	xorl	%eax, %eax
	.loc 1 99 0
	testl	%ecx, %ecx
	jne	.L38
.LVL46:
.L23:
	.loc 1 130 0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	.loc 1 129 0
	movl	$0, 0(%rbp)
	.loc 1 130 0
	call	push_ring@PLT
.LVL47:
.LBB32:
.LBB33:
	.loc 2 104 0
	movl	0(%rbp), %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL48:
.LBE33:
.LBE32:
	.loc 1 132 0
	movl	0(%rbp), %edx
	testl	%edx, %edx
	je	.L25
.LBB34:
.LBB35:
	.loc 1 160 0
	leaq	128(%rsp), %rax
	movq	%rax, 48(%rsp)
	.loc 1 165 0
	leaq	160(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L26:
.LBE35:
	.loc 1 175 0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	xorq	$64, %rsi
	call	push_ring@PLT
.LVL49:
.LBE34:
	.loc 1 132 0
	movl	0(%rbp), %eax
	testl	%eax, %eax
	je	.L25
.L31:
.LBB53:
	.loc 1 136 0
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	pop_edge@PLT
.LVL50:
	.loc 1 137 0
	cmpq	$1, 16(%rax)
	.loc 1 136 0
	movq	%rax, %r14
	.loc 1 137 0
	jne	.L26
.LVL51:
	.loc 1 139 0
	movq	8(%rax), %r13
.LVL52:
	movq	%rax, %rbx
	movq	%rbp, 40(%rsp)
	jmp	.L30
.LVL53:
	.p2align 4,,10
	.p2align 3
.L28:
	.loc 1 173 0
	cmpq	%r14, %r13
	.loc 1 170 0
	movq	$2, 16(%rbx)
.LVL54:
	.loc 1 172 0
	movq	8(%r13), %rax
.LVL55:
	movq	%r13, %rbx
	.loc 1 173 0
	je	.L39
.LVL56:
	.loc 1 172 0
	movq	%rax, %r13
.LVL57:
.L30:
	.loc 1 143 0
	movq	%rbx, %rbp
	.loc 1 141 0
	movq	(%rbx), %rax
.LVL58:
	.loc 1 143 0
	xorq	$64, %rbp
	movq	0(%rbp), %rdx
	.loc 1 142 0
	movsd	(%rax), %xmm0
.LVL59:
	.loc 1 144 0
	movsd	(%rdx), %xmm2
.LVL60:
	.loc 1 145 0
	ucomisd	%xmm2, %xmm0
	jb	.L28
.LVL61:
.LBB36:
.LBB37:
	.loc 1 29 0
	pxor	%xmm3, %xmm3
.LBB38:
.LBB39:
	.loc 2 104 0
	leaq	.LC0(%rip), %rsi
.LBE39:
.LBE38:
	.loc 1 29 0
	cvtsd2ss	%xmm2, %xmm2
.LVL62:
	.loc 1 28 0
	pxor	%xmm1, %xmm1
.LBB44:
.LBB40:
	.loc 2 104 0
	cvtss2sd	%xmm2, %xmm2
.LBE40:
.LBE44:
	.loc 1 28 0
	cvtsd2ss	%xmm0, %xmm0
.LVL63:
	cvtss2sd	%xmm0, %xmm0
.LBB45:
.LBB41:
	.loc 2 104 0
	movl	$1, %edi
.LBE41:
.LBE45:
.LBE37:
.LBE36:
	.loc 1 152 0
	movq	%r13, %r15
.LBB50:
.LBB48:
	.loc 1 29 0
	cvtsd2ss	8(%rdx), %xmm3
.LBB46:
.LBB42:
	.loc 2 104 0
	cvtss2sd	%xmm3, %xmm3
.LBE42:
.LBE46:
.LBE48:
.LBE50:
	.loc 1 152 0
	xorq	$64, %r15
.LBB51:
.LBB49:
	.loc 1 28 0
	cvtsd2ss	8(%rax), %xmm1
.LBB47:
.LBB43:
	.loc 2 104 0
	cvtss2sd	%xmm1, %xmm1
	movl	$4, %eax
.LVL64:
	call	__printf_chk@PLT
.LVL65:
.LBE43:
.LBE47:
.LBE49:
.LBE51:
	.loc 1 153 0
	movq	8(%rbp), %r12
	.loc 1 150 0
	movq	(%rbx), %r9
.LVL66:
	.loc 1 151 0
	movq	0(%rbp), %r10
.LVL67:
	.loc 1 154 0
	movq	(%r15), %rdx
	.loc 1 153 0
	xorq	$64, %r12
	.loc 1 154 0
	movq	%r9, %rdi
	movq	%r9, 24(%rsp)
	.loc 1 153 0
	movq	(%r12), %rax
	.loc 1 154 0
	movq	%r10, %rsi
	movq	%r10, 32(%rsp)
	.loc 1 153 0
	movq	%rax, 16(%rsp)
.LVL68:
	.loc 1 154 0
	call	ccw@PLT
.LVL69:
	.loc 1 155 0
	movq	32(%rsp), %r10
	movq	24(%rsp), %r9
	movq	16(%rsp), %rdx
	.loc 1 154 0
	movl	%eax, 8(%rsp)
	.loc 1 155 0
	movq	%r10, %rsi
	movq	%r9, %rdi
	call	ccw@PLT
.LVL70:
	.loc 1 154 0
	cmpl	%eax, 8(%rsp)
	je	.L28
.LBB52:
	.loc 1 157 0
	movq	(%rbx), %rax
	.loc 1 160 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 392
	.loc 1 157 0
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 232(%rsp)
	movq	%rax, 248(%rsp)
	.loc 1 158 0
	movq	0(%rbp), %rax
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 264(%rsp)
	movq	%rax, 280(%rsp)
	.loc 1 159 0
	movq	(%r15), %rax
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 296(%rsp)
	movq	%rax, 312(%rsp)
	.loc 1 160 0
	pushq	312(%rsp)
	.cfi_def_cfa_offset 400
	pushq	312(%rsp)
	.cfi_def_cfa_offset 408
	pushq	312(%rsp)
	.cfi_def_cfa_offset 416
	pushq	304(%rsp)
	.cfi_def_cfa_offset 424
	pushq	304(%rsp)
	.cfi_def_cfa_offset 432
	pushq	304(%rsp)
	.cfi_def_cfa_offset 440
	pushq	296(%rsp)
	.cfi_def_cfa_offset 448
	pushq	296(%rsp)
	.cfi_def_cfa_offset 456
	pushq	296(%rsp)
	.cfi_def_cfa_offset 464
	movq	128(%rsp), %rdi
	call	circle_center
.LVL71:
	.loc 1 162 0
	movq	0(%rbp), %rax
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 304(%rsp)
	movq	%rax, 320(%rsp)
	.loc 1 163 0
	movq	(%rbx), %rax
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 336(%rsp)
	movq	%rax, 352(%rsp)
	.loc 1 164 0
	movq	(%r12), %rax
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 368(%rsp)
	movq	%rax, 384(%rsp)
	.loc 1 165 0
	addq	$72, %rsp
	.cfi_def_cfa_offset 392
	pushq	312(%rsp)
	.cfi_def_cfa_offset 400
	pushq	312(%rsp)
	.cfi_def_cfa_offset 408
	pushq	312(%rsp)
	.cfi_def_cfa_offset 416
	pushq	304(%rsp)
	.cfi_def_cfa_offset 424
	pushq	304(%rsp)
	.cfi_def_cfa_offset 432
	pushq	304(%rsp)
	.cfi_def_cfa_offset 440
	pushq	296(%rsp)
	.cfi_def_cfa_offset 448
	pushq	296(%rsp)
	.cfi_def_cfa_offset 456
	pushq	296(%rsp)
	.cfi_def_cfa_offset 464
	movq	136(%rsp), %rdi
	call	circle_center
.LVL72:
	.loc 1 167 0
	addq	$80, %rsp
	.cfi_def_cfa_offset 384
	xorl	%eax, %eax
	pushq	176(%rsp)
	.cfi_def_cfa_offset 392
	pushq	176(%rsp)
	.cfi_def_cfa_offset 400
	pushq	176(%rsp)
	.cfi_def_cfa_offset 408
	pushq	168(%rsp)
	.cfi_def_cfa_offset 416
	pushq	168(%rsp)
	.cfi_def_cfa_offset 424
	pushq	168(%rsp)
	.cfi_def_cfa_offset 432
	call	plot_vedge
.LVL73:
	addq	$48, %rsp
	.cfi_def_cfa_offset 384
	jmp	.L28
.LVL74:
	.p2align 4,,10
	.p2align 3
.L39:
	movq	40(%rsp), %rbp
	jmp	.L26
.LVL75:
	.p2align 4,,10
	.p2align 3
.L25:
.LBE52:
.LBE53:
	.loc 1 177 0
	movq	312(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L40
	.loc 1 178 0
	addq	$328, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	.loc 1 177 0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	.loc 1 178 0
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL76:
	popq	%r15
	.cfi_def_cfa_offset 8
	.loc 1 177 0
	xorl	%eax, %eax
	jmp	zero_seen@PLT
.LVL77:
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	.loc 1 100 0
	movq	%rdi, %rsi
.LVL78:
	movq	%rdx, %rdi
.LVL79:
	leaq	128(%rsp), %r13
	call	zero_seen@PLT
.LVL80:
	leaq	64(%rsp), %rcx
	leaq	96(%rsp), %rax
	leaq	160(%rsp), %r12
	leaq	192(%rsp), %rbx
	movq	%rbp, 24(%rsp)
	movq	%r14, %rbp
.LVL81:
	movq	%rax, 16(%rsp)
	movq	%rcx, %r15
.LVL82:
	.p2align 4,,10
	.p2align 3
.L24:
.LBB54:
	.loc 1 107 0 discriminator 1
	movq	%rbp, %rax
	.loc 1 111 0 discriminator 1
	movq	%r15, %rdi
	.loc 1 107 0 discriminator 1
	xorq	$64, %rax
	movq	(%rax), %rax
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 224(%rsp)
	movq	%rax, 240(%rsp)
	.loc 1 108 0 discriminator 1
	movq	0(%rbp), %rax
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 256(%rsp)
	movq	%rax, 272(%rsp)
.LVL83:
	.loc 1 110 0 discriminator 1
	movq	8(%rbp), %rax
	xorq	$64, %rax
	movq	(%rax), %rax
	movdqu	(%rax), %xmm0
	movq	16(%rax), %rax
	movaps	%xmm0, 288(%rsp)
	movq	%rax, 304(%rsp)
	.loc 1 111 0 discriminator 1
	pushq	272(%rsp)
	.cfi_def_cfa_offset 392
.LVL84:
	pushq	272(%rsp)
	.cfi_def_cfa_offset 400
	pushq	272(%rsp)
	.cfi_def_cfa_offset 408
	pushq	264(%rsp)
	.cfi_def_cfa_offset 416
	pushq	264(%rsp)
	.cfi_def_cfa_offset 424
	pushq	264(%rsp)
	.cfi_def_cfa_offset 432
	call	V2_sub@PLT
.LVL85:
	.loc 1 112 0 discriminator 1
	addq	$40, %rsp
	.cfi_def_cfa_offset 392
	pushq	312(%rsp)
	.cfi_def_cfa_offset 400
	pushq	312(%rsp)
	.cfi_def_cfa_offset 408
	pushq	312(%rsp)
	.cfi_def_cfa_offset 416
	pushq	272(%rsp)
	.cfi_def_cfa_offset 424
	pushq	272(%rsp)
	.cfi_def_cfa_offset 432
	pushq	272(%rsp)
	.cfi_def_cfa_offset 440
	pushq	328(%rsp)
	.cfi_def_cfa_offset 448
	pushq	328(%rsp)
	.cfi_def_cfa_offset 456
	pushq	328(%rsp)
	.cfi_def_cfa_offset 464
	movq	96(%rsp), %rdi
	call	circle_center
.LVL86:
	.loc 1 114 0 discriminator 1
	addq	$80, %rsp
	.cfi_def_cfa_offset 384
	movq	%r13, %rdi
	pushq	240(%rsp)
	.cfi_def_cfa_offset 392
	pushq	240(%rsp)
	.cfi_def_cfa_offset 400
	pushq	240(%rsp)
	.cfi_def_cfa_offset 408
	pushq	296(%rsp)
	.cfi_def_cfa_offset 416
	pushq	296(%rsp)
	.cfi_def_cfa_offset 424
	pushq	296(%rsp)
	.cfi_def_cfa_offset 432
	call	V2_sum@PLT
.LVL87:
	.loc 1 115 0 discriminator 1
	addq	$40, %rsp
	.cfi_def_cfa_offset 392
	movsd	.LC3(%rip), %xmm0
	pushq	152(%rsp)
	.cfi_def_cfa_offset 400
	pushq	152(%rsp)
	.cfi_def_cfa_offset 408
	movq	%r12, %rdi
	pushq	152(%rsp)
	.cfi_def_cfa_offset 416
	call	V2_times@PLT
.LVL88:
	.loc 1 116 0 discriminator 1
	addq	$32, %rsp
	.cfi_def_cfa_offset 384
	movq	%rbx, %rdi
	pushq	176(%rsp)
	.cfi_def_cfa_offset 392
	pushq	176(%rsp)
	.cfi_def_cfa_offset 400
	pushq	176(%rsp)
	.cfi_def_cfa_offset 408
	pushq	136(%rsp)
	.cfi_def_cfa_offset 416
	pushq	136(%rsp)
	.cfi_def_cfa_offset 424
	pushq	136(%rsp)
	.cfi_def_cfa_offset 432
	call	V2_sub@PLT
.LVL89:
	.loc 1 117 0 discriminator 1
	addq	$40, %rsp
	.cfi_def_cfa_offset 392
	pushq	216(%rsp)
	.cfi_def_cfa_offset 400
	pushq	216(%rsp)
	.cfi_def_cfa_offset 408
	pushq	216(%rsp)
	.cfi_def_cfa_offset 416
	call	V2_magn@PLT
.LVL90:
	movsd	%xmm0, 40(%rsp)
.LVL91:
	.loc 1 118 0 discriminator 1
	addq	$24, %rsp
	.cfi_def_cfa_offset 392
	pushq	88(%rsp)
	.cfi_def_cfa_offset 400
	pushq	88(%rsp)
	.cfi_def_cfa_offset 408
	pushq	88(%rsp)
	.cfi_def_cfa_offset 416
	call	V2_magn@PLT
.LVL92:
	.loc 1 117 0 discriminator 1
	movsd	40(%rsp), %xmm1
	.loc 1 119 0 discriminator 1
	movq	%r13, %rdi
	.loc 1 117 0 discriminator 1
	addsd	.LC6(%rip), %xmm1
	.loc 1 118 0 discriminator 1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)
.LVL93:
	.loc 1 119 0 discriminator 1
	addq	$24, %rsp
	.cfi_def_cfa_offset 392
	pushq	88(%rsp)
	.cfi_def_cfa_offset 400
	pushq	88(%rsp)
	.cfi_def_cfa_offset 408
	pushq	88(%rsp)
	.cfi_def_cfa_offset 416
	call	V2_cross@PLT
.LVL94:
	.loc 1 120 0 discriminator 1
	addq	$24, %rsp
	.cfi_def_cfa_offset 392
	movq	%r12, %rdi
	pushq	152(%rsp)
	.cfi_def_cfa_offset 400
	pushq	152(%rsp)
	.cfi_def_cfa_offset 408
	pushq	152(%rsp)
	.cfi_def_cfa_offset 416
	movsd	40(%rsp), %xmm0
	call	V2_times@PLT
.LVL95:
	.loc 1 121 0 discriminator 1
	addq	$32, %rsp
	.cfi_def_cfa_offset 384
	movq	%rbx, %rdi
	pushq	176(%rsp)
	.cfi_def_cfa_offset 392
	pushq	176(%rsp)
	.cfi_def_cfa_offset 400
	pushq	176(%rsp)
	.cfi_def_cfa_offset 408
	pushq	136(%rsp)
	.cfi_def_cfa_offset 416
	pushq	136(%rsp)
	.cfi_def_cfa_offset 424
	pushq	136(%rsp)
	.cfi_def_cfa_offset 432
	call	V2_sum@PLT
.LVL96:
	.loc 1 122 0 discriminator 1
	addq	$48, %rsp
	.cfi_def_cfa_offset 384
	xorl	%eax, %eax
	pushq	208(%rsp)
	.cfi_def_cfa_offset 392
	pushq	208(%rsp)
	.cfi_def_cfa_offset 400
	pushq	208(%rsp)
	.cfi_def_cfa_offset 408
	pushq	136(%rsp)
	.cfi_def_cfa_offset 416
	pushq	136(%rsp)
	.cfi_def_cfa_offset 424
	pushq	136(%rsp)
	.cfi_def_cfa_offset 432
	call	plot_vedge
.LVL97:
	.loc 1 123 0 discriminator 1
	leaq	32(%rbp), %rax
	movq	%rbp, %rdx
.LBE54:
	.loc 1 124 0 discriminator 1
	addq	$48, %rsp
	.cfi_def_cfa_offset 384
.LBB55:
	.loc 1 123 0 discriminator 1
	andq	$-128, %rdx
	andl	$127, %eax
	orq	%rax, %rdx
	movq	8(%rdx), %rax
	leaq	96(%rax), %rdx
	andq	$-128, %rax
	andl	$127, %edx
	orq	%rax, %rdx
.LBE55:
	.loc 1 124 0 discriminator 1
	cmpq	%rdx, %r14
.LBB56:
	.loc 1 123 0 discriminator 1
	movq	%rdx, %rbp
.LVL98:
.LBE56:
	.loc 1 124 0 discriminator 1
	jne	.L24
	movq	24(%rsp), %rbp
	jmp	.L23
.LVL99:
.L40:
	.loc 1 177 0
	call	__stack_chk_fail@PLT
.LVL100:
	.cfi_endproc
.LFE15:
	.size	output_voronoi_diagram, .-output_voronoi_diagram
	.comm	earray,8,8
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC5:
	.long	0
	.long	-1073741824
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "../olden/voronoi/src/defines.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdf2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF103
	.byte	0xc
	.long	.LASF104
	.long	.LASF105
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x8c
	.long	0x6c
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x6c
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	0x91
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x6
	.long	0x50
	.uleb128 0x8
	.long	.LASF16
	.byte	0x20
	.byte	0x4
	.byte	0x8
	.long	0xe3
	.uleb128 0x9
	.string	"v"
	.byte	0x4
	.byte	0x9
	.long	0x112
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.byte	0xa
	.long	0x118
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0xb
	.long	0x6c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x4
	.byte	0xc
	.long	0x89
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x28
	.byte	0x4
	.byte	0x21
	.long	0x112
	.uleb128 0x9
	.string	"v"
	.byte	0x4
	.byte	0x22
	.long	0x13f
	.byte	0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.byte	0x23
	.long	0x112
	.byte	0x18
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.byte	0x23
	.long	0x112
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe3
	.uleb128 0x6
	.byte	0x8
	.long	0xa8
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0x17
	.long	0x118
	.uleb128 0x4
	.long	.LASF21
	.byte	0x4
	.byte	0x18
	.long	0x112
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0x19
	.long	0x118
	.uleb128 0x8
	.long	.LASF23
	.byte	0x18
	.byte	0x4
	.byte	0x1b
	.long	0x16c
	.uleb128 0x9
	.string	"x"
	.byte	0x4
	.byte	0x1c
	.long	0x2d
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0x4
	.byte	0x1c
	.long	0x2d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.byte	0x1d
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x18
	.byte	0x4
	.byte	0x2c
	.long	0x19d
	.uleb128 0x9
	.string	"ptr"
	.byte	0x4
	.byte	0x2d
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.byte	0x2e
	.long	0x19d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.byte	0x2f
	.long	0x65
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x134
	.uleb128 0xb
	.string	"vp"
	.byte	0x4
	.byte	0x61
	.long	0x1ad
	.uleb128 0x6
	.byte	0x8
	.long	0x129
	.uleb128 0xb
	.string	"va"
	.byte	0x4
	.byte	0x62
	.long	0x112
	.uleb128 0xc
	.long	.LASF13
	.byte	0x4
	.byte	0x63
	.long	0x1c8
	.uleb128 0x6
	.byte	0x8
	.long	0x11e
	.uleb128 0xb
	.string	"org"
	.byte	0x4
	.byte	0x64
	.long	0x1ad
	.uleb128 0xc
	.long	.LASF28
	.byte	0x4
	.byte	0x65
	.long	0x65
	.uleb128 0xc
	.long	.LASF29
	.byte	0x4
	.byte	0x65
	.long	0x65
	.uleb128 0xc
	.long	.LASF27
	.byte	0x4
	.byte	0x65
	.long	0x65
	.uleb128 0xc
	.long	.LASF30
	.byte	0x4
	.byte	0x66
	.long	0x65
	.uleb128 0xc
	.long	.LASF31
	.byte	0x4
	.byte	0x66
	.long	0x65
	.uleb128 0xc
	.long	.LASF32
	.byte	0x4
	.byte	0x66
	.long	0x65
	.uleb128 0xc
	.long	.LASF33
	.byte	0x4
	.byte	0x66
	.long	0x65
	.uleb128 0xc
	.long	.LASF34
	.byte	0x4
	.byte	0x66
	.long	0x65
	.uleb128 0xc
	.long	.LASF35
	.byte	0x4
	.byte	0x66
	.long	0x65
	.uleb128 0xc
	.long	.LASF36
	.byte	0x4
	.byte	0x66
	.long	0x65
	.uleb128 0xc
	.long	.LASF37
	.byte	0x4
	.byte	0x66
	.long	0x65
	.uleb128 0xb
	.string	"see"
	.byte	0x4
	.byte	0x67
	.long	0x8b
	.uleb128 0xc
	.long	.LASF38
	.byte	0x4
	.byte	0x68
	.long	0x65
	.uleb128 0xc
	.long	.LASF39
	.byte	0x4
	.byte	0x68
	.long	0x65
	.uleb128 0x4
	.long	.LASF40
	.byte	0x5
	.byte	0xd8
	.long	0x50
	.uleb128 0x8
	.long	.LASF41
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x3fe
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0xf6
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.byte	0xfb
	.long	0x8b
	.byte	0x8
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0xfc
	.long	0x8b
	.byte	0x10
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0xfd
	.long	0x8b
	.byte	0x18
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0xfe
	.long	0x8b
	.byte	0x20
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
	.byte	0xff
	.long	0x8b
	.byte	0x28
	.uleb128 0xd
	.long	.LASF48
	.byte	0x6
	.value	0x100
	.long	0x8b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF49
	.byte	0x6
	.value	0x101
	.long	0x8b
	.byte	0x38
	.uleb128 0xd
	.long	.LASF50
	.byte	0x6
	.value	0x102
	.long	0x8b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF51
	.byte	0x6
	.value	0x104
	.long	0x8b
	.byte	0x48
	.uleb128 0xd
	.long	.LASF52
	.byte	0x6
	.value	0x105
	.long	0x8b
	.byte	0x50
	.uleb128 0xd
	.long	.LASF53
	.byte	0x6
	.value	0x106
	.long	0x8b
	.byte	0x58
	.uleb128 0xd
	.long	.LASF54
	.byte	0x6
	.value	0x108
	.long	0x436
	.byte	0x60
	.uleb128 0xd
	.long	.LASF55
	.byte	0x6
	.value	0x10a
	.long	0x43c
	.byte	0x68
	.uleb128 0xd
	.long	.LASF56
	.byte	0x6
	.value	0x10c
	.long	0x65
	.byte	0x70
	.uleb128 0xd
	.long	.LASF57
	.byte	0x6
	.value	0x110
	.long	0x65
	.byte	0x74
	.uleb128 0xd
	.long	.LASF58
	.byte	0x6
	.value	0x112
	.long	0x73
	.byte	0x78
	.uleb128 0xd
	.long	.LASF59
	.byte	0x6
	.value	0x116
	.long	0x42
	.byte	0x80
	.uleb128 0xd
	.long	.LASF60
	.byte	0x6
	.value	0x117
	.long	0x57
	.byte	0x82
	.uleb128 0xd
	.long	.LASF61
	.byte	0x6
	.value	0x118
	.long	0x442
	.byte	0x83
	.uleb128 0xd
	.long	.LASF62
	.byte	0x6
	.value	0x11c
	.long	0x452
	.byte	0x88
	.uleb128 0xd
	.long	.LASF63
	.byte	0x6
	.value	0x125
	.long	0x7e
	.byte	0x90
	.uleb128 0xd
	.long	.LASF64
	.byte	0x6
	.value	0x12d
	.long	0x89
	.byte	0x98
	.uleb128 0xd
	.long	.LASF65
	.byte	0x6
	.value	0x12e
	.long	0x89
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF66
	.byte	0x6
	.value	0x12f
	.long	0x89
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF67
	.byte	0x6
	.value	0x130
	.long	0x89
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF68
	.byte	0x6
	.value	0x132
	.long	0x273
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF69
	.byte	0x6
	.value	0x133
	.long	0x65
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x6
	.value	0x135
	.long	0x458
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF106
	.byte	0x6
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF71
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x436
	.uleb128 0xa
	.long	.LASF72
	.byte	0x6
	.byte	0xa1
	.long	0x436
	.byte	0
	.uleb128 0xa
	.long	.LASF73
	.byte	0x6
	.byte	0xa2
	.long	0x43c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF74
	.byte	0x6
	.byte	0xa6
	.long	0x65
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x405
	.uleb128 0x6
	.byte	0x8
	.long	0x27e
	.uleb128 0xf
	.long	0x91
	.long	0x452
	.uleb128 0x10
	.long	0x50
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3fe
	.uleb128 0xf
	.long	0x91
	.long	0x468
	.uleb128 0x10
	.long	0x50
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.long	.LASF107
	.uleb128 0x12
	.long	.LASF75
	.byte	0x6
	.value	0x13f
	.long	0x468
	.uleb128 0x12
	.long	.LASF76
	.byte	0x6
	.value	0x140
	.long	0x468
	.uleb128 0x12
	.long	.LASF77
	.byte	0x6
	.value	0x141
	.long	0x468
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x13
	.long	0x491
	.uleb128 0xc
	.long	.LASF78
	.byte	0x7
	.byte	0x87
	.long	0x43c
	.uleb128 0xc
	.long	.LASF79
	.byte	0x7
	.byte	0x88
	.long	0x43c
	.uleb128 0xc
	.long	.LASF80
	.byte	0x7
	.byte	0x89
	.long	0x43c
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x58
	.long	0x4d2
	.uleb128 0x9
	.byte	0x3
	.quad	earray
	.uleb128 0x6
	.byte	0x8
	.long	0x65
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.byte	0x5a
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x980
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0x5a
	.long	0x134
	.long	.LLST15
	.uleb128 0x17
	.string	"nv"
	.byte	0x1
	.byte	0x5a
	.long	0x65
	.long	.LLST16
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0x5a
	.long	0x980
	.long	.LLST17
	.uleb128 0x18
	.string	"nex"
	.byte	0x1
	.byte	0x5c
	.long	0x134
	.long	.LLST18
	.uleb128 0x19
	.long	.LASF84
	.byte	0x1
	.byte	0x5c
	.long	0x134
	.long	.LLST19
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.byte	0x5c
	.long	0x134
	.long	.LLST20
	.uleb128 0x19
	.long	.LASF86
	.byte	0x1
	.byte	0x5c
	.long	0x134
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.byte	0x5d
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.byte	0x5d
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x18
	.string	"ln"
	.byte	0x1
	.byte	0x5e
	.long	0x2d
	.long	.LLST22
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.byte	0x60
	.long	0x2d
	.long	.LLST23
	.uleb128 0x1b
	.string	"vv1"
	.byte	0x1
	.byte	0x61
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1b
	.string	"vv2"
	.byte	0x1
	.byte	0x61
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1b
	.string	"vv3"
	.byte	0x1
	.byte	0x61
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x160
	.long	0x70c
	.uleb128 0x1b
	.string	"v21"
	.byte	0x1
	.byte	0x68
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.string	"v22"
	.byte	0x1
	.byte	0x68
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.string	"v23"
	.byte	0x1
	.byte	0x68
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"tmp"
	.byte	0x1
	.byte	0x69
	.long	0x134
	.long	.LLST34
	.uleb128 0x1d
	.quad	.LVL85
	.long	0xd68
	.long	0x621
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL86
	.long	0x986
	.long	0x63b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -368
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.quad	.LVL87
	.long	0xd73
	.long	0x653
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL88
	.long	0xd7e
	.long	0x67a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0
	.uleb128 0x1d
	.quad	.LVL89
	.long	0xd68
	.long	0x692
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL90
	.long	0xd89
	.uleb128 0x1f
	.quad	.LVL92
	.long	0xd89
	.uleb128 0x1d
	.quad	.LVL94
	.long	0xd94
	.long	0x6c4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL95
	.long	0xd7e
	.long	0x6e6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -376
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x1d
	.quad	.LVL96
	.long	0xd73
	.long	0x6fe
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL97
	.long	0xbb7
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x60
	.long	0x8e4
	.uleb128 0x18
	.string	"v1"
	.byte	0x1
	.byte	0x85
	.long	0x129
	.long	.LLST25
	.uleb128 0x18
	.string	"v2"
	.byte	0x1
	.byte	0x85
	.long	0x129
	.long	.LLST26
	.uleb128 0x18
	.string	"v3"
	.byte	0x1
	.byte	0x85
	.long	0x129
	.long	.LLST27
	.uleb128 0x18
	.string	"v4"
	.byte	0x1
	.byte	0x85
	.long	0x129
	.long	.LLST28
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.byte	0x86
	.long	0x2d
	.long	.LLST29
	.uleb128 0x18
	.string	"d2"
	.byte	0x1
	.byte	0x86
	.long	0x2d
	.long	.LLST30
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x90
	.long	0x7e1
	.uleb128 0x1b
	.string	"v21"
	.byte	0x1
	.byte	0x9c
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.string	"v22"
	.byte	0x1
	.byte	0x9c
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.string	"v23"
	.byte	0x1
	.byte	0x9c
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.quad	.LVL71
	.long	0x986
	.long	0x7b9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -336
	.byte	0x6
	.byte	0
	.uleb128 0x1d
	.quad	.LVL72
	.long	0x986
	.long	0x7d3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -328
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.quad	.LVL73
	.long	0xbb7
	.byte	0
	.uleb128 0x20
	.long	0xc6c
	.quad	.LBB36
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x93
	.long	0x862
	.uleb128 0x21
	.long	0xc82
	.long	.LLST31
	.uleb128 0x21
	.long	0xc78
	.long	.LLST32
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x23
	.long	0xcff
	.uleb128 0x23
	.long	0xd08
	.uleb128 0x23
	.long	0xd11
	.uleb128 0x23
	.long	0xd1a
	.uleb128 0x24
	.long	0xcb5
	.quad	.LBB38
	.long	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x1c
	.uleb128 0x21
	.long	0xcc5
	.long	.LLST33
	.uleb128 0x25
	.quad	.LVL65
	.long	0xd9f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL49
	.long	0xdaa
	.long	0x883
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0
	.uleb128 0x1d
	.quad	.LVL50
	.long	0xdb5
	.long	0x89b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL69
	.long	0xdc0
	.long	0x8bd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -360
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.quad	.LVL70
	.long	0xdc0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -360
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -368
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xcb5
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0x1
	.byte	0x83
	.long	0x929
	.uleb128 0x21
	.long	0xcc5
	.long	.LLST24
	.uleb128 0x25
	.quad	.LVL48
	.long	0xd9f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL47
	.long	0xdaa
	.long	0x947
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL77
	.long	0xdcb
	.uleb128 0x1d
	.quad	.LVL80
	.long	0xdcb
	.long	0x972
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL100
	.long	0xdd6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x16c
	.uleb128 0x28
	.long	.LASF109
	.byte	0x1
	.byte	0x3e
	.long	0x13f
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb7
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.byte	0x3e
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.byte	0x3e
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.byte	0x3e
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0x41
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.byte	0x42
	.long	0x2d
	.long	.LLST11
	.uleb128 0x18
	.string	"d2"
	.byte	0x1
	.byte	0x42
	.long	0x2d
	.long	.LLST12
	.uleb128 0x18
	.string	"d3"
	.byte	0x1
	.byte	0x42
	.long	0x2d
	.long	.LLST13
	.uleb128 0x18
	.string	"d4"
	.byte	0x1
	.byte	0x42
	.long	0x2d
	.long	.LLST14
	.uleb128 0x1b
	.string	"vv1"
	.byte	0x1
	.byte	0x43
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1b
	.string	"vv2"
	.byte	0x1
	.byte	0x43
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1b
	.string	"vv3"
	.byte	0x1
	.byte	0x43
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.string	"vv4"
	.byte	0x1
	.byte	0x43
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.string	"vv5"
	.byte	0x1
	.byte	0x43
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.string	"vv6"
	.byte	0x1
	.byte	0x43
	.long	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.string	"vv7"
	.byte	0x1
	.byte	0x43
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.quad	.LVL22
	.long	0xd68
	.long	0xa90
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL23
	.long	0xd89
	.uleb128 0x1d
	.quad	.LVL25
	.long	0xd73
	.long	0xab5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL26
	.long	0xd7e
	.long	0xadd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.byte	0
	.uleb128 0x1d
	.quad	.LVL27
	.long	0xd68
	.long	0xaf6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x1d
	.quad	.LVL28
	.long	0xd68
	.long	0xb0f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x1f
	.quad	.LVL29
	.long	0xddf
	.uleb128 0x1d
	.quad	.LVL31
	.long	0xd68
	.long	0xb35
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x1f
	.quad	.LVL32
	.long	0xdea
	.uleb128 0x1d
	.quad	.LVL34
	.long	0xd94
	.long	0xb5b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1d
	.quad	.LVL35
	.long	0xd7e
	.long	0xb90
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x19
	.byte	0x91
	.sleb128 -304
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x91
	.sleb128 -296
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0xc0000000
	.byte	0x1e
	.byte	0x1b
	.byte	0
	.uleb128 0x1d
	.quad	.LVL38
	.long	0xd73
	.long	0xba9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x1f
	.quad	.LVL44
	.long	0xdd6
	.byte	0
	.uleb128 0x2a
	.long	.LASF89
	.byte	0x1
	.byte	0x20
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xc6c
	.uleb128 0x29
	.string	"p1"
	.byte	0x1
	.byte	0x21
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"p2"
	.byte	0x1
	.byte	0x21
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x18
	.string	"p1x"
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.long	.LLST6
	.uleb128 0x18
	.string	"p1y"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.long	.LLST7
	.uleb128 0x18
	.string	"p2x"
	.byte	0x1
	.byte	0x2f
	.long	0x34
	.long	.LLST8
	.uleb128 0x18
	.string	"p2y"
	.byte	0x1
	.byte	0x30
	.long	0x34
	.long	.LLST9
	.uleb128 0x2b
	.long	0xcb5
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.byte	0x3b
	.uleb128 0x21
	.long	0xcc5
	.long	.LLST10
	.uleb128 0x2c
	.quad	.LVL12
	.long	0xd9f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF110
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.long	0xcb5
	.uleb128 0x2e
	.string	"p1"
	.byte	0x1
	.byte	0x13
	.long	0x129
	.uleb128 0x2e
	.string	"p2"
	.byte	0x1
	.byte	0x13
	.long	0x129
	.uleb128 0x2f
	.string	"x1"
	.byte	0x1
	.byte	0x15
	.long	0x2d
	.uleb128 0x2f
	.string	"x2"
	.byte	0x1
	.byte	0x15
	.long	0x2d
	.uleb128 0x2f
	.string	"y1"
	.byte	0x1
	.byte	0x15
	.long	0x2d
	.uleb128 0x2f
	.string	"y2"
	.byte	0x1
	.byte	0x15
	.long	0x2d
	.byte	0
	.uleb128 0x30
	.long	.LASF90
	.byte	0x2
	.byte	0x66
	.long	0x65
	.byte	0x3
	.long	0xcd2
	.uleb128 0x31
	.long	.LASF91
	.byte	0x2
	.byte	0x66
	.long	0x497
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.long	0xc6c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xd68
	.uleb128 0x21
	.long	0xc78
	.long	.LLST0
	.uleb128 0x21
	.long	0xc82
	.long	.LLST1
	.uleb128 0x34
	.long	0xc8c
	.long	.LLST2
	.uleb128 0x34
	.long	0xc96
	.long	.LLST3
	.uleb128 0x34
	.long	0xca0
	.long	.LLST4
	.uleb128 0x34
	.long	0xcaa
	.long	.LLST5
	.uleb128 0x24
	.long	0xcb5
	.quad	.LBB20
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1c
	.uleb128 0x35
	.long	0xcc5
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x2c
	.quad	.LVL3
	.long	0xd9f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF92
	.long	.LASF92
	.byte	0x4
	.byte	0x79
	.uleb128 0x36
	.long	.LASF93
	.long	.LASF93
	.byte	0x4
	.byte	0x78
	.uleb128 0x36
	.long	.LASF94
	.long	.LASF94
	.byte	0x4
	.byte	0x77
	.uleb128 0x36
	.long	.LASF95
	.long	.LASF95
	.byte	0x4
	.byte	0x7a
	.uleb128 0x36
	.long	.LASF96
	.long	.LASF96
	.byte	0x4
	.byte	0x7b
	.uleb128 0x36
	.long	.LASF97
	.long	.LASF97
	.byte	0x2
	.byte	0x57
	.uleb128 0x36
	.long	.LASF98
	.long	.LASF98
	.byte	0x4
	.byte	0x6b
	.uleb128 0x36
	.long	.LASF99
	.long	.LASF99
	.byte	0x4
	.byte	0x5d
	.uleb128 0x37
	.string	"ccw"
	.string	"ccw"
	.byte	0x4
	.byte	0x6d
	.uleb128 0x36
	.long	.LASF100
	.long	.LASF100
	.byte	0x4
	.byte	0x5c
	.uleb128 0x38
	.long	.LASF111
	.long	.LASF111
	.uleb128 0x36
	.long	.LASF101
	.long	.LASF101
	.byte	0x4
	.byte	0x75
	.uleb128 0x36
	.long	.LASF102
	.long	.LASF102
	.byte	0x4
	.byte	0x76
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
.LLST15:
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL46-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL50-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL53-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL76-.Ltext0
	.quad	.LVL77-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL77-.Ltext0
	.quad	.LVL79-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL79-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL46-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL78-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL46-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL77-.Ltext0
	.quad	.LVL80-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL80-1-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL81-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -360
	.quad	.LVL99-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL52-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL55-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL57-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL74-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL80-.Ltext0
	.quad	.LVL82-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL82-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL51-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL54-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL56-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL65-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 8
	.quad	.LVL69-1-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL65-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL91-.Ltext0
	.quad	.LVL92-1-.Ltext0
	.value	0x10
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.byte	0x22
	.byte	0x9f
	.quad	.LVL92-1-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0x13
	.byte	0x91
	.sleb128 -376
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL94-1-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -376
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL83-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 8
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL58-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	.LVL66-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL69-1-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -360
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL59-.Ltext0
	.quad	.LVL65-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL67-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	.LVL69-1-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -352
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL67-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x2
	.byte	0x7f
	.sleb128 0
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL67-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -368
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL59-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-1-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL60-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL62-.Ltext0
	.quad	.LVL65-1-.Ltext0
	.value	0x2
	.byte	0x71
	.sleb128 0
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL61-.Ltext0
	.quad	.LVL65-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL61-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL61-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL47-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	.LVL99-.Ltext0
	.quad	.LFE15-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -304
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x10
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0xc0000000
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL31-1-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x13
	.byte	0x91
	.sleb128 -296
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0xc0000000
	.byte	0x1e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL31-1-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL34-1-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -304
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -304
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL4-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x7
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x19
	.byte	0xf7
	.uleb128 0x34
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL5-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL14-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x7
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x19
	.byte	0xf7
	.uleb128 0x34
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL6-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL14-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x7
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x19
	.byte	0xf7
	.uleb128 0x34
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL7-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x7
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x19
	.byte	0xf7
	.uleb128 0x34
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LFE13-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL1-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-1-.Ltext0
	.value	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x23
	.uleb128 0x8
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
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB46-.Ltext0
	.quad	.LBE46-.Ltext0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF101:
	.string	"V2_cprod"
.LASF82:
	.string	"edge"
.LASF40:
	.string	"size_t"
.LASF61:
	.string	"_shortbuf"
.LASF102:
	.string	"V2_dot"
.LASF84:
	.string	"prev"
.LASF77:
	.string	"_IO_2_1_stderr_"
.LASF49:
	.string	"_IO_buf_base"
.LASF33:
	.string	"to_color"
.LASF13:
	.string	"next"
.LASF17:
	.string	"VERTEX"
.LASF105:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF6:
	.string	"signed char"
.LASF30:
	.string	"to_lincoln"
.LASF87:
	.string	"cvxvec"
.LASF56:
	.string	"_fileno"
.LASF44:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF42:
	.string	"_flags"
.LASF50:
	.string	"_IO_buf_end"
.LASF59:
	.string	"_cur_column"
.LASF0:
	.string	"double"
.LASF97:
	.string	"__printf_chk"
.LASF58:
	.string	"_old_offset"
.LASF63:
	.string	"_offset"
.LASF14:
	.string	"wasseen"
.LASF37:
	.string	"ahost"
.LASF98:
	.string	"push_ring"
.LASF83:
	.string	"my_stack"
.LASF89:
	.string	"plot_vedge"
.LASF71:
	.string	"_IO_marker"
.LASF29:
	.string	"num_edgeparts"
.LASF21:
	.string	"VERTEX_PTR"
.LASF4:
	.string	"unsigned int"
.LASF96:
	.string	"V2_cross"
.LASF38:
	.string	"NumNodes"
.LASF5:
	.string	"long unsigned int"
.LASF107:
	.string	"_IO_FILE_plus"
.LASF47:
	.string	"_IO_write_ptr"
.LASF73:
	.string	"_sbuf"
.LASF100:
	.string	"zero_seen"
.LASF3:
	.string	"short unsigned int"
.LASF51:
	.string	"_IO_save_base"
.LASF78:
	.string	"stdin"
.LASF62:
	.string	"_lock"
.LASF23:
	.string	"VEC2"
.LASF57:
	.string	"_flags2"
.LASF19:
	.string	"right"
.LASF36:
	.string	"interactive"
.LASF79:
	.string	"stdout"
.LASF88:
	.string	"center"
.LASF95:
	.string	"V2_magn"
.LASF12:
	.string	"uptrint"
.LASF108:
	.string	"output_voronoi_diagram"
.LASF75:
	.string	"_IO_2_1_stdin_"
.LASF92:
	.string	"V2_sub"
.LASF24:
	.string	"norm"
.LASF93:
	.string	"V2_sum"
.LASF104:
	.string	"../olden/voronoi/src/output.c"
.LASF94:
	.string	"V2_times"
.LASF43:
	.string	"_IO_read_ptr"
.LASF22:
	.string	"QUAD_EDGE"
.LASF34:
	.string	"voronoi"
.LASF110:
	.string	"plot_dedge"
.LASF16:
	.string	"edge_rec"
.LASF106:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF32:
	.string	"to_3d_out"
.LASF69:
	.string	"_mode"
.LASF1:
	.string	"float"
.LASF74:
	.string	"_pos"
.LASF54:
	.string	"_markers"
.LASF86:
	.string	"sprev"
.LASF39:
	.string	"NDim"
.LASF2:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF55:
	.string	"_chain"
.LASF26:
	.string	"elts"
.LASF60:
	.string	"_vtable_offset"
.LASF76:
	.string	"_IO_2_1_stdout_"
.LASF111:
	.string	"__stack_chk_fail"
.LASF28:
	.string	"num_vertices"
.LASF85:
	.string	"snex"
.LASF11:
	.string	"char"
.LASF20:
	.string	"EDGE_PTR"
.LASF72:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF45:
	.string	"_IO_read_base"
.LASF53:
	.string	"_IO_save_end"
.LASF25:
	.string	"EDGE_STACK"
.LASF103:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF91:
	.string	"__fmt"
.LASF64:
	.string	"__pad1"
.LASF65:
	.string	"__pad2"
.LASF66:
	.string	"__pad3"
.LASF67:
	.string	"__pad4"
.LASF68:
	.string	"__pad5"
.LASF48:
	.string	"_IO_write_end"
.LASF70:
	.string	"_unused2"
.LASF80:
	.string	"stderr"
.LASF15:
	.string	"Buffer"
.LASF81:
	.string	"earray"
.LASF35:
	.string	"delaunay"
.LASF52:
	.string	"_IO_backup_base"
.LASF109:
	.string	"circle_center"
.LASF27:
	.string	"stack_size"
.LASF46:
	.string	"_IO_write_base"
.LASF18:
	.string	"left"
.LASF31:
	.string	"to_off"
.LASF99:
	.string	"pop_edge"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
