	.file	"core_main.c"
	.text
	.p2align 4,,15
	.globl	iterate
	.type	iterate, @function
iterate:
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
	movl	44(%rdi), %r12d
	movq	$0, 96(%rdi)
	testl	%r12d, %r12d
	je	.L2
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	movl	$-1, %r13d
	.p2align 4,,10
	.p2align 3
.L4:
	movl	$1, %esi
	movq	%rbx, %rdi
	call	core_bench_list@PLT
	movzwl	96(%rbx), %esi
	movzwl	%ax, %edi
	call	crcu16@PLT
	movl	%r13d, %esi
	movq	%rbx, %rdi
	movw	%ax, 96(%rbx)
	call	core_bench_list@PLT
	movzwl	96(%rbx), %esi
	movzwl	%ax, %edi
	call	crcu16@PLT
	testl	%ebp, %ebp
	movw	%ax, 96(%rbx)
	je	.L11
.L3:
	addl	$1, %ebp
	cmpl	%ebp, %r12d
	jne	.L4
.L2:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
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
.L11:
	.cfi_restore_state
	movw	%ax, 98(%rbx)
	jmp	.L3
	.cfi_endproc
.LFE23:
	.size	iterate, .-iterate
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"6k performance run parameters for coremark."
	.align 8
.LC2:
	.string	"6k validation run parameters for coremark."
	.align 8
.LC3:
	.string	"Profile generation run parameters for coremark."
	.align 8
.LC4:
	.string	"2K performance run parameters for coremark."
	.align 8
.LC5:
	.string	"2K validation run parameters for coremark."
	.align 8
.LC6:
	.string	"[%u]ERROR! list crc 0x%04x - should be 0x%04x\n"
	.align 8
.LC7:
	.string	"[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\n"
	.align 8
.LC8:
	.string	"[%u]ERROR! state crc 0x%04x - should be 0x%04x\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"CoreMark Size    : %lu\n"
.LC10:
	.string	"Total ticks      : %lu\n"
.LC11:
	.string	"Total time (secs): %f\n"
.LC13:
	.string	"Iterations/Sec   : %f\n"
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"ERROR! Must execute for at least 10 secs for a valid result!"
	.section	.rodata.str1.1
.LC16:
	.string	"Iterations       : %lu\n"
.LC17:
	.string	"GCC7.5.0"
.LC18:
	.string	"Compiler version : %s\n"
.LC19:
	.string	"-O2 -DPERFORMANCE_RUN=1  -lrt"
.LC20:
	.string	"Compiler flags   : %s\n"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"Please put data memory location here\n\t\t\t(e.g. code in flash, data on heap etc)"
	.section	.rodata.str1.1
.LC22:
	.string	"Memory location  : %s\n"
.LC23:
	.string	"seedcrc          : 0x%04x\n"
.LC24:
	.string	"[%d]crclist       : 0x%04x\n"
.LC25:
	.string	"[%d]crcmatrix     : 0x%04x\n"
.LC26:
	.string	"[%d]crcstate      : 0x%04x\n"
.LC27:
	.string	"[%d]crcfinal      : 0x%04x\n"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"Correct operation validated. See README.md for run and reporting rules."
	.section	.rodata.str1.1
.LC29:
	.string	"CoreMark 1.0 : %f / %s %s"
.LC30:
	.string	" / %s"
.LC31:
	.string	"Errors detected"
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"Cannot validate operation for these seed values, please compare with results on a known platform."
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	movq	%rsi, %rbx
	movq	%rbx, %rdx
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	leaq	48(%rsp), %rbp
	movl	%edi, 44(%rsp)
	leaq	44(%rsp), %rsi
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	leaq	106(%rbp), %rdi
	call	portable_init@PLT
	movl	44(%rsp), %esi
	movq	%rbx, %rdx
	movl	$1, %edi
	call	get_seed_args@PLT
	movl	44(%rsp), %esi
	movq	%rbx, %rdx
	movl	$2, %edi
	movw	%ax, 48(%rsp)
	call	get_seed_args@PLT
	movl	44(%rsp), %esi
	movq	%rbx, %rdx
	movl	$3, %edi
	movw	%ax, 50(%rsp)
	call	get_seed_args@PLT
	movl	44(%rsp), %esi
	movq	%rbx, %rdx
	movl	$4, %edi
	movw	%ax, 52(%rsp)
	call	get_seed_args@PLT
	movl	44(%rsp), %esi
	movq	%rbx, %rdx
	movl	$5, %edi
	movl	%eax, 92(%rsp)
	call	get_seed_args@PLT
	movl	$7, %edx
	testl	%eax, %eax
	cmove	%edx, %eax
	movl	%eax, 96(%rsp)
	movabsq	$281474976710655, %rax
	testq	%rax, 48(%rsp)
	jne	.L15
	movl	$0, 48(%rsp)
	movw	$102, 52(%rsp)
