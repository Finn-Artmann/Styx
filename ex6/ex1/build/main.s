	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/data/home/arf43777/Dokumente/CompilerConstruction/ex6/ex1" "src/main.c"
	.p2align 4
	.globl	pda_transition
	.type	pda_transition, @function
pda_transition:
.LVL0:
.LFB23:
	.file 1 "src/main.c"
	.loc 1 7 57 view -0
	.cfi_startproc
	.loc 1 7 57 is_stmt 0 view .LVU1
	endbr64
	.loc 1 8 2 is_stmt 1 view .LVU2
	.loc 1 7 57 is_stmt 0 view .LVU3
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 7 57 view .LVU4
	movq	%rdx, %rbx
	.loc 1 8 2 view .LVU5
	cmpl	$1, %edi
	je	.L2
	cmpl	$2, %edi
	jne	.L1
	.loc 1 15 11 is_stmt 1 view .LVU6
	cmpb	$97, %sil
	je	.L8
	cmpb	$98, %sil
	je	.L9
	xorl	%eax, %eax
	testb	%sil, %sil
	je	.L10
.L1:
	.loc 1 22 1 is_stmt 0 view .LVU7
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	.loc 1 16 14 is_stmt 1 view .LVU8
	.loc 1 16 17 is_stmt 0 view .LVU9
	movq	32(%rdx), %rdi
.LVL1:
	.loc 1 16 17 view .LVU10
	call	s_peek@PLT
.LVL2:
	.loc 1 16 16 view .LVU11
	cmpb	$97, %al
	je	.L13
.L9:
	.loc 1 17 14 is_stmt 1 view .LVU12
	.loc 1 17 17 is_stmt 0 view .LVU13
	movq	32(%rbx), %rdi
	call	s_peek@PLT
.LVL3:
	.loc 1 17 16 view .LVU14
	cmpb	$98, %al
	je	.L13
.L10:
	.loc 1 18 15 is_stmt 1 view .LVU15
	.loc 1 18 18 is_stmt 0 view .LVU16
	movq	32(%rbx), %rdi
	call	s_isempty@PLT
.LVL4:
	.loc 1 22 1 view .LVU17
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL5:
	.loc 1 18 17 view .LVU18
	negl	%eax
	sbbl	%eax, %eax
	.loc 1 22 1 view .LVU19
	ret
.LVL6:
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	.loc 1 9 11 is_stmt 1 view .LVU20
	cmpb	$97, %sil
	je	.L5
	cmpb	$98, %sil
	je	.L6
	xorl	%eax, %eax
	cmpb	$46, %sil
	.loc 1 22 1 is_stmt 0 view .LVU21
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	.loc 1 9 11 view .LVU22
	sete	%al
	addl	%eax, %eax
	.loc 1 22 1 view .LVU23
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
	.loc 1 11 14 is_stmt 1 view .LVU24
	movq	32(%rdx), %rdi
.LVL7:
	.loc 1 11 14 is_stmt 0 view .LVU25
	movl	$98, %esi
.LVL8:
	.loc 1 11 14 view .LVU26
	call	s_push@PLT
.LVL9:
	.loc 1 11 39 is_stmt 1 view .LVU27
	.loc 1 11 46 is_stmt 0 view .LVU28
	movl	$1, %eax
	.loc 1 22 1 view .LVU29
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL10:
	.loc 1 22 1 view .LVU30
	ret
.LVL11:
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	.loc 1 10 14 is_stmt 1 view .LVU31
	movq	32(%rdx), %rdi
.LVL12:
	.loc 1 10 14 is_stmt 0 view .LVU32
	movl	$97, %esi
.LVL13:
	.loc 1 10 14 view .LVU33
	call	s_push@PLT
.LVL14:
	.loc 1 10 39 is_stmt 1 view .LVU34
	.loc 1 10 46 is_stmt 0 view .LVU35
	movl	$1, %eax
	.loc 1 22 1 view .LVU36
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL15:
	.loc 1 22 1 view .LVU37
	ret
