	.file	"queue.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction" "src/queue.c"
	.p2align 4
	.globl	init_queue
	.type	init_queue, @function
init_queue:
.LVL0:
.LFB51:
	.file 1 "src/queue.c"
	.loc 1 8 28 view -0
	.cfi_startproc
	.loc 1 8 28 is_stmt 0 view .LVU1
	endbr64
	.loc 1 10 2 is_stmt 1 view .LVU2
	.loc 1 8 28 is_stmt 0 view .LVU3
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 8 28 view .LVU4
	movq	%rdi, %rbx
	.loc 1 10 12 view .LVU5
	xorl	%edi, %edi
.LVL1:
	.loc 1 10 12 view .LVU6
	call	malloc@PLT
.LVL2:
	.loc 1 10 10 view .LVU7
	movq	%rax, (%rbx)
	.loc 1 11 2 is_stmt 1 view .LVU8
	.loc 1 12 2 view .LVU9
	.loc 1 11 10 is_stmt 0 view .LVU10
	movq	.LC0(%rip), %rax
	movq	%rax, 8(%rbx)
	.loc 1 13 1 view .LVU11
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL3:
	.loc 1 13 1 view .LVU12
	ret
	.cfi_endproc
.LFE51:
	.size	init_queue, .-init_queue
	.p2align 4
	.globl	free_queue
	.type	free_queue, @function
free_queue:
.LVL4:
.LFB52:
	.loc 1 15 28 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 15 28 is_stmt 0 view .LVU14
	endbr64
	.loc 1 17 2 is_stmt 1 view .LVU15
	.loc 1 15 28 is_stmt 0 view .LVU16
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 17 4 view .LVU17
	movl	8(%rdi), %eax
	testl	%eax, %eax
	je	.L4
	movq	%rdi, %rbp
.LVL5:
.LBB9:
	.loc 1 18 18 is_stmt 1 view .LVU18
	jle	.L6
	xorl	%ebx, %ebx
.LVL6:
	.p2align 4,,10
	.p2align 3
.L7:
	.loc 1 19 4 discriminator 3 view .LVU19
	movq	0(%rbp), %rax
	movq	(%rax,%rbx,8), %rdi
	.loc 1 18 18 is_stmt 0 discriminator 3 view .LVU20
	addq	$1, %rbx
.LVL7:
	.loc 1 19 4 discriminator 3 view .LVU21
	call	free@PLT
.LVL8:
	.loc 1 18 30 is_stmt 1 discriminator 3 view .LVU22
	.loc 1 18 18 discriminator 3 view .LVU23
	cmpl	%ebx, 8(%rbp)
	jg	.L7
.L6:
	.loc 1 18 18 is_stmt 0 discriminator 3 view .LVU24
.LBE9:
	.loc 1 21 3 is_stmt 1 view .LVU25
	.loc 1 22 3 view .LVU26
	.loc 1 21 11 is_stmt 0 view .LVU27
	movq	.LC0(%rip), %rax
	.loc 1 23 11 view .LVU28
	movq	$0, 0(%rbp)
	.loc 1 21 11 view .LVU29
	movq	%rax, 8(%rbp)
	.loc 1 23 3 is_stmt 1 view .LVU30
.LVL9:
.L4:
	.loc 1 25 1 is_stmt 0 view .LVU31
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.size	free_queue, .-free_queue
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%s | "
	.text
	.p2align 4
	.globl	print_queue
	.type	print_queue, @function
print_queue:
.LVL10:
.LFB53:
	.loc 1 27 29 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 27 29 is_stmt 0 view .LVU33
	endbr64
	.loc 1 29 2 is_stmt 1 view .LVU34
.LBB10:
	.loc 1 29 6 view .LVU35
.LBE10:
	.loc 1 27 29 is_stmt 0 view .LVU36
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
.LBB19:
	.loc 1 29 10 view .LVU37
	movl	12(%rdi), %ebx
.LVL11:
	.loc 1 29 25 is_stmt 1 view .LVU38
	cmpl	8(%rdi), %ebx
	jg	.L14
	movslq	%ebx, %rbp
	movq	%rdi, %r12
	leaq	.LC1(%rip), %r13
	salq	$3, %rbp
