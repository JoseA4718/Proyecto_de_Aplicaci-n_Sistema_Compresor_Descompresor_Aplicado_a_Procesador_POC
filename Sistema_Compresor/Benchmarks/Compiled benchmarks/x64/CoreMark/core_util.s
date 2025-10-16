	.file	"core_util.c"
	.text
	.p2align 4,,15
	.globl	parseval
	.type	parseval, @function
parseval:
.LFB23:
	.cfi_startproc
	movsbl	(%rdi), %edx
	movl	$1, %r8d
	cmpb	$45, %dl
	jne	.L2
	movsbl	1(%rdi), %edx
	movl	$-1, %r8d
	addq	$1, %rdi
.L2:
	cmpb	$48, %dl
	je	.L3
	leal	-48(%rdx), %eax
	cmpb	$9, %al
	ja	.L19
	movzbl	1(%rdi), %ecx
.L6:
	xorl	%eax, %eax
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L20:
	movsbl	%cl, %edx
	movzbl	1(%rdi), %ecx
.L10:
	leal	(%rax,%rax,4), %esi
	addq	$1, %rdi
	leal	-48(%rdx,%rsi,2), %eax
	leal	-48(%rcx), %edx
	cmpb	$9, %dl
	jbe	.L20
.L5:
	cmpb	$75, %cl
	je	.L21
	movl	%eax, %edx
	sall	$20, %edx
	cmpb	$77, %cl
	cmove	%edx, %eax
	imull	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movzbl	1(%rdi), %ecx
	cmpb	$120, %cl
	jne	.L6
	movsbl	2(%rdi), %ecx
	leaq	2(%rdi), %rsi
	leal	-48(%rcx), %eax
	cmpb	$9, %al
	jbe	.L15
	leal	-97(%rcx), %edx
	xorl	%eax, %eax
	cmpb	$5, %dl
	ja	.L5
.L15:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L16:
	leal	-48(%rcx), %edx
	subl	$87, %ecx
	cmpl	$9, %edx
	cmovg	%ecx, %edx
	addq	$1, %rsi
	movsbl	(%rsi), %ecx
	sall	$4, %eax
	addl	%edx, %eax
	leal	-48(%rcx), %edx
	cmpb	$9, %dl
	jbe	.L16
	leal	-97(%rcx), %edx
	cmpb	$5, %dl
	jbe	.L16
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L21:
	sall	$10, %eax
	imull	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	movl	%edx, %ecx
	xorl	%eax, %eax
	jmp	.L5
	.cfi_endproc
.LFE23:
	.size	parseval, .-parseval
	.p2align 4,,15
	.globl	get_seed_args
	.type	get_seed_args, @function
get_seed_args:
.LFB24:
	.cfi_startproc
	cmpl	%edi, %esi
	jg	.L24
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	movslq	%edi, %rdi
	movq	(%rdx,%rdi,8), %rdi
	jmp	parseval
	.cfi_endproc
.LFE24:
	.size	get_seed_args, .-get_seed_args
	.p2align 4,,15
	.globl	crcu8
	.type	crcu8, @function
crcu8:
.LFB25:
	.cfi_startproc
	movl	%esi, %eax
	movl	$8, %edx
	.p2align 4,,10
	.p2align 3
.L27:
	movl	%edi, %esi
	shrb	%dil
	xorl	%eax, %esi
	shrw	%ax
	movl	%eax, %ecx
	xorw	$-24575, %cx
	andl	$1, %esi
	cmovne	%ecx, %eax
	subb	$1, %dl
	jne	.L27
	rep ret
	.cfi_endproc
.LFE25:
	.size	crcu8, .-crcu8
	.p2align 4,,15
	.globl	crcu16
	.type	crcu16, @function
crcu16:
.LFB26:
	.cfi_startproc
	movl	%esi, %eax
	movl	%edi, %ecx
	movl	$8, %edx
	.p2align 4,,10
	.p2align 3
.L33:
	movl	%ecx, %r8d
	shrb	%cl
	xorl	%eax, %r8d
	shrw	%ax
	movl	%eax, %esi
	xorw	$-24575, %si
	andl	$1, %r8d
	cmovne	%esi, %eax
	subb	$1, %dl
	jne	.L33
	movl	%edi, %edx
	movzbl	%dh, %edi
	movl	$8, %edx
	.p2align 4,,10
	.p2align 3
.L35:
	movl	%edi, %esi
	shrb	%dil
	xorl	%eax, %esi
	shrw	%ax
	movl	%eax, %ecx
	xorw	$-24575, %cx
	andl	$1, %esi
	cmovne	%ecx, %eax
	subb	$1, %dl
	jne	.L35
	rep ret
	.cfi_endproc
.LFE26:
	.size	crcu16, .-crcu16
	.p2align 4,,15
	.globl	crcu32
	.type	crcu32, @function
crcu32:
.LFB27:
	.cfi_startproc
	movl	%edi, %r9d
	movzwl	%si, %esi
	movzwl	%di, %edi
	call	crcu16
	movl	%r9d, %edi
	movzwl	%ax, %esi
	shrl	$16, %edi
	jmp	crcu16
	.cfi_endproc
.LFE27:
	.size	crcu32, .-crcu32
	.p2align 4,,15
	.globl	crc16
	.type	crc16, @function
crc16:
.LFB28:
	.cfi_startproc
	movzwl	%si, %esi
	movzwl	%di, %edi
	jmp	crcu16
	.cfi_endproc
.LFE28:
	.size	crc16, .-crc16
	.p2align 4,,15
	.globl	check_data_types
	.type	check_data_types, @function
check_data_types:
.LFB29:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE29:
	.size	check_data_types, .-check_data_types
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
