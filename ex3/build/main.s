	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction/ex3" "src/main.c"
	.p2align 4
	.globl	is_in_language
	.type	is_in_language, @function
is_in_language:
.LVL0:
.LFB23:
	.file 1 "src/main.c"
	.loc 1 11 31 view -0
	.cfi_startproc
	.loc 1 11 31 is_stmt 0 view .LVU1
	endbr64
	.loc 1 15 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 19 5 view .LVU3
.LBB10:
	.loc 1 19 9 view .LVU4
	.loc 1 19 22 is_stmt 0 view .LVU5
	movl	$0, -4(%rsp)
	.loc 1 19 35 is_stmt 1 view .LVU6
	.loc 1 19 31 is_stmt 0 view .LVU7
	movslq	-4(%rsp), %rdx
.LBE10:
	.loc 1 11 31 view .LVU8
	movq	%rdi, %rax
.LBB11:
	.loc 1 19 35 view .LVU9
	cmpb	$0, (%rdi,%rdx)
	jne	.L24
	jmp	.L18
.LVL2:
	.p2align 4,,10
	.p2align 3
.L8:
	.loc 1 58 5 is_stmt 1 view .LVU10
	.loc 1 59 5 view .LVU11
	.loc 1 19 45 view .LVU12
	movl	-4(%rsp), %edx
	addl	$1, %edx
	movl	%edx, -4(%rsp)
	.loc 1 19 35 view .LVU13
	.loc 1 19 31 is_stmt 0 view .LVU14
	movslq	-4(%rsp), %rdx
	.loc 1 19 35 view .LVU15
	cmpb	$0, (%rax,%rdx)
	je	.L18
.L24:
	.loc 1 27 17 is_stmt 1 view .LVU16
	.loc 1 27 28 is_stmt 0 view .LVU17
	movslq	-4(%rsp), %rdx
	cmpb	$49, (%rax,%rdx)
	jne	.L8
.LVL3:
.L4:
	.loc 1 34 25 is_stmt 1 view .LVU18
	.loc 1 35 25 view .LVU19
	.loc 1 19 45 view .LVU20
	movl	-4(%rsp), %edx
	addl	$1, %edx
	movl	%edx, -4(%rsp)
	.loc 1 19 35 view .LVU21
	.loc 1 19 31 is_stmt 0 view .LVU22
	movslq	-4(%rsp), %rdx
	.loc 1 19 35 view .LVU23
	cmpb	$0, (%rax,%rdx)
	je	.L18
	.loc 1 42 17 is_stmt 1 view .LVU24
	.loc 1 42 28 is_stmt 0 view .LVU25
	movslq	-4(%rsp), %rdx
	cmpb	$48, (%rax,%rdx)
	jne	.L4
.LVL4:
.L6:
	.loc 1 45 25 is_stmt 1 view .LVU26
	.loc 1 46 25 view .LVU27
	.loc 1 19 45 view .LVU28
	movl	-4(%rsp), %edx
	addl	$1, %edx
	movl	%edx, -4(%rsp)
	.loc 1 19 35 view .LVU29
	.loc 1 19 31 is_stmt 0 view .LVU30
	movslq	-4(%rsp), %rdx
	.loc 1 19 35 view .LVU31
	cmpb	$0, (%rax,%rdx)
	je	.L18
	.loc 1 56 17 is_stmt 1 view .LVU32
	.loc 1 56 28 is_stmt 0 view .LVU33
	movslq	-4(%rsp), %rdx
	movzbl	(%rax,%rdx), %edx
	cmpb	$48, %dl
	je	.L8
	cmpb	$49, %dl
	jne	.L6