.L15:
	movabsq	$281474976710655, %rax
	andq	48(%rsp), %rax
	cmpq	$1, %rax
	jne	.L16
	movl	$873804821, 48(%rsp)
	movw	$102, 52(%rsp)
.L16:
	movl	44(%rsp), %esi
	movq	%rbx, %rdx
	movl	$7, %edi
	call	get_seed_args@PLT
	testw	%ax, %ax
	je	.L119
	movswl	%ax, %edi
	movl	%edi, 88(%rsp)
.L17:
	call	portable_malloc@PLT
	movl	96(%rsp), %esi
	movq	%rax, 56(%rsp)
	xorl	%edi, %edi
	movw	%di, 152(%rsp)
	movl	%esi, %r8d
	movl	%esi, %r9d
	movl	%esi, %edx
	andl	$1, %r8d
	andl	$2, %r9d
	leal	1(%r8), %eax
	cmove	%r8d, %eax
	andl	$4, %edx
	cmpl	$1, %edx
	sbbw	$-1, %ax
	xorl	%edx, %edx
	xorl	%edi, %edi
	movzwl	%ax, %ecx
	movl	88(%rsp), %eax
	divl	%ecx
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%eax, 88(%rsp)
.L21:
	movl	%edx, %r10d
	sall	%cl, %r10d
	testl	%esi, %r10d
	jne	.L120
.L20:
	addq	$1, %rcx
	cmpq	$3, %rcx
	jne	.L21
	testl	%r8d, %r8d
	jne	.L121
.L22:
	testl	%r9d, %r9d
	jne	.L122
.L23:
	andl	$4, %esi
	je	.L24
	movswl	48(%rsp), %esi
	movq	80(%rsp), %rdx
	movl	88(%rsp), %edi
	call	core_init_state@PLT
.L24:
	movl	92(%rsp), %esi
	testl	%esi, %esi
	jne	.L25
	movl	$1, 92(%rsp)
	.p2align 4,,10
	.p2align 3
.L26:
	movl	92(%rsp), %eax
	leal	(%rax,%rax,4), %eax
	addl	%eax, %eax
	movl	%eax, 92(%rsp)
	call	start_time@PLT
	movq	%rbp, %rdi
	call	iterate
	call	stop_time@PLT
	call	get_time@PLT
	movq	%rax, %rdi
	call	time_in_secs@PLT
	movsd	.LC0(%rip), %xmm2
	ucomisd	%xmm0, %xmm2
	ja	.L26
	cvttsd2siq	%xmm0, %rcx
	movl	$1, %eax
	testl	%ecx, %ecx
	cmove	%eax, %ecx
	movl	$10, %eax
	xorl	%edx, %edx
	divl	%ecx
	addl	$1, %eax
	imull	92(%rsp), %eax
	movl	%eax, 92(%rsp)
.L25:
	call	start_time@PLT
	movq	%rbp, %rdi
	call	iterate
	call	stop_time@PLT
	call	get_time@PLT
	movswl	48(%rsp), %edi
	xorl	%esi, %esi
	movq	%rax, 8(%rsp)
	call	crc16@PLT
	movswl	50(%rsp), %edi
	movzwl	%ax, %esi
	call	crc16@PLT
	movswl	52(%rsp), %edi
	movzwl	%ax, %esi
	call	crc16@PLT
	movswl	88(%rsp), %edi
	movzwl	%ax, %esi
	call	crc16@PLT
	movzwl	%ax, %ebx
	cmpw	$31493, %ax
	movl	%ebx, 28(%rsp)
	je	.L29
	ja	.L30
	cmpw	$6386, %ax
	je	.L31
	cmpw	$20143, %ax
	jne	.L68
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movw	$2, 42(%rsp)
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L122:
	movswl	50(%rsp), %edx
	movswl	48(%rsp), %eax
	leaq	64(%rbp), %rcx
	movq	72(%rsp), %rsi
	movl	88(%rsp), %edi
	sall	$16, %edx
	orl	%eax, %edx
	call	core_init_matrix@PLT
	movl	96(%rsp), %esi
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L121:
	movswl	48(%rsp), %edx
	movq	64(%rsp), %rsi
	movl	%eax, %edi
	call	core_list_init@PLT
	movl	96(%rsp), %esi
	movq	%rax, 104(%rsp)
	movl	%esi, %r9d
	andl	$2, %r9d
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L119:
	movl	$2000, 88(%rsp)
	movl	$2000, %edi
	jmp	.L17
.L120:
	movzwl	%di, %r10d
	addl	$1, %edi
	imull	%eax, %r10d
	addq	56(%rsp), %r10
	movq	%r10, 16(%rbp,%rcx,8)
	jmp	.L20
