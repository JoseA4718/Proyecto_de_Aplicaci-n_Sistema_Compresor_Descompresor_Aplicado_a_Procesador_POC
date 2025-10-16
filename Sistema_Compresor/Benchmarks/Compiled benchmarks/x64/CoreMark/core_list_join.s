	.file	"core_list_join.c"
	.text
	.p2align 4,,15
	.globl	cmp_idx
	.type	cmp_idx, @function
cmp_idx:
.LFB25:
	.cfi_startproc
	testq	%rdx, %rdx
	jne	.L2
	movzwl	(%rdi), %eax
	movl	%eax, %edx
	shrw	$8, %ax
	xorb	%dl, %dl
	orl	%edx, %eax
	movw	%ax, (%rdi)
	movzwl	(%rsi), %eax
	movl	%eax, %edx
	shrw	$8, %ax
	xorb	%dl, %dl
	orl	%edx, %eax
	movw	%ax, (%rsi)
.L2:
	movswl	2(%rdi), %eax
	movswl	2(%rsi), %edx
	subl	%edx, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	cmp_idx, .-cmp_idx
	.p2align 4,,15
	.globl	calc_func
	.type	calc_func, @function
calc_func:
.LFB23:
	.cfi_startproc
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movzwl	(%rdi), %ebx
	testb	%bl, %bl
	js	.L17
	movl	%ebx, %r8d
	movq	%rsi, %rbp
	movl	%ebx, %eax
	sarw	$3, %r8w
	movq	%rdi, %r12
	movl	%r8d, %esi
	andl	$15, %esi
	movl	%esi, %r8d
	sall	$4, %r8d
	orl	%esi, %r8d
	andw	$7, %ax
	movzwl	96(%rbp), %esi
	je	.L8
	cmpw	$1, %ax
	jne	.L18
	movswl	%r8w, %r8d
	leaq	64(%rbp), %rdi
	movl	%esi, %edx
	movl	%r8d, %esi
	call	core_bench_matrix@PLT
	cmpw	$0, 100(%rbp)
	movl	%eax, %r13d
	jne	.L16
	movw	%ax, 100(%rbp)
.L16:
	movzwl	96(%rbp), %esi
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L17:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ebx, %eax
	andl	$127, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore_state
	movl	%ebx, %r13d
.L7:
	movzwl	%r13w, %edi
	xorb	%bl, %bl
	call	crcu16@PLT
	movw	%ax, 96(%rbp)
	movl	%r13d, %eax
	orb	$-128, %bl
	andl	$127, %eax
	orl	%eax, %ebx
	movw	%bx, (%r12)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	movswl	2(%rbp), %ecx
	movswl	0(%rbp), %edx
	cmpw	$34, %r8w
	movl	$34, %eax
	movl	%esi, %r9d
	movl	40(%rbp), %edi
	movq	32(%rbp), %rsi
	cmovl	%eax, %r8d
	movswl	%r8w, %r8d
	call	core_bench_state@PLT
	cmpw	$0, 102(%rbp)
	movl	%eax, %r13d
	jne	.L16
	movw	%ax, 102(%rbp)
	jmp	.L16
	.cfi_endproc
.LFE23:
	.size	calc_func, .-calc_func
	.p2align 4,,15
	.globl	cmp_complex
	.type	cmp_complex, @function
cmp_complex:
.LFB24:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbp
	movq	%rdx, %rsi
	call	calc_func
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movswl	%ax, %ebx
	call	calc_func
	cwtl
	subl	%eax, %ebx
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	cmp_complex, .-cmp_complex
	.p2align 4,,15
	.globl	copy_info
	.type	copy_info, @function
copy_info:
.LFB26:
	.cfi_startproc
	movzwl	(%rsi), %eax
	movw	%ax, (%rdi)
	movzwl	2(%rsi), %eax
	movw	%ax, 2(%rdi)
	ret
	.cfi_endproc
.LFE26:
	.size	copy_info, .-copy_info
	.p2align 4,,15
	.globl	core_list_insert_new
	.type	core_list_insert_new, @function