.LVL5:
.L9:
	.loc 1 62 5 is_stmt 1 view .LVU34
	.loc 1 63 5 view .LVU35
	.loc 1 19 45 view .LVU36
	movl	-4(%rsp), %edx
	addl	$1, %edx
	movl	%edx, -4(%rsp)
	.loc 1 19 35 view .LVU37
	.loc 1 19 31 is_stmt 0 view .LVU38
	movslq	-4(%rsp), %rdx
	.loc 1 19 35 view .LVU39
	cmpb	$0, (%rax,%rdx)
	je	.L18
	.loc 1 70 3 is_stmt 1 view .LVU40
	.loc 1 70 14 is_stmt 0 view .LVU41
	movslq	-4(%rsp), %rdx
	cmpb	$48, (%rax,%rdx)
	jne	.L9
.LVL6:
.L11:
	.loc 1 72 5 is_stmt 1 view .LVU42
	.loc 1 73 5 view .LVU43
	.loc 1 19 45 view .LVU44
	movl	-4(%rsp), %edx
	addl	$1, %edx
	movl	%edx, -4(%rsp)
	.loc 1 19 35 view .LVU45
	.loc 1 19 31 is_stmt 0 view .LVU46
	movslq	-4(%rsp), %rdx
	.loc 1 19 35 view .LVU47
	cmpb	$0, (%rax,%rdx)
	je	.L26
	.loc 1 83 3 is_stmt 1 view .LVU48
	.loc 1 83 14 is_stmt 0 view .LVU49
	movslq	-4(%rsp), %rdx
	movzbl	(%rax,%rdx), %edx
	cmpb	$48, %dl
	je	.L13
	cmpb	$49, %dl
	je	.L9
	jmp	.L11
.LVL7:
	.p2align 4,,10
	.p2align 3
.L13:
	.loc 1 85 5 is_stmt 1 view .LVU50
	.loc 1 86 5 view .LVU51
	.loc 1 19 45 view .LVU52
	movl	-4(%rsp), %edx
	addl	$1, %edx
	movl	%edx, -4(%rsp)
	.loc 1 19 35 view .LVU53
	.loc 1 19 31 is_stmt 0 view .LVU54
	movslq	-4(%rsp), %rdx
	.loc 1 19 35 view .LVU55
	cmpb	$0, (%rax,%rdx)
	je	.L26
	.loc 1 96 3 is_stmt 1 view .LVU56
	.loc 1 96 14 is_stmt 0 view .LVU57
	movslq	-4(%rsp), %rdx
	cmpb	$49, (%rax,%rdx)
	jne	.L13
	jmp	.L4
.LVL8:
	.p2align 4,,10
	.p2align 3
.L18:
	.loc 1 96 14 view .LVU58
.LBE11:
	.loc 1 117 11 view .LVU59
	xorl	%eax, %eax
.LVL9:
	.loc 1 117 11 view .LVU60
	ret
.LVL10:
	.p2align 4,,10
	.p2align 3
.L26:
	.loc 1 114 8 view .LVU61
	movl	$1, %eax
.LVL11:
	.loc 1 118 1 view .LVU62
	ret
	.cfi_endproc
.LFE23:
	.size	is_in_language, .-is_in_language
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"[ERROR]: Missing argument <word> of type char* "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"[ERROR]: Too many arguments!"
.LC2:
	.string	"Word: { %s } is accepted.\n"
.LC3:
	.string	"Word: { %s } is declined.\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL12:
.LFB24:
	.loc 1 126 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 126 1 is_stmt 0 view .LVU64
	endbr64
	.loc 1 128 2 is_stmt 1 view .LVU65
	.loc 1 126 1 is_stmt 0 view .LVU66
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 128 4 view .LVU67
	cmpl	$1, %edi
	jle	.L60
	.loc 1 133 2 is_stmt 1 view .LVU68
	.loc 1 133 4 is_stmt 0 view .LVU69
	cmpl	$2, %edi
	jne	.L61
	.loc 1 139 2 is_stmt 1 view .LVU70
	.loc 1 139 8 is_stmt 0 view .LVU71
	movq	8(%rsi), %r8
.LVL13:
	.loc 1 141 1 is_stmt 1 view .LVU72
	.loc 1 141 15 is_stmt 0 view .LVU73
	movq	%r8, %rdi