.LVL12:
	.p2align 4,,10
	.p2align 3
.L15:
	.loc 1 30 3 discriminator 3 view .LVU39
.LBB11:
.LBI11:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 110 1 discriminator 3 view .LVU40
.LBB12:
	.loc 2 112 3 discriminator 3 view .LVU41
.LBE12:
.LBE11:
	.loc 1 30 3 is_stmt 0 discriminator 3 view .LVU42
	movq	(%r12), %rax
.LBB16:
.LBB13:
	.loc 2 112 10 discriminator 3 view .LVU43
	movq	%r13, %rsi
	movl	$1, %edi
.LBE13:
.LBE16:
	.loc 1 29 38 discriminator 3 view .LVU44
	addl	$1, %ebx
.LVL13:
.LBB17:
.LBB14:
	.loc 2 112 10 discriminator 3 view .LVU45
	movq	(%rax,%rbp), %rdx
	xorl	%eax, %eax
.LBE14:
.LBE17:
	.loc 1 29 25 discriminator 3 view .LVU46
	addq	$8, %rbp
.LBB18:
.LBB15:
	.loc 2 112 10 discriminator 3 view .LVU47
	call	__printf_chk@PLT
.LVL14:
	.loc 2 112 10 discriminator 3 view .LVU48
.LBE15:
.LBE18:
	.loc 1 29 38 is_stmt 1 discriminator 3 view .LVU49
	.loc 1 29 25 discriminator 3 view .LVU50
	cmpl	%ebx, 8(%r12)
	jge	.L15
.LVL15:
.L14:
	.loc 1 29 25 is_stmt 0 discriminator 3 view .LVU51
.LBE19:
	.loc 1 32 2 is_stmt 1 view .LVU52
.LBB20:
.LBI20:
	.loc 2 110 1 view .LVU53
.LBB21:
	.loc 2 112 3 view .LVU54
.LBE21:
.LBE20:
	.loc 1 33 1 is_stmt 0 view .LVU55
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
.LBB24:
.LBB22:
	.loc 2 112 10 view .LVU56
	movl	$10, %edi
.LBE22:
.LBE24:
	.loc 1 33 1 view .LVU57
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL16:
	.loc 1 33 1 view .LVU58
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LBB25:
.LBB23:
	.loc 2 112 10 view .LVU59
	jmp	putchar@PLT
.LVL17:
.LBE23:
.LBE25:
	.cfi_endproc
.LFE53:
	.size	print_queue, .-print_queue
	.p2align 4
	.globl	dequeue
	.type	dequeue, @function
dequeue:
.LVL18:
.LFB54:
	.loc 1 36 26 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 36 26 is_stmt 0 view .LVU61
	endbr64
	.loc 1 38 2 is_stmt 1 view .LVU62
	.loc 1 38 4 is_stmt 0 view .LVU63
	testq	%rdi, %rdi
	je	.L21
	.loc 1 40 2 is_stmt 1 view .LVU64
	.loc 1 40 6 is_stmt 0 view .LVU65
	movslq	12(%rdi), %rax
	.loc 1 40 4 view .LVU66
	cmpl	$-1, %eax
	je	.L21
	.loc 1 43 3 is_stmt 1 view .LVU67
	.loc 1 43 11 is_stmt 0 view .LVU68
	movq	(%rdi), %rdx
	.loc 1 43 25 view .LVU69
	leal	1(%rax), %ecx
	movl	%ecx, 12(%rdi)
	.loc 1 43 17 view .LVU70
	movq	(%rdx,%rax,8), %rax
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.loc 1 38 23 view .LVU71
	xorl	%eax, %eax
	.loc 1 44 1 view .LVU72
	ret
	.cfi_endproc
.LFE54:
	.size	dequeue, .-dequeue
	.p2align 4
	.globl	enqueue
	.type	enqueue, @function
