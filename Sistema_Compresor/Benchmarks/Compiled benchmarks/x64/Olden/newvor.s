	.file	"newvor.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	deleteedge
	.type	deleteedge, @function
deleteedge:
.LFB24:
	.file 1 "../olden/voronoi/src/newvor.c"
	.loc 1 60 0
	.cfi_startproc
.LVL0:
	.loc 1 63 0
	leaq	32(%rdi), %rax
	movq	%rdi, %rsi
	andq	$-128, %rsi
	andl	$127, %eax
	orq	%rsi, %rax
	movq	8(%rax), %rdx
	leaq	32(%rdx), %rax
	andq	$-128, %rdx
	andl	$127, %eax
	orq	%rdx, %rax
.LVL1:
.LBB131:
.LBB132:
	.loc 1 302 0
	movq	8(%rdi), %rdx
	.loc 1 303 0
	movq	8(%rax), %r8
	.loc 1 302 0
	leaq	32(%rdx), %rcx
	andq	$-128, %rdx
	andl	$127, %ecx
	orq	%rdx, %rcx
.LVL2:
	.loc 1 303 0
	leaq	32(%r8), %rdx
	andq	$-128, %r8
	andl	$127, %edx
	orq	%r8, %rdx
.LVL3:
	.loc 1 306 0
	movq	8(%rcx), %r8
	.loc 1 305 0
	movq	8(%rdx), %r9
.LVL4:
	.loc 1 307 0
	movq	%r9, 8(%rcx)
	.loc 1 310 0
	movq	%r8, 8(%rdx)
	.loc 1 312 0
	movq	8(%rdi), %rcx
.LVL5:
	.loc 1 313 0
	movq	8(%rax), %rdx
.LVL6:
	.loc 1 314 0
	movq	%rcx, 8(%rax)
	.loc 1 315 0
	movq	%rdx, 8(%rdi)
.LVL7:
.LBE132:
.LBE131:
	.loc 1 65 0
	xorq	$64, %rdi
.LVL8:
	leaq	32(%rdi), %rax
.LVL9:
	movq	%rdi, %rdx
	andq	$-128, %rdx
	andl	$127, %eax
	orq	%rdx, %rax
	movq	8(%rax), %rdx
	leaq	32(%rdx), %rax
	andq	$-128, %rdx
	andl	$127, %eax
	orq	%rdx, %rax
.LVL10:
.LBB133:
.LBB134:
	.loc 1 302 0
	movq	8(%rdi), %rdx
	.loc 1 303 0
	movq	8(%rax), %r8
	.loc 1 302 0
	leaq	32(%rdx), %rcx
	andq	$-128, %rdx
	andl	$127, %ecx
	orq	%rdx, %rcx
.LVL11:
	.loc 1 303 0
	leaq	32(%r8), %rdx
	andq	$-128, %r8
	andl	$127, %edx
	orq	%r8, %rdx
.LVL12:
	.loc 1 306 0
	movq	8(%rcx), %r8
	.loc 1 305 0
	movq	8(%rdx), %r9
.LVL13:
	.loc 1 307 0
	movq	%r9, 8(%rcx)
	.loc 1 310 0
	movq	%r8, 8(%rdx)
	.loc 1 312 0
	movq	8(%rdi), %rcx
.LVL14:
	.loc 1 313 0
	movq	8(%rax), %rdx
.LVL15:
	.loc 1 314 0
	movq	%rcx, 8(%rax)
.LBE134:
.LBE133:
.LBB136:
.LBB137:
	.loc 1 216 0
	movq	avail_edge(%rip), %rax
.LVL16:
.LBE137:
.LBE136:
.LBB139:
.LBB135:
	.loc 1 315 0
	movq	%rdx, 8(%rdi)
.LVL17:
.LBE135:
.LBE139:
.LBB140:
.LBB138:
	.loc 1 217 0
	movq	%rsi, avail_edge(%rip)
.LVL18:
	.loc 1 216 0
	movq	%rax, 8(%rsi)
.LBE138:
.LBE140:
	.loc 1 69 0
	ret
	.cfi_endproc
.LFE24:
	.size	deleteedge, .-deleteedge
	.p2align 4,,15
	.globl	get_low
	.type	get_low, @function
get_low:
.LFB26:
	.loc 1 91 0
	.cfi_startproc
.LVL19:
	.loc 1 91 0
	movq	%rdi, %rax
	.loc 1 93 0
	jmp	.L4
.LVL20:
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rdx, %rax
.LVL21:
.L4:
	.loc 1 93 0 is_stmt 0 discriminator 1
	movq	24(%rax), %rdx
.LVL22:
	testq	%rdx, %rdx
	jne	.L5
	.loc 1 95 0 is_stmt 1
	rep ret
	.cfi_endproc
.LFE26:
	.size	get_low, .-get_low
	.p2align 4,,15
	.globl	delete_all_edges
	.type	delete_all_edges, @function
delete_all_edges:
.LFB28:
	.loc 1 166 0
	.cfi_startproc
	.loc 1 166 0
	movq	$0, next_edge(%rip)
	movq	$0, avail_edge(%rip)
	.loc 1 166 0
	ret
	.cfi_endproc
.LFE28:
	.size	delete_all_edges, .-delete_all_edges
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"myalign() failed"
	.text
	.p2align 4,,15
	.globl	myalign
	.type	myalign, @function
myalign:
.LFB29:
	.loc 1 174 0
	.cfi_startproc
.LVL23:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 178 0
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	call	memalign@PLT
.LVL24:
	.loc 1 181 0
	testq	%rax, %rax
	je	.L10
	.loc 1 190 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
.LVL25:
.LBB145:
.LBB146:
.LBB147:
.LBB148:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.LVL26:
.LBE148:
.LBE147:
	.loc 1 183 0
	orl	$-1, %edi
	call	exit@PLT
.LVL27:
.LBE146:
.LBE145:
	.cfi_endproc
.LFE29:
	.size	myalign, .-myalign
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Aborting in alloc_edge, ans = 0x%p\n"
	.text
	.p2align 4,,15
	.globl	alloc_edge
	.type	alloc_edge, @function
alloc_edge:
.LFB30:
	.loc 1 194 0
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 197 0
	movq	avail_edge(%rip), %rax
	testq	%rax, %rax
	je	.L19
.LVL28:
	.loc 1 205 0
	movq	8(%rax), %rdx
	movq	%rdx, avail_edge(%rip)
.LVL29:
.L14:
	.loc 1 207 0
	movq	$0, 16(%rax)
	.loc 1 208 0
	movq	$0, 48(%rax)
	.loc 1 209 0
	movq	$0, 80(%rax)
	.loc 1 210 0
	movq	$0, 112(%rax)
	.loc 1 212 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL30:
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
.LBB157:
.LBB158:
	.loc 1 178 0
	movl	$128, %esi
	movl	$128, %edi
	call	memalign@PLT
.LVL31:
	.loc 1 181 0
	testq	%rax, %rax
	.loc 1 178 0
	movq	%rax, %rdx
.LVL32:
	.loc 1 181 0
	je	.L20
.LVL33:
.LBE158:
.LBE157:
	.loc 1 200 0
	testb	$127, %al
	je	.L14
.LVL34:
.LBB164:
.LBB165:
	.loc 2 104 0
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL35:
.LBE165:
.LBE164:
	.loc 1 202 0
	orl	$-1, %edi
	call	exit@PLT
.LVL36:
.L20:
.LBB166:
.LBB163:
.LBB159:
.LBB160:
.LBB161:
.LBB162:
	.loc 2 104 0
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.LVL37:
.LBE162:
.LBE161:
	.loc 1 183 0
	orl	$-1, %edi
	call	exit@PLT
.LVL38:
.LBE160:
.LBE159:
.LBE163:
.LBE166:
	.cfi_endproc
.LFE30:
	.size	alloc_edge, .-alloc_edge
	.p2align 4,,15
	.globl	connect_left
	.type	connect_left, @function
connect_left:
.LFB22:
	.loc 1 25 0
	.cfi_startproc
.LVL39:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 30 0
	movq	%rdi, %rax
	.loc 1 25 0
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.loc 1 30 0
	xorq	$64, %rax
	.loc 1 25 0
	movq	%rsi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 30 0
	movq	(%rax), %r13
.LVL40:
	.loc 1 31 0
	leaq	96(%rdi), %rax
	andq	$-128, %rdi
.LVL41:
	.loc 1 32 0
	movq	(%rsi), %r12
	.loc 1 31 0
	andl	$127, %eax
.LVL42:
	orq	%rax, %rdi
	movq	8(%rdi), %rax
	leaq	32(%rax), %rbx
	andq	$-128, %rax
	andl	$127, %ebx
	orq	%rax, %rbx
.LVL43:
.LBB167:
.LBB168:
	.loc 1 276 0
	xorl	%eax, %eax
	call	alloc_edge
.LVL44:
	.loc 1 281 0
	leaq	32(%rax), %rcx
.LVL45:
	.loc 1 282 0
	leaq	96(%rax), %rdx
	.loc 1 283 0
	leaq	64(%rax), %rsi
.LVL46:
	.loc 1 279 0
	movq	%rax, 8(%rax)
	.loc 1 280 0
	movq	%r13, (%rax)
	.loc 1 282 0
	movq	%rdx, 40(%rax)
	.loc 1 284 0
	movq	%rsi, 8(%rsi)
.LBE168:
.LBE167:
.LBB171:
.LBB172:
	.loc 1 302 0
	movq	%rax, %rdx
.LBE172:
.LBE171:
.LBB177:
.LBB169:
	.loc 1 287 0
	movq	%rcx, 104(%rax)
.LBE169:
.LBE177:
.LBB178:
.LBB173:
	.loc 1 303 0
	movq	8(%rbx), %rsi
.LVL47:
	.loc 1 302 0
	andq	$-128, %rdx
	andl	$127, %ecx
.LBE173:
.LBE178:
.LBB179:
.LBB170:
	.loc 1 285 0
	movq	%r12, 64(%rax)
.LVL48:
.LBE170:
.LBE179:
.LBB180:
.LBB174:
	.loc 1 302 0
	orq	%rdx, %rcx
.LVL49:
	.loc 1 303 0
	leaq	32(%rsi), %rdx
	andq	$-128, %rsi
	andl	$127, %edx
	orq	%rsi, %rdx
.LVL50:
	.loc 1 306 0
	movq	8(%rcx), %rsi
	.loc 1 305 0
	movq	8(%rdx), %rdi
.LVL51:
	.loc 1 307 0
	movq	%rdi, 8(%rcx)
	.loc 1 310 0
	movq	%rsi, 8(%rdx)
.LBE174:
.LBE180:
	.loc 1 35 0
	movq	%rax, %rdi
.LVL52:
.LBB181:
.LBB175:
	.loc 1 313 0
	movq	8(%rbx), %rdx
.LVL53:
	.loc 1 312 0
	movq	8(%rax), %rcx
.LVL54:
.LBE175:
.LBE181:
	.loc 1 35 0
	xorq	$64, %rdi
.LBB182:
.LBB176:
	.loc 1 314 0
	movq	%rcx, 8(%rbx)
	.loc 1 315 0
	movq	%rdx, 8(%rax)
.LVL55:
.LBE176:
.LBE182:
.LBB183:
.LBB184:
	.loc 1 302 0
	movq	8(%rdi), %rdx
	.loc 1 303 0
	movq	8(%rbp), %rsi
	.loc 1 302 0
	leaq	32(%rdx), %rcx
	andq	$-128, %rdx
	andl	$127, %ecx
	orq	%rdx, %rcx
.LVL56:
	.loc 1 303 0
	leaq	32(%rsi), %rdx
	andq	$-128, %rsi
	andl	$127, %edx
	orq	%rsi, %rdx
.LVL57:
	.loc 1 306 0
	movq	8(%rcx), %rsi
	.loc 1 305 0
	movq	8(%rdx), %r8
.LVL58:
	.loc 1 307 0
	movq	%r8, 8(%rcx)
	.loc 1 310 0
	movq	%rsi, 8(%rdx)
	.loc 1 313 0
	movq	8(%rbp), %rdx
.LVL59:
	.loc 1 312 0
	movq	8(%rdi), %rcx
.LVL60:
	.loc 1 314 0
	movq	%rcx, 8(%rbp)
	.loc 1 315 0
	movq	%rdx, 8(%rdi)
.LVL61:
.LBE184:
.LBE183:
	.loc 1 38 0
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
	.cfi_endproc
.LFE22:
	.size	connect_left, .-connect_left
	.p2align 4,,15
	.globl	connect_right
	.type	connect_right, @function
connect_right:
.LFB23:
	.loc 1 42 0
	.cfi_startproc
.LVL66:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 49 0
	leaq	32(%rsi), %rax
	.loc 1 42 0
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.loc 1 47 0
	xorq	$64, %rdi
.LVL67:
	.loc 1 49 0
	andl	$127, %eax
	.loc 1 47 0
	movq	%rdi, %rbp
	.loc 1 42 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 48 0
	movq	(%rsi), %r12
	.loc 1 49 0
	andq	$-128, %rsi
.LVL68:
	orq	%rax, %rsi
	.loc 1 47 0
	movq	(%rdi), %r13
.LVL69:
	.loc 1 49 0
	movq	8(%rsi), %rax
	leaq	32(%rax), %rbx
	andq	$-128, %rax
	andl	$127, %ebx
	orq	%rax, %rbx
.LVL70:
.LBB185:
.LBB186:
	.loc 1 276 0
	xorl	%eax, %eax
	call	alloc_edge
.LVL71:
	.loc 1 281 0
	leaq	32(%rax), %rcx
.LVL72:
	.loc 1 282 0
	leaq	96(%rax), %rdx
	.loc 1 283 0
	leaq	64(%rax), %rsi
.LVL73:
	.loc 1 279 0
	movq	%rax, 8(%rax)
	.loc 1 280 0
	movq	%r13, (%rax)
	.loc 1 282 0
	movq	%rdx, 40(%rax)
	.loc 1 284 0
	movq	%rsi, 8(%rsi)
.LBE186:
.LBE185:
.LBB189:
.LBB190:
	.loc 1 302 0
	movq	%rax, %rdx
.LBE190:
.LBE189:
.LBB195:
.LBB187:
	.loc 1 287 0
	movq	%rcx, 104(%rax)
.LBE187:
.LBE195:
.LBB196:
.LBB191:
	.loc 1 303 0
	movq	8(%rbp), %rsi
.LVL74:
	.loc 1 302 0
	andq	$-128, %rdx
	andl	$127, %ecx
.LBE191:
.LBE196:
.LBB197:
.LBB188:
	.loc 1 285 0
	movq	%r12, 64(%rax)
.LVL75:
.LBE188:
.LBE197:
.LBB198:
.LBB192:
	.loc 1 302 0
	orq	%rdx, %rcx
.LVL76:
	.loc 1 303 0
	leaq	32(%rsi), %rdx
	andq	$-128, %rsi
	andl	$127, %edx
	orq	%rsi, %rdx
.LVL77:
	.loc 1 306 0
	movq	8(%rcx), %rsi
	.loc 1 305 0
	movq	8(%rdx), %rdi
.LVL78:
	.loc 1 307 0
	movq	%rdi, 8(%rcx)
	.loc 1 310 0
	movq	%rsi, 8(%rdx)
.LBE192:
.LBE198:
	.loc 1 52 0
	movq	%rax, %rdi
.LVL79:
.LBB199:
.LBB193:
	.loc 1 313 0
	movq	8(%rbp), %rdx
.LVL80:
	.loc 1 312 0
	movq	8(%rax), %rcx
.LVL81:
.LBE193:
.LBE199:
	.loc 1 52 0
	xorq	$64, %rdi
.LBB200:
.LBB194:
	.loc 1 314 0
	movq	%rcx, 8(%rbp)
	.loc 1 315 0
	movq	%rdx, 8(%rax)
.LVL82:
.LBE194:
.LBE200:
.LBB201:
.LBB202:
	.loc 1 302 0
	movq	8(%rdi), %rdx
	.loc 1 303 0
	movq	8(%rbx), %rsi
	.loc 1 302 0
	leaq	32(%rdx), %rcx
	andq	$-128, %rdx
	andl	$127, %ecx
	orq	%rdx, %rcx
.LVL83:
	.loc 1 303 0
	leaq	32(%rsi), %rdx
	andq	$-128, %rsi
	andl	$127, %edx
	orq	%rsi, %rdx
.LVL84:
	.loc 1 306 0
	movq	8(%rcx), %rsi
	.loc 1 305 0
	movq	8(%rdx), %r8
.LVL85:
	.loc 1 307 0
	movq	%r8, 8(%rcx)
	.loc 1 310 0
	movq	%rsi, 8(%rdx)
	.loc 1 313 0
	movq	8(%rbx), %rdx
.LVL86:
	.loc 1 312 0
	movq	8(%rdi), %rcx
.LVL87:
	.loc 1 314 0
	movq	%rcx, 8(%rbx)
	.loc 1 315 0
	movq	%rdx, 8(%rdi)
.LVL88:
.LBE202:
.LBE201:
	.loc 1 55 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL89:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL90:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL91:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL92:
	ret
	.cfi_endproc
.LFE23:
	.size	connect_right, .-connect_right
	.p2align 4,,15
	.globl	free_edge
	.type	free_edge, @function
free_edge:
.LFB31:
	.loc 1 214 0
	.cfi_startproc
.LVL93:
	.loc 1 216 0
	movq	avail_edge(%rip), %rax
	.loc 1 215 0
	andq	$-128, %rdi
.LVL94:
	.loc 1 217 0
	movq	%rdi, avail_edge(%rip)
	.loc 1 216 0
	movq	%rax, 8(%rdi)
	.loc 1 218 0
	ret
	.cfi_endproc
.LFE31:
	.size	free_edge, .-free_edge
	.p2align 4,,15
	.globl	incircle
	.type	incircle, @function
incircle:
.LFB32:
	.loc 1 229 0
	.cfi_startproc
.LVL95:
	.loc 1 236 0
	movsd	(%rcx), %xmm3
.LVL96:
	.loc 1 248 0
	xorl	%eax, %eax
	.loc 1 236 0
	movsd	8(%rcx), %xmm4
.LVL97:
	.loc 1 238 0
	movsd	(%rdi), %xmm0
	.loc 1 240 0
	movsd	(%rsi), %xmm6
	movsd	8(%rsi), %xmm7
	.loc 1 238 0
	subsd	%xmm3, %xmm0
	.loc 1 242 0
	movsd	(%rdx), %xmm1
	.loc 1 240 0
	subsd	%xmm3, %xmm6
	subsd	%xmm4, %xmm7
	.loc 1 238 0
	movsd	8(%rdi), %xmm2
	.loc 1 242 0
	subsd	%xmm3, %xmm1
	movsd	8(%rdx), %xmm3
.LVL98:
	.loc 1 238 0
	subsd	%xmm4, %xmm2
	.loc 1 236 0
	movsd	16(%rcx), %xmm5
.LVL99:
	.loc 1 242 0
	subsd	%xmm4, %xmm3
.LVL100:
	.loc 1 244 0
	movapd	%xmm6, %xmm4
.LVL101:
	movapd	%xmm7, %xmm8
	mulsd	%xmm1, %xmm8
	mulsd	%xmm3, %xmm4
	.loc 1 245 0
	mulsd	%xmm2, %xmm1
.LVL102:
	mulsd	%xmm0, %xmm3
.LVL103:
	.loc 1 246 0
	mulsd	%xmm6, %xmm2
.LVL104:
	.loc 1 244 0
	subsd	%xmm8, %xmm4
	.loc 1 246 0
	mulsd	%xmm7, %xmm0
.LVL105:
	.loc 1 244 0
	movsd	16(%rdi), %xmm8
	.loc 1 245 0
	subsd	%xmm3, %xmm1
	movsd	16(%rsi), %xmm3
	.loc 1 244 0
	subsd	%xmm5, %xmm8
	.loc 1 245 0
	subsd	%xmm5, %xmm3
	.loc 1 246 0
	subsd	%xmm2, %xmm0
	movsd	16(%rdx), %xmm2
	.loc 1 244 0
	mulsd	%xmm8, %xmm4
.LVL106:
	.loc 1 246 0
	subsd	%xmm5, %xmm2
	.loc 1 245 0
	mulsd	%xmm3, %xmm1
	.loc 1 246 0
	mulsd	%xmm2, %xmm0
	.loc 1 245 0
	addsd	%xmm4, %xmm1
.LVL107:
	.loc 1 246 0
	addsd	%xmm0, %xmm1
	.loc 1 248 0
	ucomisd	.LC2(%rip), %xmm1
	seta	%al
	.loc 1 249 0
	ret
	.cfi_endproc
.LFE32:
	.size	incircle, .-incircle
	.p2align 4,,15
	.globl	ccw
	.type	ccw, @function
ccw:
.LFB33:
	.loc 1 252 0
	.cfi_startproc
.LVL108:
	.loc 1 261 0
	movsd	(%rdx), %xmm2
.LVL109:
	.loc 1 266 0
	xorl	%eax, %eax
	.loc 1 261 0
	movsd	8(%rdx), %xmm3
.LVL110:
	.loc 1 264 0
	movsd	(%rdi), %xmm0
	movsd	8(%rsi), %xmm1
	subsd	%xmm2, %xmm0
	subsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	(%rsi), %xmm1
	subsd	%xmm2, %xmm1
	movsd	8(%rdi), %xmm2
.LVL111:
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	.loc 1 266 0
	ucomisd	.LC2(%rip), %xmm0
	seta	%al
	.loc 1 267 0
	ret
	.cfi_endproc
.LFE33:
	.size	ccw, .-ccw
	.p2align 4,,15
	.globl	makeedge
	.type	makeedge, @function
makeedge:
.LFB34:
	.loc 1 274 0
	.cfi_startproc
.LVL112:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.loc 1 276 0
	xorl	%eax, %eax
	.loc 1 274 0
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 276 0
	call	alloc_edge
.LVL113:
	.loc 1 281 0
	leaq	32(%rax), %rcx
.LVL114:
	.loc 1 282 0
	leaq	96(%rax), %rdx
	.loc 1 283 0
	leaq	64(%rax), %rdi
.LVL115:
	.loc 1 279 0
	movq	%rax, 8(%rax)
	.loc 1 280 0
	movq	%rbp, (%rax)
	.loc 1 282 0
	movq	%rdx, 40(%rax)
	.loc 1 284 0
	movq	%rdi, 8(%rdi)
	.loc 1 285 0
	movq	%rbx, 64(%rax)
.LVL116:
	.loc 1 287 0
	movq	%rcx, 104(%rax)
	.loc 1 292 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL117:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL118:
	ret
	.cfi_endproc
.LFE34:
	.size	makeedge, .-makeedge
	.p2align 4,,15
	.globl	splice
	.type	splice, @function
splice:
.LFB35:
	.loc 1 296 0
	.cfi_startproc
.LVL119:
	.loc 1 302 0
	movq	8(%rdi), %rax
	.loc 1 303 0
	movq	8(%rsi), %rcx
	.loc 1 302 0
	leaq	32(%rax), %rdx
	andq	$-128, %rax
	andl	$127, %edx
	orq	%rax, %rdx
.LVL120:
	.loc 1 303 0
	leaq	32(%rcx), %rax
	andq	$-128, %rcx
	andl	$127, %eax
	orq	%rcx, %rax
.LVL121:
	.loc 1 306 0
	movq	8(%rdx), %rcx
	.loc 1 305 0
	movq	8(%rax), %r8
.LVL122:
	.loc 1 307 0
	movq	%r8, 8(%rdx)
	.loc 1 310 0
	movq	%rcx, 8(%rax)
	.loc 1 312 0
	movq	8(%rdi), %rdx
.LVL123:
	.loc 1 313 0
	movq	8(%rsi), %rax
.LVL124:
	.loc 1 314 0
	movq	%rdx, 8(%rsi)
	.loc 1 315 0
	movq	%rax, 8(%rdi)
	.loc 1 319 0
	ret
	.cfi_endproc
.LFE35:
	.size	splice, .-splice
	.p2align 4,,15
	.globl	swapedge
	.type	swapedge, @function
swapedge:
.LFB36:
	.loc 1 323 0
	.cfi_startproc
.LVL125:
	.loc 1 328 0
	leaq	32(%rdi), %rax
	movq	%rdi, %rdx
	.loc 1 329 0
	movq	%rdi, %rcx
	.loc 1 328 0
	andq	$-128, %rdx
	.loc 1 329 0
	xorq	$64, %rcx
	.loc 1 328 0
	andl	$127, %eax
	.loc 1 330 0
	movq	%rcx, %rsi
	.loc 1 328 0
	orq	%rdx, %rax
	.loc 1 330 0
	andq	$-128, %rsi
	.loc 1 328 0
	movq	8(%rax), %rax
	leaq	32(%rax), %rdx
	andq	$-128, %rax
	andl	$127, %edx
	orq	%rax, %rdx
.LVL126:
	.loc 1 330 0
	leaq	32(%rcx), %rax
.LBB203:
.LBB204:
	.loc 1 303 0
	movq	8(%rdx), %r9
.LBE204:
.LBE203:
	.loc 1 330 0
	andl	$127, %eax
	orq	%rsi, %rax
	movq	8(%rax), %rsi
	leaq	32(%rsi), %rax
	andq	$-128, %rsi
	andl	$127, %eax
	orq	%rsi, %rax
.LVL127:
.LBB206:
.LBB205:
	.loc 1 302 0
	movq	8(%rdi), %rsi
	leaq	32(%rsi), %r8
	andq	$-128, %rsi
	andl	$127, %r8d
	orq	%rsi, %r8
.LVL128:
	.loc 1 303 0
	leaq	32(%r9), %rsi
	andq	$-128, %r9
	andl	$127, %esi
	orq	%r9, %rsi
.LVL129:
	.loc 1 306 0
	movq	8(%r8), %r9
	.loc 1 305 0
	movq	8(%rsi), %r10
.LVL130:
	.loc 1 307 0
	movq	%r10, 8(%r8)
	.loc 1 310 0
	movq	%r9, 8(%rsi)
	.loc 1 313 0
	movq	8(%rdx), %rsi
.LVL131:
	.loc 1 312 0
	movq	8(%rdi), %r8
.LVL132:
	.loc 1 314 0
	movq	%r8, 8(%rdx)
	.loc 1 315 0
	movq	%rsi, 8(%rdi)
.LVL133:
.LBE205:
.LBE206:
.LBB207:
.LBB208:
	.loc 1 302 0
	movq	8(%rcx), %rsi
	.loc 1 303 0
	movq	8(%rax), %r9
	.loc 1 302 0
	leaq	32(%rsi), %r8
	andq	$-128, %rsi
	andl	$127, %r8d
	orq	%rsi, %r8
.LVL134:
	.loc 1 303 0
	leaq	32(%r9), %rsi
	andq	$-128, %r9
	andl	$127, %esi
	orq	%r9, %rsi
.LVL135:
	.loc 1 306 0
	movq	8(%r8), %r9
	.loc 1 305 0
	movq	8(%rsi), %r10
.LVL136:
	.loc 1 307 0
	movq	%r10, 8(%r8)
	.loc 1 310 0
	movq	%r9, 8(%rsi)
	.loc 1 313 0
	movq	8(%rax), %rsi
.LVL137:
	.loc 1 312 0
	movq	8(%rcx), %r8
