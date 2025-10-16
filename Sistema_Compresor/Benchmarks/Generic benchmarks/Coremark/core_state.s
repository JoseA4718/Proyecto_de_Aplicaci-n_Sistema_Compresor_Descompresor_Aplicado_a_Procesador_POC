	.file	"core_state.c"
	.text
	.p2align 4,,15
	.globl	core_init_state
	.type	core_init_state, @function
core_init_state:
.LFB24:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	-1(%rdi), %r8d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	.L7(%rip), %r9
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	scipat(%rip), %r11
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	floatpat(%rip), %r10
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	intpat(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	errpat(%rip), %rbx
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
.L2:
	leal	1(%r12,%rcx), %r14d
	cmpl	%r8d, %r14d
	jnb	.L21
.L11:
	testl	%ecx, %ecx
	jne	.L22
.L3:
	addl	$1, %esi
	movl	%esi, %eax
	movl	%esi, %ecx
	andl	$7, %eax
	sarw	$3, %cx
	subl	$3, %eax
	andl	$3, %ecx
	cmpw	$4, %ax
	ja	.L5
	movzwl	%ax, %eax
	movslq	%ecx, %rcx
	movslq	(%r9,%rax,4), %rax
	addq	%r9, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L6-.L7
	.long	.L6-.L7
	.long	.L8-.L7
	.long	.L8-.L7
	.long	.L9-.L7
	.text
	.p2align 4,,10
	.p2align 3
.L6:
	movq	(%r10,%rcx,8), %r13
	movl	$8, %ecx
	leal	1(%r12,%rcx), %r14d
	cmpl	%r8d, %r14d
	jb	.L11
	.p2align 4,,10
	.p2align 3
.L21:
	cmpl	%edi, %r12d
	jnb	.L1
	movl	%r12d, %ecx
	subl	%r12d, %r8d
	leaq	(%rdx,%rcx), %rax
	leaq	1(%rdx,%rcx), %rdx
	addq	%rdx, %r8
	.p2align 4,,10
	.p2align 3
.L13:
	movb	$0, (%rax)
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L13
.L1:
	popq	%rbx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	movq	(%r11,%rcx,8), %r13
	movl	$8, %ecx
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L22:
	leaq	(%rdx,%r12), %r15
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L4:
	movzbl	0(%r13,%rax), %r12d
	movb	%r12b, (%r15,%rax)
	addq	$1, %rax
	cmpl	%eax, %ecx
	ja	.L4
	movb	$44, (%r15,%rcx)
	movl	%r14d, %r12d
	jmp	.L3
.L9:
	movq	(%rbx,%rcx,8), %r13
	movl	$8, %ecx
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L5:
	movslq	%ecx, %rcx
	movq	0(%rbp,%rcx,8), %r13
	movl	$4, %ecx
	jmp	.L2
	.cfi_endproc
.LFE24:
	.size	core_init_state, .-core_init_state
	.p2align 4,,15
	.globl	core_state_transition
	.type	core_state_transition, @function
core_state_transition:
.LFB26:
	.cfi_startproc
	movq	(%rdi), %rdx
	movzbl	(%rdx), %eax
	testb	%al, %al
	je	.L79
	cmpb	$44, %al
	leaq	1(%rdx), %rcx
	je	.L81
	movl	(%rsi), %r10d
	leal	-48(%rax), %r9d
	cmpb	$9, %r9b
	leal	1(%r10), %r8d
	ja	.L32
	movl	%r8d, (%rsi)
	movzbl	1(%rdx), %eax
	testb	%al, %al
	je	.L59
	addq	$2, %rdx
	cmpb	$44, %al
	je	.L69
.L52:
	cmpb	$46, %al
	je	.L82
	subl	$48, %eax
	cmpb	$9, %al
	jbe	.L42
	addl	$1, 16(%rsi)
	movl	$1, %eax
.L25:
	movq	%rdx, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	leal	-43(%rax), %r9d
	andl	$253, %r9d
	jne	.L83
	movl	%r8d, (%rsi)
	movzbl	1(%rdx), %r8d
	testb	%r8b, %r8b
	je	.L63
	cmpb	$44, %r8b
	leaq	2(%rdx), %rcx
	je	.L63
	movl	8(%rsi), %eax
	leal	-48(%r8), %r9d
	addl	$1, %eax
	cmpb	$9, %r9b
	jbe	.L35
	cmpb	$46, %r8b
	je	.L84
	movq	%rcx, %rdx
	movl	%eax, 8(%rsi)
	movl	$1, %eax
	movq	%rdx, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	addl	$1, 16(%rsi)
	movzbl	1(%rcx), %eax
	testb	%al, %al
	je	.L76
	cmpb	$44, %al
	leaq	1(%rdx), %r8
	je	.L65
.L51:
	movl	%eax, %ecx
	andl	$-33, %ecx
	cmpb	$69, %cl
	jne	.L43
	addl	$1, 20(%rsi)
	movzbl	1(%rdx), %eax
	testb	%al, %al
	je	.L85
	cmpb	$44, %al
	leaq	1(%r8), %rdx
	je	.L78
	movl	12(%rsi), %ecx
	subl	$43, %eax
	addl	$1, %ecx
	testb	$-3, %al
	movl	%ecx, 12(%rsi)
	jne	.L80
	movzbl	1(%r8), %eax
	testb	%al, %al
	je	.L86
	cmpb	$44, %al
	leaq	2(%r8), %rcx
	je	.L87
	movl	24(%rsi), %edx
	subl	$48, %eax
	addl	$1, %edx
	cmpb	$9, %al
	movl	%edx, 24(%rsi)
	jbe	.L48
	movq	%rcx, %rdx
.L80:
	movl	$1, %eax
	movq	%rdx, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	movzbl	2(%r8), %eax
	testb	%al, %al
	je	.L88
	cmpb	$44, %al
	leaq	3(%r8), %rdx
	je	.L67
.L27:
	subl	$48, %eax
	cmpb	$9, %al
	jbe	.L50
	addl	$1, 4(%rsi)
	movl	$1, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L50:
	movzbl	1(%rcx), %eax
	testb	%al, %al
	je	.L67
	leaq	1(%rdx), %r8
	cmpb	$44, %al
	movq	%rdx, %rcx
	movq	%r8, %rdx
	jne	.L27
.L67:
	movl	$7, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L43:
	subl	$48, %eax
	cmpb	$9, %al
	ja	.L89
	movzbl	1(%rdx), %eax
	testb	%al, %al
	je	.L65
	cmpb	$44, %al
	leaq	1(%r8), %rcx
	movq	%r8, %rdx
	je	.L61
	movq	%rcx, %r8
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L42:
	movzbl	1(%rcx), %eax
	testb	%al, %al
	je	.L69
	leaq	1(%rdx), %r8
	cmpb	$44, %al
	movq	%rdx, %rcx
	movq	%r8, %rdx
	jne	.L52
.L69:
	movl	$4, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L89:
	addl	$1, 20(%rsi)
	movq	%r8, %rdx
	movl	$1, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L83:
	cmpb	$46, %al
	je	.L34
	addl	$1, 4(%rsi)
	movl	%r8d, (%rsi)
	movq	%rcx, %rdx
	movl	$1, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L35:
	movl	%eax, 8(%rsi)
	movzbl	2(%rdx), %eax
	testb	%al, %al
	je	.L59
	addq	$3, %rdx
	cmpb	$44, %al
	jne	.L52
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L81:
	movq	%rcx, %rdx
.L79:
	xorl	%eax, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L84:
	movl	%eax, 8(%rsi)
	movzbl	2(%rdx), %eax
	testb	%al, %al
	je	.L61
	cmpb	$44, %al
	leaq	3(%rdx), %r8
	je	.L65
.L75:
	movq	%rcx, %rdx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L34:
	movl	%r8d, (%rsi)
	movzbl	1(%rdx), %eax
	testb	%al, %al
	je	.L61
	cmpb	$44, %al
	leaq	2(%rdx), %r8
	jne	.L75
	.p2align 4,,10
	.p2align 3
.L65:
	movq	%r8, %rdx
	movl	$5, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L59:
	movq	%rcx, %rdx
	movl	$4, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L85:
	movq	%r8, %rdx
.L78:
	movl	$3, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L61:
	movq	%rcx, %rdx
.L76:
	movl	$5, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L86:
	movl	$6, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L88:
	movq	%rcx, %rdx
	movl	$7, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L63:
	movq	%rcx, %rdx
	movl	$2, %eax
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L87:
	movq	%rcx, %rdx
	movl	$6, %eax
	jmp	.L25
	.cfi_endproc
.LFE26:
	.size	core_state_transition, .-core_state_transition
	.p2align 4,,15
	.globl	core_bench_state
	.type	core_bench_state, @function
core_bench_state:
.LFB23:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%ecx, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebp
	movl	%r9d, %r11d
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leaq	64(%rsp), %rbx
	leaq	32(%rsp), %r12
	movw	%dx, 12(%rsp)
	movw	%r8w, 14(%rsp)
	movq	%rsi, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L91:
	movl	$0, (%rbx,%rax)
	movl	$0, (%r12,%rax)
	addq	$4, %rax
	cmpq	$32, %rax
	jne	.L91
	movzbl	(%r14), %edx
	testb	%dl, %dl
	je	.L92
	leaq	24(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L93:
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	core_state_transition
	movl	%eax, %eax
	addl	$1, 32(%rsp,%rax,4)
	movq	24(%rsp), %rax
	cmpb	$0, (%rax)
	jne	.L93
	addq	%r14, %rbp
	movzbl	(%r14), %edx
	movq	%r14, 24(%rsp)
	cmpq	%rbp, %r14
	jnb	.L94
.L105:
	movswq	14(%rsp), %rcx
	movq	%r14, %rax
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L121:
	movzbl	(%rax), %edx
.L97:
	cmpb	$44, %dl
	je	.L95
	xorb	12(%rsp), %dl
	movb	%dl, (%rax)
.L95:
	movq	24(%rsp), %rax
	addq	%rcx, %rax
	cmpq	%rbp, %rax
	movq	%rax, 24(%rsp)
	jb	.L121
	cmpb	$0, (%r14)
	movq	%r14, 24(%rsp)
	je	.L102
	leaq	24(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L99:
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	core_state_transition
	movl	%eax, %eax
	addl	$1, 32(%rsp,%rax,4)
	movq	24(%rsp), %rax
	cmpb	$0, (%rax)
	jne	.L99
	cmpq	%r14, %rbp
	movq	%r14, 24(%rsp)
	jbe	.L100
	movswq	14(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L102:
	movzbl	(%r14), %eax
	cmpb	$44, %al
	je	.L101
	xorl	%r15d, %eax
	movb	%al, (%r14)
.L101:
	movq	24(%rsp), %r14
	addq	%rcx, %r14
	cmpq	%r14, %rbp
	movq	%r14, 24(%rsp)
	ja	.L102
.L100:
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L103:
	movl	(%r12,%rbp), %edi
	movzwl	%r11w, %esi
	call	crcu32@PLT
	movl	(%rbx,%rbp), %edi
	movzwl	%ax, %esi
	addq	$4, %rbp
	call	crcu32@PLT
	cmpq	$32, %rbp
	movl	%eax, %r11d
	jne	.L103
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L122
	addq	$120, %rsp
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
	.p2align 4,,10
	.p2align 3
.L92:
	.cfi_restore_state
	addq	%r14, %rbp
	movq	%r14, 24(%rsp)
	cmpq	%rbp, %r14
	jb	.L105
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L94:
	testb	%dl, %dl
	jne	.L99
	jmp	.L100
.L122:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	core_bench_state, .-core_bench_state
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"T0.3e-1F"
.LC1:
	.string	"-T.T++Tq"
.LC2:
	.string	"1T3.4e4z"
.LC3:
	.string	"34.0e-T^"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	errpat, @object
	.size	errpat, 32
errpat:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.section	.rodata.str1.1
.LC4:
	.string	"5.500e+3"
.LC5:
	.string	"-.123e-2"
.LC6:
	.string	"-87e+832"
.LC7:
	.string	"+0.6e-12"
	.section	.data.rel.ro.local
	.align 32
	.type	scipat, @object
	.size	scipat, 32
scipat:
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.section	.rodata.str1.1
.LC8:
	.string	"35.54400"
.LC9:
	.string	".1234500"
.LC10:
	.string	"-110.700"
.LC11:
	.string	"+0.64400"
	.section	.data.rel.ro.local
	.align 32
	.type	floatpat, @object
	.size	floatpat, 32
floatpat:
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.section	.rodata.str1.1
.LC12:
	.string	"5012"
.LC13:
	.string	"1234"
.LC14:
	.string	"-874"
.LC15:
	.string	"+122"
	.section	.data.rel.ro.local
	.align 32
	.type	intpat, @object
	.size	intpat, 32
intpat:
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