.L30:
	cmpw	$-30206, %ax
	je	.L33
	cmpw	$-5643, %ax
	jne	.L68
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movw	$3, 42(%rsp)
.L35:
	movl	default_num_contexts(%rip), %edx
	xorl	%ebx, %ebx
	testl	%edx, %edx
	je	.L28
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	movswl	42(%rsp), %r13d
	movq	%rbp, 32(%rsp)
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L124:
	leaq	0(,%rbx,8), %rax
	subq	%rbx, %rax
	salq	$4, %rax
	movzwl	152(%rsp,%rax), %ebx
.L39:
	addl	$1, %r15d
	addl	%r14d, %ebx
	movzwl	%r15w, %r12d
	cmpl	default_num_contexts(%rip), %r12d
	movl	%ebx, %r14d
	jnb	.L123
.L41:
	movslq	%r12d, %rbx
	xorl	%ecx, %ecx
	leaq	176(%rsp), %rdi
	leaq	0(,%rbx,8), %rax
	subq	%rbx, %rax
	salq	$4, %rax
	testb	$1, 96(%rsp,%rax)
	leaq	(%rdi,%rax), %rbp
	movw	%cx, 152(%rsp,%rax)
	je	.L36
	leaq	list_known_crc(%rip), %rdi
	movzwl	146(%rsp,%rax), %ecx
	movslq	%r13d, %rax
	movzwl	(%rdi,%rax,2), %r8d
	cmpw	%r8w, %cx
	je	.L36
	leaq	.LC6(%rip), %rsi
	movl	%r12d, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	addw	$1, -24(%rbp)
.L36:
	leaq	0(,%rbx,8), %rax
	leaq	176(%rsp), %rdi
	subq	%rbx, %rax
	salq	$4, %rax
	movl	96(%rsp,%rax), %edx
	leaq	(%rdi,%rax), %rbp
	testb	$2, %dl
	je	.L37
	leaq	matrix_known_crc(%rip), %rdi
	movzwl	148(%rsp,%rax), %ecx
	movslq	%r13d, %rax
	movzwl	(%rdi,%rax,2), %r8d
	cmpw	%r8w, %cx
	je	.L37
	leaq	.LC7(%rip), %rsi
	movl	%r12d, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	addw	$1, -24(%rbp)
	movl	-80(%rbp), %edx
.L37:
	andl	$4, %edx
	je	.L124
	leaq	0(,%rbx,8), %r9
	movslq	%r13d, %rax
	subq	%rbx, %r9
	leaq	state_known_crc(%rip), %rbx
	salq	$4, %r9
	movzwl	150(%rsp,%r9), %ecx
	movzwl	(%rbx,%rax,2), %r8d
	cmpw	%r8w, %cx
	jne	.L40
	movzwl	152(%rsp,%r9), %ebx
	jmp	.L39
.L68:
	orl	$-1, %ebx
	movw	%bx, 42(%rsp)
	.p2align 4,,10
	.p2align 3
