	.file	"core_matrix.c"
	.text
	.p2align 4,,15
	.globl	core_init_matrix
	.type	core_init_matrix, @function
core_init_matrix:
.LFB25:
	.cfi_startproc
	leaq	-1(%rsi), %r10
	testl	%edx, %edx
	movl	$1, %eax
	cmove	%eax, %edx
	xorl	%eax, %eax
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%r10, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	andq	$-4, %rsi
	testl	%edi, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	leaq	4(%rsi), %r11
	jne	.L4
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L12:
	movl	%r8d, %eax
.L4:
	leal	1(%rax), %r8d
	movl	%r8d, %esi
	imull	%r8d, %esi
	sall	$3, %esi
	cmpl	%esi, %edi
	ja	.L12
	movl	%eax, %ebp
	movl	%eax, %r12d
	imull	%eax, %ebp
	addq	%rbp, %rbp
	testl	%eax, %eax
	leaq	(%r11,%rbp), %r10
	je	.L8
.L7:
	xorl	%ebx, %ebx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L10:
	movl	%eax, %r8d
	movl	%r9d, %edi
	imull	%ebx, %r8d
	subl	%r9d, %r8d
	.p2align 4,,10
	.p2align 3
.L9:
	imull	%edi, %edx
	leal	(%r8,%rdi), %r13d
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$16, %esi
	addl	%esi, %edx
	movzwl	%dx, %edx
	subl	%esi, %edx
	leal	(%rdi,%rdx), %esi
	movw	%si, (%r10,%r13,2)
	addl	%edi, %esi
	addl	$1, %edi
	andw	$255, %si
	movw	%si, (%r11,%r13,2)
	movl	%edi, %esi
	subl	%r9d, %esi
	cmpl	%esi, %eax
	ja	.L9
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jnb	.L8
	movl	%edi, %r9d
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	-1(%r10,%rbp), %rdx
	movl	%r12d, (%rcx)
	movq	%r11, 8(%rcx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	andq	$-4, %rdx
	movq	%r10, 16(%rcx)
	addq	$4, %rdx
	popq	%rbp
	.cfi_def_cfa_offset 24
	movq	%rdx, 24(%rcx)
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	movl	$-1, %r12d
	leaq	6(%rsi), %r10
	movl	$2, %ebp
	movl	%r12d, %eax
	jmp	.L7
	.cfi_endproc
.LFE25:
	.size	core_init_matrix, .-core_init_matrix
	.p2align 4,,15
	.globl	matrix_sum
	.type	matrix_sum, @function
matrix_sum:
.LFB26:
	.cfi_startproc
	testl	%edi, %edi
	je	.L29
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leal	(%rdi,%rdi), %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movswl	%dx, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %r11d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L25:
	movl	%r11d, %ebp
	subl	%edi, %ebp
	movl	%ebp, %ecx
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L36:
	addl	$1, %ecx
	addl	$10, %eax
	xorl	%r8d, %r8d
	cmpl	%ecx, %r11d
	movl	%r9d, %r10d
	je	.L35
.L28:
	movl	%ecx, %r9d
	movl	(%rsi,%r9,4), %r9d
	addl	%r9d, %r8d
	cmpl	%r8d, %edx
	jl	.L36
	cmpl	%r10d, %r9d
	setg	%r10b
	addl	$1, %ecx
	movzbl	%r10b, %r10d
	addl	%r10d, %eax
	cmpl	%ecx, %r11d
	movl	%r9d, %r10d
	jne	.L28
.L35:
	addl	$1, %ebx
	leal	(%r12,%rbp), %r11d
	cmpl	%ebx, %edi
	jne	.L25
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE26:
	.size	matrix_sum, .-matrix_sum
	.p2align 4,,15
	.globl	matrix_mul_const
	.type	matrix_mul_const, @function
matrix_mul_const:
.LFB27:
	.cfi_startproc
	testl	%edi, %edi
	je	.L37
	movswl	%cx, %ecx
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	.p2align 4,,10
	.p2align 3
.L39:
	leal	(%rdi,%rax), %r10d
	.p2align 4,,10
	.p2align 3
.L40:
	movl	%eax, %r9d
	addl	$1, %eax
	movswl	(%rdx,%r9,2), %r8d
	imull	%ecx, %r8d
	cmpl	%eax, %r10d
	movl	%r8d, (%rsi,%r9,4)
	jne	.L40
	addl	$1, %r11d
	cmpl	%r11d, %edi
	jne	.L39
.L37:
	rep ret
	.cfi_endproc
.LFE27:
	.size	matrix_mul_const, .-matrix_mul_const
	.p2align 4,,15
	.globl	matrix_add_const
	.type	matrix_add_const, @function
matrix_add_const:
.LFB28:
	.cfi_startproc
	testl	%edi, %edi
	je	.L45
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L47:
	leal	(%rdi,%rax), %r8d
	.p2align 4,,10
	.p2align 3
.L48:
	movl	%eax, %ecx
	addl	$1, %eax
	addw	%dx, (%rsi,%rcx,2)
	cmpl	%eax, %r8d
	jne	.L48
	addl	$1, %r9d
	cmpl	%r9d, %edi
	jne	.L47
.L45:
	rep ret
	.cfi_endproc
.LFE28:
	.size	matrix_add_const, .-matrix_add_const
	.p2align 4,,15
	.globl	matrix_mul_vect
	.type	matrix_mul_vect, @function
matrix_mul_vect:
.LFB29:
	.cfi_startproc
	testl	%edi, %edi
	je	.L63
	leal	-1(%rdi), %eax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	4(%rsi,%rax,4), %rbp
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L56:
	leal	(%rdi,%rax), %ebx
	movq	%rcx, %r9
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L55:
	movl	%eax, %r8d
	movswl	(%r9), %r11d
	addl	$1, %eax
	movswl	(%rdx,%r8,2), %r8d
	addq	$2, %r9
	imull	%r11d, %r8d
	addl	%r8d, %r10d
	cmpl	%eax, %ebx
	jne	.L55
	movl	%r10d, (%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %rbp
	jne	.L56
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore 3
	.cfi_restore 6
	rep ret
	.cfi_endproc
.LFE29:
	.size	matrix_mul_vect, .-matrix_mul_vect
	.p2align 4,,15
	.globl	matrix_mul_matrix
	.type	matrix_mul_matrix, @function
matrix_mul_matrix:
.LFB30:
	.cfi_startproc
	testl	%edi, %edi
	je	.L79
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leal	(%rdi,%rdi), %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edi, %r11d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%r13d, %r13d
	.p2align 4,,10
	.p2align 3
.L67:
	movl	%r11d, %ebp
	xorl	%ebx, %ebx
	subl	%edi, %ebp
	.p2align 4,,10
	.p2align 3
.L70:
	leal	(%rbx,%rbp), %eax
	movl	%ebx, %r9d
	xorl	%r10d, %r10d
	leaq	(%rsi,%rax,4), %r12
	movl	%ebp, %eax
	.p2align 4,,10
	.p2align 3
.L69:
	movl	%eax, %r8d
	movl	%r9d, %r15d
	addl	$1, %eax
	movswl	(%rdx,%r8,2), %r8d
	movswl	(%rcx,%r15,2), %r15d
	addl	%edi, %r9d
	imull	%r15d, %r8d
	addl	%r8d, %r10d
	cmpl	%eax, %r11d
	jne	.L69
	addl	$1, %ebx
	movl	%r10d, (%r12)
	cmpl	%ebx, %edi
	jne	.L70
	addl	$1, %r13d
	leal	(%r14,%rbp), %r11d
	cmpl	%edi, %r13d
	jne	.L67
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
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L79:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	rep ret
	.cfi_endproc
.LFE30:
	.size	matrix_mul_matrix, .-matrix_mul_matrix
	.p2align 4,,15
	.globl	matrix_mul_matrix_bitextract
	.type	matrix_mul_matrix_bitextract, @function
matrix_mul_matrix_bitextract:
.LFB31:
	.cfi_startproc
	testl	%edi, %edi
	je	.L93
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	(%rdi,%rdi), %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r14d, %r14d
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
	movl	%edi, %ebx
	.p2align 4,,10
	.p2align 3
.L81:
	movl	%ebx, %r12d
	xorl	%ebp, %ebp
	subl	%edi, %r12d
	.p2align 4,,10
	.p2align 3
.L84:
	leal	0(%rbp,%r12), %eax
	movl	%ebp, %r10d
	movl	%r12d, %r9d
	xorl	%r11d, %r11d
	leaq	(%rsi,%rax,4), %r13
	.p2align 4,,10
	.p2align 3
.L83:
	movl	%r9d, %eax
	addl	$1, %r9d
	movswl	(%rdx,%rax,2), %r8d
	movl	%r10d, %eax
	addl	%edi, %r10d
	movswl	(%rcx,%rax,2), %eax
	imull	%r8d, %eax
	movl	%eax, %r8d
	sarl	$5, %eax
	sarl	$2, %r8d
	andl	$127, %eax
	andl	$15, %r8d
	imull	%r8d, %eax
	addl	%eax, %r11d
	cmpl	%r9d, %ebx
	jne	.L83
	addl	$1, %ebp
	movl	%r11d, 0(%r13)
	cmpl	%ebp, %edi
	jne	.L84
	addl	$1, %r14d
	leal	(%r15,%r12), %ebx
	cmpl	%edi, %r14d
	jne	.L81
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
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L93:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	rep ret
	.cfi_endproc
.LFE31:
	.size	matrix_mul_matrix_bitextract, .-matrix_mul_matrix_bitextract
	.p2align 4,,15
	.globl	matrix_test
	.type	matrix_test, @function
matrix_test:
.LFB24:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	orw	$-4096, %r13w
	movq	%rsi, %r12
	movq	%rdx, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	testl	%edi, %edi
	je	.L95
	movswl	%r8w, %r9d
	movswl	%r13w, %r13d
	movl	%r8d, %r15d
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L97:
	leal	(%rdi,%rax), %ecx
	.p2align 4,,10
	.p2align 3
.L96:
	movl	%eax, %edx
	addl	$1, %eax
	addw	%r15w, 0(%rbp,%rdx,2)
	cmpl	%eax, %ecx
	jne	.L96
	addl	$1, %ebx
	movl	%ecx, %eax
	cmpl	%ebx, %edi
	jne	.L97
	xorl	%eax, %eax
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L99:
	leal	(%rbx,%rax), %esi
	.p2align 4,,10
	.p2align 3
.L98:
	movl	%eax, %ecx
	addl	$1, %eax
	movswl	0(%rbp,%rcx,2), %edx
	imull	%r9d, %edx
	cmpl	%eax, %esi
	movl	%edx, (%r12,%rcx,4)
	jne	.L98
	addl	$1, %edi
	movl	%esi, %eax
	cmpl	%ebx, %edi
	jne	.L99
	leal	(%rbx,%rbx), %r8d
	movl	%ebx, %r9d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L103:
	movl	%r9d, %r11d
	subl	%ebx, %r11d
	movl	%r11d, %eax
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L143:
	addl	$1, %eax
	addl	$10, %edi
	xorl	%ecx, %ecx
	cmpl	%eax, %r9d
	movl	%edx, %esi
	je	.L142
.L102:
	movl	%eax, %edx
	movl	(%r12,%rdx,4), %edx
	addl	%edx, %ecx
	cmpl	%r13d, %ecx
	jg	.L143
	cmpl	%esi, %edx
	setg	%sil
	addl	$1, %eax
	movzbl	%sil, %esi
	addl	%esi, %edi
	cmpl	%eax, %r9d
	movl	%edx, %esi
	jne	.L102
.L142:
	addl	$1, %r10d
	leal	(%r8,%r11), %r9d
	cmpl	%ebx, %r10d
	jne	.L103
	movswl	%di, %edi
	xorl	%esi, %esi
	movl	%r8d, 12(%rsp)
	call	crc16@PLT
	movq	%r14, %rcx
	movq	%r12, %rsi
	movl	%ebx, %edi
	movq	%rbp, %rdx
	movl	%eax, 8(%rsp)
	call	matrix_mul_vect
	movl	8(%rsp), %eax
	movl	12(%rsp), %r8d
	movl	%ebx, %r9d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movzwl	%ax, %eax
	movl	%eax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L108:
	movl	%r9d, %r11d
	subl	%ebx, %r11d
	movl	%r11d, %eax
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L145:
	addl	$1, %eax
	addl	$10, %edi
	xorl	%ecx, %ecx
	cmpl	%eax, %r9d
	movl	%edx, %esi
	je	.L144
.L107:
	movl	%eax, %edx
	movl	(%r12,%rdx,4), %edx
	addl	%edx, %ecx
	cmpl	%r13d, %ecx
	jg	.L145
	cmpl	%esi, %edx
	setg	%sil
	addl	$1, %eax
	movzbl	%sil, %esi
	addl	%esi, %edi
	cmpl	%eax, %r9d
	movl	%edx, %esi
	jne	.L107
.L144:
	addl	$1, %r10d
	leal	(%r8,%r11), %r9d
	cmpl	%ebx, %r10d
	jne	.L108
	movl	8(%rsp), %esi
	movswl	%di, %edi
	call	crc16@PLT
	movq	%r12, %rsi
	movl	%ebx, %edi
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movl	%eax, 8(%rsp)
	call	matrix_mul_matrix
	movl	8(%rsp), %eax
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movzwl	%ax, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L113:
	xorl	%edx, %edx
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L147:
	addl	$1, %edx
	addl	$10, %edi
	xorl	%r8d, %r8d
	cmpl	%ebx, %edx
	movl	%ecx, %r9d
	jnb	.L146
.L112:
	leal	(%rdx,%r10), %ecx
	movl	(%r12,%rcx,4), %ecx
	addl	%ecx, %r8d
	cmpl	%r13d, %r8d
	jg	.L147
	cmpl	%r9d, %ecx
	setg	%r9b
	addl	$1, %edx
	movzbl	%r9b, %r9d
	addl	%r9d, %edi
	cmpl	%ebx, %edx
	movl	%ecx, %r9d
	jb	.L112
.L146:
	addl	$1, %eax
	addl	%ebx, %r10d
	cmpl	%ebx, %eax
	jb	.L113
	movswl	%di, %edi
	call	crc16@PLT
	movq	%r12, %rsi
	movl	%ebx, %edi
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movl	%eax, 8(%rsp)
	call	matrix_mul_matrix_bitextract
	movl	8(%rsp), %eax
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movzwl	%ax, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L118:
	xorl	%edx, %edx
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L149:
	addl	$1, %edx
	addl	$10, %edi
	xorl	%r8d, %r8d
	cmpl	%ebx, %edx
	movl	%ecx, %r9d
	jnb	.L148
.L117:
	leal	(%rdx,%r10), %ecx
	movl	(%r12,%rcx,4), %ecx
	addl	%ecx, %r8d
	cmpl	%r13d, %r8d
	jg	.L149
	cmpl	%r9d, %ecx
	setg	%r9b
	addl	$1, %edx
	movzbl	%r9b, %r9d
	addl	%r9d, %edi
	cmpl	%ebx, %edx
	movl	%ecx, %r9d
	jb	.L117
.L148:
	addl	$1, %eax
	addl	%ebx, %r10d
	cmpl	%ebx, %eax
	jb	.L118
	movswl	%di, %edi
	call	crc16@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L121:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L120:
	leal	(%rdx,%rsi), %ecx
	addl	$1, %edx
	subw	%r15w, 0(%rbp,%rcx,2)
	cmpl	%ebx, %edx
	jb	.L120
	addl	$1, %edi
	addl	%ebx, %esi
	cmpl	%ebx, %edi
	jb	.L121
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L95:
	.cfi_restore_state
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	crc16@PLT
	movq	%r14, %rcx
	movl	%eax, %ebx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	xorl	%edi, %edi
	call	matrix_mul_vect
	movzwl	%bx, %esi
	xorl	%edi, %edi
	call	crc16@PLT
	movq	%r14, %rcx
	movl	%eax, %ebx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	xorl	%edi, %edi
	call	matrix_mul_matrix
	movzwl	%bx, %esi
	xorl	%edi, %edi
	call	crc16@PLT
	movq	%r12, %rsi
	movq	%r14, %rcx
	movq	%rbp, %rdx
	xorl	%edi, %edi
	movl	%eax, %ebx
	call	matrix_mul_matrix_bitextract
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movzwl	%bx, %esi
	xorl	%edi, %edi
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
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	crc16@PLT
	.cfi_endproc
.LFE24:
	.size	matrix_test, .-matrix_test
	.p2align 4,,15
	.globl	core_bench_matrix
	.type	core_bench_matrix, @function
core_bench_matrix:
.LFB23:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	%si, %r8d
	movzwl	%dx, %ebx
	movq	24(%rdi), %rsi
	movq	16(%rdi), %rcx
	movq	8(%rdi), %rdx
	movl	(%rdi), %edi
	call	matrix_test
	movl	%ebx, %esi
	movswl	%ax, %edi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	crc16@PLT
	.cfi_endproc
.LFE23:
	.size	core_bench_matrix, .-core_bench_matrix
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