.LVL16:
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	.loc 1 17 44 is_stmt 1 discriminator 1 view .LVU38
	movq	32(%rbx), %rdi
	call	s_pop@PLT
.LVL17:
	.loc 1 17 63 discriminator 1 view .LVU39
	.loc 1 17 70 is_stmt 0 discriminator 1 view .LVU40
	movl	$2, %eax
	.loc 1 22 1 discriminator 1 view .LVU41
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL18:
	.loc 1 22 1 discriminator 1 view .LVU42
	ret
	.cfi_endproc
.LFE23:
	.size	pda_transition, .-pda_transition
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ab.ba"
.LC1:
	.string	"Result: %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL19:
.LFB24:
	.loc 1 25 32 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 25 32 is_stmt 0 view .LVU44
	endbr64
	.loc 1 27 2 is_stmt 1 view .LVU45
	.loc 1 25 32 is_stmt 0 view .LVU46
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 27 20 view .LVU47
	leaq	pda_transition(%rip), %rsi
.LVL20:
	.loc 1 27 20 view .LVU48
	movl	$1, %edi
.LVL21:
	.loc 1 27 20 view .LVU49
	call	create_dfa@PLT
.LVL22:
	.loc 1 30 28 view .LVU50
	leaq	.LC0(%rip), %rsi
	.loc 1 27 20 view .LVU51
	movq	%rax, %rdi
.LVL23:
	.loc 1 29 2 is_stmt 1 view .LVU52
	.loc 1 30 2 view .LVU53
	.loc 1 30 28 is_stmt 0 view .LVU54
	call	dfa_new_ctx@PLT
.LVL24:
	.loc 1 30 28 view .LVU55
	movq	%rax, %rdi
.LVL25:
	.loc 1 31 2 is_stmt 1 view .LVU56
	.loc 1 31 15 is_stmt 0 view .LVU57
	call	run_dfa@PLT
.LVL26:
.LBB4:
.LBB5:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 112 10 view .LVU58
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
.LBE5:
.LBE4:
	.loc 1 31 15 view .LVU59
	movl	%eax, %edx
.LVL27:
	.loc 1 32 2 is_stmt 1 view .LVU60
.LBB7:
.LBI4:
	.loc 2 110 1 view .LVU61
.LBB6:
	.loc 2 112 3 view .LVU62
	.loc 2 112 10 is_stmt 0 view .LVU63
	xorl	%eax, %eax
.LVL28:
	.loc 2 112 10 view .LVU64
	call	__printf_chk@PLT
.LVL29:
	.loc 2 112 10 view .LVU65
