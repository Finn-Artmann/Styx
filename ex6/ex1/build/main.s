	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction/ex6/ex1" "src/main.c"
	.p2align 4
	.globl	pda_transition
	.type	pda_transition, @function
pda_transition:
.LVL0:
.LFB23:
	.file 1 "src/main.c"
	.loc 1 7 36 view -0
	.cfi_startproc
	.loc 1 7 36 is_stmt 0 view .LVU1
	endbr64
	.loc 1 9 1 is_stmt 1 view .LVU2
	ret
	.cfi_endproc
.LFE23:
	.size	pda_transition, .-pda_transition
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"test"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL1:
.LFB24:
	.loc 1 12 32 view -0
	.cfi_startproc
	.loc 1 12 32 is_stmt 0 view .LVU4
	endbr64
	.loc 1 14 2 is_stmt 1 view .LVU5
	.loc 1 12 32 is_stmt 0 view .LVU6
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 14 20 view .LVU7
	leaq	pda_transition(%rip), %rsi
.LVL2:
	.loc 1 14 20 view .LVU8
	movl	$1, %edi
.LVL3:
	.loc 1 14 20 view .LVU9
	call	create_dfa@PLT
.LVL4:
	.loc 1 18 28 view .LVU10
	leaq	.LC0(%rip), %rsi
	.loc 1 14 20 view .LVU11
	movq	%rax, %rdi
.LVL5:
	.loc 1 16 2 is_stmt 1 view .LVU12
	.loc 1 18 2 view .LVU13
	.loc 1 18 28 is_stmt 0 view .LVU14
	call	dfa_new_ctx@PLT
.LVL6:
	.loc 1 18 28 view .LVU15
	movq	%rax, %rdi
.LVL7:
	.loc 1 19 2 is_stmt 1 view .LVU16
	.loc 1 19 15 is_stmt 0 view .LVU17
	call	run_dfa@PLT
.LVL8:
	.loc 1 22 2 is_stmt 1 view .LVU18
	.loc 1 23 1 is_stmt 0 view .LVU19
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "include/stack.h"
	.file 3 "include/generic_pda.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2b2
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL4
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	0x67
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x7
	.long	.LASF11
	.byte	0x5
	.byte	0xd
	.long	0x54
	.uleb128 0x8
	.long	.LASF13
	.byte	0x10
	.byte	0x2
	.byte	0x7
	.byte	0x10
	.long	0xa1
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
	.byte	0x9
	.byte	0x9
	.long	0xa1
	.byte	0
	.uleb128 0x9
	.string	"top"
	.byte	0x2
	.byte	0xa
	.byte	0x6
	.long	0x54
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	0x6e
	.uleb128 0x7
	.long	.LASF12
	.byte	0xc
	.byte	0x3
	.long	0x79
	.uleb128 0xf
	.string	"dfa"
	.byte	0x10
	.byte	0x3
	.byte	0x6
	.byte	0x8
	.long	0xd9
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x7
	.byte	0x6
	.long	0x54
	.byte	0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x8
	.byte	0x8
	.long	0xed
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	0x54
	.long	0xed
	.uleb128 0x4
	.long	0x54
	.uleb128 0x4
	.long	0x67
	.byte	0
	.uleb128 0x2
	.long	0xd9
	.uleb128 0x8
	.long	.LASF16
	.byte	0x28
	.byte	0x3
	.byte	0xd
	.byte	0x8
	.long	0x141
	.uleb128 0x9
	.string	"dfa"
	.byte	0x3
	.byte	0xe
	.byte	0xe
	.long	0x141
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x3
	.byte	0xf
	.byte	0x6
	.long	0x54
	.byte	0x8
	.uleb128 0x3
	.long	.LASF18
	.byte	0x3
	.byte	0x10
	.byte	0x8
	.long	0x62
	.byte	0x10
	.uleb128 0x3
	.long	.LASF19
	.byte	0x3
	.byte	0x11
	.byte	0x6
	.long	0x54
	.byte	0x18
	.uleb128 0x3
	.long	.LASF20
	.byte	0x3
	.byte	0x12
	.byte	0xb
	.long	0x146
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	0xb1
	.uleb128 0x2
	.long	0xa6
	.uleb128 0x5
	.long	.LASF21
	.byte	0x18
	.byte	0x5
	.long	0x54
	.long	0x160
	.uleb128 0x4
	.long	0x160
	.byte	0
	.uleb128 0x2
	.long	0xf2
	.uleb128 0x5
	.long	.LASF22
	.byte	0x15
	.byte	0x11
	.long	0x160
	.long	0x17f
	.uleb128 0x4
	.long	0x141
	.uleb128 0x4
	.long	0x62
	.byte	0
	.uleb128 0x5
	.long	.LASF23
	.byte	0xb
	.byte	0xd
	.long	0x141
	.long	0x199
	.uleb128 0x4
	.long	0x54
	.uleb128 0x4
	.long	0xed
	.byte	0
	.uleb128 0x11
	.long	.LASF28
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.long	0x54
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b
	.uleb128 0xa
	.long	.LASF24
	.byte	0xe
	.long	0x54
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1b
	.long	0x27b
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x12
	.string	"pda"
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.long	0x141
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x13
	.long	.LASF29
	.byte	0x1
	.byte	0x10
	.byte	0x8
	.long	0x62
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x14
	.long	.LASF26
	.byte	0x1
	.byte	0x12
	.byte	0x12
	.long	0x160
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x15
	.long	.LASF30
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.long	0x54
	.uleb128 0xb
	.quad	.LVL4
	.long	0x17f
	.long	0x24e
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
	.uleb128 0xb
	.quad	.LVL6
	.long	0x165
	.long	0x26d
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x16
	.quad	.LVL8
	.long	0x14b
	.byte	0
	.uleb128 0x2
	.long	0x62
	.uleb128 0x17
	.long	.LASF31
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.long	0x54
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.string	"st"
	.byte	0x18
	.long	0x54
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xc
	.string	"ch"
	.byte	0x21
	.long	0x67
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LFE24-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LFE24-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU12
	.uleb128 .LVU15
.LLST2:
	.byte	0x8
	.quad	.LVL5
	.uleb128 .LVL6-1-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS3:
	.uleb128 .LVU16
	.uleb128 .LVU18
.LLST3:
	.byte	0x8
	.quad	.LVL7
	.uleb128 .LVL8-1-.LVL7
	.uleb128 0x1
	.byte	0x50
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
.LLRL4:
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
.LASF23:
	.string	"create_dfa"
.LASF17:
	.string	"state"
.LASF20:
	.string	"stack"
.LASF22:
	.string	"dfa_new_ctx"
.LASF29:
	.string	"test_word"
.LASF10:
	.string	"data"
.LASF27:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"unsigned char"
.LASF31:
	.string	"pda_transition"
.LASF18:
	.string	"input"
.LASF15:
	.string	"transition"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF21:
	.string	"run_dfa"
.LASF13:
	.string	"Stack"
.LASF28:
	.string	"main"
.LASF16:
	.string	"dfa_ctx"
.LASF3:
	.string	"unsigned int"
.LASF9:
	.string	"char"
.LASF11:
	.string	"val_t"
.LASF30:
	.string	"result"
.LASF24:
	.string	"argc"
.LASF19:
	.string	"offset"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"stack_t"
.LASF25:
	.string	"argv"
.LASF14:
	.string	"initial"
.LASF8:
	.string	"long int"
.LASF6:
	.string	"signed char"
.LASF26:
	.string	"pda_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction/ex6/ex1"
.LASF0:
	.string	"src/main.c"
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
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
