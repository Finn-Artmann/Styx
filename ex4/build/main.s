	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction/ex4" "src/main.c"
	.p2align 4
	.globl	randomNumber
	.type	randomNumber, @function
randomNumber:
.LVL0:
.LFB39:
	.file 1 "src/main.c"
	.loc 1 8 39 view -0
	.cfi_startproc
	.loc 1 8 39 is_stmt 0 view .LVU1
	endbr64
	.loc 1 10 2 is_stmt 1 view .LVU2
	.loc 1 8 39 is_stmt 0 view .LVU3
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx
	.loc 1 10 26 view .LVU4
	subl	%ebp, %ebx
	.loc 1 8 39 view .LVU5
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 10 10 view .LVU6
	call	rand@PLT
.LVL1:
	.loc 1 10 34 view .LVU7
	leal	1(%rbx), %esi
	.loc 1 11 1 view .LVU8
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	.loc 1 10 17 view .LVU9
	cltd
	.loc 1 11 1 view .LVU10
	popq	%rbx
	.cfi_def_cfa_offset 16
	.loc 1 10 17 view .LVU11
	idivl	%esi
	.loc 1 10 39 view .LVU12
	leal	(%rdx,%rbp), %eax
	.loc 1 11 1 view .LVU13
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL2:
	.loc 1 11 1 view .LVU14
	ret
	.cfi_endproc
.LFE39:
	.size	randomNumber, .-randomNumber
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Now pushing random amount (between 5 and 10) of random numbers (between 1 and 100)"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL3:
.LFB40:
	.loc 1 14 30 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 14 30 is_stmt 0 view .LVU16
	endbr64
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
	.loc 1 14 30 view .LVU17
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 16 2 is_stmt 1 view .LVU18
	movq	%rsp, %rbp
	leaq	20(%rsp), %r12
	.loc 1 16 16 is_stmt 0 view .LVU19
	call	s_new@PLT
.LVL4:
	.loc 1 18 6 view .LVU20
	movdqa	.LC0(%rip), %xmm0
	movl	$7, 16(%rsp)
	.loc 1 16 16 view .LVU21
	movq	%rax, %rbx
.LVL5:
	.loc 1 18 2 is_stmt 1 view .LVU22
	.loc 1 19 2 view .LVU23
	.loc 1 22 2 view .LVU24
.LBB32:
	.loc 1 22 6 view .LVU25
	.loc 1 22 17 view .LVU26
.LBE32:
	.loc 1 18 6 is_stmt 0 view .LVU27
	movaps	%xmm0, (%rsp)
.LVL6:
	.p2align 4,,10
	.p2align 3
.L5:
.LBB33:
	.loc 1 23 3 is_stmt 1 discriminator 3 view .LVU28
	movl	0(%rbp), %esi
	movq	%rbx, %rdi
	.loc 1 22 17 is_stmt 0 discriminator 3 view .LVU29
	addq	$4, %rbp
.LVL7:
	.loc 1 23 3 discriminator 3 view .LVU30
	call	s_push@PLT
.LVL8:
	.loc 1 22 56 is_stmt 1 discriminator 3 view .LVU31
	.loc 1 22 17 discriminator 3 view .LVU32
	cmpq	%r12, %rbp
	jne	.L5
	movl	$3, %ebp
	leaq	.LC1(%rip), %r12
.L6:
.LBE33:
.LBB34:
	.loc 1 28 3 discriminator 3 view .LVU33
	movq	%rbx, %rdi
	call	s_pop@PLT
.LVL9:
.LBB35:
.LBB36:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 112 10 is_stmt 0 discriminator 3 view .LVU34
	movq	%r12, %rsi
	movl	$1, %edi
.LBE36:
.LBE35:
	.loc 1 28 3 discriminator 3 view .LVU35
	movl	%eax, %edx
.LVL10:
.LBB38:
.LBI35:
	.loc 2 110 1 is_stmt 1 discriminator 3 view .LVU36