.LVL138:
	.loc 1 314 0
	movq	%r8, 8(%rax)
	.loc 1 315 0
	movq	%rsi, 8(%rcx)
.LVL139:
.LBE208:
.LBE207:
	.loc 1 333 0
	leaq	96(%rdx), %rsi
	movq	%rdx, %r8
	andq	$-128, %r8
	andl	$127, %esi
	orq	%r8, %rsi
	movq	8(%rsi), %r8
	leaq	32(%r8), %rsi
	andq	$-128, %r8
	andl	$127, %esi
	orq	%r8, %rsi
.LVL140:
.LBB209:
.LBB210:
	.loc 1 302 0
	movq	8(%rdi), %r8
	.loc 1 303 0
	movq	8(%rsi), %r10
	.loc 1 302 0
	leaq	32(%r8), %r9
	andl	$127, %r9d
	andq	$-128, %r8
.LBE210:
.LBE209:
	.loc 1 337 0
	xorq	$64, %rdx
.LVL141:
.LBB213:
.LBB211:
	.loc 1 302 0
	orq	%r8, %r9
.LVL142:
	.loc 1 303 0
	leaq	32(%r10), %r8
	andq	$-128, %r10
	andl	$127, %r8d
	orq	%r10, %r8
.LVL143:
	.loc 1 306 0
	movq	8(%r9), %r10
	.loc 1 305 0
	movq	8(%r8), %r11
.LVL144:
	.loc 1 307 0
	movq	%r11, 8(%r9)
	.loc 1 310 0
	movq	%r10, 8(%r8)
	.loc 1 312 0
	movq	8(%rdi), %r9
.LVL145:
	.loc 1 313 0
	movq	8(%rsi), %r8
.LVL146:
	.loc 1 314 0
	movq	%r9, 8(%rsi)
.LBE211:
.LBE213:
	.loc 1 335 0
	leaq	96(%rax), %rsi
.LVL147:
.LBB214:
.LBB212:
	.loc 1 315 0
	movq	%r8, 8(%rdi)
.LVL148:
.LBE212:
.LBE214:
	.loc 1 335 0
	movq	%rax, %r8
	.loc 1 338 0
	xorq	$64, %rax
.LVL149:
	.loc 1 337 0
	movq	(%rdx), %rdx
.LVL150:
	.loc 1 335 0
	andq	$-128, %r8
.LVL151:
	andl	$127, %esi
	.loc 1 338 0
	movq	(%rax), %rax
.LVL152:
	.loc 1 335 0
	orq	%r8, %rsi
	movq	8(%rsi), %r8
	leaq	32(%r8), %rsi
	andq	$-128, %r8
	andl	$127, %esi
	orq	%r8, %rsi
.LVL153:
.LBB215:
.LBB216:
	.loc 1 302 0
	movq	8(%rcx), %r8
	.loc 1 303 0
	movq	8(%rsi), %r10
	.loc 1 302 0
	leaq	32(%r8), %r9
	andq	$-128, %r8
	andl	$127, %r9d
	orq	%r8, %r9
.LVL154:
	.loc 1 303 0
	leaq	32(%r10), %r8
	andq	$-128, %r10
	andl	$127, %r8d
	orq	%r10, %r8
.LVL155:
	.loc 1 306 0
	movq	8(%r9), %r10
	.loc 1 305 0
	movq	8(%r8), %r11
.LVL156:
	.loc 1 307 0
	movq	%r11, 8(%r9)
	.loc 1 310 0
	movq	%r10, 8(%r8)
	.loc 1 313 0
	movq	8(%rsi), %r8
.LVL157:
	.loc 1 312 0
	movq	8(%rcx), %r9
.LVL158:
	.loc 1 314 0
	movq	%r9, 8(%rsi)
	.loc 1 315 0
	movq	%r8, 8(%rcx)
.LVL159:
.LBE216:
.LBE215:
	.loc 1 339 0
	movq	%rdx, (%rdi)
	.loc 1 340 0
	movq	%rax, (%rcx)
	.loc 1 342 0
	ret
	.cfi_endproc
.LFE36:
	.size	swapedge, .-swapedge
	.p2align 4,,15
	.globl	valid
	.type	valid, @function
valid:
.LFB37:
	.loc 1 351 0
	.cfi_startproc
.LVL160:
	.loc 1 356 0
	movq	(%rsi), %rax
.LVL161:
	.loc 1 359 0
	xorq	$64, %rdi
.LVL162:
	.loc 1 357 0
	xorq	$64, %rsi
.LVL163:
	movq	(%rsi), %rcx
.LVL164:
	.loc 1 359 0
	movq	(%rdi), %rdx
.LVL165:
.LBB217:
.LBB218:
	.loc 1 264 0
	movsd	(%rax), %xmm0
	.loc 1 261 0
	movsd	(%rcx), %xmm2
.LVL166:
	movsd	8(%rcx), %xmm3
.LVL167:
	.loc 1 264 0
	movsd	8(%rdx), %xmm1
	subsd	%xmm2, %xmm0
	subsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	(%rdx), %xmm1
	subsd	%xmm2, %xmm1
	movsd	8(%rax), %xmm2
	.loc 1 266 0
	xorl	%eax, %eax
.LVL168:
	.loc 1 264 0
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	.loc 1 266 0
	ucomisd	.LC2(%rip), %xmm0
	seta	%al
.LBE218:
.LBE217:
	.loc 1 361 0
	ret
	.cfi_endproc
.LFE37:
	.size	valid, .-valid
	.section	.rodata.str1.1
.LC3:
	.string	"Entered DUMP_QUAD: ptr=0x%p\n"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"DUMP_QUAD: ptr=0x%p onext=0x%p,v=0x%p\n"
	.text
	.p2align 4,,15
	.globl	dump_quad
	.type	dump_quad, @function
dump_quad:
.LFB38:
	.loc 1 365 0
	.cfi_startproc
.LVL169:
	.loc 1 370 0
	andq	$-128, %rdi
.LVL170:
	.loc 1 365 0
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 370 0
	movq	%rdi, %rbx
.LVL171:
.LBB219:
.LBB220:
	.loc 2 104 0
	leaq	.LC3(%rip), %rsi
	leaq	128(%rbx), %r12
.LBE220:
.LBE219:
.LBB222:
.LBB223:
	leaq	.LC4(%rip), %rbp
.LBE223:
.LBE222:
.LBB225:
.LBB221:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL172:
.L34:
.LBE221:
.LBE225:
	.loc 1 374 0 discriminator 3
	movq	8(%rbx), %rcx
.LVL173:
.LBB226:
.LBB224:
	.loc 2 104 0 discriminator 3
	movq	%rbx, %rdx
	xorl	%eax, %eax
	movq	%rbp, %rsi
	movl	$1, %edi
	addq	$32, %rbx
	movq	(%rcx), %r8
	call	__printf_chk@PLT
.LVL174:
.LBE224:
.LBE226:
	.loc 1 372 0 discriminator 3
	cmpq	%r12, %rbx
	jne	.L34
	.loc 1 378 0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL175:
	ret
	.cfi_endproc
.LFE38:
	.size	dump_quad, .-dump_quad
	.p2align 4,,15
	.globl	do_merge
	.type	do_merge, @function
do_merge:
.LFB39:
	.loc 1 386 0
	.cfi_startproc
.LVL176:
	pxor	%xmm7, %xmm7
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.loc 1 386 0
	movq	%rdx, %rdi
.LVL177:
	movq	%rcx, %rbx
.LVL178:
	.p2align 4,,10
	.p2align 3
.L43:
.LBB227:
	.loc 1 397 0
	movq	(%rsi), %rcx
	.loc 1 398 0
	movq	%rsi, %rax
	.loc 1 393 0
	movq	(%rdi), %rdx
.LVL179:
	.loc 1 398 0
	xorq	$64, %rax
	movq	(%rax), %rax
.LVL180:
.LBB228:
.LBB229:
	.loc 1 257 0
	movsd	(%rcx), %xmm5
.LVL181:
	.loc 1 261 0
	movsd	(%rdx), %xmm3
	movsd	8(%rdx), %xmm4
	.loc 1 264 0
	movapd	%xmm5, %xmm1
	movsd	8(%rax), %xmm0
	subsd	%xmm3, %xmm1
	.loc 1 257 0
	movsd	8(%rcx), %xmm6
.LVL182:
	.loc 1 264 0
	subsd	%xmm4, %xmm0
	mulsd	%xmm1, %xmm0
	jmp	.L78
.LVL183:
	.p2align 4,,10
	.p2align 3
.L79:
.LBE229:
.LBE228:
	.loc 1 405 0
	leaq	96(%rsi), %rax
	andq	$-128, %rsi
.LVL184:
	andl	$127, %eax
.LVL185:
	orq	%rax, %rsi
	movq	8(%rsi), %rax
	leaq	32(%rax), %rsi
	andq	$-128, %rax
	andl	$127, %esi
	orq	%rax, %rsi
.LVL186:
	.loc 1 409 0
	movq	(%rsi), %rcx
.LVL187:
	.loc 1 410 0
	movq	%rsi, %rax
	xorq	$64, %rax
	movq	(%rax), %rax
.LVL188:
.LBB231:
.LBB230:
	.loc 1 257 0
	movsd	(%rcx), %xmm5
.LVL189:
	movsd	8(%rcx), %xmm6
.LVL190:
	.loc 1 264 0
	movsd	8(%rax), %xmm0
	movapd	%xmm5, %xmm2
	subsd	%xmm4, %xmm0
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm0
.LVL191:
.L78:
	movsd	(%rax), %xmm1
	movapd	%xmm6, %xmm2
	subsd	%xmm3, %xmm1
	subsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
.LBE230:
.LBE231:
	.loc 1 403 0
	ucomisd	%xmm7, %xmm0
	ja	.L79
	.loc 1 416 0
	xorq	$64, %rdi
.LVL192:
.LBB232:
.LBB233:
	.loc 1 264 0
	subsd	%xmm6, %xmm4
.LBE233:
.LBE232:
	.loc 1 416 0
	movq	(%rdi), %rax
.LVL193:
.LBB235:
.LBB234:
	.loc 1 264 0
	subsd	%xmm5, %xmm3
	movsd	(%rax), %xmm1
	subsd	%xmm5, %xmm1
	movapd	%xmm1, %xmm0
	movapd	%xmm4, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	8(%rax), %xmm0
	subsd	%xmm6, %xmm0
	movapd	%xmm0, %xmm2
	movapd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
.LBE234:
.LBE235:
	.loc 1 419 0
	ucomisd	%xmm7, %xmm1
	jbe	.L75
	.loc 1 420 0
	movq	8(%rdi), %rdi
.LVL194:
.LBE227:
	.loc 1 392 0
	jmp	.L43
.LVL195:
	.p2align 4,,10
	.p2align 3
.L75:
	.loc 1 425 0
	xorl	%eax, %eax
.LVL196:
	call	connect_left
.LVL197:
	movq	%rax, %r11
.LVL198:
	.loc 1 429 0
	movq	%rax, %rdx
	.loc 1 430 0
	leaq	32(%rax), %rax
.LVL199:
	movq	%r11, %rcx
	.loc 1 429 0
	xorq	$64, %rdx
.LVL200:
	.loc 1 430 0
	andl	$127, %eax
	andq	$-128, %rcx
.LVL201:
	.loc 1 429 0
	movq	8(%rdx), %r13
.LVL202:
	.loc 1 430 0
	orq	%rcx, %rax
	movq	8(%rax), %rax
	leaq	32(%rax), %r12
	andq	$-128, %rax
	andl	$127, %r12d
	orq	%rax, %r12
.LVL203:
	.loc 1 438 0
	movq	(%r11), %rax
	cmpq	%rax, (%rbx)
	.loc 1 439 0
	movq	(%rdx), %rax
	.loc 1 438 0
	cmove	%r11, %rbx
.LVL204:
	.loc 1 439 0
	cmpq	%rax, 0(%rbp)
	cmove	%rdx, %rbp
.LVL205:
	.p2align 4,,10
	.p2align 3
.L46:
.LBB236:
	.loc 1 446 0
	movq	8(%r13), %r10
.LVL206:
	.loc 1 447 0
	xorl	%eax, %eax
	movq	%r11, %rsi
	movq	%r10, %rdi
	call	valid
.LVL207:
	testl	%eax, %eax
	jne	.L80
.L47:
	.loc 1 476 0
	leaq	32(%r12), %rax
	movq	%r12, %rdx
	.loc 1 477 0
	movq	%r11, %rsi
	.loc 1 476 0
	andq	$-128, %rdx
	andl	$127, %eax
	orq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	32(%rax), %r10
.LVL208:
	andq	$-128, %rax
	andl	$127, %r10d
	orq	%rax, %r10
.LVL209:
	.loc 1 477 0
	xorl	%eax, %eax
	movq	%r10, %rdi
	call	valid
.LVL210:
	testl	%eax, %eax
	jne	.L81
.L50:
	.loc 1 496 0
	movq	%r11, %rsi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	valid
.LVL211:
	.loc 1 498 0
	movq	%r12, %rdi
	.loc 1 496 0
	movl	%eax, %r8d
.LVL212:
	.loc 1 498 0
	movq	%r11, %rsi
	xorl	%eax, %eax
.LVL213:
	call	valid
.LVL214:
	.loc 1 500 0
	movl	%r8d, %edi
	orl	%eax, %edi
	je	.L76
.LVL215:
	.loc 1 511 0
	testl	%r8d, %r8d
	je	.L54
	.loc 1 511 0 is_stmt 0 discriminator 1
	testl	%eax, %eax
	je	.L55
	.loc 1 509 0 is_stmt 1
	movq	%r12, %rdx
	.loc 1 506 0
	movq	%r13, %rax
.LVL216:
	.loc 1 512 0
	movq	0(%r13), %rsi
	.loc 1 509 0
	xorq	$64, %rdx
	.loc 1 506 0
	xorq	$64, %rax
	.loc 1 512 0
	movq	(%rdx), %rcx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	movq	(%r12), %rdx
	call	incircle
.LVL217:
	testl	%eax, %eax
	jne	.L54
.LVL218:
.L55:
	.loc 1 521 0
	movq	%r11, %rsi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	connect_right
.LVL219:
	movq	%rax, %r11
	.loc 1 522 0
	movq	8(%rax), %r13
.LVL220:
	.loc 1 521 0
	xorq	$64, %r11
.LVL221:
	jmp	.L46
.LVL222:
	.p2align 4,,10
	.p2align 3
.L54:
	.loc 1 516 0
	movq	%r11, %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	xorq	$64, %rsi
	call	connect_left
.LVL223:
	.loc 1 517 0
	movq	%rax, %rdx
	.loc 1 516 0
	movq	%rax, %r11
.LVL224:
	.loc 1 517 0
	xorq	$64, %rdx
	leaq	96(%rdx), %rax
.LVL225:
	andq	$-128, %rdx
	andl	$127, %eax
	orq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	32(%rax), %r12
.LVL226:
	andq	$-128, %rax
	andl	$127, %r12d
	orq	%rax, %r12
.LVL227:
	jmp	.L46
.LVL228:
	.p2align 4,,10
	.p2align 3
.L81:
	.loc 1 478 0
	movq	%r11, %rax
	.loc 1 481 0
	movq	(%r12), %rdx
	.loc 1 478 0
	xorq	$64, %rax
	movq	(%rax), %r14
.LVL229:
	.loc 1 479 0
	movq	%r10, %rax
	xorq	$64, %rax
	movq	(%rax), %rdi
.LVL230:
	.loc 1 480 0
	movq	%r12, %rax
	xorq	$64, %rax
	movq	(%rax), %rsi
.LVL231:
	.loc 1 482 0
	jmp	.L51
.LVL232:
	.p2align 4,,10
	.p2align 3
.L52:
	.loc 1 485 0
	movq	%r12, %rdi
.LVL233:
	xorl	%eax, %eax
	call	deleteedge
.LVL234:
	.loc 1 487 0
	leaq	32(%r10), %rax
	movq	%r10, %rdx
	.loc 1 490 0
	movq	%r10, %r12
	.loc 1 487 0
	andq	$-128, %rdx
	andl	$127, %eax
	orq	%rdx, %rax
	movq	8(%rax), %rdx
	leaq	32(%rdx), %rax
	andq	$-128, %rdx
	andl	$127, %eax
	orq	%rdx, %rax
.LVL235:
	.loc 1 488 0
	movq	%r10, %rdx
	.loc 1 490 0
	movq	%rax, %rcx
	.loc 1 488 0
	xorq	$64, %rdx
	.loc 1 490 0
	xorq	$64, %rcx
	.loc 1 488 0
	movq	(%rdx), %rsi
.LVL236:
	.loc 1 489 0
	movq	(%r10), %rdx
.LVL237:
	.loc 1 490 0
	movq	(%rcx), %rdi
.LVL238:
	.loc 1 487 0
	movq	%rax, %r10
.LVL239:
.L51:
	.loc 1 482 0
	xorl	%eax, %eax
	movq	%r14, %rcx
	call	incircle
.LVL240:
	testl	%eax, %eax
	jne	.L52
.LVL241:
	jmp	.L50
.LVL242:
	.p2align 4,,10
	.p2align 3
.L80:
	.loc 1 451 0
	movq	%r13, %rax
	.loc 1 448 0
	movq	(%r11), %r14
.LVL243:
	.loc 1 452 0
	movq	0(%r13), %rdx
	.loc 1 451 0
	xorq	$64, %rax
	movq	(%rax), %rdi
.LVL244:
	.loc 1 456 0
	movq	%r10, %rax
	xorq	$64, %rax
	movq	(%rax), %rsi
.LVL245:
	.loc 1 457 0
	jmp	.L48
.LVL246:
	.p2align 4,,10
	.p2align 3
.L49:
	.loc 1 460 0
	movq	%r13, %rdi
.LVL247:
	xorl	%eax, %eax
	call	deleteedge
.LVL248:
	.loc 1 464 0
	movq	8(%r10), %rax
.LVL249:
	.loc 1 465 0
	movq	%r10, %rdx
	.loc 1 471 0
	movq	%r10, %r13
	.loc 1 465 0
	xorq	$64, %rdx
	movq	(%rdx), %rdi
.LVL250:
	.loc 1 466 0
	movq	(%r10), %rdx
.LVL251:
	.loc 1 471 0
	movq	%rax, %rcx
	.loc 1 464 0
	movq	%rax, %r10
.LVL252:
	.loc 1 471 0
	xorq	$64, %rcx
	movq	(%rcx), %rsi
.LVL253:
.L48:
	.loc 1 457 0
	xorl	%eax, %eax
	movq	%r14, %rcx
	call	incircle
.LVL254:
	testl	%eax, %eax
	jne	.L49
.LVL255:
	jmp	.L47
.LVL256:
	.p2align 4,,10
	.p2align 3
.L76:
.LBE236:
	.loc 1 525 0
	movq	%rbp, %rax
.LVL257:
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 40
.LVL258:
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL259:
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL260:
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL261:
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	do_merge, .-do_merge
	.section	.rodata.str1.1
.LC5:
	.string	"ERROR: Only 1 point!"
	.text
	.p2align 4,,15
	.globl	build_delaunay
	.type	build_delaunay, @function
build_delaunay:
.LFB27:
	.loc 1 103 0
	.cfi_startproc
.LVL262:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 111 0
	testq	%rdi, %rdi
	je	.L83
	movq	%rdi, %r13
	.loc 1 111 0 is_stmt 0 discriminator 1
	movq	32(%rdi), %rdi
.LVL263:
	movq	%rsi, %r14
	movq	24(%r13), %r12
	testq	%rdi, %rdi
	jne	.L99
.LBB237:
.LBB238:
	.loc 1 276 0 is_stmt 1
	xorl	%eax, %eax
.LBE238:
.LBE237:
	.loc 1 132 0
	testq	%r12, %r12
	je	.L100
.LVL264:
.LBB241:
.LBB242:
	.loc 1 276 0
	call	alloc_edge
.LVL265:
	movq	%rax, %rbp
.LVL266:
	.loc 1 281 0
	leaq	32(%rax), %rdx
.LVL267:
	.loc 1 279 0
	movq	%rax, 8(%rbp)
	.loc 1 283 0
	leaq	64(%rbp), %rcx
	.loc 1 280 0
	movq	%r12, (%rax)
	.loc 1 282 0
	leaq	96(%rax), %rax
.LVL268:
	movq	%rax, 40(%rbp)
	.loc 1 284 0
	movq	%rcx, 8(%rcx)
.LBE242:
.LBE241:
.LBB244:
.LBB245:
	.loc 1 276 0
	xorl	%eax, %eax
.LBE245:
.LBE244:
.LBB250:
.LBB243:
	.loc 1 287 0
	movq	%rdx, 104(%rbp)
	.loc 1 285 0
	movq	%r13, 64(%rbp)
.LVL269:
.LBE243:
.LBE250:
.LBB251:
.LBB246:
	.loc 1 276 0
	call	alloc_edge
.LVL270:
	movq	%rax, %rbx
.LVL271:
	.loc 1 281 0
	leaq	32(%rax), %rdx
.LVL272:
.LBE246:
.LBE251:
	.loc 1 144 0
	movq	%rbp, %rsi
.LBB252:
.LBB247:
	.loc 1 279 0
	movq	%rax, 8(%rbx)
	.loc 1 283 0
	leaq	64(%rbx), %rcx
	.loc 1 280 0
	movq	%r13, (%rax)
	.loc 1 282 0
	leaq	96(%rax), %rax
.LVL273:
.LBE247:
.LBE252:
	.loc 1 144 0
	xorq	$64, %rsi
.LBB253:
.LBB248:
	.loc 1 282 0
	movq	%rax, 40(%rbx)
	.loc 1 284 0
	movq	%rcx, 8(%rcx)
	.loc 1 287 0
	movq	%rdx, 104(%rbx)
.LBE248:
.LBE253:
.LBB254:
.LBB255:
	.loc 1 302 0
	movq	8(%rsi), %rax
	.loc 1 303 0
	movq	8(%rbx), %rcx
.LVL274:
.LBE255:
.LBE254:
.LBB258:
.LBB249:
	.loc 1 285 0
	movq	%r14, 64(%rbx)
.LVL275:
.LBE249:
.LBE258:
.LBB259:
.LBB256:
	.loc 1 302 0
	leaq	32(%rax), %rdx
	andq	$-128, %rax
	andl	$127, %edx
	orq	%rax, %rdx
.LVL276:
	.loc 1 303 0
	leaq	32(%rcx), %rax
	andq	$-128, %rcx
	andl	$127, %eax
	orq	%rcx, %rax
.LVL277:
	.loc 1 306 0
	movq	8(%rdx), %rcx
	.loc 1 305 0
	movq	8(%rax), %rdi
.LVL278:
	.loc 1 307 0
	movq	%rdi, 8(%rdx)
	.loc 1 310 0
	movq	%rcx, 8(%rax)
.LBE256:
.LBE259:
	.loc 1 145 0
	movq	%rbx, %rdi
.LVL279:
.LBB260:
.LBB257:
	.loc 1 312 0
	movq	8(%rsi), %rdx
.LVL280:
	.loc 1 313 0
	movq	8(%rbx), %rax
.LVL281:
	.loc 1 314 0
	movq	%rdx, 8(%rbx)
	.loc 1 315 0
	movq	%rax, 8(%rsi)
.LVL282:
.LBE257:
.LBE260:
	.loc 1 145 0
	xorl	%eax, %eax
	movq	%rbp, %rsi
	call	connect_left
.LVL283:
.LBB261:
.LBB262:
	.loc 1 257 0
	movsd	(%r12), %xmm2
.LVL284:
	.loc 1 259 0
	movsd	8(%r14), %xmm6
	.loc 1 261 0
	movsd	0(%r13), %xmm1
	.loc 1 264 0
	movapd	%xmm2, %xmm0
	.loc 1 261 0
	movsd	8(%r13), %xmm3
	.loc 1 264 0
	movapd	%xmm6, %xmm4
	.loc 1 257 0
	movsd	8(%r12), %xmm5
.LVL285:
	.loc 1 264 0
	subsd	%xmm1, %xmm0
	.loc 1 259 0
	movsd	(%r14), %xmm7
.LVL286:
	.loc 1 264 0
	subsd	%xmm3, %xmm4
	movapd	%xmm5, %xmm8
	subsd	%xmm3, %xmm8
	mulsd	%xmm4, %xmm0
	movapd	%xmm7, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm8, %xmm4
	subsd	%xmm4, %xmm0
.LBE262:
.LBE261:
	.loc 1 146 0
	pxor	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm0
	jbe	.L97
	.loc 1 147 0
	movq	%rax, %rbp
.LVL287:
	.loc 1 148 0
	movq	%rax, %rdx
	.loc 1 147 0
	xorq	$64, %rbp
.LVL288:
.L89:
	.loc 1 157 0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rbp, %rax
.LVL289:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL290:
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL291:
	ret
.LVL292:
	.p2align 4,,10
	.p2align 3
.L99:
	.cfi_restore_state
	movq	%r13, %rbx
	jmp	.L86
.LVL293:
	.p2align 4,,10
	.p2align 3
.L101:
	movq	%r12, %rbx
.LVL294:
.LBB263:
.LBB264:
	.loc 1 93 0
	movq	24(%r12), %r12
.L86:
.LVL295:
	testq	%r12, %r12
	jne	.L101
.LVL296:
.LBE264:
.LBE263:
	.loc 1 115 0
	movq	%r14, %rsi
.LVL297:
	call	build_delaunay
.LVL298:
	.loc 1 116 0
	movq	24(%r13), %rdi
	.loc 1 115 0
	movq	%rax, %rbp
	movq	%rdx, %r12
	.loc 1 116 0
	movq	%r13, %rsi
	call	build_delaunay
.LVL299:
	.loc 1 119 0
	movq	%r12, %rcx
	.loc 1 116 0
	movq	%rdx, %rsi
.LVL300:
	.loc 1 119 0
	movq	%rax, %rdi
	movq	%rbp, %rdx
.LVL301:
	call	do_merge
.LVL302:
	.loc 1 122 0
	cmpq	(%rax), %rbx
	.loc 1 119 0
	movq	%rdx, %rcx
	movq	%rax, %rbp
.LVL303:
	.loc 1 122 0
	je	.L87
.LVL304:
	.p2align 4,,10
	.p2align 3
.L88:
	.loc 1 122 0 is_stmt 0 discriminator 2
	xorq	$64, %rbp
.LVL305:
	movq	8(%rbp), %rbp
.LVL306:
	cmpq	%rbx, 0(%rbp)
	jne	.L88
.L87:
.LVL307:
	.loc 1 123 0 is_stmt 1
	cmpq	%r14, (%rcx)
	je	.L89
.LVL308:
	.p2align 4,,10
	.p2align 3
.L90:
	.loc 1 123 0 is_stmt 0 discriminator 2
	movq	8(%rdx), %rdx
.LVL309:
	xorq	$64, %rdx
.LVL310:
	cmpq	%r14, (%rdx)
	jne	.L90
.LVL311:
	.loc 1 157 0 is_stmt 1
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rbp, %rax
.LVL312:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL313:
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL314:
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL315:
	ret
.LVL316:
	.p2align 4,,10
	.p2align 3
.L97:
	.cfi_restore_state
.LBB265:
.LBB266:
	.loc 1 264 0
	subsd	%xmm7, %xmm2