enqueue:
.LVL19:
.LFB55:
	.loc 1 46 37 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 46 37 is_stmt 0 view .LVU74
	endbr64
	.loc 1 48 2 is_stmt 1 view .LVU75
	.loc 1 48 4 is_stmt 0 view .LVU76
	testq	%rdi, %rdi
	je	.L35
	.loc 1 46 37 view .LVU77
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %r14
	.loc 1 50 2 is_stmt 1 view .LVU78
	.loc 1 46 37 is_stmt 0 view .LVU79
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
	.loc 1 50 6 view .LVU80
	movl	8(%rdi), %eax
	movq	%rdi, %rbx
	.loc 1 56 10 view .LVU81
	leal	1(%rax), %ebp
	.loc 1 50 4 view .LVU82
	cmpl	$-1, %eax
	jne	.L26
	.loc 1 51 3 is_stmt 1 view .LVU83
	.loc 1 51 11 is_stmt 0 view .LVU84
	movl	$0, 12(%rdi)
	.loc 1 52 3 is_stmt 1 view .LVU85
	.loc 1 52 11 is_stmt 0 view .LVU86
	xorl	%ebp, %ebp
.L26:
	movl	%ebp, 8(%rbx)
	.loc 1 59 2 is_stmt 1 view .LVU87
	.loc 1 59 12 is_stmt 0 view .LVU88
	movq	%r14, %rdi
.LVL20:
	.loc 1 59 12 view .LVU89
	call	strlen@PLT
.LVL21:
	.loc 1 59 25 view .LVU90
	leal	1(%rax), %edi
	.loc 1 59 12 view .LVU91
	movq	%rax, %r12
.LVL22:
	.loc 1 61 2 is_stmt 1 view .LVU92
	.loc 1 61 14 is_stmt 0 view .LVU93
	movslq	%edi, %rdi
	.loc 1 61 14 view .LVU94
	salq	$3, %rdi
.LVL23:
	.loc 1 61 14 view .LVU95
	call	malloc@PLT
.LVL24:
	.loc 1 61 14 view .LVU96
	movq	%rax, %r13
.LVL25:
	.loc 1 63 2 is_stmt 1 view .LVU97
	.loc 1 63 4 is_stmt 0 view .LVU98
	testq	%rax, %rax
	je	.L22
	.loc 1 65 2 is_stmt 1 view .LVU99
.LVL26:
.LBB26:
.LBI26:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 77 42 view .LVU100
.LBB27:
	.loc 3 79 3 view .LVU101
	.loc 3 79 10 is_stmt 0 view .LVU102
	movq	%r14, %rsi
	movq	%rax, %rdi
	leaq	1(%r12), %rdx
	call	memcpy@PLT
.LVL27:
	.loc 3 79 10 view .LVU103
.LBE27:
.LBE26:
	.loc 1 67 2 is_stmt 1 view .LVU104
	.loc 1 67 49 is_stmt 0 view .LVU105
	leal	1(%rbp), %esi
	.loc 1 67 24 view .LVU106
	movq	(%rbx), %rdi
	.loc 1 67 49 view .LVU107
	movslq	%esi, %rsi
	.loc 1 67 24 view .LVU108
	salq	$3, %rsi
	call	realloc@PLT
.LVL28:
	.loc 1 69 2 is_stmt 1 view .LVU109
	.loc 1 69 4 is_stmt 0 view .LVU110
	testq	%rax, %rax
	je	.L22
	.loc 1 71 2 is_stmt 1 view .LVU111
	.loc 1 71 11 is_stmt 0 view .LVU112
	movslq	8(%rbx), %rdx
	.loc 1 71 19 view .LVU113
	movq	(%rbx), %rax
.LVL29:
	.loc 1 71 19 view .LVU114
	movq	%r13, (%rax,%rdx,8)
.L22:
	.loc 1 72 1 view .LVU115
	popq	%rbx
	.cfi_def_cfa_offset 40
.LVL30:
	.loc 1 72 1 view .LVU116
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL31:
	.loc 1 72 1 view .LVU117
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL32:
	.loc 1 72 1 view .LVU118
	ret
.LVL33:
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.loc 1 72 1 view .LVU119
	ret
	.cfi_endproc
.LFE55:
	.size	enqueue, .-enqueue
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-1
	.long	-1
	.text