.LBB37:
	.loc 2 112 3 discriminator 3 view .LVU37
	.loc 2 112 10 is_stmt 0 discriminator 3 view .LVU38
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL11:
	.loc 2 112 10 discriminator 3 view .LVU39
.LBE37:
.LBE38:
	.loc 1 27 24 is_stmt 1 discriminator 3 view .LVU40
	.loc 1 27 17 discriminator 3 view .LVU41
	subl	$1, %ebp
	jne	.L6
.LVL12:
	.loc 1 27 17 is_stmt 0 discriminator 3 view .LVU42
.LBE34:
.LBB39:
	.loc 1 33 3 is_stmt 1 view .LVU43
	movl	$2, %esi
	movq	%rbx, %rdi
	movl	$5, %ebp
	call	s_push@PLT
.LVL13:
	.loc 1 32 56 view .LVU44
	.loc 1 32 17 view .LVU45
	.loc 1 33 3 view .LVU46
	movl	$4, %esi
	movq	%rbx, %rdi
	call	s_push@PLT
.LVL14:
	.loc 1 32 56 view .LVU47
	.loc 1 32 17 view .LVU48
	.loc 1 33 3 view .LVU49
	movl	$8, %esi
	movq	%rbx, %rdi
	call	s_push@PLT
.LVL15:
	.loc 1 32 56 view .LVU50
	.loc 1 32 17 view .LVU51
.L7:
.LBE39:
.LBB40:
	.loc 1 38 3 discriminator 3 view .LVU52
	movq	%rbx, %rdi
	call	s_pop@PLT
.LVL16:
.LBB41:
.LBB42:
	.loc 2 112 10 is_stmt 0 discriminator 3 view .LVU53
	movq	%r12, %rsi
	movl	$1, %edi
.LBE42:
.LBE41:
	.loc 1 38 3 discriminator 3 view .LVU54
	movl	%eax, %edx
.LVL17:
.LBB44:
.LBI41:
	.loc 2 110 1 is_stmt 1 discriminator 3 view .LVU55
.LBB43:
	.loc 2 112 3 discriminator 3 view .LVU56
	.loc 2 112 10 is_stmt 0 discriminator 3 view .LVU57
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL18:
	.loc 2 112 10 discriminator 3 view .LVU58
.LBE43:
.LBE44:
	.loc 1 37 23 is_stmt 1 discriminator 3 view .LVU59
	.loc 1 37 17 discriminator 3 view .LVU60
	subl	$1, %ebp
	jne	.L7
.LBE40:
	.loc 1 41 2 view .LVU61
.LVL19:
.LBB45:
.LBI45:
	.loc 2 110 1 view .LVU62
.LBB46:
	.loc 2 112 3 view .LVU63
	.loc 2 112 10 is_stmt 0 view .LVU64
	leaq	.LC2(%rip), %rdi
.LBE46:
.LBE45:
.LBB48:
	.loc 1 44 10 view .LVU65
	xorl	%ebp, %ebp
.LBE48:
.LBB55:
.LBB47:
	.loc 2 112 10 view .LVU66
	call	puts@PLT
.LVL20:
	.loc 2 112 10 view .LVU67
.LBE47:
.LBE55:
	.loc 1 43 2 is_stmt 1 view .LVU68
	.loc 1 43 8 is_stmt 0 view .LVU69
	xorl	%edi, %edi
	call	time@PLT
.LVL21:
	.loc 1 43 2 view .LVU70
	movl	%eax, %edi
	call	srand@PLT
.LVL22:
	.loc 1 44 2 is_stmt 1 view .LVU71
.LBB56:
	.loc 1 44 6 view .LVU72
	.loc 1 44 2 is_stmt 0 view .LVU73
	jmp	.L8
.LVL23:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 45 3 is_stmt 1 view .LVU74
.LBB49:
.LBI49:
	.loc 1 8 5 view .LVU75
