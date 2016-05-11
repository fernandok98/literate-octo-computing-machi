	.file	"vetores.c"
	.section	.rodata
.LC0:
	.string	"Valor"
.LC1:
	.string	"Elemento"
.LC2:
	.string	"%s%14s\n"
.LC3:
	.string	"%8d %13d\n"
.LC4:
	.string	"Total"
.LC5:
	.string	"%8s%14d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L2
.L3:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	leal	(%rax,%rax), %edx
	movl	-52(%rbp), %eax
	cltq
	movl	%edx, -48(%rbp,%rax,4)
	addl	$1, -52(%rbp)
.L2:
	cmpl	$9, -52(%rbp)
	jle	.L3
	movl	$0, -52(%rbp)
	jmp	.L4
.L5:
	movl	-52(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	addl	%eax, -56(%rbp)
	addl	$1, -52(%rbp)
.L4:
	cmpl	$9, -52(%rbp)
	jle	.L5
	movl	$.LC0, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -52(%rbp)
	jmp	.L6
.L7:
	movl	-52(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -52(%rbp)
.L6:
	cmpl	$9, -52(%rbp)
	jle	.L7
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movl	$.LC4, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