.Letext0:
	.file 4 "include/queue.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 6 "/usr/include/stdlib.h"
	.file 7 "/usr/include/string.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x462
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xd
	.long	.LASF15
	.byte	0x5
	.byte	0xd1
	.byte	0x1b
	.long	0x3a
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x15
	.byte	0x8
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
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	0x7e
	.uleb128 0xe
	.long	0x74
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x17
	.long	0x7e
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	0x85
	.uleb128 0xe
	.long	0x98
	.uleb128 0x18
	.long	.LASF37
	.byte	0x10
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.long	0xd4
	.uleb128 0x9
	.long	.LASF12
	.byte	0x5
	.byte	0x9
	.long	0xd4
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x6
	.byte	0x6
	.long	0x66
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x7
	.byte	0x6
	.long	0x66
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	0x74
	.uleb128 0xd
	.long	.LASF16
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.long	0xa2
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.value	0x227
	.byte	0xe
	.long	0x48
	.long	0x101
	.uleb128 0x3
	.long	0x48
	.uleb128 0x3
	.long	0x2e
	.byte	0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0x118
	.uleb128 0x3
	.long	0x98
	.byte	0
	.uleb128 0x19
	.long	.LASF19
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x66
	.long	0x134
	.uleb128 0x3
	.long	0x66
	.uleb128 0x3
	.long	0x98
	.uleb128 0xf
	.byte	0
	.uleb128 0x1a
	.long	.LASF38
	.byte	0x6
	.value	0x22b
	.byte	0xd
	.long	0x147
	.uleb128 0x3
	.long	0x48
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.value	0x21c
	.byte	0xe
	.long	0x48
	.long	0x15e
	.uleb128 0x3
	.long	0x2e
	.byte	0
	.uleb128 0x5
	.long	.LASF23
	.byte	0x2e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b
	.uleb128 0x6
	.string	"q"
	.byte	0x2e
	.byte	0x17
	.long	0x27b
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1b
	.long	.LASF21
	.byte	0x1
	.byte	0x2e
	.byte	0x20
	.long	0x74
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x7
	.string	"len"
	.byte	0x3b
	.byte	0x6
	.long	0x66
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x7
	.string	"cpy"
	.byte	0x3d
	.byte	0x8
	.long	0x74
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x1
	.byte	0x43
	.byte	0x9
	.long	0xd4
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x1d
	.long	0x406
	.quad	.LBI26
	.byte	.LVU100
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.byte	0x41
	.byte	0x2
	.long	0x239
	.uleb128 0xb
	.long	0x422
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0xb
	.long	0x416
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x8
	.quad	.LVL27
	.long	0x44d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL21
	.long	0x101
	.long	0x251
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.quad	.LVL24
	.long	0x147
	.uleb128 0x8
	.quad	.LVL28
	.long	0xe5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xa
	.byte	0x76
	.sleb128 1
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
	.uleb128 0x4
	.long	0xd9
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.byte	0x24
	.byte	0x7
	.long	0x74
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2af
	.uleb128 0x20
	.string	"q"
	.byte	0x1
	.byte	0x24
	.byte	0x18
	.long	0x27b
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x1b
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x367
	.uleb128 0x6
	.string	"q"
	.byte	0x1b
	.byte	0x1b
	.long	0x27b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x21
	.long	.LLRL4
	.long	0x332
	.uleb128 0x7
	.string	"i"
	.byte	0x1d
	.byte	0xa
	.long	0x66
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x11
	.long	0x42f
	.quad	.LBI11
	.byte	.LVU40
	.long	.LLRL6
	.byte	0x1e
	.byte	0x3
	.uleb128 0xb
	.long	0x43f
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x8
	.quad	.LVL14
	.long	0x118
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x42f
	.quad	.LBI20
	.byte	.LVU53
	.long	.LLRL8
	.byte	0x20
	.byte	0x2
	.uleb128 0x22
	.long	0x43f
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+1110
	.sleb128 0
	.uleb128 0x23
	.quad	.LVL17
	.long	0x45c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF25
	.byte	0xf
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c5
	.uleb128 0x6
	.string	"q"
	.byte	0xf
	.byte	0x1a
	.long	0x27b
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x7
	.string	"i"
	.byte	0x12
	.byte	0xb
	.long	0x66
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x10
	.quad	.LVL8
	.long	0x134
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x8
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x406
	.uleb128 0x6
	.string	"q"
	.byte	0x8
	.byte	0x1a
	.long	0x27b
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x8
	.quad	.LVL2
	.long	0x147
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF29
	.byte	0x3
	.byte	0x4d
	.byte	0x2a
	.long	0x74
	.long	0x42f
	.uleb128 0xc
	.long	.LASF27
	.byte	0x3
	.byte	0x4d
	.byte	0x43
	.long	0x79
	.uleb128 0xc
	.long	.LASF28
	.byte	0x3
	.byte	0x4d
	.byte	0x62
	.long	0x9d
	.byte	0
	.uleb128 0x12
	.long	.LASF30
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x66
	.long	0x44d
	.uleb128 0xc
	.long	.LASF31
	.byte	0x2
	.byte	0x6e
	.byte	0x20
	.long	0x9d
	.uleb128 0xf
	.byte	0
	.uleb128 0x13
	.long	.LASF32
	.long	.LASF34
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x2
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.long	.LASF33
	.long	.LASF35
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
.LVUS9:
	.uleb128 0
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL21-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-1-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS11:
	.uleb128 .LVU92
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU96
.LLST11:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-1-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU97
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU117
.LLST12:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL27-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-1-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS13:
	.uleb128 .LVU109
	.uleb128 .LVU114