.LBB50:
	.loc 1 10 2 view .LVU76
	.loc 1 10 10 is_stmt 0 view .LVU77
	call	rand@PLT
.LVL24:
	.loc 1 10 10 view .LVU78
.LBE50:
.LBE49:
	.loc 1 45 3 view .LVU79
	movq	%rbx, %rdi
	.loc 1 44 40 view .LVU80
	addl	$1, %ebp
.LVL25:
.LBB52:
.LBB51:
	.loc 1 10 17 view .LVU81
	movslq	%eax, %rdx
	movl	%eax, %ecx
	imulq	$1374389535, %rdx, %rdx
	sarl	$31, %ecx
	sarq	$37, %rdx
	subl	%ecx, %edx
	imull	$100, %edx, %edx
	subl	%edx, %eax
	.loc 1 10 39 view .LVU82
	leal	1(%rax), %esi
.LBE51:
.LBE52:
	.loc 1 45 3 view .LVU83
	call	s_push@PLT
.LVL26:
	.loc 1 44 40 is_stmt 1 view .LVU84
.L8:
	.loc 1 44 17 discriminator 1 view .LVU85
.LBB53:
.LBI53:
	.loc 1 8 5 discriminator 1 view .LVU86
.LBB54:
	.loc 1 10 2 discriminator 1 view .LVU87
	.loc 1 10 10 is_stmt 0 discriminator 1 view .LVU88
	call	rand@PLT
.LVL27:
	.loc 1 10 17 discriminator 1 view .LVU89
	movslq	%eax, %rdx
	movl	%eax, %ecx
	imulq	$715827883, %rdx, %rdx
	sarl	$31, %ecx
	shrq	$32, %rdx
	subl	%ecx, %edx
	leal	(%rdx,%rdx,2), %edx
	addl	%edx, %edx
	subl	%edx, %eax
	.loc 1 10 39 discriminator 1 view .LVU90
	addl	$5, %eax
.LBE54:
.LBE53:
	.loc 1 44 17 discriminator 1 view .LVU91
	cmpl	%eax, %ebp
	jl	.L9
.LBE56:
	.loc 1 48 8 is_stmt 1 view .LVU92
	.loc 1 48 9 is_stmt 0 view .LVU93
	movq	%rbx, %rdi
	call	s_isempty@PLT
.LVL28:
	.loc 1 48 8 view .LVU94
	testl	%eax, %eax
	jne	.L17
	.p2align 4,,10
	.p2align 3
.L11:
	.loc 1 49 3 is_stmt 1 view .LVU95
	movq	%rbx, %rdi
	call	s_pop@PLT
.LVL29:
.LBB57:
.LBB58:
	.loc 2 112 10 is_stmt 0 view .LVU96
	movl	$1, %edi
	movq	%r12, %rsi
.LBE58:
.LBE57:
	.loc 1 49 3 view .LVU97
	movl	%eax, %edx
.LVL30:
.LBB60:
.LBI57:
	.loc 2 110 1 is_stmt 1 view .LVU98
.LBB59:
	.loc 2 112 3 view .LVU99
	.loc 2 112 10 is_stmt 0 view .LVU100
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL31:
	.loc 2 112 10 view .LVU101
.LBE59:
.LBE60:
	.loc 1 48 8 is_stmt 1 view .LVU102
	.loc 1 48 9 is_stmt 0 view .LVU103
	movq	%rbx, %rdi
	call	s_isempty@PLT
.LVL32:
	.loc 1 48 8 view .LVU104
	testl	%eax, %eax
	je	.L11
.L17:
	.loc 1 52 2 is_stmt 1 view .LVU105
	.loc 1 53 1 is_stmt 0 view .LVU106
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L18
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL33:
	.loc 1 53 1 view .LVU107
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL34:
	.loc 1 53 1 view .LVU108
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL35:
.L18:
	.cfi_restore_state
	.loc 1 53 1 view .LVU109
	call	__stack_chk_fail@PLT
