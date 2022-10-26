	.file	"stack.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction/ex4" "src/stack.c"
	.p2align 4
	.globl	s_new
	.type	s_new, @function
s_new:
.LFB39:
	.file 1 "src/stack.c"
	.loc 1 7 17 view -0
	.cfi_startproc
	endbr64
	.loc 1 9 2 view .LVU1
	.loc 1 7 17 is_stmt 0 view .LVU2
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 9 19 view .LVU3
	movl	$16, %edi
	call	malloc@PLT
.LVL0:
	.loc 1 10 16 view .LVU4
	movl	$1, %edi
	.loc 1 9 19 view .LVU5
	movq	%rax, %r12
.LVL1:
	.loc 1 10 2 is_stmt 1 view .LVU6
	.loc 1 10 16 is_stmt 0 view .LVU7
	call	malloc@PLT
.LVL2:
	.loc 1 11 13 view .LVU8
	movl	$-1, 8(%r12)
	.loc 1 10 14 view .LVU9
	movq	%rax, (%r12)
	.loc 1 11 2 is_stmt 1 view .LVU10
	.loc 1 12 2 view .LVU11
	.loc 1 13 1 is_stmt 0 view .LVU12
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL3:
	.loc 1 13 1 view .LVU13
	ret
	.cfi_endproc
.LFE39:
	.size	s_new, .-s_new
	.p2align 4
	.globl	s_push
	.type	s_push, @function
s_push:
.LVL4:
.LFB40:
	.loc 1 15 35 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 15 35 is_stmt 0 view .LVU15
	endbr64
	.loc 1 18 2 is_stmt 1 view .LVU16
	.loc 1 15 35 is_stmt 0 view .LVU17
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 18 33 view .LVU18
	movl	8(%rdi), %eax
	.loc 1 18 30 view .LVU19
	leal	1(%rax), %edx
	.loc 1 18 39 view .LVU20
	leal	2(%rax), %esi
.LVL5:
	.loc 1 18 30 view .LVU21
	movl	%edx, 8(%rdi)
	.loc 1 18 39 view .LVU22
	movslq	%esi, %rsi
	.loc 1 18 12 view .LVU23
	movq	(%rdi), %rdi
.LVL6:
	.loc 1 18 12 view .LVU24
	salq	$2, %rsi
	call	realloc@PLT
.LVL7:
	.loc 1 19 11 view .LVU25
	movslq	8(%rbx), %rdx
	.loc 1 18 10 view .LVU26
	movq	%rax, (%rbx)
	.loc 1 19 2 is_stmt 1 view .LVU27
	.loc 1 19 18 is_stmt 0 view .LVU28
	movl	%ebp, (%rax,%rdx,4)
	.loc 1 20 1 view .LVU29
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL8:
	.loc 1 20 1 view .LVU30
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL9:
	.loc 1 20 1 view .LVU31
	ret
	.cfi_endproc
.LFE40:
	.size	s_push, .-s_push
	.p2align 4
	.globl	s_pop
	.type	s_pop, @function
s_pop:
.LVL10:
.LFB41:
	.loc 1 22 24 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 22 24 is_stmt 0 view .LVU33
	endbr64
	.loc 1 24 2 is_stmt 1 view .LVU34
	.loc 1 22 24 is_stmt 0 view .LVU35
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 24 37 view .LVU36
	movl	8(%rdi), %eax
	.loc 1 22 24 view .LVU37
	movq	%rdi, %rbx
	.loc 1 24 12 view .LVU38
	movq	(%rdi), %rdi
.LVL11:
	.loc 1 24 37 view .LVU39
	leal	1(%rax), %esi
	movslq	%esi, %rsi
	.loc 1 24 12 view .LVU40
	salq	$2, %rsi
	call	realloc@PLT
.LVL12:
	.loc 1 26 18 view .LVU41
	movslq	8(%rbx), %rdx
	.loc 1 24 10 view .LVU42
	movq	%rax, (%rbx)
	.loc 1 26 2 is_stmt 1 view .LVU43
	.loc 1 26 23 is_stmt 0 view .LVU44
	leal	-1(%rdx), %ecx
	movl	%ecx, 8(%rbx)
	.loc 1 27 1 view .LVU45
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL13:
	.loc 1 26 16 view .LVU46
	movl	(%rax,%rdx,4), %eax
	.loc 1 27 1 view .LVU47
	ret
	.cfi_endproc