.LLST13:
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS14:
	.uleb128 .LVU100
	.uleb128 .LVU103
.LLST14:
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS15:
	.uleb128 .LVU100
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU103
.LLST15:
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-1-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU38
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU58
.LLST5:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 .LVU40
	.uleb128 .LVU48
.LLST7:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU21
.LLST2:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE51-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL4:
	.byte	0x4
	.uleb128 .LBB10-.Ltext0
	.uleb128 .LBE10-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0
.LLRL6:
	.byte	0x4
	.uleb128 .LBB11-.Ltext0
	.uleb128 .LBE11-.Ltext0
	.byte	0x4
	.uleb128 .LBB16-.Ltext0
	.uleb128 .LBE16-.Ltext0
	.byte	0x4
	.uleb128 .LBB17-.Ltext0
	.uleb128 .LBE17-.Ltext0
	.byte	0x4
	.uleb128 .LBB18-.Ltext0
	.uleb128 .LBE18-.Ltext0
	.byte	0
.LLRL8:
	.byte	0x4
	.uleb128 .LBB20-.Ltext0
	.uleb128 .LBE20-.Ltext0
	.byte	0x4
	.uleb128 .LBB24-.Ltext0
	.uleb128 .LBE24-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"word"
.LASF28:
	.string	"__src"
.LASF37:
	.string	"Queue"
.LASF24:
	.string	"print_queue"
.LASF27:
	.string	"__dest"
.LASF35:
	.string	"__builtin_putchar"
.LASF25:
	.string	"free_queue"
.LASF19:
	.string	"__printf_chk"
.LASF18:
	.string	"strlen"
.LASF12:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF29:
	.string	"strcpy"
.LASF36:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF15:
	.string	"size_t"
.LASF33:
	.string	"putchar"
.LASF17:
	.string	"realloc"
.LASF7:
	.string	"short int"
.LASF14:
	.string	"head"
.LASF3:
	.string	"unsigned int"
.LASF16:
	.string	"queue_t"
.LASF11:
	.string	"long long unsigned int"
.LASF34:
	.string	"__builtin_memcpy"
.LASF38:
	.string	"free"
.LASF10:
	.string	"long long int"
.LASF32:
	.string	"memcpy"
.LASF23:
	.string	"enqueue"
.LASF30:
	.string	"printf"
.LASF26:
	.string	"init_queue"
.LASF22:
	.string	"data_resized"
.LASF13:
	.string	"tail"
.LASF39:
	.string	"dequeue"
.LASF8:
	.string	"long int"
.LASF9:
	.string	"char"
.LASF6:
	.string	"signed char"
.LASF31:
	.string	"__fmt"
.LASF20:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction"
.LASF0:
	.string	"src/queue.c"
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