.LVL36:
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	3
	.long	1
	.long	3
	.long	3
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "include/stack.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x675
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x15
	.long	.LASF29
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL23
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
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xa
	.long	.LASF11
	.byte	0x3
	.byte	0xa0
	.byte	0x12
	.long	0x5b
	.uleb128 0x6
	.long	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x17
	.long	0x73
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0xa
	.long	.LASF12
	.byte	0x4
	.byte	0xa
	.byte	0x12
	.long	0x62
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x6
	.long	0x7a
	.uleb128 0x18
	.long	0x99
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x5
	.byte	0xd
	.long	0x54
	.uleb128 0x19
	.long	.LASF30
	.byte	0x10
	.byte	0x5
	.byte	0x7
	.byte	0x10
	.long	0xd7
	.uleb128 0x1a
	.long	.LASF15
	.byte	0x5
	.byte	0x9
	.byte	0x9
	.long	0xd7
	.byte	0
	.uleb128 0x1b
	.string	"top"
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.long	0x54
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0xa3
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0xc
	.byte	0x3
	.long	0xaf
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x54
	.long	0x104
	.uleb128 0x5
	.long	0x54
	.uleb128 0x5
	.long	0x99
	.uleb128 0xd
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0x16
	.byte	0x5
	.long	0x54
	.long	0x11a
	.uleb128 0x5
	.long	0x11a
	.byte	0
	.uleb128 0x6
	.long	0xdc
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x7
	.value	0x1c8
	.byte	0xd
	.long	0x132
	.uleb128 0x5
	.long	0x31
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0x4c
	.byte	0xf
	.long	0x86
	.long	0x148
	.uleb128 0x5
	.long	0x148
	.byte	0
	.uleb128 0x6
	.long	0x86
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.byte	0x14
	.byte	0x7
	.long	0xa3
	.long	0x163
	.uleb128 0x5
	.long	0x11a
	.byte	0
	.uleb128 0x1d
	.long	.LASF22
	.byte	0x5
	.byte	0x12
	.byte	0x6
	.long	0x17a
	.uleb128 0x5
	.long	0x11a
	.uleb128 0x5
	.long	0xa3
	.byte	0
	.uleb128 0x1e
	.long	.LASF23
	.byte	0x5
	.byte	0x10
	.byte	0xa
	.long	0x11a
	.long	0x18c
	.uleb128 0xd
	.byte	0
	.uleb128 0x1f
	.long	.LASF31
	.byte	0x7
	.value	0x1c6
	.byte	0xc
	.long	0x54
	.uleb128 0x20
	.long	.LASF32
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.long	0x54
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x55b
	.uleb128 0x10
	.string	"arc"
	.byte	0xe
	.long	0x54
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x10
	.string	"arv"
	.byte	0x1a
	.long	0x55b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0xc
	.string	"s1"
	.byte	0x10
	.byte	0xb
	.long	0x11a
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.long	0x560
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF24
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.long	0x570
	.uleb128 0x11
	.long	.LLRL5
	.long	0x23b
	.uleb128 0xc
	.string	"i"
	.byte	0x16
	.byte	0xa
	.long	0x54
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x4
	.quad	.LVL8
	.long	0x163
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x2ac
	.uleb128 0x12
	.string	"i"
	.byte	0x1b
	.long	0x54
	.uleb128 0x9
	.long	0x5aa
	.quad	.LBI35
	.byte	.LVU36
	.long	.LLRL7
	.byte	0x1c
	.byte	0x3
	.long	0x297
	.uleb128 0x3
	.long	0x5bb
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x4
	.quad	.LVL11
	.long	0xe8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LVL9
	.long	0x14d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x326
	.uleb128 0xc
	.string	"i"
	.byte	0x20
	.byte	0xa
	.long	0x54
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x7
	.quad	.LVL13
	.long	0x163
	.long	0x2ef
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x7
	.quad	.LVL14
	.long	0x163
	.long	0x30c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x4
	.quad	.LVL15
	.long	0x163
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xe
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x397
	.uleb128 0x12
	.string	"i"
	.byte	0x25
	.long	0x54
	.uleb128 0x9
	.long	0x5aa
	.quad	.LBI41
	.byte	.LVU55
	.long	.LLRL10
	.byte	0x26
	.byte	0x3
	.long	0x382
	.uleb128 0x3
	.long	0x5bb
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x4
	.quad	.LVL18
	.long	0xe8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LVL16
	.long	0x14d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LLRL14
	.long	0x453
	.uleb128 0xc
	.string	"i"
	.byte	0x2c
	.byte	0xa
	.long	0x54
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x9
	.long	0x580
	.quad	.LBI49
	.byte	.LVU75
	.long	.LLRL16
	.byte	0x2d
	.byte	0x3
	.long	0x3f1
	.uleb128 0x3
	.long	0x59d
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x3
	.long	0x591
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x8
	.quad	.LVL24
	.long	0x18c
	.byte	0
	.uleb128 0x23
	.long	0x580
	.quad	.LBI53
	.byte	.LVU86
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.byte	0x1
	.byte	0x2c
	.byte	0x13
	.long	0x43e
	.uleb128 0x3
	.long	0x59d
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x3
	.long	0x591
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x8
	.quad	.LVL27
	.long	0x18c
	.byte	0
	.uleb128 0x4
	.quad	.LVL26
	.long	0x163
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x5aa
	.quad	.LBI45
	.byte	.LVU62
	.long	.LLRL12
	.byte	0x29
	.byte	0x2
	.long	0x494
	.uleb128 0x3
	.long	0x5bb
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x4
	.quad	.LVL20
	.long	0x664
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x5aa
	.quad	.LBI57
	.byte	.LVU98
	.long	.LLRL21
	.byte	0x31
	.byte	0x3
	.long	0x4d3
	.uleb128 0x3
	.long	0x5bb
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x4
	.quad	.LVL31
	.long	0xe8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL4
	.long	0x17a
	.uleb128 0x7
	.quad	.LVL21
	.long	0x132
	.long	0x4f8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL22
	.long	0x11f
	.uleb128 0x7
	.quad	.LVL28
	.long	0x104
	.long	0x51d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL29
	.long	0x14d
	.long	0x535
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL32
	.long	0x104
	.long	0x54d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL36
	.long	0x66f
	.byte	0
	.uleb128 0x6
	.long	0x6e
	.uleb128 0x13
	.long	0x54
	.long	0x570
	.uleb128 0x14
	.long	0x2a
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	0x54
	.long	0x580
	.uleb128 0x14
	.long	0x2a
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.long	.LASF25
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.long	0x54
	.byte	0x1
	.long	0x5aa
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x8
	.byte	0x16
	.long	0x54
	.uleb128 0xf
	.long	.LASF27
	.byte	0x1
	.byte	0x8
	.byte	0x21
	.long	0x54
	.byte	0
	.uleb128 0x25
	.long	.LASF34
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x54
	.byte	0x3
	.long	0x5c9
	.uleb128 0xf
	.long	.LASF28
	.byte	0x2
	.byte	0x6e
	.byte	0x20
	.long	0x9e
	.uleb128 0xd
	.byte	0
	.uleb128 0x26
	.long	0x580
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x60c
	.uleb128 0x3
	.long	0x591
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x3
	.long	0x59d
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x8
	.quad	.LVL1
	.long	0x18c
	.byte	0
	.uleb128 0x27
	.uleb128 0x56
	.byte	0x9e
	.uleb128 0x54
	.byte	0x4e
	.byte	0x6f
	.byte	0x77
	.byte	0x20
	.byte	0x70
	.byte	0x75
	.byte	0x73
	.byte	0x68
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0x20
	.byte	0x72
	.byte	0x61
	.byte	0x6e
	.byte	0x64
	.byte	0x6f
	.byte	0x6d
	.byte	0x20
	.byte	0x61
	.byte	0x6d
	.byte	0x6f
	.byte	0x75
	.byte	0x6e
	.byte	0x74
	.byte	0x20
	.byte	0x28
	.byte	0x62
	.byte	0x65
	.byte	0x74
	.byte	0x77
	.byte	0x65
	.byte	0x65
	.byte	0x6e
	.byte	0x20
	.byte	0x35
	.byte	0x20
	.byte	0x61
	.byte	0x6e
	.byte	0x64
	.byte	0x20
	.byte	0x31
	.byte	0x30
	.byte	0x29
	.byte	0x20
	.byte	0x6f
	.byte	0x66
	.byte	0x20
	.byte	0x72
	.byte	0x61
	.byte	0x6e
	.byte	0x64
	.byte	0x6f
	.byte	0x6d
	.byte	0x20
	.byte	0x6e
	.byte	0x75
	.byte	0x6d
	.byte	0x62
	.byte	0x65
	.byte	0x72
	.byte	0x73
	.byte	0x20
	.byte	0x28
	.byte	0x62
	.byte	0x65
	.byte	0x74
	.byte	0x77
	.byte	0x65
	.byte	0x65
	.byte	0x6e
	.byte	0x20
	.byte	0x31
	.byte	0x20
	.byte	0x61
	.byte	0x6e
	.byte	0x64
	.byte	0x20
	.byte	0x31
	.byte	0x30
	.byte	0x30
	.byte	0x29
	.byte	0xa
	.byte	0
	.uleb128 0x28
	.long	.LASF35
	.long	.LASF36
	.byte	0x8
	.byte	0
	.uleb128 0x29
	.long	.LASF37
	.long	.LASF37
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x4
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS2:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-1-.LVL3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL4-1-.LVL3
	.uleb128 .LFE40-.LVL3
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-1-.LVL3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL4-1-.LVL3
	.uleb128 .LFE40-.LVL3
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU22
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU107
	.uleb128 .LVU109
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LVL33-.LVL5
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL35-.LVL5
	.uleb128 .LFE40-.LVL5
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS6:
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU32
.LLST6:
	.byte	0x6
	.quad	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0xa
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x40
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL5
	.uleb128 .LVL8-.LVL5
	.uleb128 0xa
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3c
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU36
	.uleb128 .LVU39
