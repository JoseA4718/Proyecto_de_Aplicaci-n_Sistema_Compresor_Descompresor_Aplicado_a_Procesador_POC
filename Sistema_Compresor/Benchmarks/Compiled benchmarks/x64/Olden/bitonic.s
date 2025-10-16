	.file	"bitonic.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d @ 0x%x\n"
	.text
	.p2align 4,,15
	.globl	InOrder
	.type	InOrder, @function
InOrder:
.LFB12:
	.file 1 "../olden/bisort/src/bitonic.c"
	.loc 1 29 0
	.cfi_startproc
.LVL0:
	.loc 1 31 0
	testq	%rdi, %rdi
	je	.L14
	.loc 1 29 0
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC0(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
.LVL1:
.L2:
.LBB67:
	.loc 1 34 0
	movq	8(%rbx), %rdi
	.loc 1 33 0
	movq	16(%rbx), %rbp
.LVL2:
	.loc 1 34 0
	call	InOrder
.LVL3:
	.loc 1 36 0
	movzbl	counter.2289(%rip), %eax
	leal	1(%rax), %edx
	testb	%al, %al
	movb	%dl, counter.2289(%rip)
	je	.L15
.L4:
.LBE67:
	.loc 1 31 0
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	jne	.L2
.LVL4:
	.loc 1 40 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LVL5:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL6:
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL7:
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
.LBB70:
.LBB68:
.LBB69:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL8:
	jmp	.L4
.LVL9:
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	rep ret
.LBE69:
.LBE68:
.LBE70:
	.cfi_endproc
.LFE12:
	.size	InOrder, .-InOrder
	.p2align 4,,15
	.globl	mult
	.type	mult, @function
mult:
.LFB13:
	.loc 1 42 0
	.cfi_startproc
.LVL10:
	.loc 1 45 0
	movl	$1759218605, %r8d
	movl	%edi, %eax
	movl	%edi, %r10d
	imull	%r8d
	sarl	$31, %r10d
	.loc 1 46 0
	movl	%esi, %eax
	movl	%esi, %r11d
	sarl	$31, %r11d
	.loc 1 45 0
	sarl	$12, %edx
	movl	%edx, %r9d
	movl	%edx, %ecx
	subl	%r10d, %r9d
	subl	%r10d, %ecx
	.loc 1 46 0
	imull	%r8d
	.loc 1 45 0
	imull	$10000, %r9d, %r9d
	.loc 1 46 0
	sarl	$12, %edx
	.loc 1 45 0
	subl	%r9d, %edi
.LVL11:
	movl	%edi, %r9d
.LVL12:
	.loc 1 46 0
	movl	%edx, %edi
.LVL13:
	subl	%r11d, %edx
	subl	%r11d, %edi
	imull	$10000, %edi, %edi
	.loc 1 47 0
	imull	%r9d, %edx
	.loc 1 46 0
	subl	%edi, %esi
.LVL14:
	.loc 1 47 0
	imull	%esi, %ecx
	imull	%esi, %r9d
.LVL15:
	addl	%edx, %ecx
	movl	%ecx, %eax
	imull	%r8d
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %r8d
.LVL16:
	sarl	$12, %r8d
	subl	%eax, %r8d
	imull	$10000, %r8d, %r8d
	subl	%r8d, %ecx
	imull	$10000, %ecx, %eax
	addl	%r9d, %eax
	.loc 1 48 0
	ret
	.cfi_endproc
.LFE13:
	.size	mult, .-mult
	.p2align 4,,15
	.globl	skiprand
	.type	skiprand, @function
skiprand:
.LFB14:
	.loc 1 51 0
	.cfi_startproc
.LVL17:
	.loc 1 52 0
	testl	%esi, %esi
	je	.L18
.LBB71:
.LBB72:
.LBB73:
.LBB74:
	.loc 1 45 0
	movl	$1759218605, %r9d
.LVL18:
	.p2align 4,,10
	.p2align 3
.L19:
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	movl	%edx, %r8d
	subl	%eax, %edx
	subl	%eax, %r8d
	imull	$10000, %r8d, %r8d
	.loc 1 47 0
	imull	$5821, %edx, %ecx
	.loc 1 45 0
	subl	%r8d, %edi
.LVL19:
	.loc 1 47 0
	imull	$3141, %edi, %eax
	imull	$5821, %edi, %r8d
	addl	%eax, %ecx
	movl	%ecx, %eax
	imull	%r9d
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	subl	%eax, %edx
	imull	$10000, %edx, %edx
	subl	%edx, %ecx
	imull	$10000, %ecx, %ecx
.LBE74:
.LBE73:
.LBE72:
.LBE71:
	.loc 1 52 0
	subl	$1, %esi
.LVL20:
.LBB76:
.LBB75:
	.loc 1 57 0
	leal	1(%rcx,%r8), %edi
.LVL21:
.LBE75:
.LBE76:
	.loc 1 52 0
	jne	.L19
.L18:
	.loc 1 54 0
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE14:
	.size	skiprand, .-skiprand
	.p2align 4,,15
	.globl	random
	.type	random, @function
random:
.LFB15:
	.loc 1 56 0
	.cfi_startproc
.LVL22:
.LBB77:
.LBB78:
	.loc 1 45 0
	movl	$1759218605, %esi
	movl	%edi, %eax
	imull	%esi
	movl	%edi, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	movl	%edx, %r8d
	subl	%eax, %edx
	subl	%eax, %r8d
	imull	$10000, %r8d, %r8d
	.loc 1 47 0
	imull	$5821, %edx, %ecx
	.loc 1 45 0
	subl	%r8d, %edi
.LVL23:
	.loc 1 47 0
	imull	$3141, %edi, %eax
	imull	$5821, %edi, %r8d
	addl	%eax, %ecx
	movl	%ecx, %eax
	imull	%esi
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	sarl	$12, %esi
	subl	%eax, %esi
	imull	$10000, %esi, %esi
	subl	%esi, %ecx
	imull	$10000, %ecx, %ecx
.LBE78:
.LBE77:
	.loc 1 57 0
	leal	1(%rcx,%r8), %eax
	.loc 1 58 0
	ret
	.cfi_endproc
.LFE15:
	.size	random, .-random
	.p2align 4,,15
	.globl	RandTree
	.type	RandTree, @function
RandTree:
.LFB16:
	.loc 1 60 0
	.cfi_startproc
.LVL24:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 64 0
	addl	$1, foo(%rip)
.LVL25:
	.loc 1 65 0
	cmpl	$1, %edi
	jle	.L29
	movl	%ecx, %ebp
.LBB79:
	.loc 1 67 0
	movl	NDim(%rip), %ecx
.LVL26:
	.loc 1 70 0
	movl	%edx, %r14d
	.loc 1 67 0
	cmpl	%ebp, %ecx
	jg	.L33
.L27:
.LBB80:
.LBB81:
.LBB82:
.LBB83:
	.loc 1 45 0
	movl	$1759218605, %ecx
	movl	%esi, %eax
	movl	%edx, 12(%rsp)
	imull	%ecx
.LVL27:
	movl	%esi, %eax
	movl	%edi, %r15d
.LVL28:
	sarl	$31, %eax
.LVL29:
.LBE83:
.LBE82:
.LBE81:
.LBE80:
	.loc 1 74 0
	movl	%r15d, %r13d
	addl	$1, %ebp
.LVL30:
	sarl	%r13d
	.loc 1 75 0
	addl	$1, %r15d
.LBB87:
.LBB86:
.LBB85:
.LBB84:
	.loc 1 45 0
	sarl	$12, %edx
	movl	%edx, %edi
.LVL31:
	subl	%eax, %edx
	subl	%eax, %edi
	imull	$10000, %edi, %edi
	subl	%edi, %esi
.LVL32:
	movl	%esi, %edi
.LVL33:
	.loc 1 47 0
	imull	$3141, %edi, %eax
	imull	$5821, %edx, %esi
	addl	%eax, %esi
	movl	%esi, %eax
	imull	%ecx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	sarl	$12, %ecx
	subl	%eax, %ecx
	imull	$10000, %ecx, %ecx
	imull	$5821, %edi, %edi
	subl	%ecx, %esi
	imull	$10000, %esi, %esi
.LBE84:
.LBE85:
	.loc 1 57 0
	leal	1(%rsi,%rdi), %ebx
.LVL34:
.LBE86:
.LBE87:
	.loc 1 73 0
	movl	$24, %edi
	call	malloc@PLT
.LVL35:
	.loc 1 72 0
	movl	$1374389535, %edx
	.loc 1 73 0
	movq	%rax, %r12
.LVL36:
	.loc 1 72 0
	movl	%ebx, %eax
.LVL37:
	imull	%edx
	movl	%ebx, %eax
	.loc 1 74 0
	movl	%ebp, %ecx
	.loc 1 72 0
	sarl	$31, %eax
	.loc 1 73 0
	movq	$0, 8(%r12)
	movq	$0, 16(%r12)
	.loc 1 74 0
	movl	%ebx, %esi
	movl	%r13d, %edi
	.loc 1 72 0
	sarl	$5, %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	imull	$100, %edx, %edx
	subl	%edx, %eax
	.loc 1 74 0
	movl	%r14d, %edx
	.loc 1 72 0
	movl	%eax, (%r12)
	.loc 1 74 0
	call	RandTree
.LVL38:
.LBB88:
.LBB89:
.LBB90:
.LBB91:
.LBB92:
.LBB93:
	.loc 1 45 0
	movl	$1759218605, %ecx
.LBE93:
.LBE92:
.LBE91:
.LBE90:
.LBE89:
.LBE88:
	.loc 1 74 0
	movq	%rax, %r14
.LVL39:
	.p2align 4,,10
	.p2align 3
.L28:
.LBB101:
.LBB100:
.LBB98:
.LBB96:
.LBB95:
.LBB94:
	.loc 1 45 0
	movl	%ebx, %eax
	imull	%ecx
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	movl	%edx, %edi
	subl	%eax, %edx
	subl	%eax, %edi
	imull	$10000, %edi, %edi
	.loc 1 47 0
	imull	$5821, %edx, %esi
	.loc 1 45 0
	subl	%edi, %ebx
.LVL40:
	.loc 1 47 0
	imull	$3141, %ebx, %eax
	imull	$5821, %ebx, %edi
	addl	%eax, %esi
	movl	%esi, %eax
	imull	%ecx
	movl	%esi, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	subl	%eax, %edx
	imull	$10000, %edx, %edx
	subl	%edx, %esi
	imull	$10000, %esi, %esi
.LBE94:
.LBE95:
.LBE96:
.LBE98:
	.loc 1 52 0
	subl	$1, %r15d
.LVL41:
.LBB99:
.LBB97:
	.loc 1 57 0
	leal	1(%rsi,%rdi), %ebx
.LVL42:
.LBE97:
.LBE99:
	.loc 1 52 0
	jne	.L28
.LVL43:
.LBE100:
.LBE101:
	.loc 1 75 0
	movl	12(%rsp), %edx
	movl	%ebp, %ecx
.LVL44:
	movl	%ebx, %esi
	movl	%r13d, %edi
	call	RandTree
.LVL45:
	.loc 1 77 0
	movq	%r14, 8(%r12)
	.loc 1 78 0
	movq	%rax, 16(%r12)
.LVL46:
.L25:
.LBE79:
	.loc 1 83 0
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
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
.LVL47:
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
.LBB102:
	.loc 1 68 0
	subl	%ebp, %ecx
	movl	$1, %r14d
	subl	$1, %ecx
	sall	%cl, %r14d
	addl	%edx, %r14d
.LVL48:
	jmp	.L27
.LVL49:
	.p2align 4,,10
	.p2align 3
.L29:
.LBE102:
	.loc 1 80 0
	xorl	%r12d, %r12d
.LVL50:
	.loc 1 82 0
	jmp	.L25
	.cfi_endproc
.LFE16:
	.size	RandTree, .-RandTree
	.p2align 4,,15
	.globl	SwapValue
	.type	SwapValue, @function
SwapValue:
.LFB17:
	.loc 1 85 0
	.cfi_startproc
.LVL51:
	.loc 1 88 0
	movl	(%rdi), %edx
.LVL52:
	.loc 1 89 0
	movl	(%rsi), %eax
.LVL53:
	.loc 1 90 0
	movl	%edx, (%rsi)
	.loc 1 91 0
	movl	%eax, (%rdi)
	.loc 1 92 0
	ret
	.cfi_endproc
.LFE17:
	.size	SwapValue, .-SwapValue
	.p2align 4,,15
	.globl	SwapValLeft
	.type	SwapValLeft, @function
SwapValLeft:
.LFB18:
	.loc 1 103 0
	.cfi_startproc
.LVL54:
	.loc 1 104 0
	movl	%r8d, (%rsi)
	.loc 1 105 0
	movq	%rdx, 8(%rsi)
	.loc 1 106 0
	movq	%rcx, 8(%rdi)
	.loc 1 107 0
	movl	%r9d, (%rdi)
	.loc 1 108 0
	ret
	.cfi_endproc
.LFE18:
	.size	SwapValLeft, .-SwapValLeft
	.p2align 4,,15
	.globl	SwapValRight
	.type	SwapValRight, @function
SwapValRight:
.LFB19:
	.loc 1 120 0
	.cfi_startproc
.LVL55:
	.loc 1 121 0
	movl	%r8d, (%rsi)
	.loc 1 122 0
	movq	%rdx, 16(%rsi)
	.loc 1 123 0
	movq	%rcx, 16(%rdi)
	.loc 1 124 0
	movl	%r9d, (%rdi)
	.loc 1 126 0
	ret
	.cfi_endproc
.LFE19:
	.size	SwapValRight, .-SwapValRight
	.p2align 4,,15
	.globl	Bimerge
	.type	Bimerge, @function
Bimerge:
.LFB20:
	.loc 1 135 0
	.cfi_startproc
.LVL56:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp
	movl	%edx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.LVL57:
.L43:
	.loc 1 145 0
	movl	0(%rbp), %ecx
.LVL58:
	.loc 1 149 0
	xorl	%r13d, %r13d
	.loc 1 147 0
	movq	8(%rbp), %rax
.LVL59:
	.loc 1 148 0
	movq	16(%rbp), %rdx
.LVL60:
	.loc 1 149 0
	cmpl	%r12d, %ecx
	setg	%r13b
.LVL61:
	.loc 1 150 0
	cmpl	%ebx, %r13d
	je	.L38
	.loc 1 152 0
	movl	%r12d, 0(%rbp)
.LVL62:
	.loc 1 153 0
	movl	%ecx, %r12d
.LVL63:
.L38:
	.loc 1 156 0
	testq	%rax, %rax
	jne	.L41
	jmp	.L37
.LVL64:
	.p2align 4,,10
	.p2align 3
.L53:
	.loc 1 167 0
	cmpl	%ebx, %r8d
	je	.L44
.LVL65:
.LBB103:
.LBB104:
	.loc 1 121 0
	movl	%edi, (%rdx)
	.loc 1 122 0
	movq	%r9, 16(%rdx)
.LBE104:
.LBE103:
	.loc 1 171 0
	movq	%rsi, %rdx
.LVL66:
.LBB106:
.LBB105:
	.loc 1 123 0
	movq	%r10, 16(%rax)
	.loc 1 124 0
	movl	%ecx, (%rax)
.LVL67:
.LBE105:
.LBE106:
	.loc 1 170 0
	movq	%r11, %rax
.LVL68:
.L40:
	.loc 1 156 0
	testq	%rax, %rax
	je	.L52
.LVL69:
.L41:
	.loc 1 159 0
	movl	(%rax), %edi
.LVL70:
	.loc 1 162 0
	movl	(%rdx), %ecx
.LVL71:
	.loc 1 165 0
	xorl	%r8d, %r8d
	.loc 1 160 0
	movq	8(%rax), %r11
.LVL72:
	.loc 1 161 0
	movq	16(%rax), %r9
.LVL73:
	.loc 1 163 0
	movq	8(%rdx), %rsi
.LVL74:
	.loc 1 164 0
	movq	16(%rdx), %r10
.LVL75:
	.loc 1 165 0
	cmpl	%ecx, %edi
	setg	%r8b
.LVL76:
	.loc 1 166 0
	cmpl	%ebx, %r13d
	jne	.L53
.LVL77:
	.loc 1 178 0
	cmpl	%r13d, %r8d
	je	.L45
.LVL78:
.LBB107:
.LBB108:
	.loc 1 104 0
	movl	%edi, (%rdx)
	.loc 1 105 0
	movq	%r11, 8(%rdx)
.LBE108:
.LBE107:
	.loc 1 182 0
	movq	%r10, %rdx
.LVL79:
.LBB110:
.LBB109:
	.loc 1 106 0
	movq	%rsi, 8(%rax)
	.loc 1 107 0
	movl	%ecx, (%rax)
.LVL80:
.LBE109:
.LBE110:
	.loc 1 181 0
	movq	%r9, %rax
	.loc 1 156 0
	testq	%rax, %rax
	jne	.L41
.LVL81:
.L52:
	.loc 1 189 0
	movq	8(%rbp), %rdi
.LVL82:
	testq	%rdi, %rdi
	je	.L37
.LVL83:
.LBB111:
	.loc 1 193 0
	movq	16(%rbp), %r13
.LVL84:
	.loc 1 196 0
	movl	0(%rbp), %esi
.LVL85:
	movl	%ebx, %edx
.LVL86:
	call	Bimerge
.LVL87:
	movl	%eax, 0(%rbp)
	.loc 1 197 0
	movq	%r13, %rbp
	jmp	.L43
.LVL88:
	.p2align 4,,10
	.p2align 3
.L44:
.LBE111:
	.loc 1 175 0
	movq	%r10, %rdx
.LVL89:
	.loc 1 174 0
	movq	%r9, %rax
.LVL90:
	jmp	.L40
.LVL91:
	.p2align 4,,10
	.p2align 3
.L45:
	.loc 1 186 0
	movq	%rsi, %rdx
.LVL92:
	.loc 1 185 0
	movq	%r11, %rax
.LVL93:
	jmp	.L40
.LVL94:
	.p2align 4,,10
	.p2align 3
.L37:
	.loc 1 201 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax
.LVL95:
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL96:
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL97:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL98:
	ret
	.cfi_endproc
.LFE20:
	.size	Bimerge, .-Bimerge
	.p2align 4,,15
	.globl	Bisort
	.type	Bisort, @function
Bisort:
.LFB21:
	.loc 1 210 0
	.cfi_startproc
.LVL99:
	.loc 1 214 0
	movq	8(%rdi), %rcx
	movl	(%rdi), %eax
	testq	%rcx, %rcx
	jne	.L55
	.loc 1 216 0
	xorl	%ecx, %ecx
	cmpl	%eax, %esi
	setl	%cl
	cmpl	%edx, %ecx
	je	.L57
.LVL100:
	.loc 1 220 0
	movl	%esi, (%rdi)
	ret
.LVL101:
	.p2align 4,,10
	.p2align 3
.L57:
	movl	%esi, %eax
.LVL102:
	.loc 1 237 0
	ret
.LVL103:
	.p2align 4,,10
	.p2align 3
.L55:
	.loc 1 210 0
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%esi, %ebp
	movq	%rdi, %rbx
.LVL104:
.LBB112:
	.loc 1 230 0
	movl	%eax, %esi
.LVL105:
	xorl	%eax, %eax
.LBE112:
	.loc 1 210 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
.LBB113:
	.loc 1 227 0
	movq	16(%rdi), %r13
.LVL106:
	.loc 1 230 0
	movq	%rcx, %rdi
.LVL107:
	call	Bisort
.LVL108:
	.loc 1 231 0
	xorl	%edx, %edx
	testl	%r12d, %r12d
	.loc 1 230 0
	movl	%eax, (%rbx)
.LVL109:
	.loc 1 231 0
	sete	%dl
	.loc 1 232 0
	movl	%ebp, %esi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	Bisort
.LVL110:
.LBE113:
	.loc 1 237 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
.LBB114:
	.loc 1 233 0
	movl	%r12d, %edx
	movq	%rbx, %rdi
.LBE114:
	.loc 1 237 0
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
.LVL111:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
.LVL112:
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.LVL113:
.LBB115:
	.loc 1 233 0
	movl	%eax, %esi
	xorl	%eax, %eax
.LVL114:
	jmp	Bimerge
.LVL115:
.LBE115:
	.cfi_endproc
.LFE21:
	.size	Bisort, .-Bisort
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Bisort with %d size of dim %d\n"
	.section	.rodata.str1.1
.LC2:
	.string	"%d\n"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"**************************************"
	.align 8
.LC4:
	.string	"BEGINNING BITONIC SORT ALGORITHM HERE"
	.section	.rodata.str1.1
.LC5:
	.string	"Sorted Tree:"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB22:
	.loc 1 239 0
	.cfi_startproc
.LVL116:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 244 0
	call	dealwithargs@PLT
.LVL117:
.LBB116:
.LBB117:
	.loc 2 104 0
	movl	NDim(%rip), %ecx
	leaq	.LC1(%rip), %rsi
.LBE117:
.LBE116:
	.loc 1 244 0
	movl	%eax, %ebx
.LVL118:
.LBB119:
.LBB118:
	.loc 2 104 0
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
.LVL119:
	call	__printf_chk@PLT
.LVL120:
.LBE118:
.LBE119:
	.loc 1 248 0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %edi
	movl	$12345768, %esi
	call	RandTree
.LVL121:
	.loc 1 250 0
	movl	flag(%rip), %ecx
	.loc 1 248 0
	movq	%rax, %rbx
.LVL122:
	.loc 1 250 0
	testl	%ecx, %ecx
	jne	.L65
.LVL123:
.L61:
.LBB120:
.LBB121:
	.loc 2 104 0
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.LVL124:
.LBE121:
.LBE120:
.LBB122:
.LBB123:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
.LVL125:
.LBE123:
.LBE122:
.LBB124:
.LBB125:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.LVL126:
.LBE125:
.LBE124:
	.loc 1 258 0
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$8, %esi
	movq	%rbx, %rdi
	call	Bisort
.LVL127:
	.loc 1 260 0
	movl	flag(%rip), %edx
	.loc 1 258 0
	movl	%eax, %ebp
.LVL128:
	.loc 1 260 0
	testl	%edx, %edx
	jne	.L66
.LVL129:
.L62:
	.loc 1 266 0
	movl	%ebp, %esi
	xorl	%eax, %eax
	movl	$1, %edx
	movq	%rbx, %rdi
	call	Bisort
.LVL130:
	movl	%eax, %ebp
.LVL131:
	.loc 1 268 0
	movl	flag(%rip), %eax
.LVL132:
	testl	%eax, %eax
	je	.L63
.LVL133:
.LBB126:
.LBB127:
	.loc 2 104 0
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.LVL134:
.LBE127:
.LBE126:
	.loc 1 270 0
	movq	%rbx, %rdi
	call	InOrder
.LVL135:
.LBB128:
.LBB129:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
	movl	%ebp, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL136:
.L63:
.LBE129:
.LBE128:
	.loc 1 275 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL137:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL138:
	ret
.LVL139:
.L66:
	.cfi_restore_state
.LBB130:
.LBB131:
	.loc 2 104 0
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.LVL140:
.LBE131:
.LBE130:
	.loc 1 262 0
	movq	%rbx, %rdi
	call	InOrder
.LVL141:
.LBB132:
.LBB133:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
	movl	%ebp, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL142:
	jmp	.L62
.LVL143:
.L65:
.LBE133:
.LBE132:
	.loc 1 251 0
	movq	%rax, %rdi
	call	InOrder
.LVL144:
.LBB134:
.LBB135:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
	movl	$8, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL145:
	jmp	.L61
.LBE135:
.LBE134:
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.local	counter.2289
	.comm	counter.2289,1,1
	.globl	foo
	.bss
	.align 4
	.type	foo, @object
	.size	foo, 4
foo:
	.zero	4
	.globl	flag
	.align 4
	.type	flag, @object
	.size	flag, 4
flag:
	.zero	4
	.comm	NDim,4,4
	.comm	NumNodes,4,4
	.text
.Letext0:
	.file 3 "../olden/bisort/src/node.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "../olden/bisort/src/proc.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10bb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF95
	.byte	0xc
	.long	.LASF96
	.long	.LASF97
	.long	.Ldebug_ranges0+0x270
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF3
	.byte	0x18
	.byte	0x3
	.byte	0x5
	.long	0x5a
	.uleb128 0x3
	.long	.LASF0
	.byte	0x3
	.byte	0x6
	.long	0x5a
	.byte	0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x3
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x8
	.long	0x61
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.long	0x29
	.uleb128 0x6
	.long	.LASF5
	.byte	0x3
	.byte	0xb
	.long	0x29
	.uleb128 0x2
	.long	.LASF4
	.byte	0x8
	.byte	0x3
	.byte	0xd
	.long	0x8b
	.uleb128 0x3
	.long	.LASF0
	.byte	0x3
	.byte	0xe
	.long	0x8b
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x67
	.uleb128 0x6
	.long	.LASF4
	.byte	0x3
	.byte	0xf
	.long	0x72
	.uleb128 0x6
	.long	.LASF6
	.byte	0x4
	.byte	0xd8
	.long	0xa7
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF12
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0x8c
	.long	0xd1
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0x8d
	.long	0xd1
	.uleb128 0x8
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0xf6
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x9
	.long	0xf6
	.uleb128 0x2
	.long	.LASF17
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x282
	.uleb128 0x3
	.long	.LASF18
	.byte	0x6
	.byte	0xf6
	.long	0x5a
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x6
	.byte	0xfb
	.long	0xf0
	.byte	0x8
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0xfc
	.long	0xf0
	.byte	0x10
	.uleb128 0x3
	.long	.LASF21
	.byte	0x6
	.byte	0xfd
	.long	0xf0
	.byte	0x18
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0xfe
	.long	0xf0
	.byte	0x20
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0xff
	.long	0xf0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.value	0x100
	.long	0xf0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.value	0x101
	.long	0xf0
	.byte	0x38
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.value	0x102
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.value	0x104
	.long	0xf0
	.byte	0x48
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.value	0x105
	.long	0xf0
	.byte	0x50
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.value	0x106
	.long	0xf0
	.byte	0x58
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.value	0x108
	.long	0x2ba
	.byte	0x60
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.value	0x10a
	.long	0x2c0
	.byte	0x68
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.value	0x10c
	.long	0x5a
	.byte	0x70
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.value	0x110
	.long	0x5a
	.byte	0x74
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.value	0x112
	.long	0xd8
	.byte	0x78
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.value	0x116
	.long	0xb5
	.byte	0x80
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.value	0x117
	.long	0xc3
	.byte	0x82
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.value	0x118
	.long	0x2c6
	.byte	0x83
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.value	0x11c
	.long	0x2d6
	.byte	0x88
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.value	0x125
	.long	0xe3
	.byte	0x90
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.value	0x12d
	.long	0xee
	.byte	0x98
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.value	0x12e
	.long	0xee
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.value	0x12f
	.long	0xee
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.value	0x130
	.long	0xee
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.value	0x132
	.long	0x9c
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.value	0x133
	.long	0x5a
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.value	0x135
	.long	0x2dc
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF98
	.byte	0x6
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF47
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x2ba
	.uleb128 0x3
	.long	.LASF48
	.byte	0x6
	.byte	0xa1
	.long	0x2ba
	.byte	0
	.uleb128 0x3
	.long	.LASF49
	.byte	0x6
	.byte	0xa2
	.long	0x2c0
	.byte	0x8
	.uleb128 0x3
	.long	.LASF50
	.byte	0x6
	.byte	0xa6
	.long	0x5a
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x289
	.uleb128 0x5
	.byte	0x8
	.long	0x102
	.uleb128 0xc
	.long	0xf6
	.long	0x2d6
	.uleb128 0xd
	.long	0xa7
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x282
	.uleb128 0xc
	.long	0xf6
	.long	0x2ec
	.uleb128 0xd
	.long	0xa7
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF99
	.uleb128 0xf
	.long	.LASF51
	.byte	0x6
	.value	0x13f
	.long	0x2ec
	.uleb128 0xf
	.long	.LASF52
	.byte	0x6
	.value	0x140
	.long	0x2ec
	.uleb128 0xf
	.long	.LASF53
	.byte	0x6
	.value	0x141
	.long	0x2ec
	.uleb128 0x5
	.byte	0x8
	.long	0xfd
	.uleb128 0x10
	.long	0x315
	.uleb128 0x11
	.long	.LASF54
	.byte	0x7
	.byte	0x87
	.long	0x2c0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x7
	.byte	0x88
	.long	0x2c0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x7
	.byte	0x89
	.long	0x2c0
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0xd
	.long	0x5a
	.uleb128 0x9
	.byte	0x3
	.quad	NumNodes
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0xd
	.long	0x5a
	.uleb128 0x9
	.byte	0x3
	.quad	NDim
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.byte	0x11
	.long	0x5a
	.uleb128 0x9
	.byte	0x3
	.quad	flag
	.uleb128 0x13
	.string	"foo"
	.byte	0x1
	.byte	0x11
	.long	0x5a
	.uleb128 0x9
	.byte	0x3
	.quad	foo
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0xef
	.long	0x5a
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x745
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0xef
	.long	0x5a
	.long	.LLST69
	.uleb128 0x15
	.long	.LASF61
	.byte	0x1
	.byte	0xef
	.long	0x745
	.long	.LLST70
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.byte	0xf0
	.long	0x8b
	.long	.LLST71
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0xf1
	.long	0x5a
	.long	.LLST72
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xf2
	.long	0x5a
	.long	.LLST73
	.uleb128 0x18
	.long	0xe1c
	.quad	.LBB116
	.long	.Ldebug_ranges0+0x240
	.byte	0x1
	.byte	0xf6
	.long	0x444
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST74
	.uleb128 0x1a
	.quad	.LVL120
	.long	0x1025
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xe1c
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.byte	0x1
	.byte	0xfe
	.long	0x484
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST75
	.uleb128 0x1a
	.quad	.LVL124
	.long	0x105c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xe1c
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.byte	0x1
	.byte	0xff
	.long	0x4c4
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST76
	.uleb128 0x1a
	.quad	.LVL125
	.long	0x105c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0xe1c
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.byte	0x1
	.value	0x100
	.long	0x505
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST77
	.uleb128 0x1a
	.quad	.LVL126
	.long	0x105c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0xe1c
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.byte	0x1
	.value	0x10d
	.long	0x546
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST78
	.uleb128 0x1a
	.quad	.LVL134
	.long	0x105c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0xe1c
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.byte	0x1
	.value	0x10f
	.long	0x592
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST79
	.uleb128 0x1a
	.quad	.LVL136
	.long	0x1025
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0xe1c
	.quad	.LBB130
	.quad	.LBE130-.LBB130
	.byte	0x1
	.value	0x105
	.long	0x5d3
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST80
	.uleb128 0x1a
	.quad	.LVL140
	.long	0x105c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0xe1c
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.byte	0x1
	.value	0x107
	.long	0x61f
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST81
	.uleb128 0x1a
	.quad	.LVL142
	.long	0x1025
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xe1c
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.byte	0x1
	.byte	0xfc
	.long	0x670
	.uleb128 0x1e
	.long	0xe2c
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.uleb128 0x1a
	.quad	.LVL145
	.long	0x1025
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL117
	.long	0x10a8
	.long	0x690
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1f
	.quad	.LVL121
	.long	0xad8
	.long	0x6bb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0xc
	.long	0xbc61a8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.quad	.LVL127
	.long	0x74b
	.long	0x6dd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.quad	.LVL130
	.long	0x74b
	.long	0x700
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.quad	.LVL135
	.long	0xd6c
	.long	0x718
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL141
	.long	0xd6c
	.long	0x730
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL144
	.long	0xd6c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xf0
	.uleb128 0x20
	.long	.LASF66
	.byte	0x1
	.byte	0xcd
	.long	0x5a
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x82a
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0xcf
	.long	0x8b
	.long	.LLST62
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0xd0
	.long	0x5a
	.long	.LLST63
	.uleb128 0x21
	.string	"dir"
	.byte	0x1
	.byte	0xd0
	.long	0x5a
	.long	.LLST64
	.uleb128 0x16
	.string	"l"
	.byte	0x1
	.byte	0xd2
	.long	0x8b
	.long	.LLST65
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0xd3
	.long	0x8b
	.long	.LLST66
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0xd4
	.long	0x5a
	.long	.LLST67
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.byte	0xe1
	.long	0x5a
	.long	.LLST68
	.uleb128 0x1f
	.quad	.LVL108
	.long	0x74b
	.long	0x7ee
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL110
	.long	0x74b
	.long	0x80c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL115
	.long	0x82a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF67
	.byte	0x1
	.byte	0x82
	.long	0x5a
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f8
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0x84
	.long	0x8b
	.long	.LLST34
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0x85
	.long	0x5a
	.long	.LLST35
	.uleb128 0x21
	.string	"dir"
	.byte	0x1
	.byte	0x85
	.long	0x5a
	.long	.LLST36
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.byte	0x87
	.long	0x5a
	.long	.LLST37
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x88
	.long	0x5a
	.long	.LLST38
	.uleb128 0x16
	.string	"pl"
	.byte	0x1
	.byte	0x89
	.long	0x8b
	.long	.LLST39
	.uleb128 0x16
	.string	"pll"
	.byte	0x1
	.byte	0x89
	.long	0x8b
	.long	.LLST40
	.uleb128 0x16
	.string	"plr"
	.byte	0x1
	.byte	0x89
	.long	0x8b
	.long	.LLST41
	.uleb128 0x16
	.string	"pr"
	.byte	0x1
	.byte	0x8a
	.long	0x8b
	.long	.LLST42
	.uleb128 0x16
	.string	"prl"
	.byte	0x1
	.byte	0x8a
	.long	0x8b
	.long	.LLST43
	.uleb128 0x16
	.string	"prr"
	.byte	0x1
	.byte	0x8a
	.long	0x8b
	.long	.LLST44
	.uleb128 0x16
	.string	"rl"
	.byte	0x1
	.byte	0x8b
	.long	0x8b
	.long	.LLST45
	.uleb128 0x16
	.string	"rr"
	.byte	0x1
	.byte	0x8c
	.long	0x8b
	.long	.LLST46
	.uleb128 0x16
	.string	"rv"
	.byte	0x1
	.byte	0x8d
	.long	0x5a
	.long	.LLST47
	.uleb128 0x16
	.string	"lv"
	.byte	0x1
	.byte	0x8d
	.long	0x5a
	.long	.LLST48
	.uleb128 0x24
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x95f
	.uleb128 0x17
	.long	.LASF0
	.byte	0x1
	.byte	0xbf
	.long	0x5a
	.long	.LLST61
	.uleb128 0x1a
	.quad	.LVL87
	.long	0x82a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x9f8
	.quad	.LBB103
	.long	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0xa9
	.long	0x9ad
	.uleb128 0x19
	.long	0xa35
	.long	.LLST49
	.uleb128 0x19
	.long	0xa2a
	.long	.LLST50
	.uleb128 0x19
	.long	0xa20
	.long	.LLST51
	.uleb128 0x19
	.long	0xa16
	.long	.LLST52
	.uleb128 0x19
	.long	0xa0d
	.long	.LLST53
	.uleb128 0x19
	.long	0xa04
	.long	.LLST54
	.byte	0
	.uleb128 0x25
	.long	0xa41
	.quad	.LBB107
	.long	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0xb4
	.uleb128 0x19
	.long	0xa7e
	.long	.LLST55
	.uleb128 0x19
	.long	0xa73
	.long	.LLST56
	.uleb128 0x19
	.long	0xa69
	.long	.LLST57
	.uleb128 0x19
	.long	0xa5f
	.long	.LLST58
	.uleb128 0x19
	.long	0xa56
	.long	.LLST59
	.uleb128 0x19
	.long	0xa4d
	.long	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF72
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	0xa41
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.byte	0x73
	.long	0x8b
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0x74
	.long	0x8b
	.uleb128 0x27
	.string	"lr"
	.byte	0x1
	.byte	0x75
	.long	0x8b
	.uleb128 0x27
	.string	"rr"
	.byte	0x1
	.byte	0x76
	.long	0x8b
	.uleb128 0x28
	.long	.LASF70
	.byte	0x1
	.byte	0x77
	.long	0x5a
	.uleb128 0x28
	.long	.LASF71
	.byte	0x1
	.byte	0x77
	.long	0x5a
	.byte	0
	.uleb128 0x26
	.long	.LASF73
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	0xa8a
	.uleb128 0x27
	.string	"l"
	.byte	0x1
	.byte	0x62
	.long	0x8b
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0x63
	.long	0x8b
	.uleb128 0x27
	.string	"ll"
	.byte	0x1
	.byte	0x64
	.long	0x8b
	.uleb128 0x27
	.string	"rl"
	.byte	0x1
	.byte	0x65
	.long	0x8b
	.uleb128 0x28
	.long	.LASF70
	.byte	0x1
	.byte	0x66
	.long	0x5a
	.uleb128 0x28
	.long	.LASF71
	.byte	0x1
	.byte	0x66
	.long	0x5a
	.byte	0
	.uleb128 0x29
	.long	.LASF74
	.byte	0x1
	.byte	0x55
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xad8
	.uleb128 0x2a
	.string	"l"
	.byte	0x1
	.byte	0x55
	.long	0x8b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"r"
	.byte	0x1
	.byte	0x55
	.long	0x8b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.long	.LASF75
	.byte	0x1
	.byte	0x56
	.long	0x5a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2b
	.long	.LASF76
	.byte	0x1
	.byte	0x56
	.long	0x5a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x3c
	.long	0x8b
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xce0
	.uleb128 0x21
	.string	"n"
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.long	.LLST17
	.uleb128 0x15
	.long	.LASF79
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.long	.LLST18
	.uleb128 0x15
	.long	.LASF3
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.long	.LLST19
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.byte	0x3c
	.long	0x5a
	.long	.LLST20
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.byte	0x3d
	.long	0x5a
	.long	.LLST21
	.uleb128 0x2c
	.long	.LASF88
	.byte	0x1
	.byte	0x3d
	.long	0x5a
	.uleb128 0x17
	.long	.LASF82
	.byte	0x1
	.byte	0x3e
	.long	0x91
	.long	.LLST22
	.uleb128 0x17
	.long	.LASF83
	.byte	0x1
	.byte	0x3e
	.long	0x91
	.long	.LLST23
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.byte	0x3f
	.long	0x8b
	.long	.LLST24
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.byte	0x42
	.long	0x5a
	.long	.LLST25
	.uleb128 0x18
	.long	0xce0
	.quad	.LBB80
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x47
	.long	0xbed
	.uleb128 0x19
	.long	0xcf0
	.long	.LLST26
	.uleb128 0x25
	.long	0xd21
	.quad	.LBB82
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x39
	.uleb128 0x19
	.long	0xd3a
	.long	.LLST27
	.uleb128 0x19
	.long	0xd31
	.long	.LLST28
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x2d
	.long	0xe66
	.uleb128 0x2d
	.long	0xe6f
	.uleb128 0x2d
	.long	0xe78
	.uleb128 0x2d
	.long	0xe81
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0xcfc
	.quad	.LBB88
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x4b
	.long	0xc74
	.uleb128 0x19
	.long	0xd17
	.long	.LLST29
	.uleb128 0x19
	.long	0xd0c
	.long	.LLST30
	.uleb128 0x25
	.long	0xce0
	.quad	.LBB90
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0x34
	.uleb128 0x19
	.long	0xcf0
	.long	.LLST31
	.uleb128 0x25
	.long	0xd21
	.quad	.LBB92
	.long	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0x39
	.uleb128 0x19
	.long	0xd3a
	.long	.LLST32
	.uleb128 0x19
	.long	0xd31
	.long	.LLST31
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x2d
	.long	0xe66
	.uleb128 0x2d
	.long	0xe6f
	.uleb128 0x2d
	.long	0xe78
	.uleb128 0x2d
	.long	0xe81
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL35
	.long	0x10b3
	.long	0xc8b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1f
	.quad	.LVL38
	.long	0xad8
	.long	0xcb5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL45
	.long	0xad8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF85
	.byte	0x1
	.byte	0x38
	.long	0x5a
	.byte	0x1
	.long	0xcfc
	.uleb128 0x28
	.long	.LASF79
	.byte	0x1
	.byte	0x38
	.long	0x5a
	.byte	0
	.uleb128 0x2e
	.long	.LASF86
	.byte	0x1
	.byte	0x33
	.long	0x5a
	.byte	0x1
	.long	0xd21
	.uleb128 0x28
	.long	.LASF79
	.byte	0x1
	.byte	0x33
	.long	0x5a
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x5a
	.byte	0
	.uleb128 0x2e
	.long	.LASF87
	.byte	0x1
	.byte	0x2a
	.long	0x5a
	.byte	0x1
	.long	0xd6c
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0x2a
	.long	0x5a
	.uleb128 0x27
	.string	"q"
	.byte	0x1
	.byte	0x2a
	.long	0x5a
	.uleb128 0x2f
	.string	"p1"
	.byte	0x1
	.byte	0x2b
	.long	0x5a
	.uleb128 0x2f
	.string	"p0"
	.byte	0x1
	.byte	0x2b
	.long	0x5a
	.uleb128 0x2f
	.string	"q1"
	.byte	0x1
	.byte	0x2b
	.long	0x5a
	.uleb128 0x2f
	.string	"q0"
	.byte	0x1
	.byte	0x2b
	.long	0x5a
	.byte	0
	.uleb128 0x29
	.long	.LASF89
	.byte	0x1
	.byte	0x1d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xe1c
	.uleb128 0x21
	.string	"h"
	.byte	0x1
	.byte	0x1d
	.long	0x8b
	.long	.LLST0
	.uleb128 0x16
	.string	"l"
	.byte	0x1
	.byte	0x1e
	.long	0x8b
	.long	.LLST1
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x1e
	.long	0x8b
	.long	.LLST2
	.uleb128 0x22
	.long	.Ldebug_ranges0+0
	.uleb128 0x2b
	.long	.LASF90
	.byte	0x1
	.byte	0x23
	.long	0xae
	.uleb128 0x9
	.byte	0x3
	.quad	counter.2289
	.uleb128 0x1c
	.long	0xe1c
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0x1
	.byte	0x25
	.long	0xe0d
	.uleb128 0x19
	.long	0xe2c
	.long	.LLST3
	.uleb128 0x1a
	.quad	.LVL8
	.long	0x1025
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LVL3
	.long	0xd6c
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF100
	.byte	0x2
	.byte	0x66
	.long	0x5a
	.byte	0x3
	.long	0xe39
	.uleb128 0x28
	.long	.LASF91
	.byte	0x2
	.byte	0x66
	.long	0x31b
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.long	0xd21
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xe89
	.uleb128 0x19
	.long	0xd31
	.long	.LLST4
	.uleb128 0x19
	.long	0xd3a
	.long	.LLST5
	.uleb128 0x34
	.long	0xd43
	.long	.LLST6
	.uleb128 0x34
	.long	0xd4d
	.long	.LLST7
	.uleb128 0x34
	.long	0xd57
	.long	.LLST8
	.uleb128 0x35
	.long	0xd61
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x33
	.long	0xcfc
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xf24
	.uleb128 0x19
	.long	0xd0c
	.long	.LLST9
	.uleb128 0x19
	.long	0xd17
	.long	.LLST10
	.uleb128 0x25
	.long	0xce0
	.quad	.LBB71
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x34
	.uleb128 0x19
	.long	0xcf0
	.long	.LLST11
	.uleb128 0x36
	.long	0xd21
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.byte	0x1
	.byte	0x39
	.uleb128 0x19
	.long	0xd3a
	.long	.LLST12
	.uleb128 0x19
	.long	0xd31
	.long	.LLST11
	.uleb128 0x37
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x2d
	.long	0xe66
	.uleb128 0x2d
	.long	0xe6f
	.uleb128 0x2d
	.long	0xe78
	.uleb128 0x2d
	.long	0xe81
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0xce0
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xf99
	.uleb128 0x19
	.long	0xcf0
	.long	.LLST14
	.uleb128 0x36
	.long	0xd21
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.byte	0x1
	.byte	0x39
	.uleb128 0x19
	.long	0xd3a
	.long	.LLST15
	.uleb128 0x19
	.long	0xd31
	.long	.LLST16
	.uleb128 0x37
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x2d
	.long	0xe66
	.uleb128 0x2d
	.long	0xe6f
	.uleb128 0x2d
	.long	0xe78
	.uleb128 0x2d
	.long	0xe81
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0xa41
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xfdf
	.uleb128 0x1e
	.long	0xa4d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.long	0xa56
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.long	0xa5f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1e
	.long	0xa69
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.long	0xa73
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1e
	.long	0xa7e
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x33
	.long	0x9f8
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1025
	.uleb128 0x1e
	.long	0xa04
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.long	0xa0d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.long	0xa16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1e
	.long	0xa20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.long	0xa2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1e
	.long	0xa35
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x38
	.long	.LASF92
	.long	.LASF92
	.byte	0x2
	.byte	0x57
	.uleb128 0x39
	.uleb128 0x2a
	.byte	0x9e
	.uleb128 0x28
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0x2a
	.byte	0xa
	.byte	0
	.uleb128 0x3a
	.long	.LASF101
	.long	.LASF102
	.byte	0x9
	.byte	0
	.long	.LASF101
	.uleb128 0x39
	.uleb128 0x29
	.byte	0x9e
	.uleb128 0x27
	.byte	0x42
	.byte	0x45
	.byte	0x47
	.byte	0x49
	.byte	0x4e
	.byte	0x4e
	.byte	0x49
	.byte	0x4e
	.byte	0x47
	.byte	0x20
	.byte	0x42
	.byte	0x49
	.byte	0x54
	.byte	0x4f
	.byte	0x4e
	.byte	0x49
	.byte	0x43
	.byte	0x20
	.byte	0x53
	.byte	0x4f
	.byte	0x52
	.byte	0x54
	.byte	0x20
	.byte	0x41
	.byte	0x4c
	.byte	0x47
	.byte	0x4f
	.byte	0x52
	.byte	0x49
	.byte	0x54
	.byte	0x48
	.byte	0x4d
	.byte	0x20
	.byte	0x48
	.byte	0x45
	.byte	0x52
	.byte	0x45
	.byte	0xa
	.byte	0
	.uleb128 0x39
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xe
	.byte	0x53
	.byte	0x6f
	.byte	0x72
	.byte	0x74
	.byte	0x65
	.byte	0x64
	.byte	0x20
	.byte	0x54
	.byte	0x72
	.byte	0x65
	.byte	0x65
	.byte	0x3a
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.long	.LASF93
	.long	.LASF93
	.byte	0x8
	.byte	0xd
	.uleb128 0x38
	.long	.LASF94
	.long	.LASF94
	.byte	0x3
	.byte	0x11
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST69:
	.quad	.LVL116
	.quad	.LVL117-1
	.value	0x1
	.byte	0x55
	.quad	.LVL117-1
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL116
	.quad	.LVL117-1
	.value	0x1
	.byte	0x54
	.quad	.LVL117-1
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL122
	.quad	.LVL123
	.value	0x1
	.byte	0x50
	.quad	.LVL123
	.quad	.LVL137
	.value	0x1
	.byte	0x53
	.quad	.LVL139
	.quad	.LVL143
	.value	0x1
	.byte	0x53
	.quad	.LVL143
	.quad	.LVL144-1
	.value	0x1
	.byte	0x50
	.quad	.LVL144-1
	.quad	.LFE22
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL122
	.quad	.LVL128
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL128
	.quad	.LVL129
	.value	0x1
	.byte	0x50
	.quad	.LVL129
	.quad	.LVL131
	.value	0x1
	.byte	0x56
	.quad	.LVL131
	.quad	.LVL132
	.value	0x1
	.byte	0x50
	.quad	.LVL132
	.quad	.LVL138
	.value	0x1
	.byte	0x56
	.quad	.LVL139
	.quad	.LVL140-1
	.value	0x1
	.byte	0x50
	.quad	.LVL140-1
	.quad	.LVL143
	.value	0x1
	.byte	0x56
	.quad	.LVL143
	.quad	.LFE22
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL118
	.quad	.LVL119
	.value	0x1
	.byte	0x50
	.quad	.LVL119
	.quad	.LVL120-1
	.value	0x1
	.byte	0x51
	.quad	.LVL120-1
	.quad	.LVL122
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL118
	.quad	.LVL120
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL123
	.quad	.LVL124
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4144
	.sleb128 0
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL124
	.quad	.LVL125
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4203
	.sleb128 0
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL125
	.quad	.LVL126
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4144
	.sleb128 0
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL133
	.quad	.LVL134
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4246
	.sleb128 0
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL135
	.quad	.LVL136
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL139
	.quad	.LVL140
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4246
	.sleb128 0
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL141
	.quad	.LVL143
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL99
	.quad	.LVL107
	.value	0x1
	.byte	0x55
	.quad	.LVL107
	.quad	.LVL111
	.value	0x1
	.byte	0x53
	.quad	.LVL111
	.quad	.LVL115-1
	.value	0x1
	.byte	0x55
	.quad	.LVL115-1
	.quad	.LFE21
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL99
	.quad	.LVL100
	.value	0x1
	.byte	0x54
	.quad	.LVL100
	.quad	.LVL101
	.value	0x1
	.byte	0x50
	.quad	.LVL101
	.quad	.LVL102
	.value	0x1
	.byte	0x54
	.quad	.LVL102
	.quad	.LVL103
	.value	0x1
	.byte	0x50
	.quad	.LVL103
	.quad	.LVL105
	.value	0x1
	.byte	0x54
	.quad	.LVL105
	.quad	.LVL110
	.value	0x1
	.byte	0x56
	.quad	.LVL110
	.quad	.LVL114
	.value	0x1
	.byte	0x50
	.quad	.LVL114
	.quad	.LVL115-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL99
	.quad	.LVL108-1
	.value	0x1
	.byte	0x51
	.quad	.LVL108-1
	.quad	.LVL112
	.value	0x1
	.byte	0x5c
	.quad	.LVL112
	.quad	.LVL115-1
	.value	0x1
	.byte	0x51
	.quad	.LVL115-1
	.quad	.LFE21
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL104
	.quad	.LVL108-1
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL106
	.quad	.LVL113
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL100
	.quad	.LVL101
	.value	0x1
	.byte	0x54
	.quad	.LVL106
	.quad	.LVL108-1
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL109
	.quad	.LVL112
	.value	0xb
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL112
	.quad	.LVL115-1
	.value	0xb
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL115-1
	.quad	.LFE21
	.value	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x55
	.quad	.LVL57
	.quad	.LFE20
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x54
	.quad	.LVL57
	.quad	.LVL62
	.value	0x1
	.byte	0x5c
	.quad	.LVL62
	.quad	.LVL63
	.value	0x1
	.byte	0x52
	.quad	.LVL63
	.quad	.LVL97
	.value	0x1
	.byte	0x5c
	.quad	.LVL97
	.quad	.LFE20
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x51
	.quad	.LVL57
	.quad	.LVL96
	.value	0x1
	.byte	0x53
	.quad	.LVL96
	.quad	.LFE20
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL61
	.quad	.LVL84
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL88
	.quad	.LVL96
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL96
	.quad	.LVL98
	.value	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL64
	.quad	.LVL68
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL77
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL81
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL88
	.quad	.LVL91
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	.LVL91
	.quad	.LVL94
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL59
	.quad	.LVL67
	.value	0x1
	.byte	0x50
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x5b
	.quad	.LVL68
	.quad	.LVL80
	.value	0x1
	.byte	0x50
	.quad	.LVL80
	.quad	.LVL81
	.value	0x1
	.byte	0x59
	.quad	.LVL81
	.quad	.LVL87-1
	.value	0x1
	.byte	0x50
	.quad	.LVL88
	.quad	.LVL90
	.value	0x1
	.byte	0x50
	.quad	.LVL91
	.quad	.LVL93
	.value	0x1
	.byte	0x50
	.quad	.LVL94
	.quad	.LVL95
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL64
	.quad	.LVL69
	.value	0x1
	.byte	0x5b
	.quad	.LVL72
	.quad	.LVL87-1
	.value	0x1
	.byte	0x5b
	.quad	.LVL88
	.quad	.LVL94
	.value	0x1
	.byte	0x5b
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL64
	.quad	.LVL69
	.value	0x1
	.byte	0x59
	.quad	.LVL73
	.quad	.LVL87-1
	.value	0x1
	.byte	0x59
	.quad	.LVL88
	.quad	.LVL94
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL60
	.quad	.LVL66
	.value	0x1
	.byte	0x51
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x54
	.quad	.LVL68
	.quad	.LVL79
	.value	0x1
	.byte	0x51
	.quad	.LVL80
	.quad	.LVL81
	.value	0x1
	.byte	0x5a
	.quad	.LVL81
	.quad	.LVL86
	.value	0x1
	.byte	0x51
	.quad	.LVL88
	.quad	.LVL89
	.value	0x1
	.byte	0x51
	.quad	.LVL91
	.quad	.LVL92
	.value	0x1
	.byte	0x51
	.quad	.LVL94
	.quad	.LFE20
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL64
	.quad	.LVL69
	.value	0x1
	.byte	0x54
	.quad	.LVL74
	.quad	.LVL85
	.value	0x1
	.byte	0x54
	.quad	.LVL88
	.quad	.LVL94
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL64
	.quad	.LVL69
	.value	0x1
	.byte	0x5a
	.quad	.LVL75
	.quad	.LVL87-1
	.value	0x1
	.byte	0x5a
	.quad	.LVL88
	.quad	.LVL94
	.value	0x1
	.byte	0x5a
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL83
	.quad	.LVL87-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL84
	.quad	.LVL88
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL58
	.quad	.LVL71
	.value	0x1
	.byte	0x52
	.quad	.LVL73
	.quad	.LVL87-1
	.value	0x1
	.byte	0x52
	.quad	.LVL88
	.quad	.LFE20
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL64
	.quad	.LVL69
	.value	0x1
	.byte	0x55
	.quad	.LVL70
	.quad	.LVL82
	.value	0x1
	.byte	0x55
	.quad	.LVL88
	.quad	.LVL94
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL84
	.quad	.LVL87-1
	.value	0x2
	.byte	0x76
	.sleb128 0
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL65
	.quad	.LVL67
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL65
	.quad	.LVL67
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL65
	.quad	.LVL67
	.value	0x1
	.byte	0x5a
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL65
	.quad	.LVL67
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL65
	.quad	.LVL66
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL65
	.quad	.LVL67
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL78
	.quad	.LVL80
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL78
	.quad	.LVL80
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL78
	.quad	.LVL80
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL78
	.quad	.LVL80
	.value	0x1
	.byte	0x5b
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL78
	.quad	.LVL79
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL78
	.quad	.LVL80
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL24
	.quad	.LVL31
	.value	0x1
	.byte	0x55
	.quad	.LVL31
	.quad	.LVL39
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL39
	.quad	.LVL47
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL47
	.quad	.LFE16
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL24
	.quad	.LVL32
	.value	0x1
	.byte	0x54
	.quad	.LVL32
	.quad	.LVL34
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL47
	.quad	.LFE16
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL24
	.quad	.LVL27
	.value	0x1
	.byte	0x51
	.quad	.LVL27
	.quad	.LVL46
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL46
	.quad	.LVL47
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL47
	.quad	.LFE16
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL24
	.quad	.LVL26
	.value	0x1
	.byte	0x52
	.quad	.LVL26
	.quad	.LVL30
	.value	0x1
	.byte	0x56
	.quad	.LVL30
	.quad	.LVL46
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL46
	.quad	.LVL47
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL47
	.quad	.LVL49
	.value	0x1
	.byte	0x56
	.quad	.LVL49
	.quad	.LFE16
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL34
	.quad	.LVL39
	.value	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x64
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL39
	.quad	.LVL44
	.value	0x135
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0xc45
	.byte	0x1e
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0xc45
	.byte	0x1e
	.byte	0x22
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0xc45
	.byte	0x1e
	.byte	0x22
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x8
	.byte	0x64
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL44
	.quad	.LVL46
	.value	0x11d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0xc45
	.byte	0x1e
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0xc45
	.byte	0x1e
	.byte	0x22
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0xc45
	.byte	0x1e
	.byte	0x22
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x8
	.byte	0x64
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL39
	.quad	.LVL46
	.value	0x3
	.byte	0x5e
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL45
	.quad	.LVL46
	.value	0x3
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL36
	.quad	.LVL37
	.value	0x1
	.byte	0x50
	.quad	.LVL37
	.quad	.LVL46
	.value	0x1
	.byte	0x5c
	.quad	.LVL50
	.quad	.LFE16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL28
	.quad	.LVL39
	.value	0x1
	.byte	0x5e
	.quad	.LVL48
	.quad	.LVL49
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL28
	.quad	.LVL29
	.value	0x1
	.byte	0x50
	.quad	.LVL29
	.quad	.LVL32
	.value	0x1
	.byte	0x54
	.quad	.LVL32
	.quad	.LVL34
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL28
	.quad	.LVL33
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL28
	.quad	.LVL29
	.value	0x1
	.byte	0x50
	.quad	.LVL29
	.quad	.LVL32
	.value	0x1
	.byte	0x54
	.quad	.LVL32
	.quad	.LVL33
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL39
	.quad	.LVL41
	.value	0x1
	.byte	0x5f
	.quad	.LVL41
	.quad	.LVL42
	.value	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL39
	.quad	.LVL40
	.value	0x1
	.byte	0x53
	.quad	.LVL42
	.quad	.LVL43
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL39
	.quad	.LVL40
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL39
	.quad	.LVL40
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL9
	.quad	.LFE12
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1
	.quad	.LVL3-1
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL2
	.quad	.LVL4
	.value	0x1
	.byte	0x56
	.quad	.LVL4
	.quad	.LVL5
	.value	0x1
	.byte	0x53
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x56
	.quad	.LVL7
	.quad	.LVL9
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL7
	.quad	.LVL9
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x55
	.quad	.LVL11
	.quad	.LFE13
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL10
	.quad	.LVL14
	.value	0x1
	.byte	0x54
	.quad	.LVL14
	.quad	.LFE13
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL10
	.quad	.LVL11
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x2710
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL11
	.quad	.LFE13
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xa
	.value	0x2710
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL15
	.value	0x1
	.byte	0x59
	.quad	.LVL15
	.quad	.LVL16
	.value	0x23
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL16
	.quad	.LFE13
	.value	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0xc
	.long	0x68db8bad
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x25
	.byte	0x3c
	.byte	0x26
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.value	0x2710
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL12
	.quad	.LVL14
	.value	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.value	0x2710
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL14
	.quad	.LFE13
	.value	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xa
	.value	0x2710
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL17
	.quad	.LVL19
	.value	0x1
	.byte	0x55
	.quad	.LVL21
	.quad	.LFE14
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL17
	.quad	.LVL18
	.value	0x1
	.byte	0x54
	.quad	.LVL18
	.quad	.LVL20
	.value	0x1
	.byte	0x54
	.quad	.LVL20
	.quad	.LVL21
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x55
	.quad	.LVL23
	.quad	.LFE15
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB67
	.quad	.LBE67
	.quad	.LBB70
	.quad	.LBE70
	.quad	0
	.quad	0
	.quad	.LBB71
	.quad	.LBE71
	.quad	.LBB76
	.quad	.LBE76
	.quad	0
	.quad	0
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB102
	.quad	.LBE102
	.quad	0
	.quad	0
	.quad	.LBB80
	.quad	.LBE80
	.quad	.LBB87
	.quad	.LBE87
	.quad	0
	.quad	0
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB85
	.quad	.LBE85
	.quad	0
	.quad	0
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB101
	.quad	.LBE101
	.quad	0
	.quad	0
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB99
	.quad	.LBE99
	.quad	0
	.quad	0
	.quad	.LBB92
	.quad	.LBE92
	.quad	.LBB95
	.quad	.LBE95
	.quad	0
	.quad	0
	.quad	.LBB103
	.quad	.LBE103
	.quad	.LBB106
	.quad	.LBE106
	.quad	0
	.quad	0
	.quad	.LBB107
	.quad	.LBE107
	.quad	.LBB110
	.quad	.LBE110
	.quad	0
	.quad	0
	.quad	.LBB112
	.quad	.LBE112
	.quad	.LBB113
	.quad	.LBE113
	.quad	.LBB114
	.quad	.LBE114
	.quad	.LBB115
	.quad	.LBE115
	.quad	0
	.quad	0
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB119
	.quad	.LBE119
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB22
	.quad	.LFE22
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"__off_t"
.LASF19:
	.string	"_IO_read_ptr"
.LASF31:
	.string	"_chain"
.LASF6:
	.string	"size_t"
.LASF37:
	.string	"_shortbuf"
.LASF53:
	.string	"_IO_2_1_stderr_"
.LASF25:
	.string	"_IO_buf_base"
.LASF100:
	.string	"printf"
.LASF69:
	.string	"elementexchange"
.LASF2:
	.string	"right"
.LASF97:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF11:
	.string	"signed char"
.LASF86:
	.string	"skiprand"
.LASF73:
	.string	"SwapValLeft"
.LASF83:
	.string	"f_right"
.LASF32:
	.string	"_fileno"
.LASF20:
	.string	"_IO_read_end"
.LASF75:
	.string	"temp"
.LASF13:
	.string	"long int"
.LASF78:
	.string	"RandTree"
.LASF18:
	.string	"_flags"
.LASF26:
	.string	"_IO_buf_end"
.LASF35:
	.string	"_cur_column"
.LASF70:
	.string	"lval"
.LASF74:
	.string	"SwapValue"
.LASF34:
	.string	"_old_offset"
.LASF39:
	.string	"_offset"
.LASF68:
	.string	"rightexchange"
.LASF58:
	.string	"NDim"
.LASF67:
	.string	"Bimerge"
.LASF0:
	.string	"value"
.LASF47:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF10:
	.string	"unsigned int"
.LASF57:
	.string	"NumNodes"
.LASF79:
	.string	"seed"
.LASF62:
	.string	"sval"
.LASF7:
	.string	"long unsigned int"
.LASF99:
	.string	"_IO_FILE_plus"
.LASF23:
	.string	"_IO_write_ptr"
.LASF49:
	.string	"_sbuf"
.LASF80:
	.string	"level"
.LASF9:
	.string	"short unsigned int"
.LASF65:
	.string	"ndir"
.LASF93:
	.string	"dealwithargs"
.LASF27:
	.string	"_IO_save_base"
.LASF38:
	.string	"_lock"
.LASF33:
	.string	"_flags2"
.LASF45:
	.string	"_mode"
.LASF102:
	.string	"__builtin_puts"
.LASF55:
	.string	"stdout"
.LASF85:
	.string	"random"
.LASF51:
	.string	"_IO_2_1_stdin_"
.LASF101:
	.string	"puts"
.LASF84:
	.string	"newnode"
.LASF64:
	.string	"spr_val"
.LASF24:
	.string	"_IO_write_end"
.LASF98:
	.string	"_IO_lock_t"
.LASF17:
	.string	"_IO_FILE"
.LASF82:
	.string	"f_left"
.LASF89:
	.string	"InOrder"
.LASF50:
	.string	"_pos"
.LASF30:
	.string	"_markers"
.LASF5:
	.string	"HANDLE"
.LASF92:
	.string	"__printf_chk"
.LASF8:
	.string	"unsigned char"
.LASF3:
	.string	"node"
.LASF12:
	.string	"short int"
.LASF90:
	.string	"counter"
.LASF76:
	.string	"temp2"
.LASF59:
	.string	"flag"
.LASF36:
	.string	"_vtable_offset"
.LASF52:
	.string	"_IO_2_1_stdout_"
.LASF94:
	.string	"malloc"
.LASF81:
	.string	"next_val"
.LASF16:
	.string	"char"
.LASF4:
	.string	"future_cell_int"
.LASF87:
	.string	"mult"
.LASF72:
	.string	"SwapValRight"
.LASF48:
	.string	"_next"
.LASF15:
	.string	"__off64_t"
.LASF21:
	.string	"_IO_read_base"
.LASF29:
	.string	"_IO_save_end"
.LASF95:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF91:
	.string	"__fmt"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF46:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF61:
	.string	"argv"
.LASF71:
	.string	"rval"
.LASF88:
	.string	"my_name"
.LASF96:
	.string	"../olden/bisort/src/bitonic.c"
.LASF28:
	.string	"_IO_backup_base"
.LASF60:
	.string	"argc"
.LASF77:
	.string	"main"
.LASF22:
	.string	"_IO_write_base"
.LASF1:
	.string	"left"
.LASF66:
	.string	"Bisort"
.LASF63:
	.string	"root"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