.LVL14:
	.loc 1 141 15 view .LVU74
	call	is_in_language
.LVL15:
	.loc 1 143 2 is_stmt 1 view .LVU75
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 112 10 is_stmt 0 view .LVU76
	movq	%r8, %rdx
.LBE13:
.LBE12:
	.loc 1 143 4 view .LVU77
	testb	%al, %al
	jne	.L62
	.loc 1 147 3 is_stmt 1 view .LVU78
.LVL16:
.LBB16:
.LBI16:
	.loc 2 110 1 view .LVU79
.LBB17:
	.loc 2 112 3 view .LVU80
	.loc 2 112 10 is_stmt 0 view .LVU81
	leaq	.LC3(%rip), %rsi
.LVL17:
	.loc 2 112 10 view .LVU82
	movl	$1, %edi
	xorl	%eax, %eax
.LVL18:
	.loc 2 112 10 view .LVU83
	call	__printf_chk@PLT
.LVL19:
	.loc 2 112 10 view .LVU84
.LBE17:
.LBE16:
	.loc 1 150 12 view .LVU85
	xorl	%eax, %eax
.LVL20:
.L54:
	.loc 1 152 1 view .LVU86
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL21:
.L62:
	.cfi_restore_state
	.loc 1 144 3 is_stmt 1 view .LVU87
.LBB18:
.LBI12:
	.loc 2 110 1 view .LVU88
.LBB14:
	.loc 2 112 3 view .LVU89
	.loc 2 112 10 is_stmt 0 view .LVU90
	leaq	.LC2(%rip), %rsi
.LVL22:
	.loc 2 112 10 view .LVU91
	movl	$1, %edi
	xorl	%eax, %eax
.LVL23:
	.loc 2 112 10 view .LVU92
	call	__printf_chk@PLT
.LVL24:
	.loc 2 112 10 view .LVU93
.LBE14:
.LBE18:
	.loc 1 150 12 view .LVU94
	xorl	%eax, %eax
.LBB19:
.LBB15:
	.loc 2 112 10 view .LVU95
	jmp	.L54
.LVL25:
.L61:
	.loc 2 112 10 view .LVU96
.LBE15:
.LBE19:
	.loc 1 134 3 is_stmt 1 view .LVU97
.LBB20:
.LBI20:
	.loc 2 110 1 view .LVU98
.LBB21:
	.loc 2 112 3 view .LVU99
	.loc 2 112 10 is_stmt 0 view .LVU100
	leaq	.LC1(%rip), %rdi
.LVL26:
	.loc 2 112 10 view .LVU101
	call	puts@PLT
.LVL27:
	.loc 2 112 10 view .LVU102
.LBE21:
.LBE20:
	.loc 1 135 3 is_stmt 1 view .LVU103
	.loc 1 135 10 is_stmt 0 view .LVU104
	movl	$-2, %eax
	jmp	.L54
.LVL28:
.L60:
	.loc 1 129 3 is_stmt 1 view .LVU105
.LBB22:
.LBI22:
	.loc 2 110 1 view .LVU106
.LBB23:
	.loc 2 112 3 view .LVU107
	.loc 2 112 10 is_stmt 0 view .LVU108
	leaq	.LC0(%rip), %rdi
.LVL29:
	.loc 2 112 10 view .LVU109
	call	puts@PLT
.LVL30:
	.loc 2 112 10 view .LVU110