.LLST8:
	.byte	0x8
	.quad	.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU42
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST9:
	.byte	0x6
	.quad	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LVL14-.LVL12
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LVL15-.LVL12
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL12
	.uleb128 .LFE40-.LVL12
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU55
	.uleb128 .LVU58
.LLST11:
	.byte	0x8
	.quad	.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 0
.LLST15:
	.byte	0x6
	.quad	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.LVL22
	.uleb128 .LVL25-.LVL22
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL25-.LVL22
	.uleb128 .LVL26-.LVL22
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL22
	.uleb128 .LVL34-.LVL22
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL35-.LVL22
	.uleb128 .LFE40-.LVL22
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS17:
	.uleb128 .LVU75
	.uleb128 .LVU78
.LLST17:
	.byte	0x8
	.quad	.LVL23
	.uleb128 .LVL24-.LVL23
	.uleb128 0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU75
	.uleb128 .LVU78
.LLST18:
	.byte	0x8
	.quad	.LVL23
	.uleb128 .LVL24-.LVL23
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU86
	.uleb128 .LVU89
.LLST19:
	.byte	0x8
	.quad	.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU86
	.uleb128 .LVU89
.LLST20:
	.byte	0x8
	.quad	.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x2
	.byte	0x35
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU62
	.uleb128 .LVU67
