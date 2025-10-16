	.file	"vector.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	V2_cprod
	.type	V2_cprod, @function
V2_cprod:
.LFB0:
	.file 1 "../olden/voronoi/src/vector.c"
	.loc 1 15 0
	.cfi_startproc
	.loc 1 16 0
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	mulsd	40(%rsp), %xmm0
	mulsd	32(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	.loc 1 17 0
	ret
	.cfi_endproc
.LFE0:
	.size	V2_cprod, .-V2_cprod
	.p2align 4,,15
	.globl	V2_dot
	.type	V2_dot, @function
V2_dot:
.LFB1:
	.loc 1 23 0
	.cfi_startproc
	.loc 1 24 0
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	mulsd	32(%rsp), %xmm0
	mulsd	40(%rsp), %xmm1
	addsd	%xmm1, %xmm0
	.loc 1 25 0
	ret
	.cfi_endproc
.LFE1:
	.size	V2_dot, .-V2_dot
	.p2align 4,,15
	.globl	V2_times
	.type	V2_times, @function
V2_times:
.LFB2:
	.loc 1 30 0
	.cfi_startproc
.LVL0:
	.loc 1 33 0
	movsd	16(%rsp), %xmm1
	.loc 1 30 0
	movq	%rdi, %rax
	.loc 1 34 0
	movq	$0x000000000, 16(%rdi)
	.loc 1 33 0
	mulsd	%xmm0, %xmm1
.LVL1:
	.loc 1 32 0
	mulsd	8(%rsp), %xmm0
.LVL2:
	.loc 1 34 0
	movsd	%xmm1, 8(%rdi)
	movsd	%xmm0, (%rdi)
	.loc 1 35 0
	ret
	.cfi_endproc
.LFE2:
	.size	V2_times, .-V2_times
	.p2align 4,,15
	.globl	V2_sum
	.type	V2_sum, @function
V2_sum:
.LFB3:
	.loc 1 39 0
	.cfi_startproc
.LVL3:
	.loc 1 43 0
	movsd	16(%rsp), %xmm0
	.loc 1 39 0
	movq	%rdi, %rax
	.loc 1 42 0
	movsd	8(%rsp), %xmm1
	.loc 1 44 0
	movq	$0x000000000, 16(%rdi)
	.loc 1 43 0
	addsd	40(%rsp), %xmm0
.LVL4:
	.loc 1 42 0
	addsd	32(%rsp), %xmm1
	.loc 1 44 0
	movsd	%xmm0, 8(%rdi)
	movsd	%xmm1, (%rdi)
	.loc 1 45 0
	ret
	.cfi_endproc
.LFE3:
	.size	V2_sum, .-V2_sum
	.p2align 4,,15
	.globl	V2_sub
	.type	V2_sub, @function
V2_sub:
.LFB4:
	.loc 1 48 0
	.cfi_startproc
.LVL5:
	.loc 1 51 0
	movsd	16(%rsp), %xmm0
	.loc 1 48 0
	movq	%rdi, %rax
	.loc 1 50 0
	movsd	8(%rsp), %xmm1
	.loc 1 52 0
	movq	$0x000000000, 16(%rdi)
	.loc 1 51 0
	subsd	40(%rsp), %xmm0
.LVL6:
	.loc 1 50 0
	subsd	32(%rsp), %xmm1
	.loc 1 52 0
	movsd	%xmm0, 8(%rdi)
	movsd	%xmm1, (%rdi)
	.loc 1 53 0
	ret
	.cfi_endproc
.LFE4:
	.size	V2_sub, .-V2_sub
	.p2align 4,,15
	.globl	V2_magn
	.type	V2_magn, @function
V2_magn:
.LFB5:
	.loc 1 58 0
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	pxor	%xmm2, %xmm2
	movsd	32(%rsp), %xmm0
.LVL7:
	movsd	40(%rsp), %xmm1
.LVL8:
	.loc 1 59 0
	mulsd	%xmm0, %xmm0
.LVL9:
	mulsd	%xmm1, %xmm1
.LVL10:
	addsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	sqrtsd	%xmm0, %xmm1
	ja	.L10
.L7:
	.loc 1 60 0
	movapd	%xmm1, %xmm0
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	movsd	%xmm1, 8(%rsp)
	.loc 1 59 0
	call	sqrt@PLT
.LVL11:
	movsd	8(%rsp), %xmm1
	jmp	.L7
	.cfi_endproc
.LFE5:
	.size	V2_magn, .-V2_magn
	.p2align 4,,15
	.globl	V2_cross
	.type	V2_cross, @function
V2_cross:
.LFB6:
	.loc 1 64 0
	.cfi_startproc
.LVL12:
	.loc 1 67 0
	movsd	8(%rsp), %xmm0
	.loc 1 64 0
	movq	%rdi, %rax
	.loc 1 68 0
	movsd	16(%rsp), %xmm1
	movq	$0x000000000, 16(%rdi)
	.loc 1 67 0
	xorpd	.LC1(%rip), %xmm0
.LVL13:
	.loc 1 68 0
	movsd	%xmm1, (%rdi)
	movsd	%xmm0, 8(%rdi)
	.loc 1 69 0
	ret
	.cfi_endproc
.LFE6:
	.size	V2_cross, .-V2_cross
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "../olden/voronoi/src/defines.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3dc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF41
	.byte	0xc
	.long	.LASF42
	.long	.LASF43
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF13
	.byte	0x20
	.byte	0x2
	.byte	0x8
	.long	0xbd
	.uleb128 0x7
	.string	"v"
	.byte	0x2
	.byte	0x9
	.long	0xec
	.byte	0
	.uleb128 0x8
	.long	.LASF10
	.byte	0x2
	.byte	0xa
	.long	0xf2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF11
	.byte	0x2
	.byte	0xb
	.long	0x65
	.byte	0x10
	.uleb128 0x8
	.long	.LASF12
	.byte	0x2
	.byte	0xc
	.long	0x6c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x28
	.byte	0x2
	.byte	0x21
	.long	0xec
	.uleb128 0x7
	.string	"v"
	.byte	0x2
	.byte	0x22
	.long	0x10e
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x2
	.byte	0x23
	.long	0xec
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x2
	.byte	0x23
	.long	0xec
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xbd
	.uleb128 0x5
	.byte	0x8
	.long	0x82
	.uleb128 0x9
	.long	.LASF17
	.byte	0x2
	.byte	0x17
	.long	0xf2
	.uleb128 0x9
	.long	.LASF18
	.byte	0x2
	.byte	0x18
	.long	0xec
	.uleb128 0x6
	.long	.LASF19
	.byte	0x18
	.byte	0x2
	.byte	0x1b
	.long	0x13b
	.uleb128 0x7
	.string	"x"
	.byte	0x2
	.byte	0x1c
	.long	0x2d
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x2
	.byte	0x1c
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF20
	.byte	0x2
	.byte	0x1d
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"vp"
	.byte	0x2
	.byte	0x61
	.long	0x145
	.uleb128 0x5
	.byte	0x8
	.long	0x103
	.uleb128 0xa
	.string	"va"
	.byte	0x2
	.byte	0x62
	.long	0xec
	.uleb128 0xb
	.long	.LASF10
	.byte	0x2
	.byte	0x63
	.long	0x160
	.uleb128 0x5
	.byte	0x8
	.long	0xf8
	.uleb128 0xa
	.string	"org"
	.byte	0x2
	.byte	0x64
	.long	0x145
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.byte	0x65
	.long	0x5e
	.uleb128 0xb
	.long	.LASF22
	.byte	0x2
	.byte	0x65
	.long	0x5e
	.uleb128 0xb
	.long	.LASF23
	.byte	0x2
	.byte	0x65
	.long	0x5e
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.uleb128 0xb
	.long	.LASF25
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.uleb128 0xb
	.long	.LASF26
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.uleb128 0xb
	.long	.LASF28
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.uleb128 0xb
	.long	.LASF29
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.uleb128 0xb
	.long	.LASF30
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.uleb128 0xb
	.long	.LASF31
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.uleb128 0xa
	.string	"see"
	.byte	0x2
	.byte	0x67
	.long	0x6e
	.uleb128 0xb
	.long	.LASF32
	.byte	0x2
	.byte	0x68
	.long	0x5e
	.uleb128 0xb
	.long	.LASF33
	.byte	0x2
	.byte	0x68
	.long	0x5e
	.uleb128 0xc
	.long	.LASF34
	.byte	0x1
	.byte	0x3f
	.long	0x10e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x248
	.uleb128 0xd
	.string	"v"
	.byte	0x1
	.byte	0x3f
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"ans"
	.byte	0x1
	.byte	0x41
	.long	0x10e
	.long	.LLST5
	.byte	0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x284
	.uleb128 0xf
	.string	"u"
	.byte	0x1
	.byte	0x39
	.long	0x10e
	.long	.LLST4
	.uleb128 0x10
	.quad	.LVL11
	.long	0x3d4
	.byte	0
	.uleb128 0xc
	.long	.LASF36
	.byte	0x1
	.byte	0x2f
	.long	0x10e
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cd
	.uleb128 0xd
	.string	"u"
	.byte	0x1
	.byte	0x2f
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"v"
	.byte	0x1
	.byte	0x2f
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xe
	.string	"ans"
	.byte	0x1
	.byte	0x31
	.long	0x10e
	.long	.LLST3
	.byte	0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x1
	.byte	0x27
	.long	0x10e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x316
	.uleb128 0xd
	.string	"u"
	.byte	0x1
	.byte	0x27
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"v"
	.byte	0x1
	.byte	0x27
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xe
	.string	"ans"
	.byte	0x1
	.byte	0x28
	.long	0x10e
	.long	.LLST2
	.byte	0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x1
	.byte	0x1d
	.long	0x10e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x360
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x1d
	.long	0x2d
	.long	.LLST0
	.uleb128 0xd
	.string	"v"
	.byte	0x1
	.byte	0x1d
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"ans"
	.byte	0x1
	.byte	0x1f
	.long	0x10e
	.long	.LLST1
	.byte	0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.byte	0x16
	.long	0x2d
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x39a
	.uleb128 0xd
	.string	"u"
	.byte	0x1
	.byte	0x16
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"v"
	.byte	0x1
	.byte	0x16
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x1
	.byte	0xf
	.long	0x2d
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d4
	.uleb128 0xd
	.string	"u"
	.byte	0x1
	.byte	0xf
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"v"
	.byte	0x1
	.byte	0xf
	.long	0x10e
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x11
	.long	.LASF44
	.long	.LASF44
	.byte	0x3
	.byte	0x8f
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST5:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x6
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x5
	.byte	0x61
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x8
	.byte	0x61
	.byte	0x93
	.uleb128 0x8
	.byte	0x62
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x93
	.uleb128 0x8
	.byte	0x62
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL10-.Ltext0
	.quad	.LFE5-.Ltext0
	.value	0xa
	.byte	0x91
	.sleb128 0
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x10
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x91
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x10
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x91
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL2-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0xe
	.byte	0x91
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x10
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"VERTEX_PTR"
.LASF39:
	.string	"V2_dot"
.LASF42:
	.string	"../olden/voronoi/src/vector.c"
.LASF16:
	.string	"right"
.LASF19:
	.string	"VEC2"
.LASF29:
	.string	"delaunay"
.LASF6:
	.string	"short int"
.LASF35:
	.string	"V2_magn"
.LASF20:
	.string	"norm"
.LASF36:
	.string	"V2_sub"
.LASF14:
	.string	"VERTEX"
.LASF11:
	.string	"wasseen"
.LASF34:
	.string	"V2_cross"
.LASF40:
	.string	"V2_cprod"
.LASF9:
	.string	"float"
.LASF31:
	.string	"ahost"
.LASF25:
	.string	"to_off"
.LASF21:
	.string	"num_vertices"
.LASF7:
	.string	"long int"
.LASF38:
	.string	"V2_times"
.LASF22:
	.string	"num_edgeparts"
.LASF33:
	.string	"NDim"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF5:
	.string	"signed char"
.LASF3:
	.string	"unsigned int"
.LASF24:
	.string	"to_lincoln"
.LASF17:
	.string	"EDGE_PTR"
.LASF2:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF13:
	.string	"edge_rec"
.LASF15:
	.string	"left"
.LASF26:
	.string	"to_3d_out"
.LASF32:
	.string	"NumNodes"
.LASF27:
	.string	"to_color"
.LASF4:
	.string	"long unsigned int"
.LASF0:
	.string	"double"
.LASF30:
	.string	"interactive"
.LASF44:
	.string	"sqrt"
.LASF28:
	.string	"voronoi"
.LASF23:
	.string	"stack_size"
.LASF37:
	.string	"V2_sum"
.LASF12:
	.string	"Buffer"
.LASF10:
	.string	"next"
.LASF43:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