.LFE41:
	.size	s_pop, .-s_pop
	.p2align 4
	.globl	s_isempty
	.type	s_isempty, @function
s_isempty:
.LVL14:
.LFB42:
	.loc 1 29 26 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 29 26 is_stmt 0 view .LVU49
	endbr64
	.loc 1 31 2 is_stmt 1 view .LVU50
	.loc 1 31 26 is_stmt 0 view .LVU51
	xorl	%eax, %eax
	cmpl	$-1, 8(%rdi)
	sete	%al
	.loc 1 32 1 view .LVU52
	ret
	.cfi_endproc
.LFE42:
	.size	s_isempty, .-s_isempty
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 3 "include/stack.h"
	.file 4 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x21a
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF12
	.byte	0x2
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
	.uleb128 0xb
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
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x5
	.byte	0xd
	.long	0x66
	.uleb128 0xd
	.long	.LASF21
	.byte	0x10
	.byte	0x3
	.byte	0x7
	.byte	0x10
	.long	0xbd
	.uleb128 0xe
	.long	.LASF14
	.byte	0x3
	.byte	0x9
	.byte	0x9
	.long	0xbd
	.byte	0
	.uleb128 0xf
	.string	"top"
	.byte	0x3
	.byte	0xa
	.byte	0x6
	.long	0x66
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x89
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.byte	0x3
	.long	0x95
	.uleb128 0x6
	.long	.LASF16
	.value	0x227
	.long	0x48
	.long	0xe8
	.uleb128 0x3
	.long	0x48
	.uleb128 0x3
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.value	0x21c
	.long	0x48
	.long	0xfd
	.uleb128 0x3
	.long	0x2e
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1d
	.byte	0x5
	.long	0x66
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x12b
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x1d
	.byte	0x18
	.long	0x12b
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x5
	.long	0xc2
	.uleb128 0x7
	.long	.LASF19
	.byte	0x16
	.byte	0x7
	.long	0x89
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x170
	.uleb128 0x4
	.string	"s"
	.byte	0x16
	.byte	0x16
	.long	0x12b
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x8
	.quad	.LVL12
	.long	0xce
	.byte	0
	.uleb128 0x11
	.long	.LASF22
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c0
	.uleb128 0x4
	.string	"s"
	.byte	0xf
	.byte	0x16
	.long	0x12b
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x4
	.string	"num"
	.byte	0xf
	.byte	0x1f
	.long	0x89
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x8
	.quad	.LVL7
	.long	0xce
	.byte	0
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0x7
	.byte	0xa
	.long	0x12b
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF24
	.byte	0x1
	.byte	0x9
	.byte	0xb
	.long	0x12b
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x14
	.quad	.LVL0
	.long	0xe8
	.long	0x209
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.quad	.LVL2
	.long	0xe8
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x7
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE41-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LFE40-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LFE40-.Ltext0
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0
.LVUS0:
	.uleb128 .LVU6
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE39-.Ltext0
	.uleb128 0x1
	.byte	0x50
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"long long int"
.LASF12:
	.string	"size_t"
.LASF21:
	.string	"Stack"
.LASF15:
	.string	"stack_t"
.LASF24:
	.string	"stack"
.LASF19:
	.string	"s_pop"
.LASF16:
	.string	"realloc"
.LASF2:
	.string	"long unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"val_t"
.LASF22:
	.string	"s_push"
.LASF9:
	.string	"char"
.LASF20:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"unsigned char"
.LASF14:
	.string	"data"
.LASF8:
	.string	"long int"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF3:
	.string	"unsigned int"
.LASF18:
	.string	"s_isempty"
.LASF7:
	.string	"short int"
.LASF23:
	.string	"s_new"
.LASF17:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction/ex4"
.LASF0:
	.string	"src/stack.c"
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