.LLST13:
	.byte	0x8
	.quad	.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+1548
	.sleb128 0
	.byte	0
.LVUS22:
	.uleb128 .LVU98
	.uleb128 .LVU101
.LLST22:
	.byte	0x8
	.quad	.LVL30
	.uleb128 .LVL31-.LVL30
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE39-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LFE39-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
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
	.quad	.LFB40
	.quad	.LFE40-.LFB40
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
.LLRL5:
	.byte	0x5
	.quad	.LBB32
	.byte	0x4
	.uleb128 .LBB32-.LBB32
	.uleb128 .LBE32-.LBB32
	.byte	0x4
	.uleb128 .LBB33-.LBB32
	.uleb128 .LBE33-.LBB32
	.byte	0
.LLRL7:
	.byte	0x5
	.quad	.LBB35
	.byte	0x4
	.uleb128 .LBB35-.LBB35
	.uleb128 .LBE35-.LBB35
	.byte	0x4
	.uleb128 .LBB38-.LBB35
	.uleb128 .LBE38-.LBB35
	.byte	0
.LLRL10:
	.byte	0x5
	.quad	.LBB41
	.byte	0x4
	.uleb128 .LBB41-.LBB41
	.uleb128 .LBE41-.LBB41
	.byte	0x4
	.uleb128 .LBB44-.LBB41
	.uleb128 .LBE44-.LBB41
	.byte	0