core_list_insert_new:
.LFB29:
	.cfi_startproc
	movq	(%rdx), %rax
	leaq	16(%rax), %r10
	cmpq	%r8, %r10
	jnb	.L25
	movq	(%rcx), %r8
	leaq	4(%r8), %r11
	cmpq	%r11, %r9
	jbe	.L25
	movq	%r10, (%rdx)
	movq	(%rdi), %rdx
	movq	%rdx, (%rax)
	movq	%rax, (%rdi)
	movq	%r8, 8(%rax)
	addq	$4, (%rcx)
	movzwl	(%rsi), %ecx
	movq	8(%rax), %rdx
	movw	%cx, (%rdx)
	movzwl	2(%rsi), %ecx
	movw	%cx, 2(%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE29:
	.size	core_list_insert_new, .-core_list_insert_new
	.p2align 4,,15
	.globl	core_list_remove
	.type	core_list_remove, @function
core_list_remove:
.LFB30:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movq	%rdx, 8(%rax)
	movq	(%rax), %rdx
	movq	%rdx, (%rdi)
	movq	$0, (%rax)
	ret
	.cfi_endproc
.LFE30:
	.size	core_list_remove, .-core_list_remove
	.p2align 4,,15
	.globl	core_list_undo_remove
	.type	core_list_undo_remove, @function
core_list_undo_remove:
.LFB31:
	.cfi_startproc
	movq	8(%rdi), %rdx
	movq	8(%rsi), %rcx
	movq	%rdi, %rax
	movq	%rcx, 8(%rdi)
	movq	%rdx, 8(%rsi)
	movq	(%rsi), %rdx
	movq	%rdx, (%rdi)
	movq	%rdi, (%rsi)
	ret
	.cfi_endproc
.LFE31:
	.size	core_list_undo_remove, .-core_list_undo_remove
	.p2align 4,,15
	.globl	core_list_find
	.type	core_list_find, @function
core_list_find:
.LFB32:
	.cfi_startproc
	movzwl	2(%rsi), %ecx
	movq	%rdi, %rax
	testw	%cx, %cx
	js	.L49
	testq	%rdi, %rdi
	je	.L30
	movq	8(%rdi), %rdx
	cmpw	2(%rdx), %cx
	jne	.L32
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L51:
	movq	8(%rax), %rdx
	cmpw	2(%rdx), %cx
	je	.L30
.L32:
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L51
.L30:
	rep ret
	.p2align 4,,10
	.p2align 3
.L49:
	testq	%rdi, %rdi
	je	.L30
	movq	8(%rdi), %rdx
	movzwl	(%rsi), %ecx
	movzbl	(%rdx), %edx
	cmpw	%cx, %dx
	jne	.L31
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L54:
	movq	8(%rax), %rdx
	movzbl	(%rdx), %edx
	cmpw	%cx, %dx
	je	.L53
.L31:
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L53:
	rep ret
	.p2align 4,,10
	.p2align 3
.L50:
	rep ret
.L52:
	rep ret
	.cfi_endproc
.LFE32:
	.size	core_list_find, .-core_list_find
	.p2align 4,,15
	.globl	core_list_reverse
	.type	core_list_reverse, @function
core_list_reverse:
.LFB33:
	.cfi_startproc
	testq	%rdi, %rdi
	movq	%rdi, %rax
	je	.L56
	xorl	%ecx, %ecx
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L58:
	movq	%rdx, %rax
.L57:
	movq	(%rax), %rdx
	movq	%rcx, (%rax)
	movq	%rax, %rcx
	testq	%rdx, %rdx
	jne	.L58
.L56:
	rep ret
	.cfi_endproc
.LFE33:
	.size	core_list_reverse, .-core_list_reverse
	.p2align 4,,15
	.globl	core_list_mergesort
	.type	core_list_mergesort, @function
core_list_mergesort:
.LFB34:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	testq	%r15, %r15
	movq	%rdx, 8(%rsp)
	movl	$1, 24(%rsp)
	je	.L63
.L92:
	movl	$0, 28(%rsp)
	xorl	%r13d, %r13d
	movq	$0, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L76:
	addl	$1, 28(%rsp)
	movq	%r15, %rbx
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L66:
	movq	(%rbx), %rbx
	addl	$1, %r14d
	testq	%rbx, %rbx
	je	.L67
	cmpl	%r14d, 24(%rsp)
	jne	.L66
.L67:
	movl	24(%rsp), %ebp
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L73:
	testl	%ebp, %ebp
	je	.L91
	testq	%rbx, %rbx
	je	.L91
	movq	8(%rbx), %rsi
	movq	8(%r15), %rdi
	movq	8(%rsp), %rdx
	call	*%r12
	testl	%eax, %eax
	jle	.L91
.L71:
	movq	%rbx, %rax
	movq	(%rbx), %rbx
	subl	$1, %ebp
.L68:
	testq	%r13, %r13
	je	.L80
	movq	%rax, 0(%r13)
.L72:
	movq	%rax, %r13
.L65:
	testl	%r14d, %r14d
	jne	.L73
	testl	%ebp, %ebp
	jle	.L82
	testq	%rbx, %rbx
	jne	.L71
.L82:
	testq	%rbx, %rbx
	movq	%rbx, %r15
	jne	.L76
	cmpl	$1, 28(%rsp)
	movq	$0, 0(%r13)
	je	.L89
	movq	16(%rsp), %r15
	sall	24(%rsp)
	testq	%r15, %r15
	jne	.L92
.L63:
	movq	$0, 0
	ud2
	.p2align 4,,10
	.p2align 3
.L80:
	movq	%rax, 16(%rsp)
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L91:
	movq	%r15, %rax
	subl	$1, %r14d
	movq	(%r15), %r15
	jmp	.L68
.L89:
	movq	16(%rsp), %rax
	addq	$40, %rsp
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
	.cfi_endproc
.LFE34:
	.size	core_list_mergesort, .-core_list_mergesort
	.p2align 4,,15
	.globl	core_bench_list
	.type	core_bench_list, @function
core_bench_list:
.LFB27:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r11
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r10d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movzwl	4(%rdi), %r9d
	movq	56(%rdi), %rbx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movw	%si, 6(%rsp)
	testw	%r9w, %r9w
	jle	.L110
	leaq	4(%rsp), %r12
	movl	%esi, %r15d
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L102:
	movzbl	%r14b, %eax
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movw	%ax, 4(%rsp)
	call	core_list_find
	testq	%rbx, %rbx
	je	.L95
	xorl	%ecx, %ecx
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L111:
	movq	%rdx, %rbx
.L96:
	movq	(%rbx), %rdx
	movq	%rcx, (%rbx)
	movq	%rbx, %rcx
	testq	%rdx, %rdx
	jne	.L111
.L95:
	testq	%rax, %rax
	je	.L130
	movq	8(%rax), %rdx
	addl	$1, %ebp
	movzwl	(%rdx), %edx
	testb	$1, %dl
	je	.L99
	sarw	$9, %dx
	andl	$1, %edx
	addl	%edx, %r8d
.L99:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L98
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	(%rbx), %rax
	movq	%rax, (%rdx)
	movq	%rdx, (%rbx)
.L98:
	testw	%r15w, %r15w
	js	.L100
	addl	$1, %r15d
	movw	%r15w, 6(%rsp)
.L100:
	addl	$1, %r14d
	cmpw	%r14w, %r9w
	je	.L131
	movzwl	6(%rsp), %r15d
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L130:
	movq	(%rbx), %rax
	addl	$1, %r13d
	movq	8(%rax), %rax
	movzwl	(%rax), %eax
	sarw	$8, %ax
	andl	$1, %eax
	addl	%eax, %r8d
	jmp	.L98
	.p2align 4,,10
	.p2align 3
.L131:
	leal	(%r8,%rbp,4), %ebp
	subl	%r13d, %ebp
.L94:
	testw	%r10w, %r10w
	jle	.L103
	leaq	cmp_complex(%rip), %rsi
	movq	%rbx, %rdi
	movq	%r11, %rdx
	call	core_list_mergesort
	movq	%rax, %rbx
.L103:
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%rax), %r13
	movq	8(%rax), %r8
	movq	8(%r13), %rdx
	movq	%rdx, 8(%rax)
	movq	0(%r13), %rdx
	movq	%r8, 8(%r13)
	movq	%rdx, (%rax)
	movq	$0, 0(%r13)
	call	core_list_find
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L132
	.p2align 4,,10
	.p2align 3