.LBE6:
.LBE7:
	.loc 1 35 2 is_stmt 1 view .LVU66
	.loc 1 36 1 is_stmt 0 view .LVU67
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "include/stack.h"
	.file 4 "include/generic_pda.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x426
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL10
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
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
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	0x67
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x13
	.long	0x67
	.uleb128 0xa
	.long	.LASF11
	.byte	0x5
	.byte	0xe
	.long	0x67
	.uleb128 0xb
	.long	.LASF13
	.byte	0x10
	.byte	0x3
	.byte	0x10
	.long	0xa5
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x9
	.byte	0x9
	.long	0xa5
	.byte	0
	.uleb128 0xc
	.string	"top"
	.byte	0x3
	.byte	0xa
	.byte	0x6
	.long	0x54
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x73
	.uleb128 0xa
	.long	.LASF12
	.byte	0xc
	.byte	0x3
	.long	0x7e
	.uleb128 0xb
	.long	.LASF14
	.byte	0x28
	.byte	0x4
	.byte	0x8
	.long	0x103
	.uleb128 0xc
	.string	"dfa"
	.byte	0x4
	.byte	0x8
	.byte	0xe
	.long	0x12b
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x9
	.byte	0x6
	.long	0x54
	.byte	0x8
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0xa
	.byte	0x8
	.long	0x62
	.byte	0x10
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0xb
	.byte	0x6
	.long	0x54
	.byte	0x18
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0xc
	.byte	0xb
	.long	0x130
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.string	"dfa"
	.byte	0x10
	.byte	0x4
	.byte	0xf
	.byte	0x8
	.long	0x12b
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.long	0x54
	.byte	0
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0x11
	.byte	0x8
	.long	0x153
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x103
	.uleb128 0x3
	.long	0xaa
	.uleb128 0x15
	.long	0x54
	.long	0x14e
	.uleb128 0x1
	.long	0x54
	.uleb128 0x1
	.long	0x67
	.uleb128 0x1
	.long	0x14e
	.byte	0
	.uleb128 0x3
	.long	0xb5
	.uleb128 0x3
	.long	0x135
	.uleb128 0x5
	.long	.LASF21
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x54
	.long	0x174
	.uleb128 0x1
	.long	0x54
	.uleb128 0x1
	.long	0x174
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.long	0x6e
	.uleb128 0x16
	.long	0x174
	.uleb128 0x5
	.long	.LASF22
	.byte	0x4
	.byte	0x19
	.byte	0x5
	.long	0x54
	.long	0x194
	.uleb128 0x1
	.long	0x14e
	.byte	0
	.uleb128 0x5
	.long	.LASF23
	.byte	0x4
	.byte	0x16
	.byte	0x11
	.long	0x14e
	.long	0x1af
	.uleb128 0x1
	.long	0x12b
	.uleb128 0x1
	.long	0x62
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x4
	.byte	0x14
	.byte	0xd
	.long	0x12b
	.long	0x1ca
	.uleb128 0x1
	.long	0x54
	.uleb128 0x1
	.long	0x153
	.byte	0
	.uleb128 0x5
	.long	.LASF25
	.byte	0x3
	.byte	0x18
	.byte	0x5
	.long	0x54
	.long	0x1e0
	.uleb128 0x1
	.long	0x130
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x3
	.byte	0x14
	.byte	0x7
	.long	0x73
	.long	0x1f6
	.uleb128 0x1
	.long	0x130
	.byte	0
	.uleb128 0x5
	.long	.LASF27
	.byte	0x3
	.byte	0x16
	.byte	0x7
	.long	0x73
	.long	0x20c
	.uleb128 0x1
	.long	0x130
	.byte	0
	.uleb128 0x17
	.long	.LASF36
	.byte	0x3
	.byte	0x12
	.byte	0x6
	.long	0x223
	.uleb128 0x1
	.long	0x130
	.uleb128 0x1
	.long	0x73
	.byte	0
	.uleb128 0xe
	.long	.LASF32
	.byte	0x19
	.long	0x54
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x350
	.uleb128 0xf
	.long	.LASF28
	.byte	0xe
	.long	0x54
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1b
	.long	0x350
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x18
	.string	"pda"
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.long	0x12b
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x19
	.long	.LASF37
	.byte	0x1
	.byte	0x1d
	.byte	0x8
	.long	0x62
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1e
	.byte	0x12
	.long	0x14e
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1f
	.byte	0x6
	.long	0x54
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x1a
	.long	0x40e
	.quad	.LBI4
	.byte	.LVU61
	.long	.LLRL8
	.byte	0x1
	.byte	0x20
	.byte	0x2
	.long	0x2ff
	.uleb128 0x1b
	.long	0x41b
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1c
	.quad	.LVL29
	.long	0x158
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL22
	.long	0x1af
	.long	0x323
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	pda_transition
	.byte	0
	.uleb128 0x8
	.quad	.LVL24
	.long	0x194
	.long	0x342
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x7
	.quad	.LVL26
	.long	0x17e
	.byte	0
	.uleb128 0x3
	.long	0x62
	.uleb128 0xe
	.long	.LASF33
	.byte	0x7
	.long	0x54
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x40e
	.uleb128 0x9
	.string	"st"
	.byte	0x18
	.long	0x54
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x9
	.string	"ch"
	.byte	0x21
	.long	0x67
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x9
	.string	"ctx"
	.byte	0x35
	.long	0x14e
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x7
	.quad	.LVL2
	.long	0x1f6
	.uleb128 0x7
	.quad	.LVL3
	.long	0x1f6
	.uleb128 0x7
	.quad	.LVL4
	.long	0x1ca
	.uleb128 0x8
	.quad	.LVL9
	.long	0x20c
	.long	0x3e8
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.byte	0
	.uleb128 0x8
	.quad	.LVL14
	.long	0x20c
	.long	0x400
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.byte	0
	.uleb128 0x7
	.quad	.LVL17
	.long	0x1e0
	.byte	0
	.uleb128 0x1d
	.long	.LASF34
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x54
	.byte	0x3
	.uleb128 0x1e
	.long	.LASF38
	.byte	0x2
	.byte	0x6e
	.byte	0x20
	.long	0x179
	.uleb128 0xd
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 25
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS3:
	.uleb128 0
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL21-.LVL19
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL21-.LVL19
	.uleb128 .LFE24-.LVL19
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL20-.LVL19
	.uleb128 .LFE24-.LVL19
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU52
	.uleb128 .LVU55