.L28:
	call	check_data_types@PLT
	movl	88(%rsp), %edx
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rsi
	addl	%eax, %ebx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	8(%rsp), %r14
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movq	%r14, %rdx
	call	__printf_chk@PLT
	movq	%r14, %rdi
	call	time_in_secs@PLT
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	movq	%r14, %rdi
	call	time_in_secs@PLT
	ucomisd	.LC12(%rip), %xmm0
	jbe	.L42
	movl	92(%rsp), %eax
	pxor	%xmm1, %xmm1
	imull	default_num_contexts(%rip), %eax
	movq	%r14, %rdi
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm1, 16(%rsp)
	call	time_in_secs@PLT
	movsd	16(%rsp), %xmm1
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	__printf_chk@PLT
.L42:
	movq	8(%rsp), %rdi
	call	time_in_secs@PLT
	movsd	.LC14(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.L125
.L47:
	movl	92(%rsp), %eax
	movl	default_num_contexts(%rip), %edx
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	imulq	%rax, %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC17(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC21(%rip), %rdx
	leaq	.LC22(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	28(%rsp), %edx
	leaq	.LC23(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	96(%rsp), %eax
	testb	$1, %al
	je	.L48
	cmpl	$0, default_num_contexts(%rip)
	je	.L48
	leaq	.LC24(%rip), %r12
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L49:
	movslq	%edx, %rcx
	addl	$1, %r13d
	movq	%r12, %rsi
	leaq	0(,%rcx,8), %rax
	movl	$1, %edi
	subq	%rcx, %rax
	salq	$4, %rax
	movzwl	146(%rsp,%rax), %ecx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movzwl	%r13w, %edx
	cmpl	default_num_contexts(%rip), %edx
	jb	.L49
	movl	96(%rsp), %eax
.L48:
	testb	$2, %al
	je	.L50
	cmpl	$0, default_num_contexts(%rip)
	je	.L51
	leaq	.LC25(%rip), %r12
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L52:
	movslq	%edx, %rcx
	addl	$1, %r13d
	movq	%r12, %rsi
	leaq	0(,%rcx,8), %rax
	movl	$1, %edi
	subq	%rcx, %rax
	salq	$4, %rax
	movzwl	148(%rsp,%rax), %ecx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movzwl	%r13w, %edx
	cmpl	default_num_contexts(%rip), %edx
	jb	.L52
	movl	96(%rsp), %eax
.L50:
	testb	$4, %al
	je	.L53
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	cmpl	$0, default_num_contexts(%rip)
	leaq	.LC26(%rip), %r12
	je	.L58
	.p2align 4,,10
	.p2align 3
.L54:
	movslq	%edx, %rcx
	addl	$1, %r13d
	movq	%r12, %rsi
	leaq	0(,%rcx,8), %rax
	movl	$1, %edi
	subq	%rcx, %rax
	salq	$4, %rax
	movzwl	150(%rsp,%rax), %ecx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movzwl	%r13w, %edx
	cmpl	default_num_contexts(%rip), %edx
	jb	.L54
.L53:
	movl	default_num_contexts(%rip), %eax
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	leaq	.LC27(%rip), %r12
	testl	%eax, %eax
	je	.L58
	.p2align 4,,10
	.p2align 3
.L57:
	movslq	%edx, %rcx
	addl	$1, %r13d
	movq	%r12, %rsi
	leaq	0(,%rcx,8), %rax
	movl	$1, %edi
	subq	%rcx, %rax
	salq	$4, %rax
	movzwl	144(%rsp,%rax), %ecx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movzwl	%r13w, %edx
	cmpl	default_num_contexts(%rip), %edx
	jb	.L57
.L58:
	cmpw	$0, %bx
	je	.L126
	jle	.L62
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
.L63:
	movq	56(%rsp), %rdi
	call	portable_free@PLT
	leaq	106(%rbp), %rdi
	call	portable_fini@PLT
	xorl	%eax, %eax
	movq	168(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L127
	addq	$184, %rsp
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
.L40:
	.cfi_restore_state
	leaq	.LC8(%rip), %rsi
	movl	%r12d, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	movq	%r9, 16(%rsp)
	call	__printf_chk@PLT
	movq	16(%rsp), %r9
	movzwl	152(%rsp,%r9), %eax
	leal	1(%rax), %ebx
	movw	%bx, 152(%rsp,%r9)
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L123:
	movq	32(%rsp), %rbp
	jmp	.L28
.L125:
	leaq	.LC15(%rip), %rdi
	addl	$1, %ebx
	call	puts@PLT
	jmp	.L47
.L126:
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	cmpw	$3, 42(%rsp)
	jne	.L63
	movl	92(%rsp), %eax
	pxor	%xmm1, %xmm1
	imull	default_num_contexts(%rip), %eax
	movq	8(%rsp), %rdi
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm1, 16(%rsp)
	call	time_in_secs@PLT
	movsd	16(%rsp), %xmm1
	leaq	.LC19(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC29(%rip), %rsi
	movl	$1, %edi
	divsd	%xmm0, %xmm1
	movl	$1, %eax
	movapd	%xmm1, %xmm0
	call	__printf_chk@PLT
	movq	8+mem_name(%rip), %rdx
	leaq	.LC30(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L63
.L62:
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	jmp	.L63
.L33:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movw	$0, 42(%rsp)
	jmp	.L35
.L31:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movw	$4, 42(%rsp)
	jmp	.L35
.L29:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movw	$1, 42(%rsp)
	jmp	.L35
.L51:
	testb	$4, %al
	jne	.L58
	jmp	.L53
.L127:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.globl	mem_name
	.section	.rodata.str1.1
.LC33:
	.string	"Static"
.LC34:
	.string	"Heap"
.LC35:
	.string	"Stack"
	.section	.data.rel.local,"aw",@progbits
	.align 16
	.type	mem_name, @object
	.size	mem_name, 24
mem_name:
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.section	.rodata
	.align 8
	.type	state_known_crc, @object
	.size	state_known_crc, 10
state_known_crc:
	.value	24135
	.value	14783
	.value	-6748
	.value	-29126
	.value	-29308
	.align 8
	.type	matrix_known_crc, @object
	.size	matrix_known_crc, 10
matrix_known_crc:
	.value	-16814
	.value	4505
	.value	22024
	.value	8151
	.value	1863
	.align 8
	.type	list_known_crc, @object
	.size	list_known_crc, 10
list_known_crc:
	.value	-11088
	.value	13120
	.value	27257
	.value	-6380
	.value	-7231
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC12:
	.long	0
	.long	0
	.align 8
.LC14:
	.long	0
	.long	1076101120
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