.LBE23:
.LBE22:
	.loc 1 130 3 is_stmt 1 view .LVU111
	.loc 1 130 10 is_stmt 0 view .LVU112
	orl	$-1, %eax
	jmp	.L54
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x34b
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xe
	.long	.LASF21
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL12
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
	.uleb128 0x9
	.long	.LASF10
	.byte	0x3
	.byte	0x26
	.byte	0x17
	.long	0x38
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.long	0x60
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.long	0x78
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x11
	.long	0x78
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x4d
	.uleb128 0x12
	.long	.LASF22
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x60
	.long	0xac
	.uleb128 0xa
	.long	0x60
	.uleb128 0xa
	.long	0xac
	.uleb128 0xb
	.byte	0
	.uleb128 0x5
	.long	0x7f
	.uleb128 0x13
	.long	0xac
	.uleb128 0xc
	.long	.LASF17
	.byte	0x7c
	.long	0x60
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x267
	.uleb128 0x6
	.long	.LASF12
	.byte	0x7c
	.byte	0xe
	.long	0x60
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x6
	.long	.LASF13
	.byte	0x7c
	.byte	0x1c
	.long	0x267
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x7
	.long	.LASF14
	.byte	0x8b
	.byte	0x8
	.long	0x73
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x7
	.long	.LASF15
	.byte	0x8d
	.byte	0x6
	.long	0x26c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x14
	.long	0x2cd
	.quad	.LBI12
	.byte	.LVU88
	.long	.LLRL7
	.byte	0x1
	.byte	0x90
	.byte	0x3
	.long	0x169
	.uleb128 0x4
	.long	0x2de
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x3
	.quad	.LVL24
	.long	0x90
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x2cd
	.quad	.LBI16
	.byte	.LVU79
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x93
	.long	0x1ba
	.uleb128 0x4
	.long	0x2de
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x3
	.quad	.LVL19
	.long	0x90
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x2cd
	.quad	.LBI20
	.byte	.LVU98
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x86
	.long	0x206
	.uleb128 0x4
	.long	0x2de
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x3
	.quad	.LVL27
	.long	0x30e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x2cd
	.quad	.LBI22
	.byte	.LVU106
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x81
	.long	0x252
	.uleb128 0x4
	.long	0x2de
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x3
	.quad	.LVL30
	.long	0x30e
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL15
	.long	0x273
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x73
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF18
	.byte	0xb
	.long	0x26c
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cd
	.uleb128 0x6
	.long	.LASF19
	.byte	0xb
	.byte	0x1a
	.long	0x73
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x7
	.long	.LASF20
	.byte	0xf
	.byte	0xd
	.long	0x84
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x15
	.long	.LLRL2
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x13
	.byte	0x16
	.long	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF23
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x60
	.byte	0x3
	.long	0x2ec
	.uleb128 0x18
	.long	.LASF24
	.byte	0x2
	.byte	0x6e
	.byte	0x20
	.long	0xb1
	.uleb128 0xb
	.byte	0
	.uleb128 0xd
	.uleb128 0x20
	.byte	0x9e
	.uleb128 0x1e
	.byte	0x5b
	.byte	0x45
	.byte	0x52
	.byte	0x52
	.byte	0x4f
	.byte	0x52
	.byte	0x5d
	.byte	0x3a
	.byte	0x20
	.byte	0x54
	.byte	0x6f
	.byte	0x6f
	.byte	0x20
	.byte	0x6d
	.byte	0x61
	.byte	0x6e
	.byte	0x79
	.byte	0x20
	.byte	0x61
	.byte	0x72
	.byte	0x67
	.byte	0x75
	.byte	0x6d
	.byte	0x65
	.byte	0x6e
	.byte	0x74
	.byte	0x73
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x19
	.long	.LASF25
	.long	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.uleb128 0x33
	.byte	0x9e
	.uleb128 0x31
	.byte	0x5b
	.byte	0x45
	.byte	0x52
	.byte	0x52
	.byte	0x4f
	.byte	0x52
	.byte	0x5d
	.byte	0x3a
	.byte	0x20
	.byte	0x4d
	.byte	0x69
	.byte	0x73
	.byte	0x73
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0x20
	.byte	0x61
	.byte	0x72
	.byte	0x67
	.byte	0x75
	.byte	0x6d
	.byte	0x65
	.byte	0x6e
	.byte	0x74
	.byte	0x20
	.byte	0x3c
	.byte	0x77
	.byte	0x6f
	.byte	0x72
	.byte	0x64
	.byte	0x3e
	.byte	0x20
	.byte	0x6f
	.byte	0x66
	.byte	0x20
	.byte	0x74
	.byte	0x79
	.byte	0x70
	.byte	0x65
	.byte	0x20
	.byte	0x63
	.byte	0x68
	.byte	0x61
	.byte	0x72
	.byte	0x2a
	.byte	0x20
	.byte	0xa
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xd
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL14-.LVL12
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LVL25-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL12
	.uleb128 .LVL26-.LVL12
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL26-.LVL12
	.uleb128 .LVL28-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL12
	.uleb128 .LVL29-.LVL12
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL29-.LVL12
	.uleb128 .LFE24-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL17-.LVL12
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL17-.LVL12
	.uleb128 .LVL21-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL12
	.uleb128 .LVL22-.LVL12
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL22-.LVL12
	.uleb128 .LVL25-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL12
	.uleb128 .LVL27-1-.LVL12
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL27-1-.LVL12
	.uleb128 .LVL28-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL12
	.uleb128 .LVL30-1-.LVL12
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL30-1-.LVL12
	.uleb128 .LFE24-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU72
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU93
.LLST5:
	.byte	0x6
	.quad	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL19-1-.LVL13
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL21-.LVL13
	.uleb128 .LVL24-1-.LVL13
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS6:
	.uleb128 .LVU75
	.uleb128 .LVU83
	.uleb128 .LVU87
	.uleb128 .LVU92
