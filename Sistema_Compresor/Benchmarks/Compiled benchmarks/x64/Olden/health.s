	.file	"health.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	alloc_tree
	.type	alloc_tree, @function
alloc_tree:
.LFB22:
	.file 1 "../olden/health/src/health.c"
	.loc 1 17 0
	.cfi_startproc
.LVL0:
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.loc 1 17 0
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	.loc 1 18 0
	testl	%edi, %edi
	.loc 1 17 0
	movq	%rdx, 8(%rsp)
	.loc 1 18 0
	je	.L5
	movslq	%esi, %r12
	movl	%edi, %ebp
	leaq	16(%rsp), %r13
.LBB41:
	.loc 1 25 0
	movl	$192, %edi
.LVL1:
	leal	1(,%r12,4), %r14d
	subl	$1, %ebp
.LVL2:
	call	malloc@PLT
.LVL3:
	.loc 1 28 0
	movl	$3, %r15d
	.loc 1 25 0
	movq	%rax, %rbx
.LVL4:
.L3:
	.loc 1 28 0 discriminator 3
	leal	(%r14,%r15), %esi
	movq	%rbx, %rdx
	movl	%ebp, %edi
	call	alloc_tree
.LVL5:
	movq	%rax, 0(%r13,%r15,8)
.LVL6:
	subq	$1, %r15
.LVL7:
	.loc 1 27 0 discriminator 3
	cmpq	$-1, %r15
	jne	.L3
	.loc 1 33 0
	pxor	%xmm1, %xmm1
	.loc 1 30 0
	movq	8(%rsp), %rax
	.loc 1 31 0
	movl	%r12d, 176(%rbx)
	.loc 1 33 0
	movsd	.LC0(%rip), %xmm0
	cvtsi2sd	%ebp, %xmm1
	.loc 1 30 0
	movq	%rax, 32(%rbx)
	.loc 1 32 0
	movq	seed(%rip), %rax
	addq	$127773, %rax
	imulq	%rax, %r12
.LVL8:
	movq	%r12, 184(%rbx)
	.loc 1 33 0
	call	pow@PLT
.LVL9:
	cvttsd2si	%xmm0, %eax
	.loc 1 35 0
	movl	$0, 72(%rbx)
	.loc 1 36 0
	movq	$0, 104(%rbx)
	.loc 1 37 0
	movq	$0, 120(%rbx)
	.loc 1 38 0
	movq	$0, 112(%rbx)
	.loc 1 39 0
	movq	$0, 80(%rbx)
	.loc 1 40 0
	movq	$0, 96(%rbx)
	.loc 1 41 0
	movq	$0, 88(%rbx)
	.loc 1 42 0
	movq	$0, 128(%rbx)
	.loc 1 43 0
	movq	$0, 144(%rbx)
	.loc 1 44 0
	movq	$0, 136(%rbx)
	.loc 1 45 0
	movq	$0, 152(%rbx)
	.loc 1 46 0
	movq	$0, 168(%rbx)
	.loc 1 47 0
	movq	$0, 160(%rbx)
	.loc 1 48 0
	movq	$0, 56(%rbx)
	.loc 1 49 0
	movq	$0, 40(%rbx)
.LVL10:
	.loc 1 33 0
	movl	%eax, 64(%rbx)
	.loc 1 34 0
	movl	%eax, 68(%rbx)
	.loc 1 52 0
	movq	16(%rsp), %rax
	movq	%rax, (%rbx)
.LVL11:
	movq	24(%rsp), %rax
	movq	%rax, 8(%rbx)
.LVL12:
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbx)
.LVL13:
	movq	40(%rsp), %rax
	movq	%rax, 24(%rbx)