.L106:
	movq	8(%rbx), %rax
	movzwl	%bp, %esi
	movswl	(%rax), %edi
	call	crc16@PLT
	movq	(%r12), %r12
	movl	%eax, %ebp
	testq	%r12, %r12
	jne	.L106
	movq	(%rbx), %r12
	movq	8(%r13), %r8
.L105:
	movq	8(%r12), %rax
	leaq	cmp_idx(%rip), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rax, 8(%r13)
	movq	(%r12), %rax
	movq	%r8, 8(%r12)
	movq	%rax, 0(%r13)
	movq	%r13, (%r12)
	call	core_list_mergesort
	movq	(%rax), %rbx
	movq	%rax, %r12
	testq	%rbx, %rbx
	je	.L93
	.p2align 4,,10
	.p2align 3
.L108:
	movq	8(%r12), %rax
	movzwl	%bp, %esi
	movswl	(%rax), %edi
	call	crc16@PLT
	movq	(%rbx), %rbx
	movl	%eax, %ebp
	testq	%rbx, %rbx
	jne	.L108
.L93:
	movq	8(%rsp), %rsi
	xorq	%fs:40, %rsi
	movl	%ebp, %eax
	jne	.L133
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
.L132:
	.cfi_restore_state
	movq	(%rbx), %r12
	testq	%r12, %r12
	je	.L105
	jmp	.L106