.LLST6:
	.byte	0x6
	.quad	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL18-.LVL15
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL21-.LVL15
	.uleb128 .LVL23-.LVL15
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS8:
	.uleb128 .LVU88
	.uleb128 .LVU96
.LLST8:
	.byte	0x8
	.quad	.LVL21
	.uleb128 .LVL25-.LVL21
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU79
	.uleb128 .LVU86
.LLST9:
	.byte	0x8
	.quad	.LVL16
	.uleb128 .LVL20-.LVL16
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU98
	.uleb128 .LVU102
.LLST10:
	.byte	0x8
	.quad	.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+748
	.sleb128 0
	.byte	0
.LVUS11:
	.uleb128 .LVU106
	.uleb128 .LVU110
.LLST11:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL30-.LVL28
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+793
	.sleb128 0
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LFE23-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU50
	.uleb128 .LVU51
	.uleb128 .LVU58
.LLST1:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL4-.LVL1
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL1
	.uleb128 .LVL6-.LVL1
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LVL7-.LVL1
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL1
	.uleb128 .LVL8-.LVL1
	.uleb128 0x2
	.byte	0x35
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
.LLRL2:
	.byte	0x5
	.quad	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB11-.LBB10
	.uleb128 .LBE11-.LBB10
	.byte	0
.LLRL7:
	.byte	0x5
	.quad	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB18-.LBB12
	.uleb128 .LBE18-.LBB12
	.byte	0x4
	.uleb128 .LBB19-.LBB12
	.uleb128 .LBE19-.LBB12
	.byte	0
.LLRL12:
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
.LASF3:
	.string	"unsigned int"
.LASF25:
	.string	"puts"
.LASF6:
	.string	"signed char"
.LASF14:
	.string	"input"
.LASF26:
	.string	"__builtin_puts"
.LASF2:
	.string	"long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF9:
	.string	"char"
.LASF21:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"unsigned char"
.LASF10:
	.string	"__uint8_t"
.LASF17:
	.string	"main"
.LASF15:
	.string	"result"
.LASF8:
	.string	"long int"
.LASF16:
	.string	"_Bool"
.LASF12:
	.string	"argc"
.LASF5:
	.string	"short unsigned int"
.LASF23:
	.string	"printf"
.LASF20:
	.string	"state"
.LASF22:
	.string	"__printf_chk"
.LASF7:
	.string	"short int"
.LASF18:
	.string	"is_in_language"
.LASF24:
	.string	"__fmt"
.LASF19:
	.string	"word"
.LASF13:
	.string	"argv"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction/ex3"
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