.LLRL12:
	.byte	0x5
	.quad	.LBB45
	.byte	0x4
	.uleb128 .LBB45-.LBB45
	.uleb128 .LBE45-.LBB45
	.byte	0x4
	.uleb128 .LBB55-.LBB45
	.uleb128 .LBE55-.LBB45
	.byte	0
.LLRL14:
	.byte	0x5
	.quad	.LBB48
	.byte	0x4
	.uleb128 .LBB48-.LBB48
	.uleb128 .LBE48-.LBB48
	.byte	0x4
	.uleb128 .LBB56-.LBB48
	.uleb128 .LBE56-.LBB48
	.byte	0
.LLRL16:
	.byte	0x5
	.quad	.LBB49
	.byte	0x4
	.uleb128 .LBB49-.LBB49
	.uleb128 .LBE49-.LBB49
	.byte	0x4
	.uleb128 .LBB52-.LBB49
	.uleb128 .LBE52-.LBB49
	.byte	0
.LLRL21:
	.byte	0x5
	.quad	.LBB57
	.byte	0x4
	.uleb128 .LBB57-.LBB57
	.uleb128 .LBE57-.LBB57
	.byte	0x4
	.uleb128 .LBB60-.LBB57
	.uleb128 .LBE60-.LBB57
	.byte	0
.LLRL23:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB40
	.uleb128 .LFE40-.LFB40
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"__fmt"
.LASF11:
	.string	"__time_t"
.LASF27:
	.string	"upper"
.LASF21:
	.string	"srand"
.LASF17:
	.string	"__printf_chk"
.LASF26:
	.string	"lower"
.LASF20:
	.string	"s_pop"
.LASF15:
	.string	"data"
.LASF36:
	.string	"__builtin_puts"
.LASF29:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"unsigned char"
.LASF23:
	.string	"s_new"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF37:
	.string	"__stack_chk_fail"
.LASF24:
	.string	"numbers2"
.LASF25:
	.string	"randomNumber"
.LASF30:
	.string	"Stack"
.LASF22:
	.string	"s_push"
.LASF32:
	.string	"main"
.LASF3:
	.string	"unsigned int"
.LASF13:
	.string	"long long unsigned int"
.LASF14:
	.string	"val_t"
.LASF12:
	.string	"time_t"
.LASF19:
	.string	"time"
.LASF10:
	.string	"long long int"
.LASF18:
	.string	"s_isempty"
.LASF34:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF16:
	.string	"stack_t"
.LASF8:
	.string	"long int"
.LASF9:
	.string	"char"
.LASF35:
	.string	"puts"
.LASF6:
	.string	"signed char"
.LASF33:
	.string	"numbers1"
.LASF31:
	.string	"rand"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction/ex4"
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