.L110:
	xorl	%ebp, %ebp
	leaq	4(%rsp), %r12
	jmp	.L94
.L133:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE27:
	.size	core_bench_list, .-core_bench_list
	.p2align 4,,15
	.globl	core_list_init
	.type	core_list_init, @function
core_list_init:
.LFB28:
	.cfi_startproc
	movl	%edi, %eax
	movl	%edx, %ecx
	movl	%edx, %r10d
	movl	$-858993459, %edx
	movq	%rsi, %r9
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	mull	%edx
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r8d, %r8d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	$0, (%rsi)
	shrl	$4, %edx
	subl	$2, %edx
	movq	%rdx, %rdi
	movq	%rdx, %rax
	salq	$4, %rdi
	addq	%rsi, %rdi
	addq	$16, %rsi
	leaq	(%rdi,%rdx,4), %r13
	leaq	32(%r9), %rdx
	movq	%rdi, -8(%rsi)
	leaq	4(%rdi), %rbp
	movl	$32896, (%rdi)
	cmpq	%rdx, %rdi
	jbe	.L135
	leaq	8(%rdi), %r11
	cmpq	%r11, %r13
	ja	.L150
.L135:
	testl	%eax, %eax
	je	.L136
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L138:
	leaq	16(%rsi), %r11
	cmpq	%r11, %rdi
	jbe	.L137
	leaq	4(%rbp), %r12
	cmpq	%r12, %r13
	jbe	.L137
	movl	%edx, %ebx
	movl	%ecx, %r14d
	movq	%r8, (%rsi)
	xorl	%ecx, %ebx
	andl	$7, %r14d
	movq	%rsi, (%r9)
	sall	$3, %ebx
	movq	%rbp, 8(%rsi)
	andl	$120, %ebx
	orl	%r14d, %ebx
	movl	%ebx, %r8d
	sall	$8, %r8d
	orl	%r8d, %ebx
	movl	$32767, %r8d
	movw	%r8w, 2(%rbp)
	movw	%bx, 0(%rbp)
	movq	%rsi, %r8
	movq	%r12, %rbp
	movq	%r11, %rsi
.L137:
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.L138
.L136:
	movl	$-858993459, %edx
	movl	$1, %ecx
	mull	%edx
	shrl	$2, %edx
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L152:
	movw	%cx, 2(%rdi)
.L141:
	addl	$1, %ecx
	movq	%rsi, %r8
.L139:
	movq	(%r8), %rsi
	testq	%rsi, %rsi
	je	.L151
	cmpl	%ecx, %edx
	movq	8(%r8), %rdi
	ja	.L152
	leal	1(%rcx), %eax
	movl	%r10d, %r8d
	xorl	%ecx, %r8d
	sall	$8, %eax
	andw	$1792, %ax
	orl	%r8d, %eax
	andw	$16383, %ax
	movw	%ax, 2(%rdi)
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L151:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	leaq	cmp_idx(%rip), %rsi
	xorl	%edx, %edx
	movq	%r9, %rdi
	jmp	core_list_mergesort
	.p2align 4,,10
	.p2align 3
.L150:
	.cfi_restore_state
	movq	%rsi, (%r9)
	movq	%rbp, 24(%r9)
	movq	%rsi, %r8
	movq	$0, 16(%r9)
	movq	%r11, %rbp
	movl	$2147483647, 4(%rdi)
	movq	%rdx, %rsi
	jmp	.L135
	.cfi_endproc
.LFE28:
	.size	core_list_init, .-core_list_init
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