.LBE266:
.LBE265:
	.loc 1 152 0
	xorq	$64, %rbx
.LVL317:
.LBB269:
.LBB267:
	.loc 1 264 0
	subsd	%xmm6, %xmm3
.LBE267:
.LBE269:
	.loc 1 152 0
	movq	%rbx, %rdx
.LVL318:
.LBB270:
.LBB268:
	.loc 1 264 0
	subsd	%xmm7, %xmm1
	subsd	%xmm6, %xmm5
	mulsd	%xmm3, %xmm2
	mulsd	%xmm5, %xmm1
	subsd	%xmm1, %xmm2
.LBE268:
.LBE270:
	.loc 1 153 0
	ucomisd	%xmm4, %xmm2
	ja	.L89
	.loc 1 153 0 is_stmt 0 discriminator 1
	movq	%rax, %rdi
	xorl	%eax, %eax
.LVL319:
	movq	%rbx, 8(%rsp)
	call	deleteedge
.LVL320:
	movq	8(%rsp), %rdx
	jmp	.L89
.LVL321:
	.p2align 4,,10
	.p2align 3
.L100:
.LBB271:
.LBB239:
	.loc 1 276 0 is_stmt 1
	call	alloc_edge
.LVL322:
	movq	%rax, %rbp
.LVL323:
	.loc 1 281 0
	leaq	32(%rax), %rdx
.LVL324:
	.loc 1 279 0
	movq	%rax, 8(%rbp)
	.loc 1 283 0
	leaq	64(%rbp), %rcx
	.loc 1 280 0
	movq	%r13, (%rax)
	.loc 1 282 0
	leaq	96(%rax), %rax
.LVL325:
	movq	%rax, 40(%rbp)
	.loc 1 284 0
	movq	%rcx, 8(%rcx)
.LBE239:
.LBE271:
	.loc 1 157 0
	movq	%rbp, %rax
.LBB272:
.LBB240:
	.loc 1 287 0
	movq	%rdx, 104(%rbp)
	.loc 1 285 0
	movq	%r14, 64(%rbp)
.LVL326:
.LBE240:
.LBE272:
	.loc 1 135 0
	movq	%rbp, %rdx
	.loc 1 157 0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	.loc 1 135 0
	xorq	$64, %rdx
.LVL327:
	.loc 1 157 0
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL328:
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL329:
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL330:
	ret
.LVL331:
.L83:
	.cfi_restore_state
.LBB273:
.LBB274:
	.loc 2 104 0
	leaq	.LC5(%rip), %rdi
.LVL332:
	call	puts@PLT
.LVL333:
.LBE274:
.LBE273:
	.loc 1 130 0
	orl	$-1, %edi
	call	exit@PLT
.LVL334:
	.cfi_endproc
.LFE27:
	.size	build_delaunay, .-build_delaunay
	.p2align 4,,15
	.globl	build_delaunay_triangulation
	.type	build_delaunay_triangulation, @function
build_delaunay_triangulation:
.LFB25:
	.loc 1 82 0
	.cfi_startproc
.LVL335:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 85 0
	call	build_delaunay
.LVL336:
	.loc 1 87 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	build_delaunay_triangulation, .-build_delaunay_triangulation
	.section	.rodata.str1.1
.LC6:
	.string	"NULL"
.LC7:
	.string	"X=%f, Y=%f\n"
	.text
	.p2align 4,,15
	.globl	in_order
	.type	in_order, @function
in_order:
.LFB40:
	.loc 1 536 0
	.cfi_startproc
.LVL337:
	.loc 1 540 0
	testq	%rdi, %rdi
	je	.L115
	.loc 1 536 0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	.LC7(%rip), %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LVL338:
.L105:
.LBB275:
.LBB276:
	.loc 2 104 0
	movsd	8(%rbx), %xmm1
	movq	%rbp, %rsi
	movl	$1, %edi
	movsd	(%rbx), %xmm0
	movl	$2, %eax
	call	__printf_chk@PLT
.LVL339:
.LBE276:
.LBE275:
	.loc 1 549 0
	movq	24(%rbx), %rdi
	xorl	%eax, %eax
	call	in_order
.LVL340:
	.loc 1 550 0
	movq	32(%rbx), %rbx
.LVL341:
	.loc 1 540 0
	testq	%rbx, %rbx
	jne	.L105
.LVL342:
	.loc 1 552 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
.LBB277:
.LBB278:
	.loc 2 104 0
	leaq	.LC6(%rip), %rdi
.LBE278:
.LBE277:
	.loc 1 552 0
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
.LVL343:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.LBB280:
.LBB279:
	.loc 2 104 0
	jmp	puts@PLT
.LVL344:
	.p2align 4,,10
	.p2align 3
.L115:
	leaq	.LC6(%rip), %rdi
.LVL345:
	jmp	puts@PLT
.LVL346:
.LBE279:
.LBE280:
	.cfi_endproc
.LFE40:
	.size	in_order, .-in_order
	.p2align 4,,15
	.globl	mult
	.type	mult, @function
mult:
.LFB41:
	.loc 1 555 0
	.cfi_startproc
.LVL347:
	.loc 1 558 0
	movl	$1759218605, %r8d
	movl	%edi, %eax
	movl	%edi, %r10d
	imull	%r8d
	sarl	$31, %r10d
	.loc 1 559 0
	movl	%esi, %eax
	movl	%esi, %r11d
	sarl	$31, %r11d
	.loc 1 558 0
	sarl	$12, %edx
	movl	%edx, %r9d
	movl	%edx, %ecx
	subl	%r10d, %r9d
	subl	%r10d, %ecx
	.loc 1 559 0
	imull	%r8d
	.loc 1 558 0
	imull	$10000, %r9d, %r9d
	.loc 1 559 0
	sarl	$12, %edx
	.loc 1 558 0
	subl	%r9d, %edi
.LVL348:
	movl	%edi, %r9d
.LVL349:
	.loc 1 559 0
	movl	%edx, %edi
.LVL350:
	subl	%r11d, %edx
	subl	%r11d, %edi
	imull	$10000, %edi, %edi
	.loc 1 560 0
	imull	%r9d, %edx
	.loc 1 559 0
	subl	%edi, %esi
.LVL351:
	.loc 1 560 0
	imull	%esi, %ecx
	imull	%esi, %r9d
.LVL352:
	addl	%edx, %ecx
	movl	%ecx, %eax
	imull	%r8d
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %r8d
.LVL353:
	sarl	$12, %r8d
	subl	%eax, %r8d
	imull	$10000, %r8d, %r8d
	subl	%r8d, %ecx
	imull	$10000, %ecx, %eax
	addl	%r9d, %eax
	.loc 1 561 0
	ret
	.cfi_endproc
.LFE41:
	.size	mult, .-mult
	.p2align 4,,15
	.globl	skiprand
	.type	skiprand, @function
skiprand:
.LFB42:
	.loc 1 565 0
	.cfi_startproc
.LVL354:
	.loc 1 566 0
	testl	%esi, %esi
	je	.L118
.LBB281:
.LBB282:
.LBB283:
.LBB284:
	.loc 1 558 0
	movl	$1759218605, %r9d
.LVL355:
	.p2align 4,,10
	.p2align 3
.L119:
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	movl	%edx, %r8d
	subl	%eax, %edx
	subl	%eax, %r8d
	imull	$10000, %r8d, %r8d
	.loc 1 560 0
	imull	$5821, %edx, %ecx
	.loc 1 558 0
	subl	%r8d, %edi
.LVL356:
	.loc 1 560 0
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
.LBE284:
.LBE283:
.LBE282:
.LBE281:
	.loc 1 566 0
	subl	$1, %esi
.LVL357:
.LBB286:
.LBB285:
	.loc 1 572 0
	leal	1(%rcx,%r8), %edi
.LVL358:
.LBE285:
.LBE286:
	.loc 1 566 0
	jne	.L119
.L118:
	.loc 1 568 0
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE42:
	.size	skiprand, .-skiprand
	.p2align 4,,15
	.globl	myrandom
	.type	myrandom, @function
myrandom:
.LFB43:
	.loc 1 571 0
	.cfi_startproc
.LVL359:
.LBB287:
.LBB288:
	.loc 1 558 0
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
	.loc 1 560 0
	imull	$5821, %edx, %ecx
	.loc 1 558 0
	subl	%r8d, %edi
.LVL360:
	.loc 1 560 0
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
.LVL361:
.LBE288:
.LBE287:
	.loc 1 572 0
	leal	1(%rcx,%r8), %eax
	.loc 1 574 0
	ret
	.cfi_endproc
.LFE43:
	.size	myrandom, .-myrandom
	.p2align 4,,15
	.globl	print_extra
	.type	print_extra, @function
print_extra:
.LFB44:
	.loc 1 578 0
	.cfi_startproc
.LVL362:
.LBB289:
.LBB290:
	.loc 2 104 0
	movsd	8(%rdi), %xmm1
	leaq	.LC7(%rip), %rsi
	movsd	(%rdi), %xmm0
	movl	$2, %eax
	movl	$1, %edi
.LVL363:
	jmp	__printf_chk@PLT
.LVL364:
.LBE290:
.LBE289:
	.cfi_endproc
.LFE44:
	.size	print_extra, .-print_extra
	.p2align 4,,15
	.globl	allocate_stack
	.type	allocate_stack, @function
allocate_stack:
.LFB46:
	.loc 1 618 0
	.cfi_startproc
.LVL365:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.loc 1 621 0
	leal	(%rdi,%rdi,2), %ebx
	.loc 1 622 0
	movl	$24, %edi
.LVL366:
	.loc 1 618 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 621 0
	sall	$2, %ebx
	movl	%ebx, num_edgeparts(%rip)
	.loc 1 622 0
	call	malloc@PLT
.LVL367:
	.loc 1 623 0
	movslq	%ebx, %rdi
	.loc 1 622 0
	movq	%rax, %rbp
.LVL368:
	.loc 1 624 0
	sarl	%ebx
	.loc 1 623 0
	salq	$3, %rdi
	call	malloc@PLT
.LVL369:
	.loc 1 624 0
	movl	%ebx, 16(%rbp)
	.loc 1 623 0
	movq	%rax, 8(%rbp)
	.loc 1 626 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL370:
	ret
	.cfi_endproc
.LFE46:
	.size	allocate_stack, .-allocate_stack
	.p2align 4,,15
	.globl	free_all
	.type	free_all, @function
free_all:
.LFB47:
	.loc 1 631 0
	.cfi_startproc
.LVL371:
	.loc 1 632 0
	movq	8(%rsi), %rdi
.LVL372:
	.loc 1 631 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 631 0
	movq	%rsi, %rbx
	.loc 1 632 0
	call	free@PLT
.LVL373:
	.loc 1 633 0
	movq	%rbx, %rdi
	.loc 1 634 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL374:
	.loc 1 633 0
	jmp	free@PLT
.LVL375:
	.cfi_endproc
.LFE47:
	.size	free_all, .-free_all
	.p2align 4,,15
	.globl	get_points
	.type	get_points, @function
get_points:
.LFB48:
	.loc 1 638 0
	.cfi_startproc
.LVL376:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 638 0
	movq	%rdi, %rax
	movq	%fs:40, %rdi
	movq	%rdi, 24(%rsp)
	xorl	%edi, %edi
.LVL377:
	.loc 1 645 0
	testl	%esi, %esi
	jg	.L131
.LVL378:
	.loc 1 649 0
	movsd	%xmm0, 8(%rax)
	movq	$0, (%rax)
	movl	%ecx, 16(%rax)
.LVL379:
.L130:
	.loc 1 672 0
	movq	24(%rsp), %rdi
	xorq	%fs:40, %rdi
	jne	.L135
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL380:
	.p2align 4,,10
	.p2align 3
.L131:
	.cfi_restore_state
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	get_points.part.1
.LVL381:
	movq	8(%rsp), %rax
	jmp	.L130
.LVL382:
.L135:
	call	__stack_chk_fail@PLT
.LVL383:
	.cfi_endproc
.LFE48:
	.size	get_points, .-get_points
	.p2align 4,,15
	.type	get_points.part.1, @function
get_points.part.1:
.LFB55:
	.loc 1 636 0
	.cfi_startproc
.LVL384:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r10d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	.loc 1 652 0
	movl	%r9d, %r12d
	.loc 1 636 0
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	.loc 1 652 0
	movl	%esi, %ebx
	shrl	$31, %r12d
	shrl	$31, %ebx
	.loc 1 636 0
	movq	%rdi, %r14
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.loc 1 652 0
	addl	%r9d, %r12d
	addl	%esi, %ebx
	leaq	32(%rsp), %r15
	sarl	%ebx
	sarl	%r12d
	movl	%r12d, %r9d
.LVL385:
	movl	%ebx, %esi
.LVL386:
	addl	%r12d, %r8d
.LVL387:
	movq	%r15, %rdi
.LVL388:
	movl	%r10d, 28(%rsp)
	.loc 1 636 0
	movl	%edx, %ebp
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	.loc 1 652 0
	call	get_points
.LVL389:
	movq	32(%rsp), %r8
	movl	48(%rsp), %ecx
	.loc 1 658 0
	movl	$40, %edi
	.loc 1 652 0
	movsd	40(%rsp), %xmm3
	.loc 1 654 0
	subl	%ebx, %ebp
.LVL390:
	.loc 1 652 0
	movq	%r8, 16(%rsp)
.LVL391:
	movsd	%xmm3, (%rsp)
.LVL392:
	movl	%ecx, 12(%rsp)
.LVL393:
	.loc 1 658 0
	call	malloc@PLT
.LVL394:
.LBB291:
.LBB292:
.LBB293:
.LBB294:
	.loc 1 558 0
	movl	12(%rsp), %ecx
.LBE294:
.LBE293:
.LBE292:
.LBE291:
	.loc 1 658 0
	movq	%rax, %r13
.LVL395:
.LBB301:
.LBB299:
.LBB297:
.LBB295:
	.loc 1 558 0
	movl	$1759218605, %esi
.LBE295:
.LBE297:
.LBE299:
.LBE301:
	.loc 1 662 0
	pxor	%xmm0, %xmm0
.LBB302:
.LBB300:
.LBB298:
.LBB296:
	.loc 1 560 0
	movl	%esi, 24(%rsp)
	.loc 1 558 0
	movl	%ecx, %eax
.LVL396:
	imull	%esi
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	movl	%edx, %edi
	subl	%eax, %edx
	subl	%eax, %edi
	imull	$10000, %edi, %edi
	subl	%edi, %ecx
.LVL397:
	movl	%ecx, %edi
.LVL398:
	.loc 1 560 0
	imull	$3141, %edi, %eax
	imull	$5821, %edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	imull	%esi
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	subl	%eax, %edx
	imull	$10000, %edx, %edx
	imull	$5821, %edi, %edi
	subl	%edx, %ecx
	imull	$10000, %ecx, %ecx
.LBE296:
.LBE298:
	.loc 1 572 0
	leal	1(%rcx,%rdi), %ecx
.LVL399:
.LBE300:
.LBE302:
	.loc 1 662 0
	cvtsi2sd	%ecx, %xmm0
	movl	%ecx, 12(%rsp)
	divsd	.LC8(%rip), %xmm0
	call	log@PLT
.LVL400:
	pxor	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	divsd	%xmm1, %xmm0
	call	exp@PLT
.LVL401:
.LBB303:
.LBB304:
.LBB305:
.LBB306:
	.loc 1 558 0
	movl	12(%rsp), %ecx
	movl	24(%rsp), %esi
.LBE306:
.LBE305:
.LBE304:
.LBE303:
	.loc 1 667 0
	movl	%r12d, %r9d
	.loc 1 663 0
	pxor	%xmm1, %xmm1
	.loc 1 665 0
	movq	16(%rsp), %r8
	.loc 1 662 0
	mulsd	(%rsp), %xmm0
	.loc 1 667 0
	movl	28(%rsp), %r10d
.LBB331:
.LBB323:
.LBB315:
.LBB307:
	.loc 1 558 0
	movl	%ecx, %eax
	imull	%esi
	movl	%ecx, %eax
.LBE307:
.LBE315:
.LBE323:
.LBE331:
	.loc 1 665 0
	movq	%r8, 32(%r13)
.LBB332:
.LBB324:
.LBB316:
.LBB308:
	.loc 1 558 0
	sarl	$31, %eax
.LBE308:
.LBE316:
.LBE324:
.LBE332:
	.loc 1 667 0
	movl	%r10d, %r8d
.LBB333:
.LBB325:
.LBB317:
.LBB309:
	.loc 1 558 0
	sarl	$12, %edx
	movl	%edx, %edi
	subl	%eax, %edx
.LBE309:
.LBE317:
.LBE325:
.LBE333:
	.loc 1 662 0
	movsd	%xmm0, 0(%r13)
.LVL402:
.LBB334:
.LBB326:
.LBB318:
.LBB310:
	.loc 1 558 0
	subl	%eax, %edi
.LBE310:
.LBE318:
.LBE326:
.LBE334:
	.loc 1 664 0
	movapd	%xmm0, %xmm2
.LBB335:
.LBB327:
.LBB319:
.LBB311:
	.loc 1 558 0
	imull	$10000, %edi, %edi
.LBE311:
.LBE319:
.LBE327:
.LBE335:
	.loc 1 664 0
	mulsd	%xmm0, %xmm2
.LBB336:
.LBB328:
.LBB320:
.LBB312:
	.loc 1 558 0
	subl	%edi, %ecx
.LVL403:
	movl	%ecx, %edi
.LVL404:
	.loc 1 560 0
	imull	$3141, %edi, %eax
	imull	$5821, %edx, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	imull	%esi
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
.LBE312:
.LBE320:
.LBE328:
.LBE336:
	.loc 1 667 0
	leal	-1(%rbp), %edx
.LBB337:
.LBB329:
.LBB321:
.LBB313:
	.loc 1 560 0
	sarl	$12, %esi
	subl	%eax, %esi
	imull	$10000, %esi, %esi
	imull	$5821, %edi, %edi
	subl	%esi, %ecx
.LBE313:
.LBE321:
.LBE329:
.LBE337:
	.loc 1 667 0
	movl	%ebx, %esi
.LBB338:
.LBB330:
.LBB322:
.LBB314:
	.loc 1 560 0
	imull	$10000, %ecx, %ecx
.LBE314:
.LBE322:
	.loc 1 572 0
	leal	1(%rcx,%rdi), %ecx
.LVL405:
.LBE330:
.LBE338:
	.loc 1 667 0
	movq	%r15, %rdi
	.loc 1 663 0
	cvtsi2sd	%ecx, %xmm1
	divsd	.LC8(%rip), %xmm1
	movsd	%xmm1, 8(%r13)
	.loc 1 664 0
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 16(%r13)
	.loc 1 667 0
	call	get_points
.LVL406:
	.loc 1 669 0
	movq	32(%rsp), %rax
	.loc 1 671 0
	movq	%r13, 32(%rsp)
.LVL407:
	movdqa	32(%rsp), %xmm0
	.loc 1 669 0
	movq	%rax, 24(%r13)
.LVL408:
	.loc 1 671 0
	movq	48(%rsp), %rax
	.loc 1 672 0
	movq	56(%rsp), %rbx
	xorq	%fs:40, %rbx
	.loc 1 671 0
	movups	%xmm0, (%r14)
	movq	%rax, 16(%r14)
.LVL409:
	.loc 1 672 0
	jne	.L139
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL410:
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL411:
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL412:
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL413:
	ret
.LVL414:
.L139:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL415:
	.cfi_endproc
.LFE55:
	.size	get_points.part.1, .-get_points.part.1
	.section	.rodata.str1.1
.LC9:
	.string	"argc = %d\n"
.LC10:
	.string	"getting %d points\n"
.LC12:
	.string	"Done getting points"
.LC13:
	.string	"Doing voronoi on %d nodes\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB45:
	.loc 1 585 0
	.cfi_startproc
.LVL416:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
.LBB339:
.LBB340:
	.loc 2 104 0
	movl	%edi, %edx
.LBE340:
.LBE339:
	.loc 1 585 0
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbp
.LBB344:
.LBB341:
	.loc 2 104 0
	leaq	.LC9(%rip), %rsi
.LVL417:
.LBE341:
.LBE344:
	.loc 1 585 0
	movl	%edi, %ebx
.LBB345:
.LBB342:
	.loc 2 104 0
	movl	$1, %edi
.LVL418:
.LBE342:
.LBE345:
	.loc 1 585 0
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.loc 1 590 0
	movl	$0, to_color(%rip)
	movl	$0, to_3d_out(%rip)
	.loc 1 585 0
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	.loc 1 590 0
	movl	$0, to_off(%rip)
	movl	$0, to_lincoln(%rip)
	.loc 1 591 0
	movl	$1, delaunay(%rip)
	movl	$1, voronoi(%rip)
	movl	$0, ahost(%rip)
	movl	$0, interactive(%rip)
.LVL419:
.LBB346:
.LBB343:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL420:
.LBE343:
.LBE346:
	.loc 1 595 0
	movq	%rbp, %rsi
	movl	%ebx, %edi
	call	dealwithargs@PLT
.LVL421:
.LBB347:
.LBB348:
	.loc 2 104 0
	leaq	.LC10(%rip), %rsi
.LBE348:
.LBE347:
	.loc 1 595 0
	movl	%eax, %ebx
.LVL422:
.LBB350:
.LBB349:
	.loc 2 104 0
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
.LVL423:
	call	__printf_chk@PLT
.LVL424:
.LBE349:
.LBE350:
.LBB351:
.LBB352:
	movl	NumNodes(%rip), %eax
	leaq	32(%rsp), %rdi
	movl	$1, %r9d
	movsd	.LC11(%rip), %xmm0
	movl	$1023, %ecx
	movl	%ebx, %edx
	movl	$1, %esi
	leal	-1(%rax), %r8d
.LVL425:
	call	get_points.part.1
.LVL426:
.LBE352:
.LBE351:
	.loc 1 601 0
	leal	-1(%rbx), %esi
	movl	48(%rsp), %ecx
	movl	NumNodes(%rip), %r9d
	movsd	40(%rsp), %xmm0
	xorl	%r8d, %r8d
	movl	%esi, %edx
	movq	%rsp, %rdi
.LBB354:
.LBB353:
	movq	32(%rsp), %rbp
.LVL427:
.LBE353:
.LBE354:
	call	get_points
.LVL428:
.LBB355:
.LBB356:
	.loc 2 104 0
	leaq	.LC12(%rip), %rdi
.LBE356:
.LBE355:
	.loc 1 601 0
	movq	(%rsp), %r12
.LVL429:
.LBB358:
.LBB357:
	.loc 2 104 0
	call	puts@PLT
.LVL430:
.LBE357:
.LBE358:
	.loc 1 603 0
	leal	1(%rbx), %edi
	movl	%edi, num_vertices(%rip)
	.loc 1 604 0
	call	allocate_stack
.LVL431:
	.loc 1 605 0
	movl	flag(%rip), %ecx
	.loc 1 604 0
	movq	%rax, %r13
.LVL432:
	.loc 1 605 0
	testl	%ecx, %ecx
	jne	.L147
