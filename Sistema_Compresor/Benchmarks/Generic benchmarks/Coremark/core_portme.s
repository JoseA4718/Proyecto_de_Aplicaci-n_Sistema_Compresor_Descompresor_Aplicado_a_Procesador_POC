	.file	"core_portme.c"
	.text
	.p2align 4,,15
	.globl	portable_malloc
	.type	portable_malloc, @function
portable_malloc:
.LFB41:
	.cfi_startproc
	jmp	malloc@PLT
	.cfi_endproc
.LFE41:
	.size	portable_malloc, .-portable_malloc
	.p2align 4,,15
	.globl	portable_free
	.type	portable_free, @function
portable_free:
.LFB42:
	.cfi_startproc
	jmp	free@PLT
	.cfi_endproc
.LFE42:
	.size	portable_free, .-portable_free
	.p2align 4,,15
	.globl	start_time
	.type	start_time, @function
start_time:
.LFB43:
	.cfi_startproc
	leaq	start_time_val(%rip), %rsi
	xorl	%edi, %edi
	jmp	clock_gettime@PLT
	.cfi_endproc
.LFE43:
	.size	start_time, .-start_time
	.p2align 4,,15
	.globl	stop_time
	.type	stop_time, @function
stop_time:
.LFB44:
	.cfi_startproc
	leaq	stop_time_val(%rip), %rsi
	xorl	%edi, %edi
	jmp	clock_gettime@PLT
	.cfi_endproc
.LFE44:
	.size	stop_time, .-stop_time
	.p2align 4,,15
	.globl	get_time
	.type	get_time, @function
get_time:
.LFB45:
	.cfi_startproc
	movq	8+stop_time_val(%rip), %rsi
	subq	8+start_time_val(%rip), %rsi
	movabsq	$4835703278458516699, %rdx
	movq	stop_time_val(%rip), %rcx
	subq	start_time_val(%rip), %rcx
	movq	%rsi, %rax
	sarq	$63, %rsi
	imulq	%rdx
	imulq	$1000, %rcx, %rcx
	sarq	$18, %rdx
	subq	%rsi, %rdx
	leaq	(%rcx,%rdx), %rax
	ret
	.cfi_endproc
.LFE45:
	.size	get_time, .-get_time
	.p2align 4,,15
	.globl	time_in_secs
	.type	time_in_secs, @function
time_in_secs:
.LFB46:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdi, %xmm0
	divsd	.LC0(%rip), %xmm0
	ret
	.cfi_endproc
.LFE46:
	.size	time_in_secs, .-time_in_secs
	.p2align 4,,15
	.globl	portable_init
	.type	portable_init, @function
portable_init:
.LFB47:
	.cfi_startproc
	movb	$1, (%rdi)
	ret
	.cfi_endproc
.LFE47:
	.size	portable_init, .-portable_init
	.p2align 4,,15
	.globl	portable_fini
	.type	portable_fini, @function
portable_fini:
.LFB48:
	.cfi_startproc
	movb	$0, (%rdi)
	ret
	.cfi_endproc
.LFE48:
	.size	portable_fini, .-portable_fini
	.globl	default_num_contexts
	.data
	.align 4
	.type	default_num_contexts, @object
	.size	default_num_contexts, 4
default_num_contexts:
	.long	1
	.local	stop_time_val
	.comm	stop_time_val,16,16
	.local	start_time_val
	.comm	start_time_val,16,16
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1083129856
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
