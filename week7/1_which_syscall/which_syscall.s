	.file	"which_syscall.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"INPUT: %d\n"
.LC2:
	.string	"SYSCALL NO: %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "which_syscall.c"
	.loc 1 11 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 11 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 16 0
	call	fork
	movl	%eax, -20(%rbp)
	.loc 1 17 0
	cmpl	$0, -20(%rbp)
	jne	.L2
	.loc 1 18 0
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	ptrace
	.loc 1 19 0
	movl	$19, %edi
	call	raise
	.loc 1 20 0
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	.loc 1 21 0
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	jmp	.L3
.L2:
	.loc 1 24 0
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	wait
.LBB2:
	.loc 1 25 0
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	.loc 1 25 0
	movl	-32(%rbp), %eax
	andl	$127, %eax
	.loc 1 25 0
	testl	%eax, %eax
	je	.L7
.LBE2:
	.loc 1 27 0
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$120, %edx
	movl	%eax, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ptrace
	movq	%rax, -16(%rbp)
	.loc 1 28 0
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	.loc 1 29 0
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$24, %edi
	movl	$0, %eax
	call	ptrace
	.loc 1 30 0
	jmp	.L2
.L7:
.LBB3:
	.loc 1 26 0
	nop
.L3:
.LBE3:
	.loc 1 32 0
	movl	$0, %eax
	.loc 1 33 0
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/ptrace.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1cd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF49
	.byte	0xc
	.long	.LASF50
	.long	.LASF51
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
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
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x85
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x62
	.long	0x65
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF52
	.byte	0x4
	.long	0x42
	.byte	0x4
	.byte	0x1c
	.long	0x175
	.uleb128 0x6
	.long	.LASF13
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.uleb128 0x6
	.long	.LASF17
	.byte	0x4
	.uleb128 0x6
	.long	.LASF18
	.byte	0x5
	.uleb128 0x6
	.long	.LASF19
	.byte	0x6
	.uleb128 0x6
	.long	.LASF20
	.byte	0x7
	.uleb128 0x6
	.long	.LASF21
	.byte	0x8
	.uleb128 0x6
	.long	.LASF22
	.byte	0x9
	.uleb128 0x6
	.long	.LASF23
	.byte	0xc
	.uleb128 0x6
	.long	.LASF24
	.byte	0xd
	.uleb128 0x6
	.long	.LASF25
	.byte	0xe
	.uleb128 0x6
	.long	.LASF26
	.byte	0xf
	.uleb128 0x6
	.long	.LASF27
	.byte	0x10
	.uleb128 0x6
	.long	.LASF28
	.byte	0x11
	.uleb128 0x6
	.long	.LASF29
	.byte	0x12
	.uleb128 0x6
	.long	.LASF30
	.byte	0x13
	.uleb128 0x6
	.long	.LASF31
	.byte	0x18
	.uleb128 0x7
	.long	.LASF32
	.value	0x4200
	.uleb128 0x7
	.long	.LASF33
	.value	0x4201
	.uleb128 0x7
	.long	.LASF34
	.value	0x4202
	.uleb128 0x7
	.long	.LASF35
	.value	0x4203
	.uleb128 0x7
	.long	.LASF36
	.value	0x4204
	.uleb128 0x7
	.long	.LASF37
	.value	0x4205
	.uleb128 0x7
	.long	.LASF38
	.value	0x4206
	.uleb128 0x7
	.long	.LASF39
	.value	0x4207
	.uleb128 0x7
	.long	.LASF40
	.value	0x4208
	.uleb128 0x7
	.long	.LASF41
	.value	0x4209
	.uleb128 0x7
	.long	.LASF42
	.value	0x420a
	.uleb128 0x7
	.long	.LASF43
	.value	0x420b
	.uleb128 0x7
	.long	.LASF44
	.value	0x420c
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x1
	.byte	0xb
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF45
	.byte	0x1
	.byte	0xc
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF46
	.byte	0x1
	.byte	0xd
	.long	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF47
	.byte	0x1
	.byte	0xe
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.byte	0xf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.Ldebug_ranges0+0
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"PTRACE_POKEDATA"
.LASF26:
	.string	"PTRACE_SETFPREGS"
.LASF44:
	.string	"PTRACE_SECCOMP_GET_FILTER"
.LASF17:
	.string	"PTRACE_POKETEXT"
.LASF19:
	.string	"PTRACE_POKEUSER"
.LASF13:
	.string	"PTRACE_TRACEME"
.LASF49:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -fstack-protector-strong"
.LASF43:
	.string	"PTRACE_SETSIGMASK"
.LASF47:
	.string	"status"
.LASF29:
	.string	"PTRACE_GETFPXREGS"
.LASF41:
	.string	"PTRACE_PEEKSIGINFO"
.LASF46:
	.string	"child"
.LASF38:
	.string	"PTRACE_SEIZE"
.LASF11:
	.string	"pid_t"
.LASF1:
	.string	"unsigned char"
.LASF48:
	.string	"input"
.LASF51:
	.string	"/home/lsh/study/os2019/os2019/week7/1_which_syscall"
.LASF21:
	.string	"PTRACE_KILL"
.LASF2:
	.string	"short unsigned int"
.LASF25:
	.string	"PTRACE_GETFPREGS"
.LASF20:
	.string	"PTRACE_CONT"
.LASF0:
	.string	"long unsigned int"
.LASF52:
	.string	"__ptrace_request"
.LASF53:
	.string	"main"
.LASF30:
	.string	"PTRACE_SETFPXREGS"
.LASF33:
	.string	"PTRACE_GETEVENTMSG"
.LASF37:
	.string	"PTRACE_SETREGSET"
.LASF3:
	.string	"unsigned int"
.LASF23:
	.string	"PTRACE_GETREGS"
.LASF8:
	.string	"char"
.LASF31:
	.string	"PTRACE_SYSCALL"
.LASF32:
	.string	"PTRACE_SETOPTIONS"
.LASF40:
	.string	"PTRACE_LISTEN"
.LASF34:
	.string	"PTRACE_GETSIGINFO"
.LASF45:
	.string	"orig_rax"
.LASF7:
	.string	"sizetype"
.LASF22:
	.string	"PTRACE_SINGLESTEP"
.LASF24:
	.string	"PTRACE_SETREGS"
.LASF9:
	.string	"long long int"
.LASF28:
	.string	"PTRACE_DETACH"
.LASF50:
	.string	"which_syscall.c"
.LASF15:
	.string	"PTRACE_PEEKDATA"
.LASF5:
	.string	"short int"
.LASF42:
	.string	"PTRACE_GETSIGMASK"
.LASF27:
	.string	"PTRACE_ATTACH"
.LASF16:
	.string	"PTRACE_PEEKUSER"
.LASF6:
	.string	"long int"
.LASF10:
	.string	"__pid_t"
.LASF4:
	.string	"signed char"
.LASF36:
	.string	"PTRACE_GETREGSET"
.LASF39:
	.string	"PTRACE_INTERRUPT"
.LASF12:
	.string	"long long unsigned int"
.LASF14:
	.string	"PTRACE_PEEKTEXT"
.LASF35:
	.string	"PTRACE_SETSIGINFO"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