.LVL14:
.L1:
.LBE41:
	.loc 1 56 0
	movq	56(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%rbx, %rax
	jne	.L9
	addq	$72, %rsp
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
.LVL15:
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	.loc 1 19 0
	xorl	%ebx, %ebx
	jmp	.L1
.LVL16:
.L9:
	.loc 1 56 0
	call	__stack_chk_fail@PLT
.LVL17:
	.cfi_endproc
.LFE22:
	.size	alloc_tree, .-alloc_tree
	.p2align 4,,15
	.globl	get_results
	.type	get_results, @function
get_results:
.LFB23:
	.loc 1 59 0
	.cfi_startproc
.LVL18:
	.loc 1 70 0
	testq	%rdi, %rdi
	jne	.L12
.LVL19:
	.loc 1 95 0 discriminator 1
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	ret
.LVL20:
	.p2align 4,,10
	.p2align 3
.L12:
	jmp	get_results.part.0
.LVL21:
	.cfi_endproc
.LFE23:
	.size	get_results, .-get_results
	.p2align 4,,15
	.type	get_results.part.0, @function
get_results.part.0:
.LFB31:
	.loc 1 59 0
	.cfi_startproc
.LVL22:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
.LBB42:
	.loc 1 74 0
	movq	24(%rdi), %rdi
.LVL23:
.LBE42:
	.loc 1 59 0
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
.LVL24:
.LBB43:
	.loc 1 74 0
	call	get_results
.LVL25:
	movq	16(%rbx), %rdi
	movq	%xmm0, 68(%rsp)
	movss	%xmm1, 76(%rsp)
.LVL26:
	call	get_results
.LVL27:
	movq	8(%rbx), %rdi
	movq	%xmm0, 56(%rsp)
	movss	%xmm1, 64(%rsp)
.LVL28:
	call	get_results
.LVL29:
.LBE43:
	.loc 1 77 0
	movq	(%rbx), %rdi
.LBB44:
	.loc 1 74 0
	movq	%xmm0, 44(%rsp)
	movss	%xmm1, 52(%rsp)
.LVL30:
.LBE44:
	.loc 1 77 0
	call	get_results
.LVL31:
	.loc 1 67 0
	pxor	%xmm2, %xmm2
	.loc 1 77 0
	movq	%xmm0, 32(%rsp)
	movss	%xmm1, 40(%rsp)
.LVL32:
	.loc 1 68 0
	pxor	%xmm0, %xmm0
	.loc 1 66 0
	pxor	%xmm1, %xmm1
	leaq	32(%rsp), %rax
	leaq	-16(%rsp), %rdx
.LVL33:
.L14:
	.loc 1 80 0
	addss	44(%rax), %xmm1
.LVL34:
	subq	$12, %rax
	.loc 1 81 0
	addss	48(%rax), %xmm2
.LVL35:
	.loc 1 82 0
	addss	52(%rax), %xmm0
.LVL36:
	.loc 1 79 0
	cmpq	%rax, %rdx
	jne	.L14
	.loc 1 85 0
	movq	40(%rbx), %rax
.LVL37:
	.loc 1 86 0
	testq	%rax, %rax
	je	.L15
	movss	.LC2(%rip), %xmm4
	.p2align 4,,10
	.p2align 3
.L16:
	.loc 1 87 0
	movq	8(%rax), %rdx
.LVL38:
	.loc 1 88 0
	pxor	%xmm3, %xmm3
	.loc 1 91 0
	movq	(%rax), %rax
.LVL39:
	.loc 1 90 0
	addss	%xmm4, %xmm2
.LVL40:
	.loc 1 88 0
	cvtsi2ss	(%rdx), %xmm3
	.loc 1 86 0
	testq	%rax, %rax
	.loc 1 88 0
	addss	%xmm3, %xmm1
.LVL41:
	.loc 1 89 0
	pxor	%xmm3, %xmm3
	cvtsi2ss	4(%rdx), %xmm3
	addss	%xmm3, %xmm0
.LVL42:
	.loc 1 86 0
	jne	.L16
.LVL43:
.L15:
	.loc 1 94 0
	movss	%xmm2, 20(%rsp)
	movss	%xmm0, 24(%rsp)
	.loc 1 95 0
	movq	88(%rsp), %rax
	xorq	%fs:40, %rax
.LVL44:
	.loc 1 94 0
	movss	%xmm1, 28(%rsp)
.LVL45:
	.loc 1 95 0
	movq	20(%rsp), %xmm0
	jne	.L24
	addq	$96, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL46:
	ret
.LVL47:
.L24:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL48:
	.cfi_endproc
.LFE31:
	.size	get_results.part.0, .-get_results.part.0
	.p2align 4,,15
	.globl	check_patients_inside
	.type	check_patients_inside, @function
check_patients_inside:
.LFB24:
	.loc 1 98 0
	.cfi_startproc
.LVL49:
	.loc 1 103 0
	testq	%rsi, %rsi
	je	.L34
	.loc 1 98 0
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	.loc 1 110 0
	leaq	128(%rdi), %r13
	.loc 1 98 0
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	jmp	.L28
.LVL50:
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 1 114 0
	movq	(%rbx), %rbx
.LVL51:
	.loc 1 103 0
	testq	%rbx, %rbx
	je	.L37
.LVL52:
.L28:
	.loc 1 104 0
	movq	8(%rbx), %rbp
.LVL53:
	.loc 1 107 0
	subl	$1, 8(%rbp)
.LVL54:
	jne	.L27
.LVL55:
	.loc 1 109 0
	addl	$1, 68(%r12)
.LVL56:
	.loc 1 111 0
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	removeList@PLT
.LVL57:
	.loc 1 112 0
	leaq	40(%r12), %rdi
.LVL58:
	.loc 1 113 0
	movq	%rbp, %rsi
	call	addList@PLT
.LVL59:
	.loc 1 114 0
	movq	(%rbx), %rbx
.LVL60:
	.loc 1 103 0
	testq	%rbx, %rbx
	jne	.L28
.LVL61:
.L37:
	.loc 1 116 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL62:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL63:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL64:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL65:
	ret
.LVL66:
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	rep ret
	.cfi_endproc
.LFE24:
	.size	check_patients_inside, .-check_patients_inside
	.p2align 4,,15
	.globl	check_patients_assess
	.type	check_patients_assess, @function
check_patients_assess:
.LFB25:
	.loc 1 118 0
	.cfi_startproc
.LVL67:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 125 0
	testq	%rsi, %rsi
	je	.L44
	movq	%rdi, %r15
	movq	%rsi, %rbp
	.loc 1 121 0
	xorl	%r12d, %r12d
	leaq	104(%rdi), %r13
	.loc 1 137 0
	leaq	128(%rdi), %r14
	jmp	.L43
.LVL68:
	.p2align 4,,10
	.p2align 3
.L40:
	.loc 1 151 0
	movq	0(%rbp), %rbp
.LVL69:
	.loc 1 125 0
	testq	%rbp, %rbp
	je	.L38
.LVL70:
.L43:
	.loc 1 126 0
	movq	8(%rbp), %rbx
.LVL71:
	.loc 1 130 0
	subl	$1, 8(%rbx)
.LVL72:
	jne	.L40
.LVL73:
	.loc 1 132 0
	movq	184(%r15), %rdi
	call	my_rand@PLT
.LVL74:
	.loc 1 133 0
	movss	.LC3(%rip), %xmm1
	mulss	%xmm0, %xmm1
	.loc 1 135 0
	cvtss2sd	%xmm0, %xmm0
.LVL75:
	ucomisd	.LC4(%rip), %xmm0
	.loc 1 133 0
	cvttss2siq	%xmm1, %rax
	movq	%rax, 184(%r15)
.LVL76:
	.loc 1 135 0
	ja	.L41
	.loc 1 135 0 is_stmt 0 discriminator 1
	movl	176(%r15), %eax
	testl	%eax, %eax
	jne	.L42
.L41:
	.loc 1 136 0 is_stmt 1
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	removeList@PLT
.LVL77:
	.loc 1 137 0
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	addList@PLT
.LVL78:
	.loc 1 151 0
	movq	0(%rbp), %rbp
.LVL79:
	.loc 1 140 0
	addl	$10, 4(%rbx)
	.loc 1 138 0
	movl	$10, 8(%rbx)
.LVL80:
	.loc 1 125 0
	testq	%rbp, %rbp
	jne	.L43
.LVL81:
.L38:
	.loc 1 154 0
	addq	$8, %rsp
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
.LVL82:
	.p2align 4,,10
	.p2align 3
.L42:
	.cfi_restore_state
	.loc 1 143 0
	addl	$1, 68(%r15)
.LVL83:
	.loc 1 146 0
	leaq	152(%r15), %r12
.LVL84:
	.loc 1 145 0
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	removeList@PLT
.LVL85:
	.loc 1 147 0
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	addList@PLT
.LVL86:
	jmp	.L40
.LVL87:
	.p2align 4,,10
	.p2align 3
.L44:
	.loc 1 121 0
	xorl	%r12d, %r12d
	.loc 1 153 0
	jmp	.L38
	.cfi_endproc
.LFE25:
	.size	check_patients_assess, .-check_patients_assess
	.p2align 4,,15
	.globl	check_patients_waiting
	.type	check_patients_waiting, @function
check_patients_waiting:
.LFB26:
	.loc 1 156 0
	.cfi_startproc
.LVL88:
	.loc 1 160 0
	testq	%rsi, %rsi
	je	.L57
	.loc 1 156 0
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbp
	.loc 1 170 0
	leaq	80(%rdi), %r12
	.loc 1 156 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	jmp	.L51
.LVL89:
	.p2align 4,,10
	.p2align 3
.L49:
	.loc 1 175 0
	movq	0(%rbp), %rbp
.LVL90:
	.loc 1 174 0
	addl	$1, %eax
	movl	%eax, 4(%rbx)
.LVL91:
	.loc 1 160 0
	testq	%rbp, %rbp
	je	.L60
.LVL92:
.L51:
	.loc 1 161 0
	movl	68(%r13), %edx
.LVL93:
	.loc 1 162 0
	movq	8(%rbp), %rbx
.LVL94:
	.loc 1 163 0
	testl	%edx, %edx
	movl	4(%rbx), %eax
	jle	.L49
.LVL95:
	.loc 1 165 0
	subl	$1, %edx
.LVL96:
	.loc 1 168 0
	addl	$3, %eax
	.loc 1 170 0
	movq	%rbx, %rsi
	.loc 1 165 0
	movl	%edx, 68(%r13)
.LVL97:
	.loc 1 170 0
	movq	%r12, %rdi
	.loc 1 168 0
	movl	%eax, 4(%rbx)
	.loc 1 166 0
	movl	$3, 8(%rbx)
.LVL98:
	.loc 1 170 0
	call	removeList@PLT
.LVL99:
	.loc 1 171 0
	leaq	104(%r13), %rdi
	movq	%rbx, %rsi
	call	addList@PLT
.LVL100:
	.loc 1 175 0
	movq	0(%rbp), %rbp
.LVL101:
	.loc 1 160 0
	testq	%rbp, %rbp
	jne	.L51
.L60:
	.loc 1 176 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL102:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL103:
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL104:
	ret
.LVL105:
	.p2align 4,,10
	.p2align 3
.L57:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	rep ret
	.cfi_endproc
.LFE26:
	.size	check_patients_waiting, .-check_patients_waiting
	.p2align 4,,15
	.globl	put_in_hosp
	.type	put_in_hosp, @function
put_in_hosp:
.LFB27:
	.loc 1 179 0
	.cfi_startproc
.LVL106:
	.loc 1 183 0
	movl	4(%rdi), %eax
	.loc 1 182 0
	addl	$1, (%rsi)
.LVL107:
	.loc 1 183 0
	testl	%eax, %eax
	jle	.L62
	.loc 1 179 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 185 0
	subl	$1, %eax
	movq	%rsi, %rbx
	movl	%eax, 4(%rdi)
	.loc 1 186 0
	addq	$40, %rdi
.LVL108:
	call	addList@PLT
.LVL109:
	.loc 1 189 0
	addl	$3, 4(%rbx)
	.loc 1 187 0
	movl	$3, 8(%rbx)
	.loc 1 193 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL110:
	ret
.LVL111:
	.p2align 4,,10
	.p2align 3
.L62:
	.cfi_restore 3
	.loc 1 191 0
	addq	$16, %rdi
.LVL112:
	jmp	addList@PLT
.LVL113:
	.cfi_endproc
.LFE27:
	.size	put_in_hosp, .-put_in_hosp
	.p2align 4,,15
	.globl	generate_patient
	.type	generate_patient, @function
generate_patient:
.LFB28:
	.loc 1 196 0
	.cfi_startproc
.LVL114:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LVL115:
	.loc 1 196 0
	movq	%rdi, %rbx
	.loc 1 203 0
	movq	184(%rdi), %rdi
.LVL116:
	call	my_rand@PLT
.LVL117:
	.loc 1 204 0
	movss	.LC3(%rip), %xmm1
	mulss	%xmm0, %xmm1
	.loc 1 207 0
	cvtss2sd	%xmm0, %xmm0
.LVL118:
	ucomisd	.LC5(%rip), %xmm0
	.loc 1 204 0
	cvttss2siq	%xmm1, %rax
	movq	%rax, 184(%rbx)
.LVL119:
	.loc 1 207 0
	jbe	.L73
	.loc 1 208 0
	movl	$24, %edi
	call	malloc@PLT
.LVL120:
	.loc 1 209 0
	movq	$0, (%rax)
	.loc 1 210 0
	movl	$0, 8(%rax)
	.loc 1 212 0
	movq	%rbx, 16(%rax)
	.loc 1 216 0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL121:
	ret
.LVL122:
	.p2align 4,,10
	.p2align 3
.L73:
	.cfi_restore_state
	.loc 1 215 0
	xorl	%eax, %eax
.LVL123:
	.loc 1 216 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL124:
	ret
	.cfi_endproc
.LFE28:
	.size	generate_patient, .-generate_patient
	.p2align 4,,15
	.globl	sim
	.type	sim, @function
sim:
.LFB30:
	.loc 1 255 0
	.cfi_startproc
.LVL125:
	.loc 1 263 0
	testq	%rdi, %rdi
	je	.L76
	jmp	sim.part.1
.LVL126:
.L76:
	.loc 1 299 0
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE30:
	.size	sim, .-sim
	.p2align 4,,15
	.type	sim.part.1, @function
sim.part.1:
.LFB32:
	.loc 1 254 0
	.cfi_startproc
.LVL127:
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
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$24, %ebx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.loc 1 254 0
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
.LVL128:
	movq	%rsp, %r14
.LVL129:
.L78:
.LBB45:
	.loc 1 269 0
	movq	0(%r13,%rbx), %rdi
	call	sim
.LVL130:
	.loc 1 270 0
	movq	%rax, (%r14,%rbx)
.LBE45:
	.loc 1 267 0
	subq	$8, %rbx
	jne	.L78
	.loc 1 273 0
	movq	0(%r13), %rdi
	.loc 1 274 0
	leaq	64(%r13), %r15
	movl	$3, %r12d
	.loc 1 273 0
	call	sim
.LVL131:
	movq	%rax, (%rsp)
.LVL132:
.L81:
.LBB46:
	.loc 1 277 0
	movq	(%r14,%r12,8), %rbp
.LVL133:
	.loc 1 278 0
	testq	%rbp, %rbp
	je	.L79
	.loc 1 279 0
	movq	0(%rbp), %rbx
.LVL134:
	.loc 1 280 0
	testq	%rbx, %rbx
	je	.L79
	.p2align 4,,10
	.p2align 3
.L80:
	.loc 1 281 0
	movq	8(%rbx), %rsi
	movq	%r15, %rdi
	call	put_in_hosp
.LVL135:
	.loc 1 282 0
	movq	8(%rbx), %rsi
	movq	%rbp, %rdi
	call	removeList@PLT
.LVL136:
	.loc 1 283 0
	movq	(%rbx), %rbx
.LVL137:
	.loc 1 280 0
	testq	%rbx, %rbx
	jne	.L80
.LVL138:
.L79:
	subq	$1, %r12
.LVL139:
.LBE46:
	.loc 1 276 0
	cmpq	$-1, %r12
	jne	.L81
	.loc 1 288 0
	movq	128(%r13), %rsi
	movq	%r13, %rdi
	call	check_patients_inside
.LVL140:
	.loc 1 289 0
	movq	104(%r13), %rsi
	movq	%r13, %rdi
	call	check_patients_assess
.LVL141:
	.loc 1 290 0
	movq	80(%r13), %rsi
	movq	%r13, %rdi
	.loc 1 289 0
	movq	%rax, %rbx
.LVL142:
	.loc 1 290 0
	call	check_patients_waiting
.LVL143:
	.loc 1 293 0
	movq	%r13, %rdi
	call	generate_patient
.LVL144:
	testq	%rax, %rax
	je	.L77
.LVL145:
	.loc 1 295 0
	movq	%rax, %rsi
	movq	%r15, %rdi
	call	put_in_hosp
.LVL146:
.L77:
	.loc 1 299 0
	movq	40(%rsp), %rdx
	xorq	%fs:40, %rdx
	movq	%rbx, %rax
	jne	.L97
.LVL147:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL148:
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL149:
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL150:
	ret
.LVL151:
.L97:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL152:
	.cfi_endproc
.LFE32:
	.size	sim.part.1, .-sim.part.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"\n\n    Columbian Health Care Simulator\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"Working..."
.LC8:
	.string	"%d\n"
.LC9:
	.string	"Getting Results"
.LC10:
	.string	"Done.\n"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"# of people treated:              %f people\n"
	.align 8
.LC12:
	.string	"Average length of stay:           %0.2f time units\n"
	.align 8
.LC13:
	.string	"Average # of hospitals visited:   %f hospitals\n\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB29:
	.loc 1 219 0
	.cfi_startproc
.LVL153:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 225 0
	call	dealwithargs@PLT
.LVL154:
	.loc 1 226 0
	movl	max_level(%rip), %edi
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	alloc_tree
.LVL155:
.LBB47:
.LBB48:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC6(%rip), %rdi
.LBE48:
.LBE47:
	.loc 1 226 0
	movq	%rax, %rbp
.LVL156:
.LBB50:
.LBB49:
	.loc 2 104 0
	call	puts@PLT
.LVL157:
.LBE49:
.LBE50:
.LBB51:
.LBB52:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
.LVL158:
.LBE52:
.LBE51:
	.loc 1 231 0
	cmpq	$0, max_time(%rip)
	jle	.L99
	xorl	%ebx, %ebx
	.loc 1 232 0
	movl	$1374389535, %r12d
	jmp	.L102
.LVL159:
	.p2align 4,,10
	.p2align 3
.L100:
.LBB53:
.LBB54:
	.loc 1 263 0 discriminator 2
	testq	%rbp, %rbp
	je	.L101
	movq	%rbp, %rdi
	call	sim.part.1
.LVL160:
.L101:
	addq	$1, %rbx
.LVL161:
.LBE54:
.LBE53:
	.loc 1 231 0
	cmpq	%rbx, max_time(%rip)
	jle	.L99
.L102:
.LVL162:
	.loc 1 232 0
	movl	%ebx, %eax
	mull	%r12d
	shrl	$4, %edx
	imull	$50, %edx, %edx
	cmpl	%ebx, %edx
	jne	.L100
.LVL163:
.LBB55:
.LBB56:
	.loc 2 104 0
	leaq	.LC8(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL164:
	jmp	.L100
.LVL165:
	.p2align 4,,10
	.p2align 3
.L99:
.LBE56:
.LBE55:
.LBB57:
.LBB58:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
.LVL166:
.LBE58:
.LBE57:
.LBB59:
.LBB60:
	.loc 1 70 0
	testq	%rbp, %rbp
	je	.L104
	movq	%rbp, %rdi
	call	get_results.part.0
.LVL167:
	movq	%xmm0, 20(%rsp)
	movss	20(%rsp), %xmm3
	movss	24(%rsp), %xmm4
	movss	%xmm3, 4(%rsp)
	movss	%xmm4, 12(%rsp)
.L103:
.LBE60:
.LBE59:
.LBB62:
.LBB63:
	.loc 2 104 0
	leaq	.LC10(%rip), %rdi
	movss	%xmm1, 8(%rsp)
.LVL168:
	call	puts@PLT
.LVL169:
.LBE63:
.LBE62:
	.loc 1 243 0
	pxor	%xmm0, %xmm0
.LBB64:
.LBB65:
	.loc 2 104 0
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
.LBE65:
.LBE64:
	.loc 1 243 0
	cvtss2sd	4(%rsp), %xmm0
.LBB67:
.LBB66:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL170:
.LBE66:
.LBE67:
	.loc 1 246 0
	movss	12(%rsp), %xmm0
.LBB68:
.LBB69:
	.loc 2 104 0
	leaq	.LC12(%rip), %rsi
.LBE69:
.LBE68:
	.loc 1 246 0
	divss	4(%rsp), %xmm0
.LBB72:
.LBB70:
	.loc 2 104 0
	movl	$1, %edi
	movl	$1, %eax
.LBE70:
.LBE72:
	.loc 1 245 0
	cvtss2sd	%xmm0, %xmm0
.LBB73:
.LBB71:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL171:
.LBE71:
.LBE73:
	.loc 1 248 0
	movss	8(%rsp), %xmm1
.LBB74:
.LBB75:
	.loc 2 104 0
	leaq	.LC13(%rip), %rsi
.LBE75:
.LBE74:
	.loc 1 248 0
	divss	4(%rsp), %xmm1
.LBB78:
.LBB76:
	.loc 2 104 0
	movl	$1, %edi
	movl	$1, %eax
.LBE76:
.LBE78:
	.loc 1 247 0
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
.LBB79:
.LBB77:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL172:
.LBE77:
.LBE79:
	.loc 1 251 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL173:
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL174:
.L104:
	.cfi_restore_state
.LBB80:
.LBB61:
	.loc 1 70 0
	pxor	%xmm1, %xmm1
	movss	%xmm1, 12(%rsp)
	movss	%xmm1, 4(%rsp)
	jmp	.L103
.LBE61:
.LBE80:
	.cfi_endproc
.LFE29:
	.size	main, .-main
	.comm	seed,8,8
	.comm	max_time,8,8
	.comm	max_level,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1325400064
	.section	.rodata.cst8
	.align 8
.LC4:
	.long	2576980378
	.long	1069128089
	.align 8
.LC5:
	.long	996432413
	.long	1071992799
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "../olden/health/src/health.h"
	.file 8 "/usr/include/stdlib.h"
	.file 9 "<built-in>"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1183
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF106
	.byte	0xc
	.long	.LASF107
	.long	.LASF108
	.long	.Ldebug_ranges0+0x150
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0xd8
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0x8c
	.long	0x73
	.uleb128 0x3
	.long	.LASF11
	.byte	0x4
	.byte	0x8d
	.long	0x73
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0x98
	.uleb128 0x8
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x224
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0xf6
	.long	0x6c
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0xfb
	.long	0x92
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xfc
	.long	0x92
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xfd
	.long	0x92
	.byte	0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xfe
	.long	0x92
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0xff
	.long	0x92
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.value	0x100
	.long	0x92
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x101
	.long	0x92
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x102
	.long	0x92
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x104
	.long	0x92
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x105
	.long	0x92
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x106
	.long	0x92
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x108
	.long	0x25c
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x10a
	.long	0x262
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x10c
	.long	0x6c
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x110
	.long	0x6c
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x112
	.long	0x7a
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x116
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x117
	.long	0x5e
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x118
	.long	0x268
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x11c
	.long	0x278
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x125
	.long	0x85
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x12d
	.long	0x90
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x12e
	.long	0x90
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0x90
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0x90
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x132
	.long	0x37
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x133
	.long	0x6c
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.value	0x135
	.long	0x27e
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF109
	.byte	0x5
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x25c
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0xa1
	.long	0x25c
	.byte	0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.long	0x262
	.byte	0x8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.byte	0xa6
	.long	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0x6
	.byte	0x8
	.long	0xa4
	.uleb128 0xc
	.long	0x98
	.long	0x278
	.uleb128 0xd
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0xc
	.long	0x98
	.long	0x28e
	.uleb128 0xd
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF110
	.uleb128 0xf
	.long	.LASF47
	.byte	0x5
	.value	0x13f
	.long	0x28e
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.value	0x140
	.long	0x28e
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.value	0x141
	.long	0x28e
	.uleb128 0x6
	.byte	0x8
	.long	0x9f
	.uleb128 0x10
	.long	0x2b7
	.uleb128 0x11
	.long	.LASF50
	.byte	0x6
	.byte	0x87
	.long	0x262
	.uleb128 0x11
	.long	.LASF51
	.byte	0x6
	.byte	0x88
	.long	0x262
	.uleb128 0x11
	.long	.LASF52
	.byte	0x6
	.byte	0x89
	.long	0x262
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x11
	.long	.LASF54
	.byte	0x7
	.byte	0x17
	.long	0x6c
	.uleb128 0x11
	.long	.LASF55
	.byte	0x7
	.byte	0x18
	.long	0x73
	.uleb128 0x11
	.long	.LASF56
	.byte	0x7
	.byte	0x19
	.long	0x2e3
	.uleb128 0x8
	.long	.LASF57
	.byte	0xc
	.byte	0x7
	.byte	0x1b
	.long	0x33c
	.uleb128 0x9
	.long	.LASF58
	.byte	0x7
	.byte	0x1c
	.long	0x30
	.byte	0
	.uleb128 0x9
	.long	.LASF59
	.byte	0x7
	.byte	0x1d
	.long	0x30
	.byte	0x4
	.uleb128 0x9
	.long	.LASF60
	.byte	0x7
	.byte	0x1e
	.long	0x30
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x18
	.byte	0x7
	.byte	0x21
	.long	0x379
	.uleb128 0x9
	.long	.LASF62
	.byte	0x7
	.byte	0x22
	.long	0x6c
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x7
	.byte	0x23
	.long	0x6c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF64
	.byte	0x7
	.byte	0x24
	.long	0x6c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF65
	.byte	0x7
	.byte	0x25
	.long	0x3ce
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0xc0
	.byte	0x7
	.byte	0x42
	.long	0x3ce
	.uleb128 0x9
	.long	.LASF67
	.byte	0x7
	.byte	0x44
	.long	0x471
	.byte	0
	.uleb128 0x9
	.long	.LASF68
	.byte	0x7
	.byte	0x45
	.long	0x3ce
	.byte	0x20
	.uleb128 0x9
	.long	.LASF69
	.byte	0x7
	.byte	0x46
	.long	0x3d4
	.byte	0x28
	.uleb128 0x9
	.long	.LASF70
	.byte	0x7
	.byte	0x47
	.long	0x411
	.byte	0x40
	.uleb128 0x9
	.long	.LASF71
	.byte	0x7
	.byte	0x48
	.long	0x6c
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x7
	.byte	0x49
	.long	0x2e3
	.byte	0xb8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x379
	.uleb128 0x8
	.long	.LASF72
	.byte	0x18
	.byte	0x7
	.byte	0x28
	.long	0x405
	.uleb128 0x9
	.long	.LASF67
	.byte	0x7
	.byte	0x29
	.long	0x405
	.byte	0
	.uleb128 0x9
	.long	.LASF73
	.byte	0x7
	.byte	0x2a
	.long	0x40b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF68
	.byte	0x7
	.byte	0x2b
	.long	0x405
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3d4
	.uleb128 0x6
	.byte	0x8
	.long	0x33c
	.uleb128 0x8
	.long	.LASF74
	.byte	0x70
	.byte	0x7
	.byte	0x2e
	.long	0x471
	.uleb128 0x9
	.long	.LASF75
	.byte	0x7
	.byte	0x30
	.long	0x6c
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0x7
	.byte	0x31
	.long	0x6c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF77
	.byte	0x7
	.byte	0x32
	.long	0x6c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0x7
	.byte	0x33
	.long	0x3d4
	.byte	0x10
	.uleb128 0x9
	.long	.LASF79
	.byte	0x7
	.byte	0x34
	.long	0x3d4
	.byte	0x28
	.uleb128 0x9
	.long	.LASF80
	.byte	0x7
	.byte	0x35
	.long	0x3d4
	.byte	0x40
	.uleb128 0x12
	.string	"up"
	.byte	0x7
	.byte	0x36
	.long	0x3d4
	.byte	0x58
	.byte	0
	.uleb128 0xc
	.long	0x3ce
	.long	0x481
	.uleb128 0xd
	.long	0x42
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	0x2ea
	.byte	0x1
	.byte	0xd
	.uleb128 0x9
	.byte	0x3
	.quad	max_level
	.uleb128 0x13
	.long	0x2f5
	.byte	0x1
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	max_time
	.uleb128 0x13
	.long	0x300
	.byte	0x1
	.byte	0xf
	.uleb128 0x9
	.byte	0x3
	.quad	seed
	.uleb128 0x14
	.string	"sim"
	.byte	0x1
	.byte	0xfe
	.long	0x405
	.byte	0x1
	.long	0x545
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.byte	0xfe
	.long	0x3ce
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x100
	.long	0x6c
	.uleb128 0x17
	.long	.LASF73
	.byte	0x1
	.value	0x101
	.long	0x40b
	.uleb128 0x16
	.string	"l"
	.byte	0x1
	.value	0x102
	.long	0x405
	.uleb128 0x16
	.string	"up"
	.byte	0x1
	.value	0x102
	.long	0x405
	.uleb128 0x16
	.string	"h"
	.byte	0x1
	.value	0x103
	.long	0x545
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.value	0x104
	.long	0x54b
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.value	0x106
	.long	0x6c
	.uleb128 0x18
	.long	0x536
	.uleb128 0x16
	.string	"V"
	.byte	0x1
	.value	0x10c
	.long	0x3ce
	.uleb128 0x16
	.string	"L"
	.byte	0x1
	.value	0x10d
	.long	0x405
	.byte	0
	.uleb128 0x19
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x115
	.long	0x405
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x411
	.uleb128 0xc
	.long	0x405
	.long	0x55b
	.uleb128 0xd
	.long	0x42
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.byte	0xda
	.long	0x6c
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x908
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x1
	.byte	0xda
	.long	0x6c
	.long	.LLST50
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.byte	0xda
	.long	0x908
	.long	.LLST51
	.uleb128 0x1c
	.long	.LASF84
	.byte	0x1
	.byte	0xdc
	.long	0x30b
	.long	.LLST52
	.uleb128 0x1d
	.string	"top"
	.byte	0x1
	.byte	0xdd
	.long	0x3ce
	.long	.LLST53
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xde
	.long	0x6c
	.long	.LLST54
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x1
	.byte	0xdf
	.long	0x30
	.long	.LLST55
	.uleb128 0x1c
	.long	.LASF58
	.byte	0x1
	.byte	0xdf
	.long	0x30
	.long	.LLST56
	.uleb128 0x1c
	.long	.LASF60
	.byte	0x1
	.byte	0xdf
	.long	0x30
	.long	.LLST57
	.uleb128 0x1e
	.long	0xdd6
	.quad	.LBB47
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xe4
	.long	0x62e
	.uleb128 0x1f
	.long	0xde6
	.long	.LLST58
	.uleb128 0x20
	.quad	.LVL157
	.long	0x10ef
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xdd6
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.byte	0x1
	.byte	0xe5
	.long	0x66e
	.uleb128 0x1f
	.long	0xde6
	.long	.LLST59
	.uleb128 0x20
	.quad	.LVL158
	.long	0x10ef
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x4b4
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.byte	0x1
	.byte	0xe9
	.long	0x6dc
	.uleb128 0x1f
	.long	0x4c4
	.long	.LLST60
	.uleb128 0x23
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x24
	.long	0xf0c
	.uleb128 0x24
	.long	0xf11
	.uleb128 0x24
	.long	0xf16
	.uleb128 0x24
	.long	0xf1b
	.uleb128 0x24
	.long	0xf20
	.uleb128 0x24
	.long	0xf25
	.uleb128 0x24
	.long	0xf2a
	.uleb128 0x20
	.quad	.LVL160
	.long	0xf45
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xdd6
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.byte	0x1
	.byte	0xe8
	.long	0x727
	.uleb128 0x1f
	.long	0xde6
	.long	.LLST61
	.uleb128 0x20
	.quad	.LVL164
	.long	0x110e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xdd6
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.byte	0x1
	.byte	0xec
	.long	0x767
	.uleb128 0x1f
	.long	0xde6
	.long	.LLST62
	.uleb128 0x20
	.quad	.LVL166
	.long	0x10ef
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xc74
	.quad	.LBB59
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xed
	.long	0x7bb
	.uleb128 0x1f
	.long	0xc84
	.long	.LLST63
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x24
	.long	0xe17
	.uleb128 0x24
	.long	0xe1c
	.uleb128 0x24
	.long	0xe21
	.uleb128 0x24
	.long	0xe26
	.uleb128 0x24
	.long	0xe2b
	.uleb128 0x20
	.quad	.LVL167
	.long	0xe42
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xdd6
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.byte	0x1
	.byte	0xf2
	.long	0x7fb
	.uleb128 0x1f
	.long	0xde6
	.long	.LLST64
	.uleb128 0x20
	.quad	.LVL169
	.long	0x10ef
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xdd6
	.quad	.LBB64
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xf3
	.long	0x83c
	.uleb128 0x1f
	.long	0xde6
	.long	.LLST65
	.uleb128 0x20
	.quad	.LVL170
	.long	0x110e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xdd6
	.quad	.LBB68
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xf5
	.long	0x88e
	.uleb128 0x1f
	.long	0xde6
	.long	.LLST66
	.uleb128 0x20
	.quad	.LVL171
	.long	0x110e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xd
	.byte	0x91
	.sleb128 -52
	.byte	0xf6
	.byte	0x4
	.uleb128 0x30
	.byte	0x91
	.sleb128 -60
	.byte	0xf6
	.byte	0x4
	.uleb128 0x30
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x29
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xdd6
	.quad	.LBB74
	.long	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0xf7
	.long	0x8cf
	.uleb128 0x1f
	.long	0xde6
	.long	.LLST67
	.uleb128 0x20
	.quad	.LVL172
	.long	0x110e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL154
	.long	0x113a
	.long	0x8ef
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x20
	.quad	.LVL155
	.long	0xcdd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x92
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.byte	0xc3
	.long	0x40b
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a8
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.byte	0xc3
	.long	0x3ce
	.long	.LLST33
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0xc5
	.long	0x2e3
	.long	.LLST34
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x1
	.byte	0xc5
	.long	0x2e3
	.long	.LLST35
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x1
	.byte	0xc6
	.long	0x40b
	.long	.LLST36
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x1
	.byte	0xc7
	.long	0x30
	.long	.LLST37
	.uleb128 0x1c
	.long	.LASF71
	.byte	0x1
	.byte	0xc8
	.long	0x6c
	.long	.LLST38
	.uleb128 0x27
	.quad	.LVL117
	.long	0x1145
	.uleb128 0x20
	.quad	.LVL120
	.long	0x1150
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF90
	.byte	0x1
	.byte	0xb3
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xa29
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x1
	.byte	0xb3
	.long	0x545
	.long	.LLST30
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.byte	0xb3
	.long	0x40b
	.long	.LLST31
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.byte	0xb4
	.long	0x6c
	.long	.LLST32
	.uleb128 0x26
	.quad	.LVL109
	.long	0x115c
	.long	0xa11
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL113
	.long	0x115c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF91
	.byte	0x1
	.byte	0x9c
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xac5
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.byte	0x9c
	.long	0x3ce
	.long	.LLST25
	.uleb128 0x1b
	.long	.LASF92
	.byte	0x1
	.byte	0x9c
	.long	0x405
	.long	.LLST26
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x9d
	.long	0x6c
	.long	.LLST27
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.byte	0x9d
	.long	0x6c
	.long	.LLST28
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0x9e
	.long	0x40b
	.long	.LLST29
	.uleb128 0x26
	.quad	.LVL99
	.long	0x1167
	.long	0xaa9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL100
	.long	0x115c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x7d
	.sleb128 104
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x1
	.byte	0x76
	.long	0x405
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd9
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.byte	0x76
	.long	0x3ce
	.long	.LLST17
	.uleb128 0x1b
	.long	.LASF92
	.byte	0x1
	.byte	0x76
	.long	0x405
	.long	.LLST18
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x1
	.byte	0x77
	.long	0x30
	.long	.LLST19
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0x78
	.long	0x40b
	.long	.LLST20
	.uleb128 0x1d
	.string	"up"
	.byte	0x1
	.byte	0x79
	.long	0x405
	.long	.LLST21
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0x7a
	.long	0x2e3
	.long	.LLST22
	.uleb128 0x1c
	.long	.LASF71
	.byte	0x1
	.byte	0x7b
	.long	0x6c
	.long	.LLST23
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.byte	0x7b
	.long	0x6c
	.long	.LLST24
	.uleb128 0x27
	.quad	.LVL74
	.long	0x1145
	.uleb128 0x26
	.quad	.LVL77
	.long	0x1167
	.long	0xb82
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL78
	.long	0x115c
	.long	0xba0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL85
	.long	0x1167
	.long	0xbbe
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL86
	.long	0x115c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF94
	.byte	0x1
	.byte	0x61
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xc74
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.byte	0x61
	.long	0x3ce
	.long	.LLST12
	.uleb128 0x1b
	.long	.LASF92
	.byte	0x1
	.byte	0x61
	.long	0x405
	.long	.LLST13
	.uleb128 0x1d
	.string	"l"
	.byte	0x1
	.byte	0x63
	.long	0x405
	.long	.LLST14
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0x64
	.long	0x40b
	.long	.LLST15
	.uleb128 0x1d
	.string	"t"
	.byte	0x1
	.byte	0x65
	.long	0x6c
	.long	.LLST16
	.uleb128 0x26
	.quad	.LVL57
	.long	0x1167
	.long	0xc59
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL59
	.long	0x115c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 40
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF95
	.byte	0x1
	.byte	0x3b
	.long	0x30b
	.byte	0x1
	.long	0xccd
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.byte	0x3b
	.long	0x3ce
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x6c
	.uleb128 0x2c
	.long	.LASF92
	.byte	0x1
	.byte	0x3d
	.long	0x405
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.byte	0x3e
	.long	0x40b
	.uleb128 0x2c
	.long	.LASF96
	.byte	0x1
	.byte	0x3f
	.long	0xccd
	.uleb128 0x2b
	.string	"r1"
	.byte	0x1
	.byte	0x40
	.long	0x30b
	.uleb128 0x19
	.uleb128 0x2b
	.string	"V"
	.byte	0x1
	.byte	0x49
	.long	0x3ce
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x30b
	.long	0xcdd
	.uleb128 0xd
	.long	0x42
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.byte	0x11
	.long	0x3ce
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd6
	.uleb128 0x1b
	.long	.LASF98
	.byte	0x1
	.byte	0x11
	.long	0x6c
	.long	.LLST0
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x1
	.byte	0x11
	.long	0x6c
	.long	.LLST1
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x1
	.byte	0x11
	.long	0x3ce
	.long	.LLST2
	.uleb128 0x2d
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0xdc8
	.uleb128 0x1d
	.string	"new"
	.byte	0x1
	.byte	0x15
	.long	0x3ce
	.long	.LLST3
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x16
	.long	0x6c
	.long	.LLST4
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x1
	.byte	0x17
	.long	0x471
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.quad	.LVL3
	.long	0x1150
	.long	0xd83
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.uleb128 0x26
	.quad	.LVL5
	.long	0xcdd
	.long	0xdaa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL9
	.long	0x1172
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x40000000
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL17
	.long	0x117d
	.byte	0
	.uleb128 0x2f
	.long	.LASF111
	.byte	0x2
	.byte	0x66
	.long	0x6c
	.byte	0x3
	.long	0xdf3
	.uleb128 0x15
	.long	.LASF99
	.byte	0x2
	.byte	0x66
	.long	0x2bd
	.uleb128 0x30
	.byte	0
	.uleb128 0x31
	.long	0xc74
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xe42
	.uleb128 0x1f
	.long	0xc84
	.long	.LLST5
	.uleb128 0x24
	.long	0xc8f
	.uleb128 0x24
	.long	0xc98
	.uleb128 0x24
	.long	0xca3
	.uleb128 0x24
	.long	0xcac
	.uleb128 0x32
	.long	0xcb7
	.long	.LLST6
	.uleb128 0x33
	.quad	.LVL21
	.long	0xe42
	.byte	0
	.uleb128 0x31
	.long	0xc74
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xee8
	.uleb128 0x1f
	.long	0xc84
	.long	.LLST7
	.uleb128 0x32
	.long	0xe17
	.long	.LLST8
	.uleb128 0x32
	.long	0xe1c
	.long	.LLST9
	.uleb128 0x32
	.long	0xe21
	.long	.LLST10
	.uleb128 0x34
	.long	0xe26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	0xe2b
	.uleb128 0x35
	.long	0xcc1
	.long	.Ldebug_ranges0+0
	.long	0xecd
	.uleb128 0x32
	.long	0xcc2
	.long	.LLST11
	.uleb128 0x27
	.quad	.LVL25
	.long	0xc74
	.uleb128 0x27
	.quad	.LVL27
	.long	0xc74
	.uleb128 0x27
	.quad	.LVL29
	.long	0xc74
	.byte	0
	.uleb128 0x27
	.quad	.LVL31
	.long	0xc74
	.uleb128 0x27
	.quad	.LVL48
	.long	0x117d
	.byte	0
	.uleb128 0x31
	.long	0x4b4
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xf45
	.uleb128 0x1f
	.long	0x4c4
	.long	.LLST39
	.uleb128 0x24
	.long	0x4cf
	.uleb128 0x24
	.long	0x4d9
	.uleb128 0x24
	.long	0x4e5
	.uleb128 0x24
	.long	0x4ef
	.uleb128 0x24
	.long	0x4fa
	.uleb128 0x24
	.long	0x504
	.uleb128 0x24
	.long	0x510
	.uleb128 0x29
	.quad	.LVL126
	.long	0xf45
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x4b4
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x10c3
	.uleb128 0x1f
	.long	0x4c4
	.long	.LLST40
	.uleb128 0x32
	.long	0xf0c
	.long	.LLST41
	.uleb128 0x32
	.long	0xf11
	.long	.LLST42
	.uleb128 0x32
	.long	0xf16
	.long	.LLST43
	.uleb128 0x32
	.long	0xf1b
	.long	.LLST44
	.uleb128 0x32
	.long	0xf20
	.long	.LLST45
	.uleb128 0x34
	.long	0xf25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.long	0xf2a
	.long	.LLST46
	.uleb128 0x36
	.long	0x51c
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0xfe1
	.uleb128 0x32
	.long	0x521
	.long	.LLST47
	.uleb128 0x32
	.long	0x52b
	.long	.LLST48
	.uleb128 0x27
	.quad	.LVL130
	.long	0x4b4
	.byte	0
	.uleb128 0x36
	.long	0x536
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x1030
	.uleb128 0x32
	.long	0x537
	.long	.LLST49
	.uleb128 0x26
	.quad	.LVL135
	.long	0x9a8
	.long	0x101b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL136
	.long	0x1167
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL131
	.long	0x4b4
	.uleb128 0x26
	.quad	.LVL140
	.long	0xbd9
	.long	0x1055
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL141
	.long	0xac5
	.long	0x106d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL143
	.long	0xa29
	.long	0x1085
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL144
	.long	0x90e
	.long	0x109d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL146
	.long	0x9a8
	.long	0x10b5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL152
	.long	0x117d
	.byte	0
	.uleb128 0x37
	.uleb128 0x2a
	.byte	0x9e
	.uleb128 0x28
	.byte	0xa
	.byte	0xa
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x43
	.byte	0x6f
	.byte	0x6c
	.byte	0x75
	.byte	0x6d
	.byte	0x62
	.byte	0x69
	.byte	0x61
	.byte	0x6e
	.byte	0x20
	.byte	0x48
	.byte	0x65
	.byte	0x61
	.byte	0x6c
	.byte	0x74
	.byte	0x68
	.byte	0x20
	.byte	0x43
	.byte	0x61
	.byte	0x72
	.byte	0x65
	.byte	0x20
	.byte	0x53
	.byte	0x69
	.byte	0x6d
	.byte	0x75
	.byte	0x6c
	.byte	0x61
	.byte	0x74
	.byte	0x6f
	.byte	0x72
	.byte	0xa
	.byte	0xa
	.byte	0
	.uleb128 0x38
	.long	.LASF112
	.long	.LASF113
	.byte	0x9
	.byte	0
	.long	.LASF112
	.uleb128 0x37
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xc
	.byte	0x57
	.byte	0x6f
	.byte	0x72
	.byte	0x6b
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0x2e
	.byte	0x2e
	.byte	0x2e
	.byte	0xa
	.byte	0
	.uleb128 0x39
	.long	.LASF100
	.long	.LASF100
	.byte	0x2
	.byte	0x57
	.uleb128 0x37
	.uleb128 0x13
	.byte	0x9e
	.uleb128 0x11
	.byte	0x47
	.byte	0x65
	.byte	0x74
	.byte	0x74
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0x20
	.byte	0x52
	.byte	0x65
	.byte	0x73
	.byte	0x75
	.byte	0x6c
	.byte	0x74
	.byte	0x73
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.byte	0x44
	.byte	0x6f
	.byte	0x6e
	.byte	0x65
	.byte	0x2e
	.byte	0xa
	.byte	0xa
	.byte	0
	.uleb128 0x39
	.long	.LASF101
	.long	.LASF101
	.byte	0x7
	.byte	0x55
	.uleb128 0x39
	.long	.LASF102
	.long	.LASF102
	.byte	0x7
	.byte	0x56
	.uleb128 0x3a
	.long	.LASF103
	.long	.LASF103
	.byte	0x8
	.value	0x21b
	.uleb128 0x39
	.long	.LASF104
	.long	.LASF104
	.byte	0x7
	.byte	0x59
	.uleb128 0x39
	.long	.LASF105
	.long	.LASF105
	.byte	0x7
	.byte	0x5a
	.uleb128 0x3b
	.string	"pow"
	.string	"pow"
	.byte	0xa
	.byte	0x8c
	.uleb128 0x3c
	.long	.LASF114
	.long	.LASF114
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
.LLST50:
	.quad	.LVL153
	.quad	.LVL154-1
	.value	0x1
	.byte	0x55
	.quad	.LVL154-1
	.quad	.LFE29
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL153
	.quad	.LVL154-1
	.value	0x1
	.byte	0x54
	.quad	.LVL154-1
	.quad	.LFE29
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL168
	.quad	.LVL169-1
	.value	0xb
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL169-1
	.quad	.LVL172
	.value	0xc
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL153
	.quad	.LVL156
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL156
	.quad	.LVL157-1
	.value	0x1
	.byte	0x50
	.quad	.LVL157-1
	.quad	.LVL173
	.value	0x1
	.byte	0x56
	.quad	.LVL174
	.quad	.LFE29
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL158
	.quad	.LVL159
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL160
	.quad	.LVL161
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL162
	.quad	.LVL163
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL168
	.quad	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL168
	.quad	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL168
	.quad	.LVL169-1
	.value	0x1
	.byte	0x62
	.quad	.LVL169-1
	.quad	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL156
	.quad	.LVL157
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4291
	.sleb128 0
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL157
	.quad	.LVL158
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4350
	.sleb128 0
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL159
	.quad	.LVL160
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL163
	.quad	.LVL165
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL165
	.quad	.LVL166
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4377
	.sleb128 0
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL166
	.quad	.LVL168
	.value	0x1
	.byte	0x56
	.quad	.LVL174
	.quad	.LFE29
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL168
	.quad	.LVL169
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4398
	.sleb128 0
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL169
	.quad	.LVL170
	.value	0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL170
	.quad	.LVL171
	.value	0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL171
	.quad	.LVL172
	.value	0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL114
	.quad	.LVL116
	.value	0x1
	.byte	0x55
	.quad	.LVL116
	.quad	.LVL121
	.value	0x1
	.byte	0x53
	.quad	.LVL121
	.quad	.LVL122
	.value	0x2
	.byte	0x70
	.sleb128 16
	.quad	.LVL122
	.quad	.LVL124
	.value	0x1
	.byte	0x53
	.quad	.LVL124
	.quad	.LFE28
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL114
	.quad	.LVL115
	.value	0x3
	.byte	0x75
	.sleb128 184
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL119
	.quad	.LVL120-1
	.value	0x1
	.byte	0x50
	.quad	.LVL122
	.quad	.LVL123
	.value	0x1
	.byte	0x50
	.quad	.LVL123
	.quad	.LVL124
	.value	0x3
	.byte	0x73
	.sleb128 184
	.quad	.LVL124
	.quad	.LFE28
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0xb8
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL120
	.quad	.LVL122
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL117
	.quad	.LVL118
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL119
	.quad	.LVL120-1
	.value	0x3
	.byte	0x73
	.sleb128 176
	.quad	.LVL122
	.quad	.LVL124
	.value	0x3
	.byte	0x73
	.sleb128 176
	.quad	.LVL124
	.quad	.LFE28
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0xb0
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL106
	.quad	.LVL108
	.value	0x1
	.byte	0x55
	.quad	.LVL108
	.quad	.LVL109-1
	.value	0x3
	.byte	0x75
	.sleb128 -40
	.byte	0x9f
	.quad	.LVL109-1
	.quad	.LVL111
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL111
	.quad	.LVL112
	.value	0x1
	.byte	0x55
	.quad	.LVL112
	.quad	.LVL113-1
	.value	0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x9f
	.quad	.LVL113-1
	.quad	.LFE27
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL106
	.quad	.LVL109-1
	.value	0x1
	.byte	0x54
	.quad	.LVL109-1
	.quad	.LVL110
	.value	0x1
	.byte	0x53
	.quad	.LVL110
	.quad	.LVL111
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL111
	.quad	.LVL113-1
	.value	0x1
	.byte	0x54
	.quad	.LVL113-1
	.quad	.LFE27
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL106
	.quad	.LVL107
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL88
	.quad	.LVL89
	.value	0x1
	.byte	0x55
	.quad	.LVL89
	.quad	.LVL104
	.value	0x1
	.byte	0x5d
	.quad	.LVL104
	.quad	.LVL105
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL105
	.quad	.LFE26
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL88
	.quad	.LVL89
	.value	0x1
	.byte	0x54
	.quad	.LVL89
	.quad	.LVL103
	.value	0x1
	.byte	0x56
	.quad	.LVL105
	.quad	.LFE26
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL89
	.quad	.LVL92
	.value	0x1
	.byte	0x51
	.quad	.LVL93
	.quad	.LVL96
	.value	0x1
	.byte	0x51
	.quad	.LVL96
	.quad	.LVL97
	.value	0x3
	.byte	0x7d
	.sleb128 68
	.quad	.LVL97
	.quad	.LVL99-1
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL89
	.quad	.LVL91
	.value	0x2
	.byte	0x73
	.sleb128 4
	.quad	.LVL95
	.quad	.LVL96
	.value	0x1
	.byte	0x51
	.quad	.LVL96
	.quad	.LVL97
	.value	0x3
	.byte	0x7d
	.sleb128 68
	.quad	.LVL97
	.quad	.LVL98
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL89
	.quad	.LVL92
	.value	0x1
	.byte	0x53
	.quad	.LVL94
	.quad	.LVL102
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x55
	.quad	.LVL68
	.quad	.LVL81
	.value	0x1
	.byte	0x5f
	.quad	.LVL81
	.quad	.LVL82
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL82
	.quad	.LVL87
	.value	0x1
	.byte	0x5f
	.quad	.LVL87
	.quad	.LFE25
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x54
	.quad	.LVL68
	.quad	.LVL79
	.value	0x1
	.byte	0x56
	.quad	.LVL80
	.quad	.LVL81
	.value	0x1
	.byte	0x56
	.quad	.LVL82
	.quad	.LVL87
	.value	0x1
	.byte	0x56
	.quad	.LVL87
	.quad	.LFE25
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL74
	.quad	.LVL75
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL68
	.quad	.LVL70
	.value	0x1
	.byte	0x53
	.quad	.LVL71
	.quad	.LVL81
	.value	0x1
	.byte	0x53
	.quad	.LVL82
	.quad	.LVL87
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL67
	.quad	.LVL68
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL68
	.quad	.LVL81
	.value	0x1
	.byte	0x5c
	.quad	.LVL82
	.quad	.LVL84
	.value	0x1
	.byte	0x5c
	.quad	.LVL85
	.quad	.LVL87
	.value	0x1
	.byte	0x5c
	.quad	.LVL87
	.quad	.LFE25
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL73
	.quad	.LVL74-1
	.value	0x3
	.byte	0x7f
	.sleb128 184
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL76
	.quad	.LVL77-1
	.value	0x3
	.byte	0x7f
	.sleb128 176
	.quad	.LVL82
	.quad	.LVL85-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL71
	.quad	.LVL72
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	.LVL82
	.quad	.LVL83
	.value	0x3
	.byte	0x7f
	.sleb128 68
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL49
	.quad	.LVL50
	.value	0x1
	.byte	0x55
	.quad	.LVL50
	.quad	.LVL64
	.value	0x1
	.byte	0x5c
	.quad	.LVL64
	.quad	.LVL65
	.value	0x4
	.byte	0x7d
	.sleb128 -128
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL66
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL66
	.quad	.LFE24
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL49
	.quad	.LVL50
	.value	0x1
	.byte	0x54
	.quad	.LVL50
	.quad	.LVL62
	.value	0x1
	.byte	0x53
	.quad	.LVL66
	.quad	.LFE24
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL56
	.quad	.LVL57
	.value	0x4
	.byte	0x7c
	.sleb128 128
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL58
	.value	0x3
	.byte	0x7c
	.sleb128 40
	.byte	0x9f
	.quad	.LVL58
	.quad	.LVL59-1
	.value	0x1
	.byte	0x55
	.quad	.LVL59-1
	.quad	.LVL61
	.value	0x3
	.byte	0x7c
	.sleb128 40
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL50
	.quad	.LVL52
	.value	0x1
	.byte	0x56
	.quad	.LVL53
	.quad	.LVL63
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x2
	.byte	0x76
	.sleb128 8
	.quad	.LVL55
	.quad	.LVL56
	.value	0x3
	.byte	0x7c
	.sleb128 68
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL2
	.value	0x1
	.byte	0x56
	.quad	.LVL2
	.quad	.LVL14
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL15
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x55
	.quad	.LVL16
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x54
	.quad	.LVL3-1
	.quad	.LVL8
	.value	0x1
	.byte	0x5c
	.quad	.LVL8
	.quad	.LVL15
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x54
	.quad	.LVL16
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL3-1
	.value	0x1
	.byte	0x51
	.quad	.LVL3-1
	.quad	.LVL15
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x51
	.quad	.LVL16
	.quad	.LFE22
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL4
	.quad	.LVL14
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL4
	.quad	.LVL6
	.value	0x1
	.byte	0x5f
	.quad	.LVL6
	.quad	.LVL7
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL10
	.quad	.LVL11
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL12
	.quad	.LVL13
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL18
	.quad	.LVL21-1
	.value	0x1
	.byte	0x55
	.quad	.LVL21-1
	.quad	.LFE23
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x18
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.quad	.LVL20
	.quad	.LFE23
	.value	0x18
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x93
	.uleb128 0x4
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x55
	.quad	.LVL23
	.quad	.LVL46
	.value	0x1
	.byte	0x53
	.quad	.LVL46
	.quad	.LVL47
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL47
	.quad	.LFE31
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL24
	.quad	.LVL26
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL28
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL28
	.quad	.LVL30
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL30
	.quad	.LVL32
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL32
	.quad	.LVL33
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL37
	.quad	.LVL39
	.value	0x1
	.byte	0x50
	.quad	.LVL42
	.quad	.LVL44
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL38
	.quad	.LVL43
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL26
	.quad	.LVL27-1
	.value	0x1
	.byte	0x55
	.quad	.LVL28
	.quad	.LVL29-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL125
	.quad	.LVL126-1
	.value	0x1
	.byte	0x55
	.quad	.LVL126-1
	.quad	.LVL126
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL126
	.quad	.LFE30
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL127
	.quad	.LVL129
	.value	0x1
	.byte	0x55
	.quad	.LVL129
	.quad	.LVL149
	.value	0x1
	.byte	0x5d
	.quad	.LVL149
	.quad	.LVL150
	.value	0x3
	.byte	0x7f
	.sleb128 -64
	.byte	0x9f
	.quad	.LVL150
	.quad	.LVL151
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL151
	.quad	.LFE32
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL128
	.quad	.LVL129
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL131
	.quad	.LVL132
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL132
	.quad	.LVL138
	.value	0x1
	.byte	0x5c
	.quad	.LVL138
	.quad	.LVL139
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL144
	.quad	.LVL146-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL133
	.quad	.LVL134
	.value	0x1
	.byte	0x56
	.quad	.LVL134
	.quad	.LVL138
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL142
	.quad	.LVL143-1
	.value	0x1
	.byte	0x50
	.quad	.LVL143-1
	.quad	.LVL147
	.value	0x1
	.byte	0x53
	.quad	.LVL147
	.quad	.LVL152-1
	.value	0x1
	.byte	0x50
	.quad	.LVL152-1
	.quad	.LFE32
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL131
	.quad	.LVL150
	.value	0x1
	.byte	0x5f
	.quad	.LVL150
	.quad	.LVL151
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.quad	.LVL151
	.quad	.LFE32
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL145
	.quad	.LVL146-1
	.value	0x3
	.byte	0x7d
	.sleb128 176
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL129
	.quad	.LVL130-1
	.value	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL130
	.quad	.LVL131-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL133
	.quad	.LVL148
	.value	0x1
	.byte	0x56
	.quad	.LVL151
	.quad	.LFE32
	.value	0x1
	.byte	0x56
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
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB42
	.quad	.LBE42
	.quad	.LBB43
	.quad	.LBE43
	.quad	.LBB44
	.quad	.LBE44
	.quad	0
	.quad	0
	.quad	.LBB47
	.quad	.LBE47
	.quad	.LBB50
	.quad	.LBE50
	.quad	0
	.quad	0
	.quad	.LBB59
	.quad	.LBE59
	.quad	.LBB80
	.quad	.LBE80
	.quad	0
	.quad	0
	.quad	.LBB64
	.quad	.LBE64
	.quad	.LBB67
	.quad	.LBE67
	.quad	0
	.quad	0
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB73
	.quad	.LBE73
	.quad	0
	.quad	0
	.quad	.LBB74
	.quad	.LBE74
	.quad	.LBB78
	.quad	.LBE78
	.quad	.LBB79
	.quad	.LBE79
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB29
	.quad	.LFE29
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF111:
	.string	"printf"
.LASF10:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF103:
	.string	"malloc"
.LASF26:
	.string	"_chain"
.LASF32:
	.string	"_shortbuf"
.LASF9:
	.string	"size_t"
.LASF107:
	.string	"../olden/health/src/health.c"
.LASF49:
	.string	"_IO_2_1_stderr_"
.LASF20:
	.string	"_IO_buf_base"
.LASF65:
	.string	"home_village"
.LASF95:
	.string	"get_results"
.LASF108:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF53:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF62:
	.string	"hosps_visited"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF92:
	.string	"list"
.LASF61:
	.string	"Patient"
.LASF8:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF69:
	.string	"returned"
.LASF0:
	.string	"double"
.LASF100:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF94:
	.string	"check_patients_inside"
.LASF73:
	.string	"patient"
.LASF78:
	.string	"waiting"
.LASF59:
	.string	"total_time"
.LASF70:
	.string	"hosp"
.LASF43:
	.string	"_IO_marker"
.LASF50:
	.string	"stdin"
.LASF5:
	.string	"unsigned int"
.LASF97:
	.string	"alloc_tree"
.LASF56:
	.string	"seed"
.LASF2:
	.string	"long unsigned int"
.LASF110:
	.string	"_IO_FILE_plus"
.LASF89:
	.string	"rand"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF55:
	.string	"max_time"
.LASF98:
	.string	"level"
.LASF68:
	.string	"back"
.LASF4:
	.string	"short unsigned int"
.LASF102:
	.string	"my_rand"
.LASF101:
	.string	"dealwithargs"
.LASF22:
	.string	"_IO_save_base"
.LASF71:
	.string	"label"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF113:
	.string	"__builtin_puts"
.LASF51:
	.string	"stdout"
.LASF67:
	.string	"forward"
.LASF47:
	.string	"_IO_2_1_stdin_"
.LASF72:
	.string	"List"
.LASF64:
	.string	"time_left"
.LASF19:
	.string	"_IO_write_end"
.LASF93:
	.string	"check_patients_assess"
.LASF109:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF63:
	.string	"time"
.LASF66:
	.string	"Village"
.LASF1:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF81:
	.string	"valI"
.LASF25:
	.string	"_markers"
.LASF77:
	.string	"num_waiting_patients"
.LASF3:
	.string	"unsigned char"
.LASF87:
	.string	"village"
.LASF60:
	.string	"total_hosps"
.LASF7:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF48:
	.string	"_IO_2_1_stdout_"
.LASF79:
	.string	"assess"
.LASF105:
	.string	"removeList"
.LASF80:
	.string	"inside"
.LASF12:
	.string	"char"
.LASF90:
	.string	"put_in_hosp"
.LASF84:
	.string	"results"
.LASF114:
	.string	"__stack_chk_fail"
.LASF44:
	.string	"_next"
.LASF76:
	.string	"free_personnel"
.LASF11:
	.string	"__off64_t"
.LASF58:
	.string	"total_patients"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF106:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF99:
	.string	"__fmt"
.LASF74:
	.string	"Hosp"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF52:
	.string	"stderr"
.LASF83:
	.string	"argv"
.LASF57:
	.string	"Results"
.LASF96:
	.string	"fval"
.LASF86:
	.string	"generate_patient"
.LASF88:
	.string	"newseed"
.LASF23:
	.string	"_IO_backup_base"
.LASF54:
	.string	"max_level"
.LASF82:
	.string	"argc"
.LASF112:
	.string	"puts"
.LASF75:
	.string	"personnel"
.LASF91:
	.string	"check_patients_waiting"
.LASF85:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF104:
	.string	"addList"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