.LVL433:
.L142:
.LBB359:
.LBB360:
	.loc 2 104 0
	leaq	.LC13(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL434:
.LBE360:
.LBE359:
.LBB361:
.LBB362:
	.loc 1 85 0
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	build_delaunay
.LVL435:
.LBE362:
.LBE361:
	.loc 1 611 0
	movl	flag(%rip), %edx
	testl	%edx, %edx
	je	.L144
	.loc 1 611 0 is_stmt 0 discriminator 1
	movq	%r13, %rdx
	movl	%ebx, %esi
.LVL436:
	movq	%rax, %rdi
	call	output_voronoi_diagram@PLT
.LVL437:
.L144:
	.loc 1 615 0 is_stmt 1
	xorl	%eax, %eax
	movq	56(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L148
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL438:
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL439:
	ret
.LVL440:
.L147:
	.cfi_restore_state
	.loc 1 605 0 discriminator 1
	xorl	%eax, %eax
.LVL441:
	movq	%r12, %rdi
	call	in_order
.LVL442:
	.loc 1 606 0 discriminator 1
	cmpl	$0, flag(%rip)
	je	.L142
.LVL443:
.LBB363:
.LBB364:
.LBB365:
.LBB366:
	.loc 2 104 0 discriminator 1
	movsd	8(%rbp), %xmm1
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	movsd	0(%rbp), %xmm0
	movl	$2, %eax
	call	__printf_chk@PLT
.LVL444:
	jmp	.L142
.LVL445:
.L148:
.LBE366:
.LBE365:
.LBE364:
.LBE363:
	.loc 1 615 0
	call	__stack_chk_fail@PLT
.LVL446:
	.cfi_endproc
.LFE45:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	pop_edge
	.type	pop_edge, @function
pop_edge:
.LFB49:
	.loc 1 683 0
	.cfi_startproc
.LVL447:
	.loc 1 684 0
	movslq	(%rdi), %rax
	leal	-1(%rax), %edx
	movl	%edx, (%rdi)
.LVL448:
	.loc 1 685 0
	movq	8(%rdi), %rdx
	movq	(%rdx,%rax,8), %rax
.LVL449:
	.loc 1 686 0
	ret
	.cfi_endproc
.LFE49:
	.size	pop_edge, .-pop_edge
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"cannot push onto stack: stack is too large"
	.text
	.p2align 4,,15
	.globl	push_edge
	.type	push_edge, @function
push_edge:
.LFB50:
	.loc 1 688 0
	.cfi_startproc
.LVL450:
	.loc 1 691 0
	movl	(%rdi), %eax
	cmpl	16(%rdi), %eax
	je	.L152
.LVL451:
	.loc 1 698 0
	movq	8(%rdi), %rdx
	.loc 1 696 0
	addl	$1, %eax
.LVL452:
	.loc 1 697 0
	movl	%eax, (%rdi)
	.loc 1 698 0
	cltq
.LVL453:
	movq	%rsi, (%rdx,%rax,8)
	.loc 1 700 0
	ret
.LVL454:
	.p2align 4,,10
	.p2align 3
.L152:
.LBB371:
.LBB372:
.LBB373:
.LBB374:
	.loc 2 104 0
	leaq	.LC14(%rip), %rdi
.LVL455:
	jmp	puts@PLT
.LVL456:
.LBE374:
.LBE373:
.LBE372:
.LBE371:
	.cfi_endproc
.LFE50:
	.size	push_edge, .-push_edge
	.p2align 4,,15
	.globl	push_ring
	.type	push_ring, @function
push_ring:
.LFB51:
	.loc 1 702 0
	.cfi_startproc
.LVL457:
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
	.loc 1 704 0
	movq	8(%rsi), %rbx
.LVL458:
	.loc 1 705 0
	cmpq	%rbx, %rsi
	je	.L153
.LBB381:
.LBB382:
.LBB383:
.LBB384:
.LBB385:
.LBB386:
	.loc 2 104 0
	leaq	.LC14(%rip), %r13
	movq	%rsi, %r12
	movq	%rdi, %rbp
.LVL459:
	.p2align 4,,10
	.p2align 3
.L157:
.LBE386:
.LBE385:
.LBE384:
.LBE383:
.LBE382:
.LBE381:
	.loc 1 706 0
	cmpq	$0, 16(%rbx)
	jne	.L155
.LBB394:
.LBB391:
	.loc 1 691 0
	movl	0(%rbp), %eax
	cmpl	16(%rbp), %eax
.LBE391:
.LBE394:
	.loc 1 707 0
	movq	$1, 16(%rbx)
.LVL460:
.LBB395:
.LBB392:
	.loc 1 691 0
	je	.L160
.LVL461:
	.loc 1 698 0
	movq	8(%rbp), %rdx
	.loc 1 696 0
	addl	$1, %eax
.LVL462:
	.loc 1 697 0
	movl	%eax, 0(%rbp)
	.loc 1 698 0
	cltq
.LVL463:
	movq	%rbx, (%rdx,%rax,8)
.LVL464:
.L155:
.LBE392:
.LBE395:
	.loc 1 710 0
	movq	8(%rbx), %rbx
.LVL465:
	.loc 1 705 0
	cmpq	%rbx, %r12
	jne	.L157
.LVL466:
.L153:
	.loc 1 712 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL467:
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.LVL468:
	.p2align 4,,10
	.p2align 3
.L160:
	.cfi_restore_state
.LBB396:
.LBB393:
.LBB390:
.LBB389:
.LBB388:
.LBB387:
	.loc 2 104 0
	movq	%r13, %rdi
	call	puts@PLT
.LVL469:
	jmp	.L155
.LBE387:
.LBE388:
.LBE389:
.LBE390:
.LBE393:
.LBE396:
	.cfi_endproc
.LFE51:
	.size	push_ring, .-push_ring
	.p2align 4,,15
	.globl	push_nonzero_ring
	.type	push_nonzero_ring, @function
push_nonzero_ring:
.LFB52:
	.loc 1 717 0
	.cfi_startproc
.LVL470:
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
	.loc 1 719 0
	movq	8(%rsi), %rbx
.LVL471:
	.loc 1 720 0
	cmpq	%rbx, %rsi
	je	.L161
.LBB403:
.LBB404:
.LBB405:
.LBB406:
.LBB407:
.LBB408:
	.loc 2 104 0
	leaq	.LC14(%rip), %r13
	movq	%rsi, %r12
	movq	%rdi, %rbp
.LVL472:
	.p2align 4,,10
	.p2align 3
.L165:
.LBE408:
.LBE407:
.LBE406:
.LBE405:
.LBE404:
.LBE403:
	.loc 1 721 0
	cmpq	$0, 16(%rbx)
	je	.L163
.LBB416:
.LBB413:
	.loc 1 691 0
	movl	0(%rbp), %eax
	cmpl	16(%rbp), %eax
.LBE413:
.LBE416:
	.loc 1 722 0
	movq	$0, 16(%rbx)
.LVL473:
.LBB417:
.LBB414:
	.loc 1 691 0
	je	.L168
.LVL474:
	.loc 1 698 0
	movq	8(%rbp), %rdx
	.loc 1 696 0
	addl	$1, %eax
.LVL475:
	.loc 1 697 0
	movl	%eax, 0(%rbp)
	.loc 1 698 0
	cltq
.LVL476:
	movq	%rbx, (%rdx,%rax,8)
.LVL477:
.L163:
.LBE414:
.LBE417:
	.loc 1 725 0
	movq	8(%rbx), %rbx
.LVL478:
	.loc 1 720 0
	cmpq	%rbx, %r12
	jne	.L165
.LVL479:
.L161:
	.loc 1 727 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL480:
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.LVL481:
	.p2align 4,,10
	.p2align 3
.L168:
	.cfi_restore_state
.LBB418:
.LBB415:
.LBB412:
.LBB411:
.LBB410:
.LBB409:
	.loc 2 104 0
	movq	%r13, %rdi
	call	puts@PLT
.LVL482:
	jmp	.L163
.LBE409:
.LBE410:
.LBE411:
.LBE412:
.LBE415:
.LBE418:
	.cfi_endproc
.LFE52:
	.size	push_nonzero_ring, .-push_nonzero_ring
	.p2align 4,,15
	.globl	zero_seen
	.type	zero_seen, @function
zero_seen:
.LFB53:
	.loc 1 732 0
	.cfi_startproc
.LVL483:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 732 0
	movq	%rdi, %rbx
	.loc 1 733 0
	movl	$0, (%rdi)
	jmp	.L177
.LVL484:
	.p2align 4,,10
	.p2align 3
.L178:
.LBB419:
.LBB420:
	.loc 1 684 0
	leal	-1(%rax), %edx
.LBE420:
.LBE419:
	.loc 1 737 0
	movq	%rbx, %rdi
.LBB422:
.LBB421:
	.loc 1 684 0
	movl	%edx, (%rbx)
.LVL485:
	.loc 1 685 0
	movq	8(%rbx), %rdx
.LBE421:
.LBE422:
	.loc 1 737 0
	movq	(%rdx,%rax,8), %rsi
	xorq	$64, %rsi
.LVL486:
.L177:
	.loc 1 734 0
	xorl	%eax, %eax
	call	push_nonzero_ring
.LVL487:
	.loc 1 735 0
	movslq	(%rbx), %rax
	testl	%eax, %eax
	jne	.L178
	.loc 1 739 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL488:
	ret
	.cfi_endproc
.LFE53:
	.size	zero_seen, .-zero_seen
	.globl	statistics
	.bss
	.align 4
	.type	statistics, @object
	.size	statistics, 4
statistics:
	.zero	4
	.globl	fileout
	.data
	.align 4
	.type	fileout, @object
	.size	fileout, 4
fileout:
	.long	1
	.globl	filein
	.bss
	.align 4
	.type	filein, @object
	.size	filein, 4
filein:
	.zero	4
	.globl	randum
	.data
	.align 4
	.type	randum, @object
	.size	randum, 4
randum:
	.long	1
	.globl	loop
	.bss
	.align 4
	.type	loop, @object
	.size	loop, 4
loop:
	.zero	4
	.comm	avail_edge,8,8
	.comm	next_edge,8,8
	.comm	flag,4,4
	.comm	NDim,4,4
	.comm	NumNodes,4,4
	.comm	see,8,8
	.comm	ahost,4,4
	.comm	interactive,4,4
	.comm	delaunay,4,4
	.comm	voronoi,4,4
	.comm	to_color,4,4
	.comm	to_3d_out,4,4
	.comm	to_off,4,4
	.comm	to_lincoln,4,4
	.comm	stack_size,4,4
	.comm	num_edgeparts,4,4
	.comm	num_vertices,4,4
	.comm	org,8,8
	.comm	next,8,8
	.comm	va,8,8
	.comm	vp,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	0
	.align 8
.LC8:
	.long	4290772992
	.long	1105199103
	.align 8
.LC11:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "../olden/voronoi/src/defines.h"
	.file 8 "/usr/include/malloc.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2f8e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF189
	.byte	0xc
	.long	.LASF190
	.long	.LASF191
	.long	.Ldebug_ranges0+0x880
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0xd8
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
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
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0x8c
	.long	0x6c
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
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
	.uleb128 0x8
	.long	.LASF41
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x21d
	.uleb128 0x9
	.long	.LASF12
	.byte	0x5
	.byte	0xf6
	.long	0x65
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0xfb
	.long	0x8b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8b
	.byte	0x18
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8b
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8b
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8b
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8b
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x104
	.long	0x8b
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8b
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8b
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x108
	.long	0x255
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x10a
	.long	0x25b
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x10c
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x110
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x112
	.long	0x73
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x116
	.long	0x49
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x261
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x11c
	.long	0x271
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x125
	.long	0x7e
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x12d
	.long	0x89
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x12e
	.long	0x89
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x89
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x89
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x30
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF192
	.byte	0x5
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x255
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.byte	0xa1
	.long	0x255
	.byte	0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x25b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0xa6
	.long	0x65
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0x6
	.byte	0x8
	.long	0x9d
	.uleb128 0xc
	.long	0x91
	.long	0x271
	.uleb128 0xd
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xc
	.long	0x91
	.long	0x287
	.uleb128 0xd
	.long	0x3b
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF193
	.uleb128 0xf
	.long	.LASF46
	.byte	0x5
	.value	0x13f
	.long	0x287
	.uleb128 0xf
	.long	.LASF47
	.byte	0x5
	.value	0x140
	.long	0x287
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.value	0x141
	.long	0x287
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x10
	.long	0x2b0
	.uleb128 0x11
	.long	.LASF49
	.byte	0x6
	.byte	0x87
	.long	0x25b
	.uleb128 0x11
	.long	.LASF50
	.byte	0x6
	.byte	0x88
	.long	0x25b
	.uleb128 0x11
	.long	.LASF51
	.byte	0x6
	.byte	0x89
	.long	0x25b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x6
	.byte	0x8
	.long	0x2e9
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0x3
	.long	.LASF54
	.byte	0x7
	.byte	0x5
	.long	0x65
	.uleb128 0x3
	.long	.LASF55
	.byte	0x7
	.byte	0x6
	.long	0x3b
	.uleb128 0x8
	.long	.LASF56
	.byte	0x20
	.byte	0x7
	.byte	0x8
	.long	0x342
	.uleb128 0x13
	.string	"v"
	.byte	0x7
	.byte	0x9
	.long	0x371
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x7
	.byte	0xa
	.long	0x377
	.byte	0x8
	.uleb128 0x9
	.long	.LASF58
	.byte	0x7
	.byte	0xb
	.long	0x6c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF59
	.byte	0x7
	.byte	0xc
	.long	0x89
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x28
	.byte	0x7
	.byte	0x21
	.long	0x371
	.uleb128 0x13
	.string	"v"
	.byte	0x7
	.byte	0x22
	.long	0x3cd
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0x7
	.byte	0x23
	.long	0x371
	.byte	0x18
	.uleb128 0x9
	.long	.LASF62
	.byte	0x7
	.byte	0x23
	.long	0x371
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x342
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x8
	.long	.LASF63
	.byte	0x18
	.byte	0x7
	.byte	0x10
	.long	0x3ac
	.uleb128 0x13
	.string	"v"
	.byte	0x7
	.byte	0x11
	.long	0x371
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x7
	.byte	0x12
	.long	0x29
	.byte	0x8
	.uleb128 0x9
	.long	.LASF65
	.byte	0x7
	.byte	0x13
	.long	0x65
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0x7
	.byte	0x17
	.long	0x377
	.uleb128 0x3
	.long	.LASF67
	.byte	0x7
	.byte	0x18
	.long	0x371
	.uleb128 0x3
	.long	.LASF68
	.byte	0x7
	.byte	0x19
	.long	0x377
	.uleb128 0x8
	.long	.LASF69
	.byte	0x18
	.byte	0x7
	.byte	0x1b
	.long	0x3fa
	.uleb128 0x13
	.string	"x"
	.byte	0x7
	.byte	0x1c
	.long	0x29
	.byte	0
	.uleb128 0x13
	.string	"y"
	.byte	0x7
	.byte	0x1c
	.long	0x29
	.byte	0x8
	.uleb128 0x9
	.long	.LASF70
	.byte	0x7
	.byte	0x1d
	.long	0x29
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.byte	0x10
	.byte	0x7
	.byte	0x27
	.long	0x41b
	.uleb128 0x9
	.long	.LASF61
	.byte	0x7
	.byte	0x28
	.long	0x3c2
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0x7
	.byte	0x28
	.long	0x3c2
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF71
	.byte	0x7
	.byte	0x29
	.long	0x3fa
	.uleb128 0x8
	.long	.LASF72
	.byte	0x18
	.byte	0x7
	.byte	0x2c
	.long	0x457
	.uleb128 0x13
	.string	"ptr"
	.byte	0x7
	.byte	0x2d
	.long	0x65
	.byte	0
	.uleb128 0x9
	.long	.LASF73
	.byte	0x7
	.byte	0x2e
	.long	0x457
	.byte	0x8
	.uleb128 0x9
	.long	.LASF74
	.byte	0x7
	.byte	0x2f
	.long	0x65
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3c2
	.uleb128 0x15
	.string	"vp"
	.byte	0x7
	.byte	0x61
	.long	0x467
	.uleb128 0x6
	.byte	0x8
	.long	0x3b7
	.uleb128 0x15
	.string	"va"
	.byte	0x7
	.byte	0x62
	.long	0x371
	.uleb128 0x11
	.long	.LASF57
	.byte	0x7
	.byte	0x63
	.long	0x482
	.uleb128 0x6
	.byte	0x8
	.long	0x3ac
	.uleb128 0x15
	.string	"org"
	.byte	0x7
	.byte	0x64
	.long	0x467
	.uleb128 0x11
	.long	.LASF75
	.byte	0x7
	.byte	0x65
	.long	0x65
	.uleb128 0x11
	.long	.LASF76
	.byte	0x7
	.byte	0x65
	.long	0x65
	.uleb128 0x11
	.long	.LASF74
	.byte	0x7
	.byte	0x65
	.long	0x65
	.uleb128 0x11
	.long	.LASF77
	.byte	0x7
	.byte	0x66
	.long	0x65
	.uleb128 0x11
	.long	.LASF78
	.byte	0x7
	.byte	0x66
	.long	0x65
	.uleb128 0x11
	.long	.LASF79
	.byte	0x7
	.byte	0x66
	.long	0x65
	.uleb128 0x11
	.long	.LASF80
	.byte	0x7
	.byte	0x66
	.long	0x65
	.uleb128 0x11
	.long	.LASF81
	.byte	0x7
	.byte	0x66
	.long	0x65
	.uleb128 0x11
	.long	.LASF82
	.byte	0x7
	.byte	0x66
	.long	0x65
	.uleb128 0x11
	.long	.LASF83
	.byte	0x7
	.byte	0x66
	.long	0x65
	.uleb128 0x11
	.long	.LASF84
	.byte	0x7
	.byte	0x66
	.long	0x65
	.uleb128 0x15
	.string	"see"
	.byte	0x7
	.byte	0x67
	.long	0x8b
	.uleb128 0x11
	.long	.LASF85
	.byte	0x7
	.byte	0x68
	.long	0x65
	.uleb128 0x11
	.long	.LASF86
	.byte	0x7
	.byte	0x68
	.long	0x65
	.uleb128 0x3
	.long	.LASF87
	.byte	0x3
	.byte	0x95
	.long	0x6c
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF88
	.uleb128 0x16
	.long	0x89
	.long	0x54e
	.uleb128 0x17
	.long	0x52d
	.byte	0
	.uleb128 0x11
	.long	.LASF89
	.byte	0x8
	.byte	0x4c
	.long	0x559
	.uleb128 0x6
	.byte	0x8
	.long	0x53f
	.uleb128 0x18
	.long	0x56f
	.uleb128 0x17
	.long	0x89
	.uleb128 0x17
	.long	0x2e3
	.byte	0
	.uleb128 0x11
	.long	.LASF90
	.byte	0x8
	.byte	0x8f
	.long	0x580
	.uleb128 0x6
	.byte	0x8
	.long	0x55f
	.uleb128 0x19
	.long	0x57a
	.uleb128 0x16
	.long	0x89
	.long	0x599
	.uleb128 0x17
	.long	0x30
	.uleb128 0x17
	.long	0x2e3
	.byte	0
	.uleb128 0x11
	.long	.LASF91
	.byte	0x8
	.byte	0x92
	.long	0x5aa
	.uleb128 0x6
	.byte	0x8
	.long	0x585
	.uleb128 0x19
	.long	0x5a4
	.uleb128 0x16
	.long	0x89
	.long	0x5c8
	.uleb128 0x17
	.long	0x89
	.uleb128 0x17
	.long	0x30
	.uleb128 0x17
	.long	0x2e3
	.byte	0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x8
	.byte	0x95
	.long	0x5d9
	.uleb128 0x6
	.byte	0x8
	.long	0x5af
	.uleb128 0x19
	.long	0x5d3
	.uleb128 0x16
	.long	0x89
	.long	0x5f7
	.uleb128 0x17
	.long	0x30
	.uleb128 0x17
	.long	0x30
	.uleb128 0x17
	.long	0x2e3
	.byte	0
	.uleb128 0x11
	.long	.LASF93
	.byte	0x8
	.byte	0x99
	.long	0x608
	.uleb128 0x6
	.byte	0x8
	.long	0x5de
	.uleb128 0x19
	.long	0x602
	.uleb128 0x1a
	.uleb128 0x11
	.long	.LASF94
	.byte	0x8
	.byte	0x9d
	.long	0x61f
	.uleb128 0x6
	.byte	0x8
	.long	0x60d
	.uleb128 0x19
	.long	0x619
	.uleb128 0x1b
	.long	0x45d
	.byte	0x1
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	vp
	.uleb128 0x1b
	.long	0x46d
	.byte	0x1
	.byte	0xd
	.uleb128 0x9
	.byte	0x3
	.quad	va
	.uleb128 0x1b
	.long	0x477
	.byte	0x1
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	next
	.uleb128 0x1b
	.long	0x488
	.byte	0x1
	.byte	0xf
	.uleb128 0x9
	.byte	0x3
	.quad	org
	.uleb128 0x1b
	.long	0x493
	.byte	0x1
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	num_vertices
	.uleb128 0x1b
	.long	0x49e
	.byte	0x1
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	num_edgeparts
	.uleb128 0x1b
	.long	0x4a9
	.byte	0x1
	.byte	0x10
	.uleb128 0x9
	.byte	0x3
	.quad	stack_size
	.uleb128 0x1b
	.long	0x4b4
	.byte	0x1
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	to_lincoln
	.uleb128 0x1b
	.long	0x4bf
	.byte	0x1
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	to_off
	.uleb128 0x1b
	.long	0x4ca
	.byte	0x1
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	to_3d_out
	.uleb128 0x1b
	.long	0x4d5
	.byte	0x1
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	to_color
	.uleb128 0x1b
	.long	0x4e0
	.byte	0x1
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	voronoi
	.uleb128 0x1b
	.long	0x4eb
	.byte	0x1
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	delaunay
	.uleb128 0x1b
	.long	0x4f6
	.byte	0x1
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	interactive
	.uleb128 0x1b
	.long	0x501
	.byte	0x1
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	ahost
	.uleb128 0x1b
	.long	0x50c
	.byte	0x1
	.byte	0x12
	.uleb128 0x9
	.byte	0x3
	.quad	see
	.uleb128 0x1b
	.long	0x517
	.byte	0x1
	.byte	0x13
	.uleb128 0x9
	.byte	0x3
	.quad	NumNodes
	.uleb128 0x1b
	.long	0x522
	.byte	0x1
	.byte	0x13
	.uleb128 0x9
	.byte	0x3
	.quad	NDim
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.byte	0x15
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	flag
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x1
	.byte	0xa2
	.long	0x3c2
	.uleb128 0x9
	.byte	0x3
	.quad	next_edge
	.uleb128 0x1c
	.long	.LASF97
	.byte	0x1
	.byte	0xa2
	.long	0x3c2
	.uleb128 0x9
	.byte	0x3
	.quad	avail_edge
	.uleb128 0x1d
	.long	.LASF98
	.byte	0x1
	.value	0x214
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	loop
	.uleb128 0x1d
	.long	.LASF99
	.byte	0x1
	.value	0x214
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	randum
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.value	0x214
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	filein
	.uleb128 0x1d
	.long	.LASF101
	.byte	0x1
	.value	0x214
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	fileout
	.uleb128 0x1d
	.long	.LASF102
	.byte	0x1
	.value	0x214
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	statistics
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.value	0x2d9
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x87c
	.uleb128 0x1f
	.long	.LASF103
	.byte	0x1
	.value	0x2db
	.long	0x87c
	.long	.LLST233
	.uleb128 0x1f
	.long	.LASF104
	.byte	0x1
	.value	0x2da
	.long	0x3c2
	.long	.LLST234
	.uleb128 0x20
	.long	0xa64
	.quad	.LBB419
	.long	.Ldebug_ranges0+0x850
	.byte	0x1
	.value	0x2e0
	.long	0x86e
	.uleb128 0x21
	.long	0xa75
	.long	.LLST235
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x850
	.uleb128 0x23
	.long	0x2dd2
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL487
	.long	0x882
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x426
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x1
	.value	0x2ca
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x95b
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x1
	.value	0x2cb
	.long	0x87c
	.long	.LLST228
	.uleb128 0x1f
	.long	.LASF104
	.byte	0x1
	.value	0x2cc
	.long	0x3c2
	.long	.LLST229
	.uleb128 0x25
	.string	"nex"
	.byte	0x1
	.value	0x2ce
	.long	0x3c2
	.long	.LLST230
	.uleb128 0x26
	.long	0xa34
	.quad	.LBB403
	.long	.Ldebug_ranges0+0x7d0
	.byte	0x1
	.value	0x2d3
	.uleb128 0x21
	.long	0xa4d
	.long	.LLST231
	.uleb128 0x21
	.long	0xa41
	.long	.LLST232
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x7d0
	.uleb128 0x23
	.long	0x2e09
	.uleb128 0x27
	.long	0xa34
	.long	.Ldebug_ranges0+0x820
	.uleb128 0x28
	.long	0xa41
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x28
	.long	0xa4d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x820
	.uleb128 0x23
	.long	0x2e09
	.uleb128 0x26
	.long	0x25b1
	.quad	.LBB407
	.long	.Ldebug_ranges0+0x820
	.byte	0x1
	.value	0x2b4
	.uleb128 0x28
	.long	0x25c1
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+11922
	.sleb128 0
	.uleb128 0x29
	.quad	.LVL482
	.long	0x2ec2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF140
	.byte	0x1
	.value	0x2be
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xa34
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x1
	.value	0x2be
	.long	0x87c
	.long	.LLST223
	.uleb128 0x1f
	.long	.LASF104
	.byte	0x1
	.value	0x2be
	.long	0x3c2
	.long	.LLST224
	.uleb128 0x25
	.string	"nex"
	.byte	0x1
	.value	0x2bf
	.long	0x3c2
	.long	.LLST225
	.uleb128 0x26
	.long	0xa34
	.quad	.LBB381
	.long	.Ldebug_ranges0+0x750
	.byte	0x1
	.value	0x2c4
	.uleb128 0x21
	.long	0xa4d
	.long	.LLST226
	.uleb128 0x21
	.long	0xa41
	.long	.LLST227
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x750
	.uleb128 0x23
	.long	0x2e09
	.uleb128 0x27
	.long	0xa34
	.long	.Ldebug_ranges0+0x7a0
	.uleb128 0x28
	.long	0xa41
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x28
	.long	0xa4d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x7a0
	.uleb128 0x23
	.long	0x2e09
	.uleb128 0x26
	.long	0x25b1
	.quad	.LBB385
	.long	.Ldebug_ranges0+0x7a0
	.byte	0x1
	.value	0x2b4
	.uleb128 0x28
	.long	0x25c1
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+11922
	.sleb128 0
	.uleb128 0x29
	.quad	.LVL469
	.long	0x2ec2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF123
	.byte	0x1
	.value	0x2b0
	.byte	0x1
	.long	0xa64
	.uleb128 0x2d
	.long	.LASF107
	.byte	0x1
	.value	0x2b0
	.long	0x87c
	.uleb128 0x2d
	.long	.LASF104
	.byte	0x1
	.value	0x2b0
	.long	0x3c2
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x2b1
	.long	0x65
	.byte	0
	.uleb128 0x2f
	.long	.LASF108
	.byte	0x1
	.value	0x2ab
	.long	0x3c2
	.byte	0x1
	.long	0xa8a
	.uleb128 0x30
	.string	"x"
	.byte	0x1
	.value	0x2ab
	.long	0x87c
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.value	0x2ac
	.long	0x65
	.byte	0
	.uleb128 0x2f
	.long	.LASF109
	.byte	0x1
	.value	0x27c
	.long	0x37d
	.byte	0x1
	.long	0xb02
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.value	0x27c
	.long	0x65
	.uleb128 0x2d
	.long	.LASF64
	.byte	0x1
	.value	0x27c
	.long	0x29
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x27c
	.long	0x65
	.uleb128 0x2d
	.long	.LASF65
	.byte	0x1
	.value	0x27c
	.long	0x65
	.uleb128 0x2d
	.long	.LASF110
	.byte	0x1
	.value	0x27d
	.long	0x65
	.uleb128 0x2d
	.long	.LASF111
	.byte	0x1
	.value	0x27d
	.long	0x65
	.uleb128 0x31
	.long	.LASF112
	.byte	0x1
	.value	0x27f
	.long	0x3b7
	.uleb128 0x31
	.long	.LASF113
	.byte	0x1
	.value	0x280
	.long	0x37d
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x281
	.long	0x65
	.byte	0
	.uleb128 0x1e
	.long	.LASF114
	.byte	0x1
	.value	0x274
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xb63
	.uleb128 0x1f
	.long	.LASF115
	.byte	0x1
	.value	0x275
	.long	0x65
	.long	.LLST174
	.uleb128 0x1f
	.long	.LASF103
	.byte	0x1
	.value	0x276
	.long	0x87c
	.long	.LLST175
	.uleb128 0x24
	.quad	.LVL373
	.long	0x2ed1
	.uleb128 0x32
	.quad	.LVL375
	.long	0x2ed1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF117
	.byte	0x1
	.value	0x269
	.long	0x87c
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xbde
	.uleb128 0x1f
	.long	.LASF116
	.byte	0x1
	.value	0x269
	.long	0x65
	.long	.LLST172
	.uleb128 0x34
	.long	.LASF103
	.byte	0x1
	.value	0x26b
	.long	0x87c
	.long	.LLST173
	.uleb128 0x35
	.quad	.LVL367
	.long	0x2edc
	.long	0xbbc
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x29
	.quad	.LVL369
	.long	0x2edc
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x33
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF118
	.byte	0x1
	.value	0x249
	.long	0x65
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc8
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x1
	.value	0x249
	.long	0x65
	.long	.LLST197
	.uleb128 0x1f
	.long	.LASF120
	.byte	0x1
	.value	0x249
	.long	0xfc8
	.long	.LLST198
	.uleb128 0x34
	.long	.LASF103
	.byte	0x1
	.value	0x24a
	.long	0x87c
	.long	.LLST199
	.uleb128 0x34
	.long	.LASF113
	.byte	0x1
	.value	0x24b
	.long	0x37d
	.long	.LLST200
	.uleb128 0x34
	.long	.LASF121
	.byte	0x1
	.value	0x24b
	.long	0x37d
	.long	.LLST201
	.uleb128 0x31
	.long	.LASF104
	.byte	0x1
	.value	0x24c
	.long	0x3c2
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.value	0x24d
	.long	0x65
	.long	.LLST202
	.uleb128 0x36
	.long	.LASF122
	.byte	0x1
	.value	0x24d
	.long	0x65
	.byte	0
	.uleb128 0x20
	.long	0x25b1
	.quad	.LBB339
	.long	.Ldebug_ranges0+0x670
	.byte	0x1
	.value	0x252
	.long	0xcbf
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST203
	.uleb128 0x29
	.quad	.LVL420
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x25b1
	.quad	.LBB347
	.long	.Ldebug_ranges0+0x6c0
	.byte	0x1
	.value	0x257
	.long	0xd07
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST204
	.uleb128 0x29
	.quad	.LVL424
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xa8a
	.quad	.LBB351
	.long	.Ldebug_ranges0+0x6f0
	.byte	0x1
	.value	0x258
	.long	0xda6
	.uleb128 0x21
	.long	0xad3
	.long	.LLST205
	.uleb128 0x21
	.long	0xac7
	.long	.LLST206
	.uleb128 0x21
	.long	0xabb
	.long	.LLST207
	.uleb128 0x21
	.long	0xab1
	.long	.LLST208
	.uleb128 0x21
	.long	0xaa5
	.long	.LLST209
	.uleb128 0x21
	.long	0xa9b
	.long	.LLST205
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x6f0
	.uleb128 0x23
	.long	0x2a21
	.uleb128 0x23
	.long	0x2a26
	.uleb128 0x23
	.long	0x2a2f
	.uleb128 0x29
	.quad	.LVL426
	.long	0x2a5b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x3ff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x25b1
	.quad	.LBB355
	.long	.Ldebug_ranges0+0x720
	.byte	0x1
	.value	0x25a
	.long	0xde3
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST211
	.uleb128 0x29
	.quad	.LVL430
	.long	0x2ec2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	0x25b1
	.quad	.LBB359
	.quad	.LBE359-.LBB359
	.byte	0x1
	.value	0x25f
	.long	0xe2f
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST212
	.uleb128 0x29
	.quad	.LVL434
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	0x2194
	.quad	.LBB361
	.quad	.LBE361-.LBB361
	.byte	0x1
	.value	0x261
	.long	0xe8f
	.uleb128 0x21
	.long	0x21af
	.long	.LLST213
	.uleb128 0x21
	.long	0x21a4
	.long	.LLST214
	.uleb128 0x38
	.quad	.LBB362
	.quad	.LBE362-.LBB362
	.uleb128 0x23
	.long	0x2868
	.uleb128 0x29
	.quad	.LVL435
	.long	0x1d6d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	0xfce
	.quad	.LBB363
	.quad	.LBE363-.LBB363
	.byte	0x1
	.value	0x25e
	.long	0xf13
	.uleb128 0x21
	.long	0xfdb
	.long	.LLST215
	.uleb128 0x38
	.quad	.LBB364
	.quad	.LBE364-.LBB364
	.uleb128 0x23
	.long	0x2974
	.uleb128 0x23
	.long	0x297d
	.uleb128 0x39
	.long	0x25b1
	.quad	.LBB365
	.quad	.LBE365-.LBB365
	.byte	0x1
	.value	0x246
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST216
	.uleb128 0x29
	.quad	.LVL444
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL421
	.long	0x2f0b
	.long	0xf31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL428
	.long	0xa8a
	.long	0xf6c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 -1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 -1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x94
	.byte	0x4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.quad	.LVL431
	.long	0xb63
	.long	0xf84
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0x35
	.quad	.LVL437
	.long	0x2f16
	.long	0xfa2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL442
	.long	0x111c
	.long	0xfba
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL446
	.long	0x2f21
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8b
	.uleb128 0x2c
	.long	.LASF124
	.byte	0x1
	.value	0x242
	.byte	0x1
	.long	0xffc
	.uleb128 0x2d
	.long	.LASF121
	.byte	0x1
	.value	0x242
	.long	0x3b7
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.value	0x243
	.long	0x29
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.value	0x243
	.long	0x29
	.byte	0
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x23a
	.long	0x65
	.byte	0x1
	.long	0x101a
	.uleb128 0x2d
	.long	.LASF65
	.byte	0x1
	.value	0x23a
	.long	0x65
	.byte	0
	.uleb128 0x33
	.long	.LASF126
	.byte	0x1
	.value	0x233
	.long	0x65
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ca
	.uleb128 0x1f
	.long	.LASF65
	.byte	0x1
	.value	0x233
	.long	0x65
	.long	.LLST161
	.uleb128 0x3a
	.string	"n"
	.byte	0x1
	.value	0x233
	.long	0x65
	.long	.LLST162
	.uleb128 0x26
	.long	0xffc
	.quad	.LBB281
	.long	.Ldebug_ranges0+0x480
	.byte	0x1
	.value	0x236
	.uleb128 0x21
	.long	0x100d
	.long	.LLST163
	.uleb128 0x39
	.long	0x10ca
	.quad	.LBB283
	.quad	.LBE283-.LBB283
	.byte	0x1
	.value	0x23c
	.uleb128 0x21
	.long	0x10e5
	.long	.LLST164
	.uleb128 0x21
	.long	0x10db
	.long	.LLST163
	.uleb128 0x38
	.quad	.LBB284
	.quad	.LBE284-.LBB284
	.uleb128 0x23
	.long	0x28b7
	.uleb128 0x23
	.long	0x28c0
	.uleb128 0x23
	.long	0x28c9
	.uleb128 0x23
	.long	0x28d2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF127
	.byte	0x1
	.value	0x22a
	.long	0x65
	.byte	0x1
	.long	0x111c
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x22a
	.long	0x65
	.uleb128 0x30
	.string	"q"
	.byte	0x1
	.value	0x22a
	.long	0x65
	.uleb128 0x2e
	.string	"p1"
	.byte	0x1
	.value	0x22c
	.long	0x65
	.uleb128 0x2e
	.string	"p0"
	.byte	0x1
	.value	0x22c
	.long	0x65
	.uleb128 0x2e
	.string	"q1"
	.byte	0x1
	.value	0x22c
	.long	0x65
	.uleb128 0x2e
	.string	"q0"
	.byte	0x1
	.value	0x22c
	.long	0x65
	.byte	0
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x216
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1232
	.uleb128 0x1f
	.long	.LASF129
	.byte	0x1
	.value	0x217
	.long	0x3b7
	.long	.LLST150
	.uleb128 0x34
	.long	.LASF130
	.byte	0x1
	.value	0x219
	.long	0x3b7
	.long	.LLST151
	.uleb128 0x34
	.long	.LASF131
	.byte	0x1
	.value	0x219
	.long	0x3b7
	.long	.LLST152
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x21a
	.long	0x29
	.long	.LLST153
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.value	0x21a
	.long	0x29
	.long	.LLST154
	.uleb128 0x37
	.long	0x25b1
	.quad	.LBB275
	.quad	.LBE275-.LBB275
	.byte	0x1
	.value	0x223
	.long	0x11c5
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST155
	.uleb128 0x29
	.quad	.LVL339
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x25b1
	.quad	.LBB277
	.long	.Ldebug_ranges0+0x450
	.byte	0x1
	.value	0x21d
	.long	0x1224
	.uleb128 0x28
	.long	0x25c1
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+12074
	.sleb128 0
	.uleb128 0x3b
	.quad	.LVL344
	.long	0x2ec2
	.long	0x1208
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x32
	.quad	.LVL346
	.long	0x2ec2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL340
	.long	0x111c
	.byte	0
	.uleb128 0x33
	.long	.LASF132
	.byte	0x1
	.value	0x181
	.long	0x41b
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c1
	.uleb128 0x3a
	.string	"ldo"
	.byte	0x1
	.value	0x181
	.long	0x3c2
	.long	.LLST103
	.uleb128 0x3a
	.string	"ldi"
	.byte	0x1
	.value	0x181
	.long	0x3c2
	.long	.LLST104
	.uleb128 0x3a
	.string	"rdi"
	.byte	0x1
	.value	0x181
	.long	0x3c2
	.long	.LLST105
	.uleb128 0x3a
	.string	"rdo"
	.byte	0x1
	.value	0x181
	.long	0x3c2
	.long	.LLST106
	.uleb128 0x34
	.long	.LASF133
	.byte	0x1
	.value	0x183
	.long	0x65
	.long	.LLST107
	.uleb128 0x34
	.long	.LASF134
	.byte	0x1
	.value	0x183
	.long	0x65
	.long	.LLST108
	.uleb128 0x34
	.long	.LASF135
	.byte	0x1
	.value	0x184
	.long	0x3c2
	.long	.LLST109
	.uleb128 0x34
	.long	.LASF136
	.byte	0x1
	.value	0x184
	.long	0x3c2
	.long	.LLST110
	.uleb128 0x34
	.long	.LASF137
	.byte	0x1
	.value	0x184
	.long	0x3c2
	.long	.LLST111
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.value	0x184
	.long	0x3c2
	.long	.LLST112
	.uleb128 0x25
	.string	"t1"
	.byte	0x1
	.value	0x185
	.long	0x3b7
	.long	.LLST113
	.uleb128 0x25
	.string	"t2"
	.byte	0x1
	.value	0x185
	.long	0x3b7
	.long	.LLST114
	.uleb128 0x3c
	.quad	.LBB227
	.quad	.LBE227-.LBB227
	.long	0x13fd
	.uleb128 0x25
	.string	"t3"
	.byte	0x1
	.value	0x189
	.long	0x3b7
	.long	.LLST115
	.uleb128 0x20
	.long	0x19bf
	.quad	.LBB228
	.long	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.value	0x193
	.long	0x13a0
	.uleb128 0x21
	.long	0x19e1
	.long	.LLST116
	.uleb128 0x21
	.long	0x19d8
	.long	.LLST117
	.uleb128 0x21
	.long	0x19cf
	.long	.LLST118
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x2a0
	.uleb128 0x23
	.long	0x2753
	.uleb128 0x23
	.long	0x275c
	.uleb128 0x23
	.long	0x2764
	.uleb128 0x23
	.long	0x276c
	.uleb128 0x23
	.long	0x2774
	.uleb128 0x23
	.long	0x277c
	.uleb128 0x23
	.long	0x2785
	.uleb128 0x23
	.long	0x278c
	.uleb128 0x23
	.long	0x2793
	.uleb128 0x23
	.long	0x279a
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x19bf
	.quad	.LBB232
	.long	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.value	0x1a3
	.uleb128 0x3d
	.long	0x19e1
	.uleb128 0x3d
	.long	0x19d8
	.uleb128 0x3d
	.long	0x19cf
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x2d0
	.uleb128 0x23
	.long	0x2753
	.uleb128 0x23
	.long	0x275c
	.uleb128 0x23
	.long	0x2764
	.uleb128 0x23
	.long	0x276c
	.uleb128 0x23
	.long	0x2774
	.uleb128 0x23
	.long	0x277c
	.uleb128 0x23
	.long	0x2785
	.uleb128 0x23
	.long	0x278c
	.uleb128 0x23
	.long	0x2793
	.uleb128 0x23
	.long	0x279a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LBB236
	.quad	.LBE236-.LBB236
	.long	0x15b3
	.uleb128 0x25
	.string	"v1"
	.byte	0x1
	.value	0x1ba
	.long	0x3b7
	.long	.LLST119
	.uleb128 0x25
	.string	"v2"
	.byte	0x1
	.value	0x1ba
	.long	0x3b7
	.long	.LLST120
	.uleb128 0x25
	.string	"v3"
	.byte	0x1
	.value	0x1ba
	.long	0x3b7
	.long	.LLST121
	.uleb128 0x25
	.string	"v4"
	.byte	0x1
	.value	0x1ba
	.long	0x3b7
	.long	.LLST122
	.uleb128 0x3e
	.long	0x1460
	.uleb128 0x31
	.long	.LASF138
	.byte	0x1
	.value	0x1f6
	.long	0x41b
	.byte	0
	.uleb128 0x35
	.quad	.LVL207
	.long	0x169b
	.long	0x147e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL210
	.long	0x169b
	.long	0x149c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL211
	.long	0x169b
	.long	0x14ba
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL214
	.long	0x169b
	.long	0x14d8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL217
	.long	0x1a53
	.long	0x1502
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL219
	.long	0x22d3
	.long	0x151a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL223
	.long	0x2442
	.long	0x1532
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL234
	.long	0x21c6
	.long	0x154a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL240
	.long	0x1a53
	.long	0x1574
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL248
	.long	0x21c6
	.long	0x158c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL254
	.long	0x1a53
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL197
	.long	0x2442
	.byte	0
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.value	0x16b
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x169b
	.uleb128 0x3a
	.string	"ptr"
	.byte	0x1
	.value	0x16c
	.long	0x3c2
	.long	.LLST98
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x16e
	.long	0x65
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x16f
	.long	0x3c2
	.long	.LLST99
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.value	0x170
	.long	0x3b7
	.long	.LLST100
	.uleb128 0x20
	.long	0x25b1
	.quad	.LBB219
	.long	.Ldebug_ranges0+0x240
	.byte	0x1
	.value	0x173
	.long	0x165d
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST101
	.uleb128 0x29
	.quad	.LVL172
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x25b1
	.quad	.LBB222
	.long	.Ldebug_ranges0+0x270
	.byte	0x1
	.value	0x178
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST102
	.uleb128 0x29
	.quad	.LVL174
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF141
	.byte	0x1
	.value	0x15d
	.long	0x65
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x177d
	.uleb128 0x3a
	.string	"l"
	.byte	0x1
	.value	0x15e
	.long	0x3c2
	.long	.LLST92
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x1
	.value	0x15e
	.long	0x3c2
	.long	.LLST93
	.uleb128 0x25
	.string	"t1"
	.byte	0x1
	.value	0x160
	.long	0x3b7
	.long	.LLST94
	.uleb128 0x40
	.string	"t2"
	.byte	0x1
	.value	0x160
	.long	0x3b7
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x40
	.string	"t3"
	.byte	0x1
	.value	0x160
	.long	0x3b7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.long	0x19bf
	.quad	.LBB217
	.quad	.LBE217-.LBB217
	.byte	0x1
	.value	0x168
	.uleb128 0x21
	.long	0x19e1
	.long	.LLST95
	.uleb128 0x21
	.long	0x19d8
	.long	.LLST96
	.uleb128 0x21
	.long	0x19cf
	.long	.LLST97
	.uleb128 0x38
	.quad	.LBB218
	.quad	.LBE218-.LBB218
	.uleb128 0x23
	.long	0x2753
	.uleb128 0x23
	.long	0x275c
	.uleb128 0x23
	.long	0x2764
	.uleb128 0x23
	.long	0x276c
	.uleb128 0x23
	.long	0x2774
	.uleb128 0x23
	.long	0x277c
	.uleb128 0x23
	.long	0x2785
	.uleb128 0x23
	.long	0x278c
	.uleb128 0x23
	.long	0x2793
	.uleb128 0x23
	.long	0x279a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF142
	.byte	0x1
	.value	0x141
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x192c
	.uleb128 0x41
	.string	"e"
	.byte	0x1
	.value	0x142
	.long	0x3c2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x25
	.string	"a"
	.byte	0x1
	.value	0x144
	.long	0x3c2
	.long	.LLST81
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x144
	.long	0x3c2
	.long	.LLST82
	.uleb128 0x42
	.long	.LASF143
	.byte	0x1
	.value	0x144
	.long	0x3c2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.long	.LASF144
	.byte	0x1
	.value	0x144
	.long	0x3c2
	.long	.LLST83
	.uleb128 0x40
	.string	"a1"
	.byte	0x1
	.value	0x145
	.long	0x3b7
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x40
	.string	"b1"
	.byte	0x1
	.value	0x145
	.long	0x3b7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x20
	.long	0x192c
	.quad	.LBB203
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.value	0x14b
	.long	0x1840
	.uleb128 0x21
	.long	0x1943
	.long	.LLST84
	.uleb128 0x21
	.long	0x1939
	.long	.LLST85
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x23
	.long	0x2816
	.uleb128 0x23
	.long	0x281f
	.uleb128 0x23
	.long	0x2828
	.uleb128 0x23
	.long	0x2831
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	0x192c
	.quad	.LBB207
	.quad	.LBE207-.LBB207
	.byte	0x1
	.value	0x14c
	.long	0x1895
	.uleb128 0x21
	.long	0x1943
	.long	.LLST86
	.uleb128 0x21
	.long	0x1939
	.long	.LLST87
	.uleb128 0x38
	.quad	.LBB208
	.quad	.LBE208-.LBB208
	.uleb128 0x23
	.long	0x2816
	.uleb128 0x23
	.long	0x281f
	.uleb128 0x23
	.long	0x2828
	.uleb128 0x23
	.long	0x2831
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x192c
	.quad	.LBB209
	.long	.Ldebug_ranges0+0x200
	.byte	0x1
	.value	0x14e
	.long	0x18da
	.uleb128 0x21
	.long	0x1943
	.long	.LLST88
	.uleb128 0x21
	.long	0x1939
	.long	.LLST89
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x200
	.uleb128 0x23
	.long	0x2816
	.uleb128 0x23
	.long	0x281f
	.uleb128 0x23
	.long	0x2828
	.uleb128 0x23
	.long	0x2831
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x192c
	.quad	.LBB215
	.quad	.LBE215-.LBB215
	.byte	0x1
	.value	0x150
	.uleb128 0x21
	.long	0x1943
	.long	.LLST90
	.uleb128 0x21
	.long	0x1939
	.long	.LLST91
	.uleb128 0x38
	.quad	.LBB216
	.quad	.LBE216-.LBB216
	.uleb128 0x23
	.long	0x2816
	.uleb128 0x23
	.long	0x281f
	.uleb128 0x23
	.long	0x2828
	.uleb128 0x23
	.long	0x2831
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	.LASF194
	.byte	0x1
	.value	0x126
	.byte	0x1
	.long	0x197d
	.uleb128 0x30
	.string	"a"
	.byte	0x1
	.value	0x127
	.long	0x3c2
	.uleb128 0x30
	.string	"b"
	.byte	0x1
	.value	0x127
	.long	0x3c2
	.uleb128 0x31
	.long	.LASF145
	.byte	0x1
	.value	0x129
	.long	0x3c2
	.uleb128 0x31
	.long	.LASF146
	.byte	0x1
	.value	0x129
	.long	0x3c2
	.uleb128 0x31
	.long	.LASF147
	.byte	0x1
	.value	0x129
	.long	0x3c2
	.uleb128 0x2e
	.string	"t1"
	.byte	0x1
	.value	0x12a
	.long	0x3c2
	.byte	0
	.uleb128 0x44
	.long	.LASF148
	.byte	0x1
	.value	0x110
	.long	0x3c2
	.byte	0x1
	.long	0x19bf
	.uleb128 0x2d
	.long	.LASF149
	.byte	0x1
	.value	0x111
	.long	0x3b7
	.uleb128 0x2d
	.long	.LASF150
	.byte	0x1
	.value	0x111
	.long	0x3b7
	.uleb128 0x31
	.long	.LASF147
	.byte	0x1
	.value	0x113
	.long	0x3c2
	.uleb128 0x2e
	.string	"ans"
	.byte	0x1
	.value	0x113
	.long	0x3c2
	.byte	0
	.uleb128 0x45
	.string	"ccw"
	.byte	0x1
	.byte	0xfc
	.long	0x2f1
	.byte	0x1
	.long	0x1a53
	.uleb128 0x46
	.string	"a"
	.byte	0x1
	.byte	0xfc
	.long	0x3b7
	.uleb128 0x46
	.string	"b"
	.byte	0x1
	.byte	0xfc
	.long	0x3b7
	.uleb128 0x46
	.string	"c"
	.byte	0x1
	.byte	0xfc
	.long	0x3b7
	.uleb128 0x47
	.long	.LASF151
	.byte	0x1
	.byte	0xfd
	.long	0x29
	.uleb128 0x48
	.string	"xa"
	.byte	0x1
	.byte	0xfe
	.long	0x29
	.uleb128 0x48
	.string	"ya"
	.byte	0x1
	.byte	0xfe
	.long	0x29
	.uleb128 0x48
	.string	"xb"
	.byte	0x1
	.byte	0xfe
	.long	0x29
	.uleb128 0x48
	.string	"yb"
	.byte	0x1
	.byte	0xfe
	.long	0x29
	.uleb128 0x48
	.string	"xc"
	.byte	0x1
	.byte	0xfe
	.long	0x29
	.uleb128 0x48
	.string	"yc"
	.byte	0x1
	.byte	0xfe
	.long	0x29
	.uleb128 0x47
	.long	.LASF152
	.byte	0x1
	.byte	0xff
	.long	0x3b7
	.uleb128 0x47
	.long	.LASF153
	.byte	0x1
	.byte	0xff
	.long	0x3b7
	.uleb128 0x47
	.long	.LASF154
	.byte	0x1
	.byte	0xff
	.long	0x3b7
	.byte	0
	.uleb128 0x49
	.long	.LASF155
	.byte	0x1
	.byte	0xe2
	.long	0x2f1
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b8d
	.uleb128 0x4a
	.string	"a"
	.byte	0x1
	.byte	0xe4
	.long	0x3b7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4a
	.string	"b"
	.byte	0x1
	.byte	0xe4
	.long	0x3b7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4a
	.string	"c"
	.byte	0x1
	.byte	0xe4
	.long	0x3b7
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4a
	.string	"d"
	.byte	0x1
	.byte	0xe4
	.long	0x3b7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4b
	.string	"adx"
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.long	.LLST65
	.uleb128 0x4b
	.string	"ady"
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.long	.LLST66
	.uleb128 0x4c
	.string	"bdx"
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.uleb128 0x1
	.byte	0x67
	.uleb128 0x4c
	.string	"bdy"
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x4b
	.string	"cdx"
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.long	.LLST67
	.uleb128 0x4b
	.string	"cdy"
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.long	.LLST68
	.uleb128 0x4b
	.string	"dx"
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.long	.LLST69
	.uleb128 0x4b
	.string	"dy"
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.long	.LLST70
	.uleb128 0x4d
	.long	.LASF156
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.uleb128 0x2
	.byte	0x75
	.sleb128 16
	.uleb128 0x4d
	.long	.LASF157
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0x4d
	.long	.LASF158
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x4d
	.long	.LASF159
	.byte	0x1
	.byte	0xe6
	.long	0x29
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x4e
	.long	.LASF151
	.byte	0x1
	.byte	0xe7
	.long	0x29
	.long	.LLST71
	.uleb128 0x4d
	.long	.LASF152
	.byte	0x1
	.byte	0xe8
	.long	0x3b7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4d
	.long	.LASF153
	.byte	0x1
	.byte	0xe8
	.long	0x3b7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4d
	.long	.LASF154
	.byte	0x1
	.byte	0xe8
	.long	0x3b7
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4d
	.long	.LASF160
	.byte	0x1
	.byte	0xe8
	.long	0x3b7
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4f
	.long	.LASF161
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.long	0x1ba3
	.uleb128 0x46
	.string	"e"
	.byte	0x1
	.byte	0xd6
	.long	0x3c2
	.byte	0
	.uleb128 0x49
	.long	.LASF162
	.byte	0x1
	.byte	0xc2
	.long	0x3c2
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d17
	.uleb128 0x4b
	.string	"ans"
	.byte	0x1
	.byte	0xc3
	.long	0x3c2
	.long	.LLST21
	.uleb128 0x50
	.long	0x1d17
	.quad	.LBB157
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xc6
	.long	0x1cbd
	.uleb128 0x21
	.long	0x1d32
	.long	.LLST22
	.uleb128 0x21
	.long	0x1d27
	.long	.LLST22
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x23
	.long	0x2629
	.uleb128 0x23
	.long	0x2632
	.uleb128 0x51
	.long	0x1d17
	.quad	.LBB159
	.quad	.LBE159-.LBB159
	.long	0x1ca1
	.uleb128 0x52
	.long	0x1d27
	.byte	0x80
	.uleb128 0x52
	.long	0x1d32
	.byte	0x80
	.uleb128 0x38
	.quad	.LBB160
	.quad	.LBE160-.LBB160
	.uleb128 0x23
	.long	0x2629
	.uleb128 0x23
	.long	0x2632
	.uleb128 0x53
	.long	0x25b1
	.quad	.LBB161
	.quad	.LBE161-.LBB161
	.byte	0x1
	.byte	0xb6
	.long	0x1c8b
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST24
	.uleb128 0x29
	.quad	.LVL37
	.long	0x2ec2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LVL38
	.long	0x2f4a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LVL31
	.long	0x2f56
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.long	0x25b1
	.quad	.LBB164
	.quad	.LBE164-.LBB164
	.byte	0x1
	.byte	0xc9
	.long	0x1d02
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST25
	.uleb128 0x29
	.quad	.LVL35
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LVL36
	.long	0x2f4a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x54
	.long	.LASF163
	.byte	0x1
	.byte	0xad
	.long	0x89
	.byte	0x1
	.long	0x1d54
	.uleb128 0x55
	.long	.LASF164
	.byte	0x1
	.byte	0xad
	.long	0x65
	.uleb128 0x55
	.long	.LASF165
	.byte	0x1
	.byte	0xad
	.long	0x65
	.uleb128 0x47
	.long	.LASF166
	.byte	0x1
	.byte	0xb2
	.long	0x8b
	.uleb128 0x47
	.long	.LASF167
	.byte	0x1
	.byte	0xb4
	.long	0x89
	.byte	0
	.uleb128 0x56
	.long	.LASF195
	.byte	0x1
	.byte	0xa6
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x57
	.long	.LASF168
	.byte	0x1
	.byte	0x66
	.long	0x41b
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x216d
	.uleb128 0x58
	.long	.LASF129
	.byte	0x1
	.byte	0x66
	.long	0x3b7
	.long	.LLST123
	.uleb128 0x58
	.long	.LASF121
	.byte	0x1
	.byte	0x66
	.long	0x3b7
	.long	.LLST124
	.uleb128 0x48
	.string	"a"
	.byte	0x1
	.byte	0x68
	.long	0x3c2
	.uleb128 0x48
	.string	"b"
	.byte	0x1
	.byte	0x68
	.long	0x3c2
	.uleb128 0x4b
	.string	"c"
	.byte	0x1
	.byte	0x68
	.long	0x3c2
	.long	.LLST125
	.uleb128 0x4b
	.string	"ldo"
	.byte	0x1
	.byte	0x68
	.long	0x3c2
	.long	.LLST126
	.uleb128 0x4b
	.string	"rdi"
	.byte	0x1
	.byte	0x68
	.long	0x3c2
	.long	.LLST127
	.uleb128 0x4b
	.string	"ldi"
	.byte	0x1
	.byte	0x68
	.long	0x3c2
	.long	.LLST128
	.uleb128 0x4b
	.string	"rdo"
	.byte	0x1
	.byte	0x68
	.long	0x3c2
	.long	.LLST129
	.uleb128 0x4e
	.long	.LASF138
	.byte	0x1
	.byte	0x69
	.long	0x41b
	.long	.LLST130
	.uleb128 0x4e
	.long	.LASF169
	.byte	0x1
	.byte	0x6a
	.long	0x3b7
	.long	.LLST131
	.uleb128 0x47
	.long	.LASF170
	.byte	0x1
	.byte	0x6a
	.long	0x3b7
	.uleb128 0x4b
	.string	"s1"
	.byte	0x1
	.byte	0x6b
	.long	0x3b7
	.long	.LLST132
	.uleb128 0x4b
	.string	"s2"
	.byte	0x1
	.byte	0x6b
	.long	0x3b7
	.long	.LLST133
	.uleb128 0x4b
	.string	"s3"
	.byte	0x1
	.byte	0x6b
	.long	0x3b7
	.long	.LLST134
	.uleb128 0x4e
	.long	.LASF171
	.byte	0x1
	.byte	0x6d
	.long	0x41b
	.long	.LLST135
	.uleb128 0x4e
	.long	.LASF172
	.byte	0x1
	.byte	0x6d
	.long	0x41b
	.long	.LLST136
	.uleb128 0x50
	.long	0x197d
	.quad	.LBB237
	.long	.Ldebug_ranges0+0x300
	.byte	0x1
	.byte	0x85
	.long	0x1ebf
	.uleb128 0x21
	.long	0x199a
	.long	.LLST137
	.uleb128 0x21
	.long	0x198e
	.long	.LLST138
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x300
	.uleb128 0x23
	.long	0x27cf
	.uleb128 0x23
	.long	0x27d8
	.uleb128 0x24
	.quad	.LVL322
	.long	0x1ba3
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x197d
	.quad	.LBB241
	.long	.Ldebug_ranges0+0x340
	.byte	0x1
	.byte	0x8e
	.long	0x1f06
	.uleb128 0x21
	.long	0x199a
	.long	.LLST139
	.uleb128 0x21
	.long	0x198e
	.long	.LLST132
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x340
	.uleb128 0x23
	.long	0x27cf
	.uleb128 0x23
	.long	0x27d8
	.uleb128 0x24
	.quad	.LVL265
	.long	0x1ba3
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x197d
	.quad	.LBB244
	.long	.Ldebug_ranges0+0x370
	.byte	0x1
	.byte	0x8f
	.long	0x1f4d
	.uleb128 0x21
	.long	0x199a
	.long	.LLST141
	.uleb128 0x21
	.long	0x198e
	.long	.LLST142
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x370
	.uleb128 0x23
	.long	0x27cf
	.uleb128 0x23
	.long	0x27d8
	.uleb128 0x24
	.quad	.LVL270
	.long	0x1ba3
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x192c
	.quad	.LBB254
	.long	.Ldebug_ranges0+0x3d0
	.byte	0x1
	.byte	0x90
	.long	0x1f8d
	.uleb128 0x3d
	.long	0x1943
	.uleb128 0x21
	.long	0x1939
	.long	.LLST143
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x3d0
	.uleb128 0x23
	.long	0x2816
	.uleb128 0x23
	.long	0x281f
	.uleb128 0x23
	.long	0x2828
	.uleb128 0x23
	.long	0x2831
	.byte	0
	.byte	0
	.uleb128 0x53
	.long	0x19bf
	.quad	.LBB261
	.quad	.LBE261-.LBB261
	.byte	0x1
	.byte	0x92
	.long	0x2004
	.uleb128 0x21
	.long	0x19e1
	.long	.LLST144
	.uleb128 0x21
	.long	0x19d8
	.long	.LLST145
	.uleb128 0x3d
	.long	0x19cf
	.uleb128 0x38
	.quad	.LBB262
	.quad	.LBE262-.LBB262
	.uleb128 0x23
	.long	0x2753
	.uleb128 0x23
	.long	0x275c
	.uleb128 0x23
	.long	0x2764
	.uleb128 0x23
	.long	0x276c
	.uleb128 0x23
	.long	0x2774
	.uleb128 0x23
	.long	0x277c
	.uleb128 0x23
	.long	0x2785
	.uleb128 0x23
	.long	0x278c
	.uleb128 0x23
	.long	0x2793
	.uleb128 0x23
	.long	0x279a
	.byte	0
	.byte	0
	.uleb128 0x53
	.long	0x216d
	.quad	.LBB263
	.quad	.LBE263-.LBB263
	.byte	0x1
	.byte	0x72
	.long	0x2040
	.uleb128 0x21
	.long	0x217d
	.long	.LLST146
	.uleb128 0x38
	.quad	.LBB264
	.quad	.LBE264-.LBB264
	.uleb128 0x23
	.long	0x25f2
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x19bf
	.quad	.LBB265
	.long	.Ldebug_ranges0+0x410
	.byte	0x1
	.byte	0x99
	.long	0x209f
	.uleb128 0x3d
	.long	0x19e1
	.uleb128 0x3d
	.long	0x19d8
	.uleb128 0x3d
	.long	0x19cf
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x410
	.uleb128 0x23
	.long	0x2753
	.uleb128 0x23
	.long	0x275c
	.uleb128 0x23
	.long	0x2764
	.uleb128 0x23
	.long	0x276c
	.uleb128 0x23
	.long	0x2774
	.uleb128 0x23
	.long	0x277c
	.uleb128 0x23
	.long	0x2785
	.uleb128 0x23
	.long	0x278c
	.uleb128 0x23
	.long	0x2793
	.uleb128 0x23
	.long	0x279a
	.byte	0
	.byte	0
	.uleb128 0x53
	.long	0x25b1
	.quad	.LBB273
	.quad	.LBE273-.LBB273
	.byte	0x1
	.byte	0x81
	.long	0x20df
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST147
	.uleb128 0x29
	.quad	.LVL333
	.long	0x2ec2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL283
	.long	0x2442
	.long	0x20fd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL298
	.long	0x1d6d
	.long	0x2115
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL299
	.long	0x1d6d
	.long	0x212d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL302
	.long	0x1232
	.long	0x214b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL320
	.long	0x21c6
	.uleb128 0x29
	.quad	.LVL334
	.long	0x2f4a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x59
	.long	.LASF173
	.byte	0x1
	.byte	0x59
	.long	0x3b7
	.byte	0x1
	.long	0x2194
	.uleb128 0x55
	.long	.LASF129
	.byte	0x1
	.byte	0x5a
	.long	0x3b7
	.uleb128 0x47
	.long	.LASF147
	.byte	0x1
	.byte	0x5c
	.long	0x3b7
	.byte	0
	.uleb128 0x59
	.long	.LASF174
	.byte	0x1
	.byte	0x4b
	.long	0x3c2
	.byte	0x1
	.long	0x21c6
	.uleb128 0x55
	.long	.LASF129
	.byte	0x1
	.byte	0x51
	.long	0x3b7
	.uleb128 0x55
	.long	.LASF121
	.byte	0x1
	.byte	0x51
	.long	0x3b7
	.uleb128 0x47
	.long	.LASF138
	.byte	0x1
	.byte	0x53
	.long	0x41b
	.byte	0
	.uleb128 0x5a
	.long	.LASF175
	.byte	0x1
	.byte	0x39
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x22d3
	.uleb128 0x5b
	.string	"e"
	.byte	0x1
	.byte	0x3b
	.long	0x3c2
	.long	.LLST0
	.uleb128 0x4b
	.string	"f"
	.byte	0x1
	.byte	0x3d
	.long	0x3c2
	.long	.LLST1
	.uleb128 0x53
	.long	0x192c
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.byte	0x1
	.byte	0x40
	.long	0x2261
	.uleb128 0x21
	.long	0x1943
	.long	.LLST2
	.uleb128 0x21
	.long	0x1939
	.long	.LLST3
	.uleb128 0x38
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.uleb128 0x5c
	.long	0x194d
	.long	.LLST4
	.uleb128 0x5c
	.long	0x1959
	.long	.LLST5
	.uleb128 0x5c
	.long	0x1965
	.long	.LLST6
	.uleb128 0x5c
	.long	0x1971
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x192c
	.quad	.LBB133
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x42
	.long	0x22b5
	.uleb128 0x21
	.long	0x1943
	.long	.LLST8
	.uleb128 0x21
	.long	0x1939
	.long	.LLST9
	.uleb128 0x22
	.long	.Ldebug_ranges0+0
	.uleb128 0x5c
	.long	0x194d
	.long	.LLST10
	.uleb128 0x5c
	.long	0x1959
	.long	.LLST11
	.uleb128 0x5c
	.long	0x1965
	.long	.LLST12
	.uleb128 0x5c
	.long	0x1971
	.long	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x5d
	.long	0x1b8d
	.quad	.LBB136
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x43
	.uleb128 0x21
	.long	0x1b99
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	.LASF176
	.byte	0x1
	.byte	0x28
	.long	0x3c2
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2442
	.uleb128 0x5b
	.string	"a"
	.byte	0x1
	.byte	0x29
	.long	0x3c2
	.long	.LLST45
	.uleb128 0x5b
	.string	"b"
	.byte	0x1
	.byte	0x29
	.long	0x3c2
	.long	.LLST46
	.uleb128 0x4b
	.string	"t1"
	.byte	0x1
	.byte	0x2b
	.long	0x3b7
	.long	.LLST47
	.uleb128 0x4b
	.string	"t2"
	.byte	0x1
	.byte	0x2b
	.long	0x3b7
	.long	.LLST48
	.uleb128 0x48
	.string	"ans"
	.byte	0x1
	.byte	0x2c
	.long	0x3c2
	.uleb128 0x4e
	.long	.LASF177
	.byte	0x1
	.byte	0x2c
	.long	0x3c2
	.long	.LLST49
	.uleb128 0x50
	.long	0x197d
	.quad	.LBB185
	.long	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0x32
	.long	0x2391
	.uleb128 0x21
	.long	0x199a
	.long	.LLST50
	.uleb128 0x21
	.long	0x198e
	.long	.LLST51
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x5c
	.long	0x19a6
	.long	.LLST52
	.uleb128 0x5e
	.long	0x19b2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x24
	.quad	.LVL71
	.long	0x1ba3
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x192c
	.quad	.LBB189
	.long	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0x33
	.long	0x23e1
	.uleb128 0x21
	.long	0x1943
	.long	.LLST53
	.uleb128 0x3d
	.long	0x1939
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x170
	.uleb128 0x5c
	.long	0x194d
	.long	.LLST54
	.uleb128 0x5c
	.long	0x1959
	.long	.LLST55
	.uleb128 0x5c
	.long	0x1965
	.long	.LLST56
	.uleb128 0x5c
	.long	0x1971
	.long	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x5f
	.long	0x192c
	.quad	.LBB201
	.quad	.LBE201-.LBB201
	.byte	0x1
	.byte	0x34
	.uleb128 0x21
	.long	0x1943
	.long	.LLST58
	.uleb128 0x21
	.long	0x1939
	.long	.LLST59
	.uleb128 0x38
	.quad	.LBB202
	.quad	.LBE202-.LBB202
	.uleb128 0x5c
	.long	0x194d
	.long	.LLST60
	.uleb128 0x5c
	.long	0x1959
	.long	.LLST61
	.uleb128 0x5c
	.long	0x1965
	.long	.LLST62
	.uleb128 0x5c
	.long	0x1971
	.long	.LLST63
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	.LASF178
	.byte	0x1
	.byte	0x17
	.long	0x3c2
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x25b1
	.uleb128 0x5b
	.string	"a"
	.byte	0x1
	.byte	0x18
	.long	0x3c2
	.long	.LLST26
	.uleb128 0x5b
	.string	"b"
	.byte	0x1
	.byte	0x18
	.long	0x3c2
	.long	.LLST27
	.uleb128 0x4b
	.string	"t1"
	.byte	0x1
	.byte	0x1a
	.long	0x3b7
	.long	.LLST28
	.uleb128 0x4b
	.string	"t2"
	.byte	0x1
	.byte	0x1a
	.long	0x3b7
	.long	.LLST29
	.uleb128 0x48
	.string	"ans"
	.byte	0x1
	.byte	0x1b
	.long	0x3c2
	.uleb128 0x4e
	.long	.LASF179
	.byte	0x1
	.byte	0x1b
	.long	0x3c2
	.long	.LLST30
	.uleb128 0x50
	.long	0x197d
	.quad	.LBB167
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x21
	.long	0x2500
	.uleb128 0x21
	.long	0x199a
	.long	.LLST31
	.uleb128 0x21
	.long	0x198e
	.long	.LLST32
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x5c
	.long	0x19a6
	.long	.LLST33
	.uleb128 0x5e
	.long	0x19b2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x24
	.quad	.LVL44
	.long	0x1ba3
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x192c
	.quad	.LBB171
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0x22
	.long	0x2550
	.uleb128 0x21
	.long	0x1943
	.long	.LLST34
	.uleb128 0x3d
	.long	0x1939
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x5c
	.long	0x194d
	.long	.LLST35
	.uleb128 0x5c
	.long	0x1959
	.long	.LLST36
	.uleb128 0x5c
	.long	0x1965
	.long	.LLST37
	.uleb128 0x5c
	.long	0x1971
	.long	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x5f
	.long	0x192c
	.quad	.LBB183
	.quad	.LBE183-.LBB183
	.byte	0x1
	.byte	0x23
	.uleb128 0x21
	.long	0x1943
	.long	.LLST39
	.uleb128 0x21
	.long	0x1939
	.long	.LLST40
	.uleb128 0x38
	.quad	.LBB184
	.quad	.LBE184-.LBB184
	.uleb128 0x5c
	.long	0x194d
	.long	.LLST41
	.uleb128 0x5c
	.long	0x1959
	.long	.LLST42
	.uleb128 0x5c
	.long	0x1965
	.long	.LLST43
	.uleb128 0x5c
	.long	0x1971
	.long	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x60
	.long	.LASF180
	.byte	0x2
	.byte	0x66
	.long	0x65
	.byte	0x3
	.long	0x25ce
	.uleb128 0x55
	.long	.LASF181
	.byte	0x2
	.byte	0x66
	.long	0x2b6
	.uleb128 0x61
	.byte	0
	.uleb128 0x62
	.long	0x216d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x25fc
	.uleb128 0x21
	.long	0x217d
	.long	.LLST15
	.uleb128 0x5c
	.long	0x2188
	.long	.LLST16
	.byte	0
	.uleb128 0x62
	.long	0x1d17
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x26fe
	.uleb128 0x21
	.long	0x1d27
	.long	.LLST17
	.uleb128 0x21
	.long	0x1d32
	.long	.LLST18
	.uleb128 0x5c
	.long	0x1d3d
	.long	.LLST19
	.uleb128 0x23
	.long	0x1d48
	.uleb128 0x51
	.long	0x1d17
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.long	0x26d5
	.uleb128 0x28
	.long	0x1d27
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uleb128 0x28
	.long	0x1d32
	.uleb128 0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uleb128 0x38
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.uleb128 0x23
	.long	0x2629
	.uleb128 0x23
	.long	0x2632
	.uleb128 0x53
	.long	0x25b1
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.byte	0x1
	.byte	0xb6
	.long	0x26bf
	.uleb128 0x21
	.long	0x25c1
	.long	.LLST20
	.uleb128 0x29
	.quad	.LVL26
	.long	0x2ec2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LVL27
	.long	0x2f4a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LVL24
	.long	0x2f56
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x1b8d
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2723
	.uleb128 0x21
	.long	0x1b99
	.long	.LLST64
	.byte	0
	.uleb128 0x62
	.long	0x19bf
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a2
	.uleb128 0x28
	.long	0x19cf
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.long	0x19d8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.long	0x19e1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5c
	.long	0x19ea
	.long	.LLST72
	.uleb128 0x5e
	.long	0x19f5
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x5e
	.long	0x19ff
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x5e
	.long	0x1a09
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5e
	.long	0x1a13
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x5c
	.long	0x1a1d
	.long	.LLST73
	.uleb128 0x5e
	.long	0x1a27
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x5e
	.long	0x1a31
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5e
	.long	0x1a3c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5e
	.long	0x1a47
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x62
	.long	0x197d
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x27ed
	.uleb128 0x21
	.long	0x198e
	.long	.LLST74
	.uleb128 0x21
	.long	0x199a
	.long	.LLST75
	.uleb128 0x5c
	.long	0x19a6
	.long	.LLST76
	.uleb128 0x5e
	.long	0x19b2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x24
	.quad	.LVL113
	.long	0x1ba3
	.byte	0
	.uleb128 0x62
	.long	0x192c
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x283b
	.uleb128 0x28
	.long	0x1939
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x28
	.long	0x1943
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5c
	.long	0x194d
	.long	.LLST77
	.uleb128 0x5c
	.long	0x1959
	.long	.LLST78
	.uleb128 0x5c
	.long	0x1965
	.long	.LLST79
	.uleb128 0x5c
	.long	0x1971
	.long	.LLST80
	.byte	0
	.uleb128 0x62
	.long	0x2194
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x288a
	.uleb128 0x21
	.long	0x21a4
	.long	.LLST148
	.uleb128 0x21
	.long	0x21af
	.long	.LLST149
	.uleb128 0x23
	.long	0x21ba
	.uleb128 0x29
	.quad	.LVL336
	.long	0x1d6d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0x10ca
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x28da
	.uleb128 0x21
	.long	0x10db
	.long	.LLST156
	.uleb128 0x21
	.long	0x10e5
	.long	.LLST157
	.uleb128 0x5c
	.long	0x10ef
	.long	.LLST158
	.uleb128 0x5c
	.long	0x10fa
	.long	.LLST159
	.uleb128 0x5c
	.long	0x1105
	.long	.LLST160
	.uleb128 0x5e
	.long	0x1110
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x62
	.long	0xffc
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2950
	.uleb128 0x21
	.long	0x100d
	.long	.LLST166
	.uleb128 0x39
	.long	0x10ca
	.quad	.LBB287
	.quad	.LBE287-.LBB287
	.byte	0x1
	.value	0x23c
	.uleb128 0x21
	.long	0x10e5
	.long	.LLST167
	.uleb128 0x21
	.long	0x10db
	.long	.LLST168
	.uleb128 0x38
	.quad	.LBB288
	.quad	.LBE288-.LBB288
	.uleb128 0x23
	.long	0x28b7
	.uleb128 0x23
	.long	0x28c0
	.uleb128 0x23
	.long	0x28c9
	.uleb128 0x23
	.long	0x28d2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0xfce
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x29d0
	.uleb128 0x21
	.long	0xfdb
	.long	.LLST169
	.uleb128 0x5c
	.long	0xfe7
	.long	.LLST170
	.uleb128 0x5c
	.long	0xff1
	.long	.LLST171
	.uleb128 0x39
	.long	0x25b1
	.quad	.LBB289
	.quad	.LBE289-.LBB289
	.byte	0x1
	.value	0x246
	.uleb128 0x28
	.long	0x25c1
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.uleb128 0x32
	.quad	.LVL364
	.long	0x2ee7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	0xa8a
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a5b
	.uleb128 0x21
	.long	0xa9b
	.long	.LLST176
	.uleb128 0x21
	.long	0xaa5
	.long	.LLST177
	.uleb128 0x21
	.long	0xab1
	.long	.LLST178
	.uleb128 0x21
	.long	0xabb
	.long	.LLST179
	.uleb128 0x21
	.long	0xac7
	.long	.LLST180
	.uleb128 0x21
	.long	0xad3
	.long	.LLST181
	.uleb128 0x23
	.long	0xadf
	.uleb128 0x5c
	.long	0xaeb
	.long	.LLST182
	.uleb128 0x23
	.long	0xaf7
	.uleb128 0x35
	.quad	.LVL381
	.long	0x2a5b
	.long	0x2a4d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.quad	.LVL383
	.long	0x2f21
	.byte	0
	.uleb128 0x62
	.long	0xa8a
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x2db0
	.uleb128 0x21
	.long	0xa9b
	.long	.LLST183
	.uleb128 0x21
	.long	0xaa5
	.long	.LLST184
	.uleb128 0x21
	.long	0xab1
	.long	.LLST185
	.uleb128 0x21
	.long	0xabb
	.long	.LLST186
	.uleb128 0x21
	.long	0xac7
	.long	.LLST187
	.uleb128 0x21
	.long	0xad3
	.long	.LLST188
	.uleb128 0x5c
	.long	0x2a21
	.long	.LLST189
	.uleb128 0x23
	.long	0x2a26
	.uleb128 0x5c
	.long	0x2a2f
	.long	.LLST190
	.uleb128 0x20
	.long	0xffc
	.quad	.LBB291
	.long	.Ldebug_ranges0+0x4b0
	.byte	0x1
	.value	0x296
	.long	0x2b26
	.uleb128 0x21
	.long	0x100d
	.long	.LLST191
	.uleb128 0x26
	.long	0x10ca
	.quad	.LBB293
	.long	.Ldebug_ranges0+0x4f0
	.byte	0x1
	.value	0x23c
	.uleb128 0x21
	.long	0x10e5
	.long	.LLST192
	.uleb128 0x21
	.long	0x10db
	.long	.LLST193
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x4f0
	.uleb128 0x23
	.long	0x28b7
	.uleb128 0x23
	.long	0x28c0
	.uleb128 0x23
	.long	0x28c9
	.uleb128 0x23
	.long	0x28d2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xffc
	.quad	.LBB303
	.long	.Ldebug_ranges0+0x530
	.byte	0x1
	.value	0x297
	.long	0x2b89
	.uleb128 0x21
	.long	0x100d
	.long	.LLST194
	.uleb128 0x26
	.long	0x10ca
	.quad	.LBB305
	.long	.Ldebug_ranges0+0x5d0
	.byte	0x1
	.value	0x23c
	.uleb128 0x21
	.long	0x10e5
	.long	.LLST195
	.uleb128 0x21
	.long	0x10db
	.long	.LLST196
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x5d0
	.uleb128 0x23
	.long	0x28b7
	.uleb128 0x23
	.long	0x28c0
	.uleb128 0x23
	.long	0x28c9
	.uleb128 0x23
	.long	0x28d2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL389
	.long	0xa8a
	.long	0x2bcf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x8
	.byte	0x91
	.sleb128 -100
	.byte	0x94
	.byte	0x4
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL394
	.long	0x2edc
	.long	0x2be7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x24
	.quad	.LVL400
	.long	0x2f7b
	.uleb128 0x24
	.quad	.LVL401
	.long	0x2f86
	.uleb128 0x35
	.quad	.LVL406
	.long	0xa8a
	.long	0x2da2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 -1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x169
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x4f
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.value	0x16bd
	.byte	0x1e
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
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
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
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
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x5
	.byte	0x91
	.sleb128 -100
	.byte	0x94
	.byte	0x4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL415
	.long	0x2f21
	.byte	0
	.uleb128 0x62
	.long	0xa64
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ddc
	.uleb128 0x28
	.long	0xa75
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5c
	.long	0xa7f
	.long	.LLST217
	.byte	0
	.uleb128 0x62
	.long	0xa34
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e92
	.uleb128 0x21
	.long	0xa41
	.long	.LLST218
	.uleb128 0x21
	.long	0xa4d
	.long	.LLST219
	.uleb128 0x5c
	.long	0xa59
	.long	.LLST220
	.uleb128 0x63
	.long	0xa34
	.quad	.LBB371
	.quad	.LBE371-.LBB371
	.uleb128 0x21
	.long	0xa41
	.long	.LLST221
	.uleb128 0x21
	.long	0xa4d
	.long	.LLST222
	.uleb128 0x38
	.quad	.LBB372
	.quad	.LBE372-.LBB372
	.uleb128 0x23
	.long	0x2e09
	.uleb128 0x39
	.long	0x25b1
	.quad	.LBB373
	.quad	.LBE373-.LBB373
	.byte	0x1
	.value	0x2b4
	.uleb128 0x28
	.long	0x25c1
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+11922
	.sleb128 0
	.uleb128 0x32
	.quad	.LVL456
	.long	0x2ec2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x2e
	.byte	0x9e
	.uleb128 0x2c
	.byte	0x63
	.byte	0x61
	.byte	0x6e
	.byte	0x6e
	.byte	0x6f
	.byte	0x74
	.byte	0x20
	.byte	0x70
	.byte	0x75
	.byte	0x73
	.byte	0x68
	.byte	0x20
	.byte	0x6f
	.byte	0x6e
	.byte	0x74
	.byte	0x6f
	.byte	0x20
	.byte	0x73
	.byte	0x74
	.byte	0x61
	.byte	0x63
	.byte	0x6b
	.byte	0x3a
	.byte	0x20
	.byte	0x73
	.byte	0x74
	.byte	0x61
	.byte	0x63
	.byte	0x6b
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0x20
	.byte	0x74
	.byte	0x6f
	.byte	0x6f
	.byte	0x20
	.byte	0x6c
	.byte	0x61
	.byte	0x72
	.byte	0x67
	.byte	0x65
	.byte	0xa
	.byte	0
	.uleb128 0x65
	.long	.LASF196
	.long	.LASF197
	.byte	0xb
	.byte	0
	.long	.LASF196
	.uleb128 0x66
	.long	.LASF182
	.long	.LASF182
	.byte	0x8
	.byte	0x3d
	.uleb128 0x66
	.long	.LASF183
	.long	.LASF183
	.byte	0x8
	.byte	0x26
	.uleb128 0x66
	.long	.LASF184
	.long	.LASF184
	.byte	0x2
	.byte	0x57
	.uleb128 0x64
	.uleb128 0x17
	.byte	0x9e
	.uleb128 0x15
	.byte	0x44
	.byte	0x6f
	.byte	0x6e
	.byte	0x65
	.byte	0x20
	.byte	0x67
	.byte	0x65
	.byte	0x74
	.byte	0x74
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0x20
	.byte	0x70
	.byte	0x6f
	.byte	0x69
	.byte	0x6e
	.byte	0x74
	.byte	0x73
	.byte	0xa
	.byte	0
	.uleb128 0x66
	.long	.LASF185
	.long	.LASF185
	.byte	0x7
	.byte	0x6e
	.uleb128 0x66
	.long	.LASF186
	.long	.LASF186
	.byte	0x7
	.byte	0x6f
	.uleb128 0x67
	.long	.LASF198
	.long	.LASF198
	.uleb128 0x64
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x6
	.byte	0x4e
	.byte	0x55
	.byte	0x4c
	.byte	0x4c
	.byte	0xa
	.byte	0
	.uleb128 0x64
	.uleb128 0x14
	.byte	0x9e
	.uleb128 0x12
	.byte	0x6d
	.byte	0x79
	.byte	0x61
	.byte	0x6c
	.byte	0x69
	.byte	0x67
	.byte	0x6e
	.byte	0x28
	.byte	0x29
	.byte	0x20
	.byte	0x66
	.byte	0x61
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0x64
	.byte	0xa
	.byte	0
	.uleb128 0x68
	.long	.LASF187
	.long	.LASF187
	.byte	0x9
	.value	0x266
	.uleb128 0x66
	.long	.LASF188
	.long	.LASF188
	.byte	0x8
	.byte	0x40
	.uleb128 0x64
	.uleb128 0x18
	.byte	0x9e
	.uleb128 0x16
	.byte	0x45
	.byte	0x52
	.byte	0x52
	.byte	0x4f
	.byte	0x52
	.byte	0x3a
	.byte	0x20
	.byte	0x4f
	.byte	0x6e
	.byte	0x6c
	.byte	0x79
	.byte	0x20
	.byte	0x31
	.byte	0x20
	.byte	0x70
	.byte	0x6f
	.byte	0x69
	.byte	0x6e
	.byte	0x74
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x69
	.string	"log"
	.string	"log"
	.byte	0xa
	.byte	0x68
	.uleb128 0x69
	.string	"exp"
	.string	"exp"
	.byte	0xa
	.byte	0x5f
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x5
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x5
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
	.uleb128 0x30
	.uleb128 0x5
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
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
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5d
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
	.uleb128 0x5e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x62
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
	.uleb128 0x63
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x65
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
	.uleb128 0x66
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
	.uleb128 0x67
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
	.uleb128 0x68
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
	.uleb128 0x69
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST233:
	.quad	.LVL483
	.quad	.LVL484
	.value	0x1
	.byte	0x55
	.quad	.LVL484
	.quad	.LVL488
	.value	0x1
	.byte	0x53
	.quad	.LVL488
	.quad	.LFE53
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST234:
	.quad	.LVL483
	.quad	.LVL484
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST235:
	.quad	.LVL484
	.quad	.LVL485
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST228:
	.quad	.LVL470
	.quad	.LVL472
	.value	0x1
	.byte	0x55
	.quad	.LVL472
	.quad	.LVL479
	.value	0x1
	.byte	0x56
	.quad	.LVL479
	.quad	.LVL481
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL481
	.quad	.LFE52
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST229:
	.quad	.LVL470
	.quad	.LVL472
	.value	0x1
	.byte	0x54
	.quad	.LVL472
	.quad	.LVL479
	.value	0x1
	.byte	0x5c
	.quad	.LVL479
	.quad	.LVL481
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL481
	.quad	.LFE52
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST230:
	.quad	.LVL471
	.quad	.LVL480
	.value	0x1
	.byte	0x53
	.quad	.LVL481
	.quad	.LFE52
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST231:
	.quad	.LVL473
	.quad	.LVL477
	.value	0x1
	.byte	0x53
	.quad	.LVL481
	.quad	.LFE52
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST232:
	.quad	.LVL473
	.quad	.LVL477
	.value	0x1
	.byte	0x56
	.quad	.LVL481
	.quad	.LFE52
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST223:
	.quad	.LVL457
	.quad	.LVL459
	.value	0x1
	.byte	0x55
	.quad	.LVL459
	.quad	.LVL466
	.value	0x1
	.byte	0x56
	.quad	.LVL466
	.quad	.LVL468
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL468
	.quad	.LFE51
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST224:
	.quad	.LVL457
	.quad	.LVL459
	.value	0x1
	.byte	0x54
	.quad	.LVL459
	.quad	.LVL466
	.value	0x1
	.byte	0x5c
	.quad	.LVL466
	.quad	.LVL468
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL468
	.quad	.LFE51
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST225:
	.quad	.LVL458
	.quad	.LVL467
	.value	0x1
	.byte	0x53
	.quad	.LVL468
	.quad	.LFE51
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST226:
	.quad	.LVL460
	.quad	.LVL464
	.value	0x1
	.byte	0x53
	.quad	.LVL468
	.quad	.LFE51
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST227:
	.quad	.LVL460
	.quad	.LVL464
	.value	0x1
	.byte	0x56
	.quad	.LVL468
	.quad	.LFE51
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST174:
	.quad	.LVL371
	.quad	.LVL372
	.value	0x1
	.byte	0x55
	.quad	.LVL372
	.quad	.LFE47
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST175:
	.quad	.LVL371
	.quad	.LVL373-1
	.value	0x1
	.byte	0x54
	.quad	.LVL373-1
	.quad	.LVL374
	.value	0x1
	.byte	0x53
	.quad	.LVL374
	.quad	.LVL375-1
	.value	0x1
	.byte	0x55
	.quad	.LVL375-1
	.quad	.LFE47
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST172:
	.quad	.LVL365
	.quad	.LVL366
	.value	0x1
	.byte	0x55
	.quad	.LVL366
	.quad	.LFE46
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST173:
	.quad	.LVL368
	.quad	.LVL369-1
	.value	0x1
	.byte	0x50
	.quad	.LVL369-1
	.quad	.LVL370
	.value	0x1
	.byte	0x56
	.quad	.LVL370
	.quad	.LFE46
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST197:
	.quad	.LVL416
	.quad	.LVL418
	.value	0x1
	.byte	0x55
	.quad	.LVL418
	.quad	.LVL420-1
	.value	0x1
	.byte	0x51
	.quad	.LVL420-1
	.quad	.LVL422
	.value	0x1
	.byte	0x53
	.quad	.LVL422
	.quad	.LFE45
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST198:
	.quad	.LVL416
	.quad	.LVL417
	.value	0x1
	.byte	0x54
	.quad	.LVL417
	.quad	.LVL427
	.value	0x1
	.byte	0x56
	.quad	.LVL427
	.quad	.LFE45
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST199:
	.quad	.LVL432
	.quad	.LVL433
	.value	0x1
	.byte	0x50
	.quad	.LVL433
	.quad	.LVL439
	.value	0x1
	.byte	0x5d
	.quad	.LVL440
	.quad	.LVL441
	.value	0x1
	.byte	0x50
	.quad	.LVL441
	.quad	.LFE45
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST200:
	.quad	.LVL429
	.quad	.LVL437
	.value	0x5
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.quad	.LVL440
	.quad	.LVL445
	.value	0x5
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.quad	0
	.quad	0
.LLST201:
	.quad	.LVL427
	.quad	.LVL437
	.value	0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.quad	.LVL440
	.quad	.LVL445
	.value	0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.quad	0
	.quad	0
.LLST202:
	.quad	.LVL422
	.quad	.LVL423
	.value	0x1
	.byte	0x50
	.quad	.LVL423
	.quad	.LVL424-1
	.value	0x1
	.byte	0x51
	.quad	.LVL424-1
	.quad	.LVL438
	.value	0x1
	.byte	0x53
	.quad	.LVL440
	.quad	.LFE45
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST203:
	.quad	.LVL419
	.quad	.LVL420
	.value	0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.quad	0
	.quad	0
.LLST204:
	.quad	.LVL422
	.quad	.LVL424
	.value	0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST205:
	.quad	.LVL424
	.quad	.LVL427
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST206:
	.quad	.LVL424
	.quad	.LVL425
	.value	0xe
	.byte	0x3
	.quad	NumNodes
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL425
	.quad	.LVL426-1
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST207:
	.quad	.LVL424
	.quad	.LVL427
	.value	0x4
	.byte	0xa
	.value	0x3ff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST208:
	.quad	.LVL424
	.quad	.LVL427
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST209:
	.quad	.LVL424
	.quad	.LVL427
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	0
	.quad	0
.LLST211:
	.quad	.LVL429
	.quad	.LVL430
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+12018
	.sleb128 0
	.quad	0
	.quad	0
.LLST212:
	.quad	.LVL433
	.quad	.LVL434
	.value	0xa
	.byte	0x3
	.quad	.LC13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST213:
	.quad	.LVL434
	.quad	.LVL435
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST214:
	.quad	.LVL434
	.quad	.LVL435
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST215:
	.quad	.LVL443
	.quad	.LVL445
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST216:
	.quad	.LVL443
	.quad	.LVL444
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST161:
	.quad	.LVL354
	.quad	.LVL356
	.value	0x1
	.byte	0x55
	.quad	.LVL358
	.quad	.LFE42
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST162:
	.quad	.LVL354
	.quad	.LVL355
	.value	0x1
	.byte	0x54
	.quad	.LVL355
	.quad	.LVL357
	.value	0x1
	.byte	0x54
	.quad	.LVL357
	.quad	.LVL358
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST163:
	.quad	.LVL355
	.quad	.LVL356
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST164:
	.quad	.LVL355
	.quad	.LVL356
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST150:
	.quad	.LVL337
	.quad	.LVL338
	.value	0x1
	.byte	0x55
	.quad	.LVL338
	.quad	.LVL344
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL344
	.quad	.LVL345
	.value	0x1
	.byte	0x55
	.quad	.LVL345
	.quad	.LFE40
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST151:
	.quad	.LVL339
	.quad	.LVL340-1
	.value	0x2
	.byte	0x73
	.sleb128 24
	.quad	0
	.quad	0
.LLST152:
	.quad	.LVL341
	.quad	.LVL343
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST153:
	.quad	.LVL338
	.quad	.LVL339-1
	.value	0x2
	.byte	0x73
	.sleb128 0
	.quad	0
	.quad	0
.LLST154:
	.quad	.LVL338
	.quad	.LVL339-1
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST155:
	.quad	.LVL338
	.quad	.LVL339
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST103:
	.quad	.LVL176
	.quad	.LVL177
	.value	0x1
	.byte	0x55
	.quad	.LVL177
	.quad	.LVL259
	.value	0x1
	.byte	0x56
	.quad	.LVL259
	.quad	.LFE39
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST104:
	.quad	.LVL176
	.quad	.LVL178
	.value	0x1
	.byte	0x54
	.quad	.LVL178
	.quad	.LVL184
	.value	0x1
	.byte	0x54
	.quad	.LVL184
	.quad	.LVL185
	.value	0x4
	.byte	0x70
	.sleb128 -96
	.byte	0x9f
	.quad	.LVL186
	.quad	.LVL191
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST105:
	.quad	.LVL176
	.quad	.LVL178
	.value	0x1
	.byte	0x51
	.quad	.LVL178
	.quad	.LVL192
	.value	0x1
	.byte	0x55
	.quad	.LVL192
	.quad	.LVL194
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	.LVL194
	.quad	.LVL195
	.value	0x1
	.byte	0x55
	.quad	.LVL195
	.quad	.LVL197-1
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST106:
	.quad	.LVL176
	.quad	.LVL178
	.value	0x1
	.byte	0x52
	.quad	.LVL178
	.quad	.LVL258
	.value	0x1
	.byte	0x53
	.quad	.LVL258
	.quad	.LFE39
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST107:
	.quad	.LVL214
	.quad	.LVL216
	.value	0x1
	.byte	0x50
	.quad	.LVL256
	.quad	.LVL257
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST108:
	.quad	.LVL212
	.quad	.LVL213
	.value	0x1
	.byte	0x50
	.quad	.LVL213
	.quad	.LVL219-1
	.value	0x1
	.byte	0x58
	.quad	.LVL222
	.quad	.LVL223-1
	.value	0x1
	.byte	0x58
	.quad	.LVL256
	.quad	.LFE39
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST109:
	.quad	.LVL198
	.quad	.LVL199
	.value	0x1
	.byte	0x50
	.quad	.LVL199
	.quad	.LVL200
	.value	0x1
	.byte	0x51
	.quad	.LVL200
	.quad	.LVL201
	.value	0x1
	.byte	0x52
	.quad	.LVL201
	.quad	.LVL219-1
	.value	0x1
	.byte	0x5b
	.quad	.LVL221
	.quad	.LVL223-1
	.value	0x1
	.byte	0x5b
	.quad	.LVL224
	.quad	.LVL225
	.value	0x1
	.byte	0x50
	.quad	.LVL225
	.quad	.LFE39
	.value	0x1
	.byte	0x5b
	.quad	0
	.quad	0
.LLST110:
	.quad	.LVL202
	.quad	.LVL220
	.value	0x1
	.byte	0x5d
	.quad	.LVL221
	.quad	.LVL248
	.value	0x1
	.byte	0x5d
	.quad	.LVL248
	.quad	.LVL252
	.value	0x1
	.byte	0x5a
	.quad	.LVL252
	.quad	.LVL261
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST111:
	.quad	.LVL203
	.quad	.LVL226
	.value	0x1
	.byte	0x5c
	.quad	.LVL227
	.quad	.LVL234
	.value	0x1
	.byte	0x5c
	.quad	.LVL234
	.quad	.LVL239
	.value	0x1
	.byte	0x5a
	.quad	.LVL239
	.quad	.LVL260
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST112:
	.quad	.LVL206
	.quad	.LVL208
	.value	0x1
	.byte	0x5a
	.quad	.LVL209
	.quad	.LVL219-1
	.value	0x1
	.byte	0x5a
	.quad	.LVL222
	.quad	.LVL223-1
	.value	0x1
	.byte	0x5a
	.quad	.LVL228
	.quad	.LVL235
	.value	0x1
	.byte	0x5a
	.quad	.LVL235
	.quad	.LVL239
	.value	0x1
	.byte	0x50
	.quad	.LVL239
	.quad	.LVL249
	.value	0x1
	.byte	0x5a
	.quad	.LVL249
	.quad	.LVL253
	.value	0x1
	.byte	0x50
	.quad	.LVL253
	.quad	.LFE39
	.value	0x1
	.byte	0x5a
	.quad	0
	.quad	0
.LLST113:
	.quad	.LVL179
	.quad	.LVL183
	.value	0x1
	.byte	0x52
	.quad	.LVL187
	.quad	.LVL191
	.value	0x1
	.byte	0x52
	.quad	.LVL203
	.quad	.LVL205
	.value	0x2
	.byte	0x7b
	.sleb128 0
	.quad	0
	.quad	0
.LLST114:
	.quad	.LVL180
	.quad	.LVL183
	.value	0x1
	.byte	0x50
	.quad	.LVL188
	.quad	.LVL191
	.value	0x1
	.byte	0x50
	.quad	.LVL193
	.quad	.LVL196
	.value	0x1
	.byte	0x50
	.quad	.LVL196
	.quad	.LVL197-1
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	.LVL203
	.quad	.LVL205
	.value	0x2
	.byte	0x71
	.sleb128 0
	.quad	0
	.quad	0
.LLST115:
	.quad	.LVL179
	.quad	.LVL197-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST116:
	.quad	.LVL180
	.quad	.LVL182
	.value	0x1
	.byte	0x51
	.quad	.LVL188
	.quad	.LVL190
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST117:
	.quad	.LVL180
	.quad	.LVL182
	.value	0x1
	.byte	0x50
	.quad	.LVL188
	.quad	.LVL190
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST118:
	.quad	.LVL180
	.quad	.LVL182
	.value	0x1
	.byte	0x52
	.quad	.LVL188
	.quad	.LVL190
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST119:
	.quad	.LVL215
	.quad	.LVL217-1
	.value	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.quad	.LVL230
	.quad	.LVL233
	.value	0x1
	.byte	0x55
	.quad	.LVL238
	.quad	.LVL242
	.value	0x1
	.byte	0x55
	.quad	.LVL244
	.quad	.LVL247
	.value	0x1
	.byte	0x55
	.quad	.LVL250
	.quad	.LVL256
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST120:
	.quad	.LVL215
	.quad	.LVL217-1
	.value	0x2
	.byte	0x7d
	.sleb128 0
	.quad	.LVL217-1
	.quad	.LVL218
	.value	0x1
	.byte	0x54
	.quad	.LVL231
	.quad	.LVL234-1
	.value	0x1
	.byte	0x54
	.quad	.LVL236
	.quad	.LVL242
	.value	0x1
	.byte	0x54
	.quad	.LVL245
	.quad	.LVL248-1
	.value	0x1
	.byte	0x54
	.quad	.LVL253
	.quad	.LVL256
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST121:
	.quad	.LVL215
	.quad	.LVL217-1
	.value	0x2
	.byte	0x7c
	.sleb128 0
	.quad	.LVL217-1
	.quad	.LVL218
	.value	0x1
	.byte	0x51
	.quad	.LVL231
	.quad	.LVL234-1
	.value	0x1
	.byte	0x51
	.quad	.LVL237
	.quad	.LVL242
	.value	0x1
	.byte	0x51
	.quad	.LVL244
	.quad	.LVL248-1
	.value	0x1
	.byte	0x51
	.quad	.LVL251
	.quad	.LVL256
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST122:
	.quad	.LVL215
	.quad	.LVL217-1
	.value	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.quad	.LVL229
	.quad	.LVL232
	.value	0x1
	.byte	0x5e
	.quad	.LVL232
	.quad	.LVL234-1
	.value	0x1
	.byte	0x52
	.quad	.LVL234-1
	.quad	.LVL241
	.value	0x1
	.byte	0x5e
	.quad	.LVL241
	.quad	.LVL242
	.value	0x1
	.byte	0x52
	.quad	.LVL243
	.quad	.LVL246
	.value	0x1
	.byte	0x5e
	.quad	.LVL246
	.quad	.LVL248-1
	.value	0x1
	.byte	0x52
	.quad	.LVL248-1
	.quad	.LVL255
	.value	0x1
	.byte	0x5e
	.quad	.LVL255
	.quad	.LVL256
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST98:
	.quad	.LVL169
	.quad	.LVL170
	.value	0x1
	.byte	0x55
	.quad	.LVL170
	.quad	.LVL171
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL171
	.quad	.LVL172
	.value	0x1
	.byte	0x53
	.quad	.LVL172
	.quad	.LVL175
	.value	0x4
	.byte	0x7c
	.sleb128 -128
	.byte	0x9f
	.quad	.LVL175
	.quad	.LFE38
	.value	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9
	.byte	0x80
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST99:
	.quad	.LVL173
	.quad	.LVL174-1
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST100:
	.quad	.LVL173
	.quad	.LVL174-1
	.value	0x2
	.byte	0x72
	.sleb128 0
	.quad	0
	.quad	0
.LLST101:
	.quad	.LVL171
	.quad	.LVL172
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST102:
	.quad	.LVL173
	.quad	.LVL174
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST92:
	.quad	.LVL160
	.quad	.LVL162
	.value	0x1
	.byte	0x55
	.quad	.LVL162
	.quad	.LFE37
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST93:
	.quad	.LVL160
	.quad	.LVL163
	.value	0x1
	.byte	0x54
	.quad	.LVL163
	.quad	.LFE37
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST94:
	.quad	.LVL161
	.quad	.LVL168
	.value	0x1
	.byte	0x50
	.quad	.LVL168
	.quad	.LFE37
	.value	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.quad	0
	.quad	0
.LLST95:
	.quad	.LVL165
	.quad	.LVL167
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST96:
	.quad	.LVL165
	.quad	.LVL167
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST97:
	.quad	.LVL165
	.quad	.LVL167
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL126
	.quad	.LVL141
	.value	0x1
	.byte	0x51
	.quad	.LVL141
	.quad	.LVL150
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL127
	.quad	.LVL149
	.value	0x1
	.byte	0x50
	.quad	.LVL149
	.quad	.LVL151
	.value	0x1
	.byte	0x58
	.quad	.LVL151
	.quad	.LVL152
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST83:
	.quad	.LVL140
	.quad	.LVL147
	.value	0x1
	.byte	0x54
	.quad	.LVL153
	.quad	.LFE36
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST84:
	.quad	.LVL127
	.quad	.LVL133
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL127
	.quad	.LVL133
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST86:
	.quad	.LVL133
	.quad	.LVL139
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST87:
	.quad	.LVL133
	.quad	.LVL139
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST88:
	.quad	.LVL140
	.quad	.LVL147
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST89:
	.quad	.LVL140
	.quad	.LVL148
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST90:
	.quad	.LVL153
	.quad	.LVL159
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST91:
	.quad	.LVL153
	.quad	.LVL159
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL99
	.quad	.LVL105
	.value	0x1
	.byte	0x61
	.quad	.LVL105
	.quad	.LFE32
	.value	0xc
	.byte	0x75
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL99
	.quad	.LVL104
	.value	0x1
	.byte	0x63
	.quad	.LVL104
	.quad	.LFE32
	.value	0xc
	.byte	0x75
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x72
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL99
	.quad	.LVL102
	.value	0x1
	.byte	0x62
	.quad	.LVL102
	.quad	.LFE32
	.value	0xc
	.byte	0x71
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL100
	.quad	.LVL103
	.value	0x1
	.byte	0x64
	.quad	.LVL103
	.quad	.LFE32
	.value	0xc
	.byte	0x71
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x72
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL96
	.quad	.LVL98
	.value	0x1
	.byte	0x64
	.quad	.LVL98
	.quad	.LFE32
	.value	0x2
	.byte	0x72
	.sleb128 0
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL97
	.quad	.LVL101
	.value	0x1
	.byte	0x65
	.quad	.LVL101
	.quad	.LFE32
	.value	0x2
	.byte	0x72
	.sleb128 8
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL106
	.quad	.LVL107
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL28
	.quad	.LVL30
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL30
	.quad	.LVL33
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.quad	.LVL36
	.quad	.LFE30
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL36
	.quad	.LVL37
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+12084
	.sleb128 0
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL34
	.quad	.LVL35
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST123:
	.quad	.LVL262
	.quad	.LVL263
	.value	0x1
	.byte	0x55
	.quad	.LVL263
	.quad	.LVL290
	.value	0x1
	.byte	0x5d
	.quad	.LVL290
	.quad	.LVL292
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL292
	.quad	.LVL314
	.value	0x1
	.byte	0x5d
	.quad	.LVL314
	.quad	.LVL316
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL316
	.quad	.LVL329
	.value	0x1
	.byte	0x5d
	.quad	.LVL329
	.quad	.LVL331
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	.LVL331
	.quad	.LVL332
	.value	0x1
	.byte	0x55
	.quad	.LVL332
	.quad	.LFE27
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST124:
	.quad	.LVL262
	.quad	.LVL265-1
	.value	0x1
	.byte	0x54
	.quad	.LVL265-1
	.quad	.LVL291
	.value	0x1
	.byte	0x5e
	.quad	.LVL291
	.quad	.LVL292
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL292
	.quad	.LVL297
	.value	0x1
	.byte	0x54
	.quad	.LVL297
	.quad	.LVL315
	.value	0x1
	.byte	0x5e
	.quad	.LVL315
	.quad	.LVL316
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL316
	.quad	.LVL321
	.value	0x1
	.byte	0x5e
	.quad	.LVL321
	.quad	.LVL322-1
	.value	0x1
	.byte	0x54
	.quad	.LVL322-1
	.quad	.LVL330
	.value	0x1
	.byte	0x5e
	.quad	.LVL330
	.quad	.LVL331
	.value	0x2
	.byte	0x72
	.sleb128 0
	.quad	.LVL331
	.quad	.LVL333-1
	.value	0x1
	.byte	0x54
	.quad	.LVL333-1
	.quad	.LFE27
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST125:
	.quad	.LVL283
	.quad	.LVL288
	.value	0x1
	.byte	0x50
	.quad	.LVL316
	.quad	.LVL319
	.value	0x1
	.byte	0x50
	.quad	.LVL319
	.quad	.LVL320-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST126:
	.quad	.LVL300
	.quad	.LVL302-1
	.value	0x1
	.byte	0x50
	.quad	.LVL303
	.quad	.LVL304
	.value	0x1
	.byte	0x50
	.quad	.LVL304
	.quad	.LVL305
	.value	0x1
	.byte	0x56
	.quad	.LVL305
	.quad	.LVL306
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	.LVL306
	.quad	.LVL313
	.value	0x1
	.byte	0x56
	.quad	.LVL313
	.quad	.LVL316
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST127:
	.quad	.LVL300
	.quad	.LVL303
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST128:
	.quad	.LVL300
	.quad	.LVL301
	.value	0x1
	.byte	0x51
	.quad	.LVL301
	.quad	.LVL302-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST129:
	.quad	.LVL300
	.quad	.LVL302-1
	.value	0x1
	.byte	0x52
	.quad	.LVL302-1
	.quad	.LVL303
	.value	0x1
	.byte	0x5c
	.quad	.LVL303
	.quad	.LVL309
	.value	0x1
	.byte	0x51
	.quad	.LVL310
	.quad	.LVL316
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST130:
	.quad	.LVL303
	.quad	.LVL304
	.value	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x51
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL304
	.quad	.LVL307
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x51
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL307
	.quad	.LVL308
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x52
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL308
	.quad	.LVL311
	.value	0x5
	.byte	0x93
	.uleb128 0x8
	.byte	0x52
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL316
	.quad	.LVL318
	.value	0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL318
	.quad	.LVL321
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x53
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL326
	.quad	.LVL327
	.value	0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST131:
	.quad	.LVL296
	.quad	.LVL297
	.value	0x1
	.byte	0x54
	.quad	.LVL297
	.quad	.LVL315
	.value	0x1
	.byte	0x5e
	.quad	.LVL315
	.quad	.LVL316
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST132:
	.quad	.LVL264
	.quad	.LVL265-1
	.value	0x2
	.byte	0x7d
	.sleb128 24
	.quad	0
	.quad	0
.LLST133:
	.quad	.LVL264
	.quad	.LVL288
	.value	0x1
	.byte	0x5d
	.quad	.LVL316
	.quad	.LVL321
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST134:
	.quad	.LVL264
	.quad	.LVL265-1
	.value	0x1
	.byte	0x54
	.quad	.LVL265-1
	.quad	.LVL288
	.value	0x1
	.byte	0x5e
	.quad	.LVL316
	.quad	.LVL321
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST135:
	.quad	.LVL300
	.quad	.LVL302-1
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x8
	.byte	0x54
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST136:
	.quad	.LVL300
	.quad	.LVL303
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x8
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST137:
	.quad	.LVL321
	.quad	.LVL322-1
	.value	0x1
	.byte	0x54
	.quad	.LVL322-1
	.quad	.LVL326
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST138:
	.quad	.LVL321
	.quad	.LVL326
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST139:
	.quad	.LVL264
	.quad	.LVL269
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST141:
	.quad	.LVL269
	.quad	.LVL275
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST142:
	.quad	.LVL269
	.quad	.LVL275
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST143:
	.quad	.LVL275
	.quad	.LVL282
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST144:
	.quad	.LVL283
	.quad	.LVL286
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST145:
	.quad	.LVL283
	.quad	.LVL286
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST146:
	.quad	.LVL293
	.quad	.LVL294
	.value	0x1
	.byte	0x53
	.quad	.LVL295
	.quad	.LVL296
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST147:
	.quad	.LVL331
	.quad	.LVL333
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+12129
	.sleb128 0
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL8
	.value	0x1
	.byte	0x55
	.quad	.LVL8
	.quad	.LFE24
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1
	.quad	.LVL9
	.value	0x1
	.byte	0x50
	.quad	.LVL10
	.quad	.LVL16
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1
	.quad	.LVL7
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1
	.quad	.LVL7
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL2
	.quad	.LVL5
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL3
	.quad	.LVL6
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL4
	.quad	.LVL5
	.value	0x1
	.byte	0x58
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL4
	.quad	.LVL6
	.value	0x1
	.byte	0x59
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL10
	.quad	.LVL16
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL10
	.quad	.LVL17
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL11
	.quad	.LVL14
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL12
	.quad	.LVL15
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x58
	.quad	.LVL14
	.quad	.LVL17
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL13
	.quad	.LVL15
	.value	0x1
	.byte	0x59
	.quad	.LVL15
	.quad	.LVL17
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL17
	.quad	.LVL18
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL66
	.quad	.LVL67
	.value	0x1
	.byte	0x55
	.quad	.LVL67
	.quad	.LVL71-1
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	.LVL71-1
	.quad	.LVL90
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x27
	.byte	0x9f
	.quad	.LVL90
	.quad	.LFE23
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL66
	.quad	.LVL68
	.value	0x1
	.byte	0x54
	.quad	.LVL68
	.quad	.LFE23
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL69
	.quad	.LVL92
	.value	0x1
	.byte	0x5d
	.quad	.LVL92
	.quad	.LFE23
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL69
	.quad	.LVL91
	.value	0x1
	.byte	0x5c
	.quad	.LVL91
	.quad	.LFE23
	.value	0x3
	.byte	0x70
	.sleb128 64
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL70
	.quad	.LVL89
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL70
	.quad	.LVL75
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL70
	.quad	.LVL75
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL71
	.quad	.LVL72
	.value	0x1
	.byte	0x50
	.quad	.LVL72
	.quad	.LVL73
	.value	0x1
	.byte	0x52
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x54
	.quad	.LVL74
	.quad	.LVL75
	.value	0x4
	.byte	0x70
	.sleb128 64
	.byte	0x9f
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL75
	.quad	.LVL82
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL76
	.quad	.LVL81
	.value	0x1
	.byte	0x52
	.quad	.LVL81
	.quad	.LVL82
	.value	0xc
	.byte	0x70
	.sleb128 32
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL77
	.quad	.LVL80
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL78
	.quad	.LVL81
	.value	0x1
	.byte	0x54
	.quad	.LVL81
	.quad	.LVL82
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL78
	.quad	.LVL79
	.value	0x1
	.byte	0x55
	.quad	.LVL81
	.quad	.LVL82
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL82
	.quad	.LVL88
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL82
	.quad	.LVL88
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL83
	.quad	.LVL87
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL84
	.quad	.LVL86
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL85
	.quad	.LVL87
	.value	0x1
	.byte	0x54
	.quad	.LVL87
	.quad	.LVL88
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL85
	.quad	.LVL87
	.value	0x1
	.byte	0x58
	.quad	.LVL87
	.quad	.LVL88
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL39
	.quad	.LVL41
	.value	0x1
	.byte	0x55
	.quad	.LVL41
	.quad	.LVL42
	.value	0x4
	.byte	0x70
	.sleb128 -96
	.byte	0x9f
	.quad	.LVL42
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL39
	.quad	.LVL44-1
	.value	0x1
	.byte	0x54
	.quad	.LVL44-1
	.quad	.LVL63
	.value	0x1
	.byte	0x56
	.quad	.LVL63
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL40
	.quad	.LVL65
	.value	0x1
	.byte	0x5d
	.quad	.LVL65
	.quad	.LFE22
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL43
	.quad	.LVL64
	.value	0x1
	.byte	0x5c
	.quad	.LVL64
	.quad	.LFE22
	.value	0x3
	.byte	0x70
	.sleb128 64
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL43
	.quad	.LVL62
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL43
	.quad	.LVL48
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL43
	.quad	.LVL48
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL44
	.quad	.LVL45
	.value	0x1
	.byte	0x50
	.quad	.LVL45
	.quad	.LVL46
	.value	0x1
	.byte	0x52
	.quad	.LVL46
	.quad	.LVL47
	.value	0x1
	.byte	0x54
	.quad	.LVL47
	.quad	.LVL48
	.value	0x4
	.byte	0x70
	.sleb128 64
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL48
	.quad	.LVL55
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL49
	.quad	.LVL54
	.value	0x1
	.byte	0x52
	.quad	.LVL54
	.quad	.LVL55
	.value	0xc
	.byte	0x70
	.sleb128 32
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL50
	.quad	.LVL53
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL51
	.quad	.LVL54
	.value	0x1
	.byte	0x54
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL51
	.quad	.LVL52
	.value	0x1
	.byte	0x55
	.quad	.LVL54
	.quad	.LVL55
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL55
	.quad	.LVL61
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL55
	.quad	.LVL61
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL56
	.quad	.LVL60
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL57
	.quad	.LVL59
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL58
	.quad	.LVL60
	.value	0x1
	.byte	0x54
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL58
	.quad	.LVL60
	.value	0x1
	.byte	0x58
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x55
	.quad	.LVL20
	.quad	.LFE26
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x51
	.quad	.LVL22
	.quad	.LFE26
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL23
	.quad	.LVL24-1
	.value	0x1
	.byte	0x55
	.quad	.LVL24-1
	.quad	.LFE29
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL23
	.quad	.LVL24-1
	.value	0x1
	.byte	0x54
	.quad	.LVL24-1
	.quad	.LFE29
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL24
	.quad	.LVL26-1
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL25
	.quad	.LVL26
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+12084
	.sleb128 0
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL93
	.quad	.LVL94
	.value	0x1
	.byte	0x55
	.quad	.LVL94
	.quad	.LFE31
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL110
	.quad	.LVL111
	.value	0x28
	.byte	0x75
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0x1c
	.byte	0x74
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x1c
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x29
	.byte	0x1c
	.byte	0x75
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL111
	.quad	.LFE33
	.value	0x2c
	.byte	0x75
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x71
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1c
	.byte	0x74
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x1c
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x71
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0x1c
	.byte	0x75
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x29
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL109
	.quad	.LVL111
	.value	0x1
	.byte	0x63
	.quad	.LVL111
	.quad	.LFE33
	.value	0x2
	.byte	0x71
	.sleb128 0
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL112
	.quad	.LVL113-1
	.value	0x1
	.byte	0x55
	.quad	.LVL113-1
	.quad	.LVL118
	.value	0x1
	.byte	0x56
	.quad	.LVL118
	.quad	.LFE34
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL112
	.quad	.LVL113-1
	.value	0x1
	.byte	0x54
	.quad	.LVL113-1
	.quad	.LVL117
	.value	0x1
	.byte	0x53
	.quad	.LVL117
	.quad	.LFE34
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL113
	.quad	.LVL114
	.value	0x1
	.byte	0x50
	.quad	.LVL114
	.quad	.LVL115
	.value	0x1
	.byte	0x52
	.quad	.LVL115
	.quad	.LVL116
	.value	0x1
	.byte	0x55
	.quad	.LVL116
	.quad	.LFE34
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL120
	.quad	.LVL123
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL121
	.quad	.LVL124
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL122
	.quad	.LVL123
	.value	0x1
	.byte	0x52
	.quad	.LVL123
	.quad	.LFE35
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL122
	.quad	.LVL124
	.value	0x1
	.byte	0x58
	.quad	.LVL124
	.quad	.LFE35
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST148:
	.quad	.LVL335
	.quad	.LVL336-1
	.value	0x1
	.byte	0x55
	.quad	.LVL336-1
	.quad	.LFE25
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST149:
	.quad	.LVL335
	.quad	.LVL336-1
	.value	0x1
	.byte	0x54
	.quad	.LVL336-1
	.quad	.LFE25
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST156:
	.quad	.LVL347
	.quad	.LVL348
	.value	0x1
	.byte	0x55
	.quad	.LVL348
	.quad	.LFE41
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST157:
	.quad	.LVL347
	.quad	.LVL351
	.value	0x1
	.byte	0x54
	.quad	.LVL351
	.quad	.LFE41
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST158:
	.quad	.LVL347
	.quad	.LVL348
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.value	0x2710
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL348
	.quad	.LFE41
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
.LLST159:
	.quad	.LVL349
	.quad	.LVL350
	.value	0x1
	.byte	0x55
	.quad	.LVL350
	.quad	.LVL352
	.value	0x1
	.byte	0x59
	.quad	.LVL352
	.quad	.LVL353
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
	.quad	.LVL353
	.quad	.LFE41
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
.LLST160:
	.quad	.LVL349
	.quad	.LVL351
	.value	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.value	0x2710
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL351
	.quad	.LFE41
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
.LLST166:
	.quad	.LVL359
	.quad	.LVL360
	.value	0x1
	.byte	0x55
	.quad	.LVL360
	.quad	.LVL361
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL361
	.quad	.LFE43
	.value	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST167:
	.quad	.LVL359
	.quad	.LVL361
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST168:
	.quad	.LVL359
	.quad	.LVL360
	.value	0x1
	.byte	0x55
	.quad	.LVL360
	.quad	.LVL361
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST169:
	.quad	.LVL362
	.quad	.LVL363
	.value	0x1
	.byte	0x55
	.quad	.LVL363
	.quad	.LFE44
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST170:
	.quad	.LVL362
	.quad	.LVL363
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	.LVL363
	.quad	.LVL364-1
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST171:
	.quad	.LVL362
	.quad	.LVL363
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	.LVL363
	.quad	.LVL364-1
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST176:
	.quad	.LVL376
	.quad	.LVL379
	.value	0x1
	.byte	0x54
	.quad	.LVL379
	.quad	.LVL380
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL381-1
	.value	0x1
	.byte	0x54
	.quad	.LVL381-1
	.quad	.LFE48
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST177:
	.quad	.LVL376
	.quad	.LVL379
	.value	0x1
	.byte	0x61
	.quad	.LVL379
	.quad	.LVL380
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL381-1
	.value	0x1
	.byte	0x61
	.quad	.LVL381-1
	.quad	.LFE48
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST178:
	.quad	.LVL376
	.quad	.LVL379
	.value	0x1
	.byte	0x51
	.quad	.LVL379
	.quad	.LVL380
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL381-1
	.value	0x1
	.byte	0x51
	.quad	.LVL381-1
	.quad	.LFE48
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST179:
	.quad	.LVL376
	.quad	.LVL379
	.value	0x1
	.byte	0x52
	.quad	.LVL379
	.quad	.LVL380
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL381-1
	.value	0x1
	.byte	0x52
	.quad	.LVL381-1
	.quad	.LFE48
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST180:
	.quad	.LVL376
	.quad	.LVL379
	.value	0x1
	.byte	0x58
	.quad	.LVL379
	.quad	.LVL380
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL381-1
	.value	0x1
	.byte	0x58
	.quad	.LVL381-1
	.quad	.LFE48
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST181:
	.quad	.LVL376
	.quad	.LVL379
	.value	0x1
	.byte	0x59
	.quad	.LVL379
	.quad	.LVL380
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL381-1
	.value	0x1
	.byte	0x59
	.quad	.LVL381-1
	.quad	.LFE48
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LLST182:
	.quad	.LVL378
	.quad	.LVL379
	.value	0xc
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.byte	0x61
	.byte	0x93
	.uleb128 0x8
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.quad	0
	.quad	0
.LLST183:
	.quad	.LVL384
	.quad	.LVL386
	.value	0x1
	.byte	0x54
	.quad	.LVL386
	.quad	.LFE55
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST184:
	.quad	.LVL384
	.quad	.LVL389-1
	.value	0x1
	.byte	0x61
	.quad	.LVL389-1
	.quad	.LFE55
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x29
	.byte	0x9f
	.quad	0
	.quad	0
.LLST185:
	.quad	.LVL384
	.quad	.LVL389-1
	.value	0x1
	.byte	0x51
	.quad	.LVL389-1
	.quad	.LVL390
	.value	0x1
	.byte	0x56
	.quad	.LVL390
	.quad	.LVL393
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL393
	.quad	.LVL410
	.value	0x1
	.byte	0x56
	.quad	.LVL410
	.quad	.LVL414
	.value	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4f
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL414
	.quad	.LFE55
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST186:
	.quad	.LVL384
	.quad	.LVL389-1
	.value	0x1
	.byte	0x52
	.quad	.LVL389-1
	.quad	.LFE55
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST187:
	.quad	.LVL384
	.quad	.LVL387
	.value	0x1
	.byte	0x58
	.quad	.LVL387
	.quad	.LVL389-1
	.value	0x1
	.byte	0x5a
	.quad	.LVL389-1
	.quad	.LFE55
	.value	0x3
	.byte	0x91
	.sleb128 -100
	.quad	0
	.quad	0
.LLST188:
	.quad	.LVL384
	.quad	.LVL385
	.value	0x1
	.byte	0x59
	.quad	.LVL385
	.quad	.LFE55
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LLST189:
	.quad	.LVL395
	.quad	.LVL396
	.value	0x1
	.byte	0x50
	.quad	.LVL396
	.quad	.LVL411
	.value	0x1
	.byte	0x5d
	.quad	.LVL411
	.quad	.LVL413
	.value	0x2
	.byte	0x7f
	.sleb128 0
	.quad	.LVL413
	.quad	.LVL414
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL414
	.quad	.LFE55
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST190:
	.quad	.LVL393
	.quad	.LVL394-1
	.value	0x1d
	.byte	0x3
	.quad	NumNodes
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x9
	.byte	0xfe
	.byte	0x1b
	.byte	0x3
	.quad	NumNodes
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST191:
	.quad	.LVL395
	.quad	.LVL397
	.value	0x1
	.byte	0x52
	.quad	.LVL397
	.quad	.LVL399
	.value	0x3
	.byte	0x91
	.sleb128 -116
	.quad	0
	.quad	0
.LLST192:
	.quad	.LVL395
	.quad	.LVL398
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST193:
	.quad	.LVL395
	.quad	.LVL397
	.value	0x1
	.byte	0x52
	.quad	.LVL397
	.quad	.LVL398
	.value	0x3
	.byte	0x91
	.sleb128 -116
	.quad	0
	.quad	0
.LLST194:
	.quad	.LVL402
	.quad	.LVL403
	.value	0x1
	.byte	0x52
	.quad	.LVL403
	.quad	.LVL405
	.value	0x3
	.byte	0x91
	.sleb128 -116
	.quad	0
	.quad	0
.LLST195:
	.quad	.LVL402
	.quad	.LVL404
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST196:
	.quad	.LVL402
	.quad	.LVL403
	.value	0x1
	.byte	0x52
	.quad	.LVL403
	.quad	.LVL404
	.value	0x3
	.byte	0x91
	.sleb128 -116
	.quad	0
	.quad	0
.LLST217:
	.quad	.LVL448
	.quad	.LVL449
	.value	0x1
	.byte	0x50
	.quad	.LVL449
	.quad	.LFE49
	.value	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST218:
	.quad	.LVL450
	.quad	.LVL455
	.value	0x1
	.byte	0x55
	.quad	.LVL455
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST219:
	.quad	.LVL450
	.quad	.LVL456-1
	.value	0x1
	.byte	0x54
	.quad	.LVL456-1
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST220:
	.quad	.LVL451
	.quad	.LVL453
	.value	0x1
	.byte	0x50
	.quad	.LVL453
	.quad	.LVL454
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	0
	.quad	0
.LLST221:
	.quad	.LVL454
	.quad	.LVL455
	.value	0x1
	.byte	0x55
	.quad	.LVL455
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST222:
	.quad	.LVL454
	.quad	.LVL456-1
	.value	0x1
	.byte	0x54
	.quad	.LVL456-1
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
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
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB133
	.quad	.LBE133
	.quad	.LBB139
	.quad	.LBE139
	.quad	0
	.quad	0
	.quad	.LBB136
	.quad	.LBE136
	.quad	.LBB140
	.quad	.LBE140
	.quad	0
	.quad	0
	.quad	.LBB157
	.quad	.LBE157
	.quad	.LBB166
	.quad	.LBE166
	.quad	0
	.quad	0
	.quad	.LBB167
	.quad	.LBE167
	.quad	.LBB177
	.quad	.LBE177
	.quad	.LBB179
	.quad	.LBE179
	.quad	0
	.quad	0
	.quad	.LBB171
	.quad	.LBE171
	.quad	.LBB178
	.quad	.LBE178
	.quad	.LBB180
	.quad	.LBE180
	.quad	.LBB181
	.quad	.LBE181
	.quad	.LBB182
	.quad	.LBE182
	.quad	0
	.quad	0
	.quad	.LBB185
	.quad	.LBE185
	.quad	.LBB195
	.quad	.LBE195
	.quad	.LBB197
	.quad	.LBE197
	.quad	0
	.quad	0
	.quad	.LBB189
	.quad	.LBE189
	.quad	.LBB196
	.quad	.LBE196
	.quad	.LBB198
	.quad	.LBE198
	.quad	.LBB199
	.quad	.LBE199
	.quad	.LBB200
	.quad	.LBE200
	.quad	0
	.quad	0
	.quad	.LBB203
	.quad	.LBE203
	.quad	.LBB206
	.quad	.LBE206
	.quad	0
	.quad	0
	.quad	.LBB209
	.quad	.LBE209
	.quad	.LBB213
	.quad	.LBE213
	.quad	.LBB214
	.quad	.LBE214
	.quad	0
	.quad	0
	.quad	.LBB219
	.quad	.LBE219
	.quad	.LBB225
	.quad	.LBE225
	.quad	0
	.quad	0
	.quad	.LBB222
	.quad	.LBE222
	.quad	.LBB226
	.quad	.LBE226
	.quad	0
	.quad	0
	.quad	.LBB228
	.quad	.LBE228
	.quad	.LBB231
	.quad	.LBE231
	.quad	0
	.quad	0
	.quad	.LBB232
	.quad	.LBE232
	.quad	.LBB235
	.quad	.LBE235
	.quad	0
	.quad	0
	.quad	.LBB237
	.quad	.LBE237
	.quad	.LBB271
	.quad	.LBE271
	.quad	.LBB272
	.quad	.LBE272
	.quad	0
	.quad	0
	.quad	.LBB241
	.quad	.LBE241
	.quad	.LBB250
	.quad	.LBE250
	.quad	0
	.quad	0
	.quad	.LBB244
	.quad	.LBE244
	.quad	.LBB251
	.quad	.LBE251
	.quad	.LBB252
	.quad	.LBE252
	.quad	.LBB253
	.quad	.LBE253
	.quad	.LBB258
	.quad	.LBE258
	.quad	0
	.quad	0
	.quad	.LBB254
	.quad	.LBE254
	.quad	.LBB259
	.quad	.LBE259
	.quad	.LBB260
	.quad	.LBE260
	.quad	0
	.quad	0
	.quad	.LBB265
	.quad	.LBE265
	.quad	.LBB269
	.quad	.LBE269
	.quad	.LBB270
	.quad	.LBE270
	.quad	0
	.quad	0
	.quad	.LBB277
	.quad	.LBE277
	.quad	.LBB280
	.quad	.LBE280
	.quad	0
	.quad	0
	.quad	.LBB281
	.quad	.LBE281
	.quad	.LBB286
	.quad	.LBE286
	.quad	0
	.quad	0
	.quad	.LBB291
	.quad	.LBE291
	.quad	.LBB301
	.quad	.LBE301
	.quad	.LBB302
	.quad	.LBE302
	.quad	0
	.quad	0
	.quad	.LBB293
	.quad	.LBE293
	.quad	.LBB297
	.quad	.LBE297
	.quad	.LBB298
	.quad	.LBE298
	.quad	0
	.quad	0
	.quad	.LBB303
	.quad	.LBE303
	.quad	.LBB331
	.quad	.LBE331
	.quad	.LBB332
	.quad	.LBE332
	.quad	.LBB333
	.quad	.LBE333
	.quad	.LBB334
	.quad	.LBE334
	.quad	.LBB335
	.quad	.LBE335
	.quad	.LBB336
	.quad	.LBE336
	.quad	.LBB337
	.quad	.LBE337
	.quad	.LBB338
	.quad	.LBE338
	.quad	0
	.quad	0
	.quad	.LBB305
	.quad	.LBE305
	.quad	.LBB315
	.quad	.LBE315
	.quad	.LBB316
	.quad	.LBE316
	.quad	.LBB317
	.quad	.LBE317
	.quad	.LBB318
	.quad	.LBE318
	.quad	.LBB319
	.quad	.LBE319
	.quad	.LBB320
	.quad	.LBE320
	.quad	.LBB321
	.quad	.LBE321
	.quad	.LBB322
	.quad	.LBE322
	.quad	0
	.quad	0
	.quad	.LBB339
	.quad	.LBE339
	.quad	.LBB344
	.quad	.LBE344
	.quad	.LBB345
	.quad	.LBE345
	.quad	.LBB346
	.quad	.LBE346
	.quad	0
	.quad	0
	.quad	.LBB347
	.quad	.LBE347
	.quad	.LBB350
	.quad	.LBE350
	.quad	0
	.quad	0
	.quad	.LBB351
	.quad	.LBE351
	.quad	.LBB354
	.quad	.LBE354
	.quad	0
	.quad	0
	.quad	.LBB355
	.quad	.LBE355
	.quad	.LBB358
	.quad	.LBE358
	.quad	0
	.quad	0
	.quad	.LBB381
	.quad	.LBE381
	.quad	.LBB394
	.quad	.LBE394
	.quad	.LBB395
	.quad	.LBE395
	.quad	.LBB396
	.quad	.LBE396
	.quad	0
	.quad	0
	.quad	.LBB383
	.quad	.LBE383
	.quad	.LBB390
	.quad	.LBE390
	.quad	0
	.quad	0
	.quad	.LBB403
	.quad	.LBE403
	.quad	.LBB416
	.quad	.LBE416
	.quad	.LBB417
	.quad	.LBE417
	.quad	.LBB418
	.quad	.LBE418
	.quad	0
	.quad	0
	.quad	.LBB405
	.quad	.LBE405
	.quad	.LBB412
	.quad	.LBE412
	.quad	0
	.quad	0
	.quad	.LBB419
	.quad	.LBE419
	.quad	.LBB422
	.quad	.LBE422
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB45
	.quad	.LFE45
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"__off_t"
.LASF158:
	.string	"cnorm"
.LASF13:
	.string	"_IO_read_ptr"
.LASF183:
	.string	"malloc"
.LASF25:
	.string	"_chain"
.LASF63:
	.string	"get_point"
.LASF104:
	.string	"edge"
.LASF8:
	.string	"size_t"
.LASF64:
	.string	"curmax"
.LASF31:
	.string	"_shortbuf"
.LASF145:
	.string	"alpha"
.LASF167:
	.string	"Result"
.LASF152:
	.string	"loc_a"
.LASF155:
	.string	"incircle"
.LASF71:
	.string	"EDGE_PAIR"
.LASF48:
	.string	"_IO_2_1_stderr_"
.LASF19:
	.string	"_IO_buf_base"
.LASF100:
	.string	"filein"
.LASF157:
	.string	"bnorm"
.LASF180:
	.string	"printf"
.LASF169:
	.string	"maxx"
.LASF156:
	.string	"anorm"
.LASF80:
	.string	"to_color"
.LASF179:
	.string	"lnexta"
.LASF57:
	.string	"next"
.LASF109:
	.string	"get_points"
.LASF60:
	.string	"VERTEX"
.LASF191:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF52:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF77:
	.string	"to_lincoln"
.LASF98:
	.string	"loop"
.LASF126:
	.string	"skiprand"
.LASF130:
	.string	"tleft"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF7:
	.string	"long int"
.LASF170:
	.string	"minx"
.LASF173:
	.string	"get_low"
.LASF12:
	.string	"_flags"
.LASF115:
	.string	"cont"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF101:
	.string	"fileout"
.LASF114:
	.string	"free_all"
.LASF138:
	.string	"retval"
.LASF182:
	.string	"free"
.LASF0:
	.string	"double"
.LASF184:
	.string	"__printf_chk"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF58:
	.string	"wasseen"
.LASF188:
	.string	"memalign"
.LASF161:
	.string	"free_edge"
.LASF84:
	.string	"ahost"
.LASF76:
	.string	"num_edgeparts"
.LASF88:
	.string	"long double"
.LASF96:
	.string	"next_edge"
.LASF103:
	.string	"my_stack"
.LASF90:
	.string	"__free_hook"
.LASF147:
	.string	"temp"
.LASF89:
	.string	"__morecore"
.LASF42:
	.string	"_IO_marker"
.LASF49:
	.string	"stdin"
.LASF67:
	.string	"VERTEX_PTR"
.LASF4:
	.string	"unsigned int"
.LASF85:
	.string	"NumNodes"
.LASF174:
	.string	"build_delaunay_triangulation"
.LASF159:
	.string	"dnorm"
.LASF65:
	.string	"seed"
.LASF113:
	.string	"point"
.LASF1:
	.string	"long unsigned int"
.LASF193:
	.string	"_IO_FILE_plus"
.LASF17:
	.string	"_IO_write_ptr"
.LASF151:
	.string	"dret"
.LASF44:
	.string	"_sbuf"
.LASF163:
	.string	"myalign"
.LASF105:
	.string	"zero_seen"
.LASF3:
	.string	"short unsigned int"
.LASF116:
	.string	"num_vertice"
.LASF185:
	.string	"dealwithargs"
.LASF21:
	.string	"_IO_save_base"
.LASF176:
	.string	"connect_right"
.LASF196:
	.string	"puts"
.LASF32:
	.string	"_lock"
.LASF69:
	.string	"VEC2"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF83:
	.string	"interactive"
.LASF50:
	.string	"stdout"
.LASF55:
	.string	"uptrint"
.LASF87:
	.string	"ptrdiff_t"
.LASF186:
	.string	"output_voronoi_diagram"
.LASF46:
	.string	"_IO_2_1_stdin_"
.LASF166:
	.string	"base"
.LASF91:
	.string	"__malloc_hook"
.LASF117:
	.string	"allocate_stack"
.LASF171:
	.string	"delleft"
.LASF131:
	.string	"tright"
.LASF70:
	.string	"norm"
.LASF134:
	.string	"lvalid"
.LASF135:
	.string	"basel"
.LASF18:
	.string	"_IO_write_end"
.LASF68:
	.string	"QUAD_EDGE"
.LASF81:
	.string	"voronoi"
.LASF56:
	.string	"edge_rec"
.LASF192:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF164:
	.string	"align_size"
.LASF136:
	.string	"lcand"
.LASF132:
	.string	"do_merge"
.LASF178:
	.string	"connect_left"
.LASF79:
	.string	"to_3d_out"
.LASF53:
	.string	"float"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF86:
	.string	"NDim"
.LASF137:
	.string	"rcand"
.LASF2:
	.string	"unsigned char"
.LASF112:
	.string	"node"
.LASF6:
	.string	"short int"
.LASF122:
	.string	"retained"
.LASF123:
	.string	"push_edge"
.LASF95:
	.string	"flag"
.LASF93:
	.string	"__memalign_hook"
.LASF73:
	.string	"elts"
.LASF54:
	.string	"BOOLEAN"
.LASF30:
	.string	"_vtable_offset"
.LASF47:
	.string	"_IO_2_1_stdout_"
.LASF187:
	.string	"exit"
.LASF149:
	.string	"origin"
.LASF139:
	.string	"dump_quad"
.LASF198:
	.string	"__stack_chk_fail"
.LASF142:
	.string	"swapedge"
.LASF106:
	.string	"push_nonzero_ring"
.LASF141:
	.string	"valid"
.LASF194:
	.string	"splice"
.LASF124:
	.string	"print_extra"
.LASF75:
	.string	"num_vertices"
.LASF190:
	.string	"../olden/voronoi/src/newvor.c"
.LASF62:
	.string	"right"
.LASF11:
	.string	"char"
.LASF127:
	.string	"mult"
.LASF195:
	.string	"delete_all_edges"
.LASF162:
	.string	"alloc_edge"
.LASF97:
	.string	"avail_edge"
.LASF66:
	.string	"EDGE_PTR"
.LASF143:
	.string	"syme"
.LASF168:
	.string	"build_delaunay"
.LASF129:
	.string	"tree"
.LASF125:
	.string	"myrandom"
.LASF43:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF148:
	.string	"makeedge"
.LASF23:
	.string	"_IO_save_end"
.LASF72:
	.string	"EDGE_STACK"
.LASF189:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF165:
	.string	"alloc_size"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF133:
	.string	"rvalid"
.LASF99:
	.string	"randum"
.LASF40:
	.string	"_unused2"
.LASF51:
	.string	"stderr"
.LASF120:
	.string	"argv"
.LASF59:
	.string	"Buffer"
.LASF146:
	.string	"beta"
.LASF128:
	.string	"in_order"
.LASF102:
	.string	"statistics"
.LASF82:
	.string	"delaunay"
.LASF177:
	.string	"oprevb"
.LASF22:
	.string	"_IO_backup_base"
.LASF153:
	.string	"loc_b"
.LASF154:
	.string	"loc_c"
.LASF160:
	.string	"loc_d"
.LASF110:
	.string	"processor"
.LASF74:
	.string	"stack_size"
.LASF197:
	.string	"__builtin_puts"
.LASF108:
	.string	"pop_edge"
.LASF119:
	.string	"argc"
.LASF140:
	.string	"push_ring"
.LASF92:
	.string	"__realloc_hook"
.LASF121:
	.string	"extra"
.LASF172:
	.string	"delright"
.LASF175:
	.string	"deleteedge"
.LASF107:
	.string	"stack"
.LASF94:
	.string	"__after_morecore_hook"
.LASF118:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF61:
	.string	"left"
.LASF150:
	.string	"destination"
.LASF78:
	.string	"to_off"
.LASF111:
	.string	"numnodes"
.LASF181:
	.string	"__fmt"
.LASF144:
	.string	"lnexttmp"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