.LLST5:
	.byte	0x8
	.quad	.LVL23
	.uleb128 .LVL24-1-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS6:
	.uleb128 .LVU56
	.uleb128 .LVU58
.LLST6:
	.byte	0x8
	.quad	.LVL25
	.uleb128 .LVL26-1-.LVL25
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS7:
	.uleb128 .LVU60
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU65
.LLST7:
	.byte	0x6
	.quad	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL28-.LVL27
	.uleb128 .LVL29-1-.LVL27
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS9:
	.uleb128 .LVU61
	.uleb128 .LVU65
.LLST9:
	.byte	0x8
	.quad	.LVL27
	.uleb128 .LVL29-.LVL27
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LVL12-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL12-.LVL0
	.uleb128 .LFE23-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL13-.LVL0
	.uleb128 .LFE23-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL9-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL9-1-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LVL14-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL14-1-.LVL0
	.uleb128 .LVL15-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL15-.LVL0
	.uleb128 .LVL16-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL0
	.uleb128 .LVL18-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-.LVL0
	.uleb128 .LFE23-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
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
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL8:
	.byte	0x5
	.quad	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB7-.LBB4
	.uleb128 .LBE7-.LBB4
	.byte	0
.LLRL10:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"__fmt"
.LASF24:
	.string	"create_dfa"
.LASF35:
	.string	"GNU C17 11.3.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF15:
	.string	"state"
.LASF18:
	.string	"stack"
.LASF23:
	.string	"dfa_new_ctx"
.LASF21:
	.string	"__printf_chk"
.LASF26:
	.string	"s_pop"
.LASF10:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF33:
	.string	"pda_transition"
.LASF27:
	.string	"s_peek"
.LASF20:
	.string	"transition"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"run_dfa"
.LASF16:
	.string	"input"
.LASF13:
	.string	"Stack"
.LASF36:
	.string	"s_push"
.LASF32:
	.string	"main"
.LASF14:
	.string	"dfa_ctx"
.LASF3:
	.string	"unsigned int"
.LASF9:
	.string	"char"
.LASF11:
	.string	"val_t"
.LASF31:
	.string	"result"
.LASF28:
	.string	"argc"
.LASF25:
	.string	"s_isempty"
.LASF34:
	.string	"printf"
.LASF17:
	.string	"offset"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"stack_t"
.LASF29:
	.string	"argv"
.LASF19:
	.string	"initial"
.LASF8:
	.string	"long int"
.LASF37:
	.string	"test_word"
.LASF6:
	.string	"signed char"
.LASF30:
	.string	"pda_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/main.c"
.LASF1:
	.string	"/data/home/arf43777/Dokumente/CompilerConstruction/ex6/ex1"
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
