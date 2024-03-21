	.file	"prosem_2.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.text._ZSt4__lgl,"axG",@progbits,_ZSt4__lgl,comdat
	.weak	_ZSt4__lgl
	.type	_ZSt4__lgl, @function
_ZSt4__lgl:
.LFB405:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	bsrq	%rax, %rax
	xorq	$63, %rax
	movl	%eax, %edx
	movl	$63, %eax
	subl	%edx, %eax
	cltq
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	_ZSt4__lgl, .-_ZSt4__lgl
	.section	.text._ZNSt11char_traitsIcE2ltERKcS2_,"axG",@progbits,_ZNSt11char_traitsIcE2ltERKcS2_,comdat
	.weak	_ZNSt11char_traitsIcE2ltERKcS2_
	.type	_ZNSt11char_traitsIcE2ltERKcS2_, @function
_ZNSt11char_traitsIcE2ltERKcS2_:
.LFB447:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	setb	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	_ZNSt11char_traitsIcE2ltERKcS2_, .-_ZNSt11char_traitsIcE2ltERKcS2_
	.section	.text._ZNSt11char_traitsIcE7compareEPKcS2_m,"axG",@progbits,_ZNSt11char_traitsIcE7compareEPKcS2_m,comdat
	.weak	_ZNSt11char_traitsIcE7compareEPKcS2_m
	.type	_ZNSt11char_traitsIcE7compareEPKcS2_m, @function
_ZNSt11char_traitsIcE7compareEPKcS2_m:
.LFB448:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
	testb	%al, %al
	je	.L11
	movq	$0, -8(%rbp)
	jmp	.L12
.L15:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L13
	movl	$-1, %eax
	jmp	.L10
.L13:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE2ltERKcS2_
	testb	%al, %al
	je	.L14
	movl	$1, %eax
	jmp	.L10
.L14:
	addq	$1, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L15
	movl	$0, %eax
	jmp	.L10
.L11:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	nop
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	_ZNSt11char_traitsIcE7compareEPKcS2_m, .-_ZNSt11char_traitsIcE7compareEPKcS2_m
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB450:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB2704:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L21
	movq	-16(%rbp), %rax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2704:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j,"axG",@progbits,_ZN4CCarC5ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j,comdat
	.align 2
	.weak	_ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j
	.type	_ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j, @function
_ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j:
.LFB3188:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3188
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
.LEHE0:
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 64(%rax)
	jmp	.L26
.L25:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L26:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3188:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j,"aG",@progbits,_ZN4CCarC5ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j,comdat
.LLSDA3188:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3188-.LLSDACSB3188
.LLSDACSB3188:
	.uleb128 .LEHB0-.LFB3188
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L25-.LFB3188
	.uleb128 0
	.uleb128 .LEHB1-.LFB3188
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3188:
	.section	.text._ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j,"axG",@progbits,_ZN4CCarC5ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j,comdat
	.size	_ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j, .-_ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j
	.weak	_ZN4CCarC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j
	.set	_ZN4CCarC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j,_ZN4CCarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j
	.section	.text._ZNK4CCareqERKS_,"axG",@progbits,_ZNK4CCareqERKS_,comdat
	.align 2
	.weak	_ZNK4CCareqERKS_
	.type	_ZNK4CCareqERKS_, @function
_ZNK4CCareqERKS_:
.LFB3190:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3190:
	.size	_ZNK4CCareqERKS_, .-_ZNK4CCareqERKS_
	.section	.text._ZNK4CCareqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNK4CCareqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 2
	.weak	_ZNK4CCareqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZNK4CCareqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZNK4CCareqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB3191:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3191:
	.size	_ZNK4CCareqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZNK4CCareqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZNK4CCar9newerthanERKS_,"axG",@progbits,_ZNK4CCar9newerthanERKS_,comdat
	.align 2
	.weak	_ZNK4CCar9newerthanERKS_
	.type	_ZNK4CCar9newerthanERKS_, @function
_ZNK4CCar9newerthanERKS_:
.LFB3192:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	64(%rax), %edx
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	setb	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3192:
	.size	_ZNK4CCar9newerthanERKS_, .-_ZNK4CCar9newerthanERKS_
	.section	.rodata
.LC0:
	.string	"RZ is "
.LC1:
	.string	" name is "
.LC2:
	.string	" age is "
	.section	.text._ZlsRSoRK4CCar,"axG",@progbits,_ZlsRSoRK4CCar,comdat
	.weak	_ZlsRSoRK4CCar
	.type	_ZlsRSoRK4CCar, @function
_ZlsRSoRK4CCar:
.LFB3193:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEj@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3193:
	.size	_ZlsRSoRK4CCar, .-_ZlsRSoRK4CCar
	.section	.text._ZN7CGarage6addCarE4CCar,"axG",@progbits,_ZN7CGarage6addCarE4CCar,comdat
	.align 2
	.weak	_ZN7CGarage6addCarE4CCar
	.type	_ZN7CGarage6addCarE4CCar, @function
_ZN7CGarage6addCarE4CCar:
.LFB3194:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE5beginEv
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
	jmp	.L36
.L39:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4CCareqERKS_
	testb	%al, %al
	je	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv
.L36:
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L39
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE9push_backERKS0_
	movl	$1, %eax
.L38:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3194:
	.size	_ZN7CGarage6addCarE4CCar, .-_ZN7CGarage6addCarE4CCar
	.section	.text._ZN7CGarage6delCarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7CGarage6delCarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 2
	.weak	_ZN7CGarage6delCarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN7CGarage6delCarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZN7CGarage6delCarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB3195:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv
	movq	%rax, -24(%rbp)
	jmp	.L42
.L44:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNK4CCareqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	testb	%al, %al
	je	.L43
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
.L43:
	leaq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEi
.L42:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE4cendEv
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L44
	movl	$1, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3195:
	.size	_ZN7CGarage6delCarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZN7CGarage6delCarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZNK7CGarage9printCarsEv,"axG",@progbits,_ZNK7CGarage9printCarsEv,comdat
	.align 2
	.weak	_ZNK7CGarage9printCarsEv
	.type	_ZNK7CGarage9printCarsEv, @function
_ZNK7CGarage9printCarsEv:
.LFB3196:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE5beginEv
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
	jmp	.L48
.L49:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZlsRSoRK4CCar
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEv
.L48:
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L49
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3196:
	.size	_ZNK7CGarage9printCarsEv, .-_ZNK7CGarage9printCarsEv
	.section	.text._ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_,"axG",@progbits,_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_,comdat
	.align 2
	.weak	_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_
	.type	_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_, @function
_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_:
.LFB3198:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK4CCar9newerthanERKS_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3198:
	.size	_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_, .-_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_
	.section	.text._ZN7CGarage8sortCarsEv,"axG",@progbits,_ZN7CGarage8sortCarsEv,comdat
	.align 2
	.weak	_ZN7CGarage8sortCarsEv
	.type	_ZN7CGarage8sortCarsEv, @function
_ZN7CGarage8sortCarsEv:
.LFB3197:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE3endEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE5beginEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEZN7CGarage8sortCarsEvEUlRKS2_SA_E_EvT_SC_T0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3197:
	.size	_ZN7CGarage8sortCarsEv, .-_ZN7CGarage8sortCarsEv
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD2Ev:
.LFB3207:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4CCarED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3207:
	.size	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI4CCarSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI4CCarSaIS0_EEC2Ev:
.LFB3209:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3209:
	.size	_ZNSt12_Vector_baseI4CCarSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI4CCarSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI4CCarSaIS0_EEC1Ev,_ZNSt12_Vector_baseI4CCarSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI4CCarSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI4CCarSaIS0_EEC2Ev
	.type	_ZNSt6vectorI4CCarSaIS0_EEC2Ev, @function
_ZNSt6vectorI4CCarSaIS0_EEC2Ev:
.LFB3211:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3211:
	.size	_ZNSt6vectorI4CCarSaIS0_EEC2Ev, .-_ZNSt6vectorI4CCarSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI4CCarSaIS0_EEC1Ev
	.set	_ZNSt6vectorI4CCarSaIS0_EEC1Ev,_ZNSt6vectorI4CCarSaIS0_EEC2Ev
	.section	.text._ZN7CGarageC2Ev,"axG",@progbits,_ZN7CGarageC5Ev,comdat
	.align 2
	.weak	_ZN7CGarageC2Ev
	.type	_ZN7CGarageC2Ev, @function
_ZN7CGarageC2Ev:
.LFB3213:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3213:
	.size	_ZN7CGarageC2Ev, .-_ZN7CGarageC2Ev
	.weak	_ZN7CGarageC1Ev
	.set	_ZN7CGarageC1Ev,_ZN7CGarageC2Ev
	.section	.text._ZN7CGarageD2Ev,"axG",@progbits,_ZN7CGarageD5Ev,comdat
	.align 2
	.weak	_ZN7CGarageD2Ev
	.type	_ZN7CGarageD2Ev, @function
_ZN7CGarageD2Ev:
.LFB3216:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3216:
	.size	_ZN7CGarageD2Ev, .-_ZN7CGarageD2Ev
	.weak	_ZN7CGarageD1Ev
	.set	_ZN7CGarageD1Ev,_ZN7CGarageD2Ev
	.section	.text._ZN4CCarD2Ev,"axG",@progbits,_ZN4CCarD5Ev,comdat
	.align 2
	.weak	_ZN4CCarD2Ev
	.type	_ZN4CCarD2Ev, @function
_ZN4CCarD2Ev:
.LFB3219:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3219:
	.size	_ZN4CCarD2Ev, .-_ZN4CCarD2Ev
	.weak	_ZN4CCarD1Ev
	.set	_ZN4CCarD1Ev,_ZN4CCarD2Ev
	.section	.rodata
.LC3:
	.string	"Ayush Tomar"
.LC4:
	.string	"DL 7027"
.LC5:
	.string	"Unim Portant"
.LC6:
	.string	"MIA FOREVER"
.LC7:
	.string	"Jan Travnicek"
.LC8:
	.string	"1DR HONZA"
	.align 8
.LC9:
	.string	"------------------------------------------------"
.LC10:
	.string	"Notim Portant"
.LC11:
	.string	"NCC 1701D"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3201:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3201
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7CGarageC1Ev
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-193(%rbp), %rdx
	leaq	-128(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-194(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE3:
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
.LEHB4:
	call	_ZN4CCarC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j
.LEHE4:
	leaq	-96(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZN7CGarage6addCarE4CCar
.LEHE5:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-193(%rbp), %rdx
	leaq	-128(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE6:
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-194(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE7:
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
.LEHB8:
	call	_ZN4CCarC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j
.LEHE8:
	leaq	-96(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZN7CGarage6addCarE4CCar
.LEHE9:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-193(%rbp), %rdx
	leaq	-128(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE10:
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-194(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE11:
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
.LEHB12:
	call	_ZN4CCarC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j
.LEHE12:
	leaq	-96(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZN7CGarage6addCarE4CCar
.LEHE13:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
.LEHB14:
	call	_ZNK7CGarage9printCarsEv
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7CGarage8sortCarsEv
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7CGarage9printCarsEv
.LEHE14:
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-193(%rbp), %rdx
	leaq	-128(%rbp), %rax
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE15:
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-194(%rbp), %rdx
	leaq	-160(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE16:
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB17:
	call	_ZN4CCarC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_j
.LEHE17:
	leaq	-96(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZN7CGarage6addCarE4CCar
.LEHE18:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB19:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7CGarage9printCarsEv
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7CGarage8sortCarsEv
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7CGarage9printCarsEv
.LEHE19:
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-193(%rbp), %rdx
	leaq	-96(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE20:
	leaq	-96(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZN7CGarage6delCarENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE21:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB22:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK7CGarage9printCarsEv
.LEHE22:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7CGarageD1Ev
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L81
	jmp	.L101
.L85:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	jmp	.L63
.L84:
	endbr64
	movq	%rax, %rbx
.L63:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L64
.L83:
	endbr64
	movq	%rax, %rbx
.L64:
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L65
.L82:
	endbr64
	movq	%rax, %rbx
.L65:
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L66
.L90:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	jmp	.L68
.L89:
	endbr64
	movq	%rax, %rbx
.L68:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L69
.L88:
	endbr64
	movq	%rax, %rbx
.L69:
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L70
.L87:
	endbr64
	movq	%rax, %rbx
.L70:
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L66
.L94:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	jmp	.L72
.L93:
	endbr64
	movq	%rax, %rbx
.L72:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L73
.L92:
	endbr64
	movq	%rax, %rbx
.L73:
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L74
.L91:
	endbr64
	movq	%rax, %rbx
.L74:
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L66
.L98:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	jmp	.L76
.L97:
	endbr64
	movq	%rax, %rbx
.L76:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L77
.L96:
	endbr64
	movq	%rax, %rbx
.L77:
	leaq	-194(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L78
.L95:
	endbr64
	movq	%rax, %rbx
.L78:
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L66
.L100:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L80
.L99:
	endbr64
	movq	%rax, %rbx
.L80:
	leaq	-193(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L66
.L86:
	endbr64
	movq	%rax, %rbx
.L66:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7CGarageD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L101:
	call	__stack_chk_fail@PLT
.L81:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3201:
	.section	.gcc_except_table,"a",@progbits
.LLSDA3201:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3201-.LLSDACSB3201
.LLSDACSB3201:
	.uleb128 .LEHB2-.LFB3201
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L82-.LFB3201
	.uleb128 0
	.uleb128 .LEHB3-.LFB3201
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L83-.LFB3201
	.uleb128 0
	.uleb128 .LEHB4-.LFB3201
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L84-.LFB3201
	.uleb128 0
	.uleb128 .LEHB5-.LFB3201
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L85-.LFB3201
	.uleb128 0
	.uleb128 .LEHB6-.LFB3201
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L87-.LFB3201
	.uleb128 0
	.uleb128 .LEHB7-.LFB3201
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L88-.LFB3201
	.uleb128 0
	.uleb128 .LEHB8-.LFB3201
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L89-.LFB3201
	.uleb128 0
	.uleb128 .LEHB9-.LFB3201
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L90-.LFB3201
	.uleb128 0
	.uleb128 .LEHB10-.LFB3201
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L91-.LFB3201
	.uleb128 0
	.uleb128 .LEHB11-.LFB3201
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L92-.LFB3201
	.uleb128 0
	.uleb128 .LEHB12-.LFB3201
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L93-.LFB3201
	.uleb128 0
	.uleb128 .LEHB13-.LFB3201
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L94-.LFB3201
	.uleb128 0
	.uleb128 .LEHB14-.LFB3201
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L86-.LFB3201
	.uleb128 0
	.uleb128 .LEHB15-.LFB3201
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L95-.LFB3201
	.uleb128 0
	.uleb128 .LEHB16-.LFB3201
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L96-.LFB3201
	.uleb128 0
	.uleb128 .LEHB17-.LFB3201
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L97-.LFB3201
	.uleb128 0
	.uleb128 .LEHB18-.LFB3201
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L98-.LFB3201
	.uleb128 0
	.uleb128 .LEHB19-.LFB3201
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L86-.LFB3201
	.uleb128 0
	.uleb128 .LEHB20-.LFB3201
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L99-.LFB3201
	.uleb128 0
	.uleb128 .LEHB21-.LFB3201
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L100-.LFB3201
	.uleb128 0
	.uleb128 .LEHB22-.LFB3201
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L86-.LFB3201
	.uleb128 0
	.uleb128 .LEHB23-.LFB3201
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE3201:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB3222:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3222:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3221:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	jmp	.L105
.L106:
	addq	$1, -16(%rbp)
.L105:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L106
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3221:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB3329:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3329:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3481:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L111
	movq	-16(%rbp), %rax
	jmp	.L112
.L111:
	movq	-8(%rbp), %rax
.L112:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3481:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_,"axG",@progbits,_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_,comdat
	.weak	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	.type	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_, @function
_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_:
.LFB3493:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	cmpq	%rax, %rbx
	jne	.L114
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE7compareEPKcS2_m
	testl	%eax, %eax
	jne	.L114
	movl	$1, %eax
	jmp	.L115
.L114:
	movl	$0, %eax
.L115:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3493:
	.size	_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_, .-_ZSteqIcEN9__gnu_cxx11__enable_ifIXsrSt9__is_charIT_E7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEESE_
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE5beginEv,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorI4CCarSaIS0_EE5beginEv
	.type	_ZNSt6vectorI4CCarSaIS0_EE5beginEv, @function
_ZNSt6vectorI4CCarSaIS0_EE5beginEv:
.LFB3497:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L119
	call	__stack_chk_fail@PLT
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3497:
	.size	_ZNSt6vectorI4CCarSaIS0_EE5beginEv, .-_ZNSt6vectorI4CCarSaIS0_EE5beginEv
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE3endEv,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorI4CCarSaIS0_EE3endEv
	.type	_ZNSt6vectorI4CCarSaIS0_EE3endEv, @function
_ZNSt6vectorI4CCarSaIS0_EE3endEv:
.LFB3498:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L122
	call	__stack_chk_fail@PLT
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3498:
	.size	_ZNSt6vectorI4CCarSaIS0_EE3endEv, .-_ZNSt6vectorI4CCarSaIS0_EE3endEv
	.section	.text._ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB3499:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3499:
	.size	_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv:
.LFB3500:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3500:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv:
.LFB3501:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3501:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE9push_backERKS0_,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE9push_backERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorI4CCarSaIS0_EE9push_backERKS0_
	.type	_ZNSt6vectorI4CCarSaIS0_EE9push_backERKS0_, @function
_ZNSt6vectorI4CCarSaIS0_EE9push_backERKS0_:
.LFB3502:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L130
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L132
.L130:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE3endEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.L132:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3502:
	.size	_ZNSt6vectorI4CCarSaIS0_EE9push_backERKS0_, .-_ZNSt6vectorI4CCarSaIS0_EE9push_backERKS0_
	.section	.text._ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv,"axG",@progbits,_ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv
	.type	_ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv, @function
_ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv:
.LFB3504:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L135
	call	__stack_chk_fail@PLT
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3504:
	.size	_ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv, .-_ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv
	.section	.text._ZNKSt6vectorI4CCarSaIS0_EE4cendEv,"axG",@progbits,_ZNKSt6vectorI4CCarSaIS0_EE4cendEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4CCarSaIS0_EE4cendEv
	.type	_ZNKSt6vectorI4CCarSaIS0_EE4cendEv, @function
_ZNKSt6vectorI4CCarSaIS0_EE4cendEv:
.LFB3505:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L138
	call	__stack_chk_fail@PLT
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3505:
	.size	_ZNKSt6vectorI4CCarSaIS0_EE4cendEv, .-_ZNKSt6vectorI4CCarSaIS0_EE4cendEv
	.section	.text._ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.type	_ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, @function
_ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB3506:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3506:
	.size	_ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .-_ZN9__gnu_cxxneIPK4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEi,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEi,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEi
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEi, @function
_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEi:
.LFB3507:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L143
	call	__stack_chk_fail@PLT
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3507:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEi, .-_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEi
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv:
.LFB3508:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3508:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEdeEv
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE,comdat
	.align 2
	.weak	_ZNSt6vectorI4CCarSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
	.type	_ZNSt6vectorI4CCarSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE, @function
_ZNSt6vectorI4CCarSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE:
.LFB3509:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE6cbeginEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPK4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE5beginEv
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L148
	call	__stack_chk_fail@PLT
.L148:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3509:
	.size	_ZNSt6vectorI4CCarSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE, .-_ZNSt6vectorI4CCarSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE
	.section	.text._ZNKSt6vectorI4CCarSaIS0_EE5beginEv,"axG",@progbits,_ZNKSt6vectorI4CCarSaIS0_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4CCarSaIS0_EE5beginEv
	.type	_ZNKSt6vectorI4CCarSaIS0_EE5beginEv, @function
_ZNKSt6vectorI4CCarSaIS0_EE5beginEv:
.LFB3510:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L151
	call	__stack_chk_fail@PLT
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3510:
	.size	_ZNKSt6vectorI4CCarSaIS0_EE5beginEv, .-_ZNKSt6vectorI4CCarSaIS0_EE5beginEv
	.section	.text._ZNKSt6vectorI4CCarSaIS0_EE3endEv,"axG",@progbits,_ZNKSt6vectorI4CCarSaIS0_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4CCarSaIS0_EE3endEv
	.type	_ZNKSt6vectorI4CCarSaIS0_EE3endEv, @function
_ZNKSt6vectorI4CCarSaIS0_EE3endEv:
.LFB3511:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L154
	call	__stack_chk_fail@PLT
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3511:
	.size	_ZNKSt6vectorI4CCarSaIS0_EE3endEv, .-_ZNKSt6vectorI4CCarSaIS0_EE3endEv
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEv:
.LFB3512:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3512:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEppEv
	.section	.text._ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEZN7CGarage8sortCarsEvEUlRKS2_SA_E_EvT_SC_T0_,"axG",@progbits,_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEZN7CGarage8sortCarsEvEUlRKS2_SA_E_EvT_SC_T0_,comdat
	.weak	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEZN7CGarage8sortCarsEvEUlRKS2_SA_E_EvT_SC_T0_
	.type	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEZN7CGarage8sortCarsEvEUlRKS2_SA_E_EvT_SC_T0_, @function
_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEZN7CGarage8sortCarsEvEUlRKS2_SA_E_EvT_SC_T0_:
.LFB3515:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_15_Iter_comp_iterIT_EES8_
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3515:
	.size	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEZN7CGarage8sortCarsEvEUlRKS2_SA_E_EvT_SC_T0_, .-_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEZN7CGarage8sortCarsEvEUlRKS2_SA_E_EvT_SC_T0_
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC2Ev:
.LFB3517:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI4CCarEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3517:
	.size	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI4CCarED2Ev,"axG",@progbits,_ZNSaI4CCarED5Ev,comdat
	.align 2
	.weak	_ZNSaI4CCarED2Ev
	.type	_ZNSaI4CCarED2Ev, @function
_ZNSaI4CCarED2Ev:
.LFB3520:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4CCarED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3520:
	.size	_ZNSaI4CCarED2Ev, .-_ZNSaI4CCarED2Ev
	.weak	_ZNSaI4CCarED1Ev
	.set	_ZNSaI4CCarED1Ev,_ZNSaI4CCarED2Ev
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev:
.LFB3523:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3523
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3523:
	.section	.gcc_except_table
.LLSDA3523:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3523-.LLSDACSB3523
.LLSDACSB3523:
.LLSDACSE3523:
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI4CCarSaIS0_EED1Ev,_ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev
	.section	.text._ZNSt6vectorI4CCarSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI4CCarSaIS0_EED2Ev
	.type	_ZNSt6vectorI4CCarSaIS0_EED2Ev, @function
_ZNSt6vectorI4CCarSaIS0_EED2Ev:
.LFB3526:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3526
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3526:
	.section	.gcc_except_table
.LLSDA3526:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3526-.LLSDACSB3526
.LLSDACSB3526:
.LLSDACSE3526:
	.section	.text._ZNSt6vectorI4CCarSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI4CCarSaIS0_EED2Ev, .-_ZNSt6vectorI4CCarSaIS0_EED2Ev
	.weak	_ZNSt6vectorI4CCarSaIS0_EED1Ev
	.set	_ZNSt6vectorI4CCarSaIS0_EED1Ev,_ZNSt6vectorI4CCarSaIS0_EED2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB3529:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3529
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
.LEHE24:
	cmpq	$0, -64(%rbp)
	je	.L163
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB25:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L164
.L163:
	movl	$1, %eax
.L164:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE25:
	jmp	.L168
.L167:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L168:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L166
	call	__stack_chk_fail@PLT
.L166:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3529:
	.section	.gcc_except_table
.LLSDA3529:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3529-.LLSDACSB3529
.LLSDACSB3529:
	.uleb128 .LEHB24-.LFB3529
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB3529
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L167-.LFB3529
	.uleb128 0
	.uleb128 .LEHB26-.LFB3529
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE3529:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC2ERKS2_:
.LFB3615:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3615:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC2ERKS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB3617:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3617:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_:
.LFB3618:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3618:
	.size	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
	.section	.rodata
.LC12:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.type	_ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, @function
_ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
.LFB3619:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3619
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB27:
	call	_ZNKSt6vectorI4CCarSaIS0_EE12_M_check_lenEmPKc
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE11_M_allocateEm
.LEHE27:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB28:
	call	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_
.LEHE28:
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -32(%rbp)
	addq	$72, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	sarq	$3, %rcx
	movabsq	$-8198552921648689607, %rdx
	imulq	%rcx, %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB29:
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m
.LEHE29:
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L178
	jmp	.L181
.L179:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -32(%rbp)
	jne	.L175
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_
	jmp	.L176
.L175:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E
.L176:
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m
	call	__cxa_rethrow@PLT
.LEHE30:
.L180:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB31:
	call	_Unwind_Resume@PLT
.LEHE31:
.L181:
	call	__stack_chk_fail@PLT
.L178:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3619:
	.section	.gcc_except_table
	.align 4
.LLSDA3619:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3619-.LLSDATTD3619
.LLSDATTD3619:
	.byte	0x1
	.uleb128 .LLSDACSE3619-.LLSDACSB3619
.LLSDACSB3619:
	.uleb128 .LEHB27-.LFB3619
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB3619
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L179-.LFB3619
	.uleb128 0x1
	.uleb128 .LEHB29-.LFB3619
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB3619
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L180-.LFB3619
	.uleb128 0
	.uleb128 .LEHB31-.LFB3619
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE3619:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3619:
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.size	_ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI4CCarSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC2ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC2ERKS3_:
.LFB3624:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3624:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC2ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC1ERKS3_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC1ERKS3_,_ZN9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEEC2ERKS3_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv:
.LFB3626:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3626:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	.section	.text._ZN9__gnu_cxxmiIPK4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPK4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPK4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.type	_ZN9__gnu_cxxmiIPK4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, @function
_ZN9__gnu_cxxmiIPK4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB3627:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPK4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3627:
	.size	_ZN9__gnu_cxxmiIPK4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .-_ZN9__gnu_cxxmiIPK4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl:
.LFB3628:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L189
	call	__stack_chk_fail@PLT
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3628:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE,comdat
	.align 2
	.weak	_ZNSt6vectorI4CCarSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE
	.type	_ZNSt6vectorI4CCarSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE, @function
_ZNSt6vectorI4CCarSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE:
.LFB3629:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	je	.L191
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE3endEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
.L191:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-72(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L193
	call	__stack_chk_fail@PLT
.L193:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3629:
	.size	_ZNSt6vectorI4CCarSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE, .-_ZNSt6vectorI4CCarSaIS0_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS0_S2_EE
	.section	.text._ZN9__gnu_cxx5__ops16__iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_15_Iter_comp_iterIT_EES8_,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_15_Iter_comp_iterIT_EES8_,comdat
	.weak	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_15_Iter_comp_iterIT_EES8_
	.type	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_15_Iter_comp_iterIT_EES8_, @function
_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_15_Iter_comp_iterIT_EES8_:
.LFB3632:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1ES6_
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L196
	call	__stack_chk_fail@PLT
.L196:
	movl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3632:
	.size	_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_15_Iter_comp_iterIT_EES8_, .-_ZN9__gnu_cxx5__ops16__iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_15_Iter_comp_iterIT_EES8_
	.section	.text._ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,"axG",@progbits,_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,comdat
	.weak	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	.type	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_, @function
_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_:
.LFB3633:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	je	.L199
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, %rdi
	call	_ZSt4__lgl
	leaq	(%rax,%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
.L199:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3633:
	.size	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_, .-_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	.section	.text._ZNSaI4CCarEC2Ev,"axG",@progbits,_ZNSaI4CCarEC5Ev,comdat
	.align 2
	.weak	_ZNSaI4CCarEC2Ev
	.type	_ZNSaI4CCarEC2Ev, @function
_ZNSaI4CCarEC2Ev:
.LFB3635:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4CCarEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3635:
	.size	_ZNSaI4CCarEC2Ev, .-_ZNSaI4CCarEC2Ev
	.weak	_ZNSaI4CCarEC1Ev
	.set	_ZNSaI4CCarEC1Ev,_ZNSaI4CCarEC2Ev
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB3638:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3638:
	.size	_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseI4CCarSaIS0_EE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI4CCarED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4CCarED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4CCarED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4CCarED2Ev:
.LFB3641:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3641:
	.size	_ZN9__gnu_cxx13new_allocatorI4CCarED2Ev, .-_ZN9__gnu_cxx13new_allocatorI4CCarED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4CCarED1Ev,_ZN9__gnu_cxx13new_allocatorI4CCarED2Ev
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m:
.LFB3643:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L205
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4CCarEE10deallocateERS1_PS0_m
.L205:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3643:
	.size	_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI4CCarSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3644:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3644:
	.size	_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E:
.LFB3645:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP4CCarEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3645:
	.size	_ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP4CCarS0_EvT_S2_RSaIT0_E
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB3647:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3647:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.rodata
	.align 8
.LC13:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB3646:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3646
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	testb	%al, %al
	je	.L212
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L212
	movl	$1, %eax
	jmp	.L213
.L212:
	movl	$0, %eax
.L213:
	testb	%al, %al
	je	.L214
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
.LEHB32:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L214:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L215
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
.LEHE32:
.L215:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB33:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
.LEHE33:
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
.LEHE34:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L218
	jmp	.L221
.L219:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB35:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	call	__cxa_rethrow@PLT
.LEHE35:
.L220:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB36:
	call	_Unwind_Resume@PLT
.LEHE36:
.L221:
	call	__stack_chk_fail@PLT
.L218:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3646:
	.section	.gcc_except_table
	.align 4
.LLSDA3646:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3646-.LLSDATTD3646
.LLSDATTD3646:
	.byte	0x1
	.uleb128 .LLSDACSE3646-.LLSDACSB3646
.LLSDACSB3646:
	.uleb128 .LEHB32-.LFB3646
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB3646
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L219-.LFB3646
	.uleb128 0x1
	.uleb128 .LEHB34-.LFB3646
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB3646
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L220-.LFB3646
	.uleb128 0
	.uleb128 .LEHB36-.LFB3646
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE3646:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3646:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3686:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3686:
	.size	_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZN4CCarC2ERKS_,"axG",@progbits,_ZN4CCarC5ERKS_,comdat
	.align 2
	.weak	_ZN4CCarC2ERKS_
	.type	_ZN4CCarC2ERKS_, @function
_ZN4CCarC2ERKS_:
.LFB3689:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3689
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB37:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE37:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB38:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE38:
	movq	-32(%rbp), %rax
	movl	64(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L227
.L226:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB39:
	call	_Unwind_Resume@PLT
.LEHE39:
.L227:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3689:
	.section	.gcc_except_table
.LLSDA3689:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3689-.LLSDACSB3689
.LLSDACSB3689:
	.uleb128 .LEHB37-.LFB3689
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB3689
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L226-.LFB3689
	.uleb128 0
	.uleb128 .LEHB39-.LFB3689
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE3689:
	.section	.text._ZN4CCarC2ERKS_,"axG",@progbits,_ZN4CCarC5ERKS_,comdat
	.size	_ZN4CCarC2ERKS_, .-_ZN4CCarC2ERKS_
	.weak	_ZN4CCarC1ERKS_
	.set	_ZN4CCarC1ERKS_,_ZN4CCarC2ERKS_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_:
.LFB3687:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3687
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRK4CCarEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$72, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB40:
	call	_ZN4CCarC1ERKS_
.LEHE40:
	jmp	.L231
.L230:
	endbr64
	movq	%rax, %r13
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB41:
	call	_Unwind_Resume@PLT
.LEHE41:
.L231:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3687:
	.section	.gcc_except_table
.LLSDA3687:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3687-.LLSDACSB3687
.LLSDACSB3687:
	.uleb128 .LEHB40-.LFB3687
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L230-.LFB3687
	.uleb128 0
	.uleb128 .LEHB41-.LFB3687
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
.LLSDACSE3687:
	.section	.text._ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_,comdat
	.size	_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JRKS1_EEEvPT_DpOT0_
	.section	.text._ZNKSt6vectorI4CCarSaIS0_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorI4CCarSaIS0_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorI4CCarSaIS0_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorI4CCarSaIS0_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorI4CCarSaIS0_EE12_M_check_lenEmPKc:
.LFB3691:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L233
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L233:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L234
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L235
.L234:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv
	jmp	.L236
.L235:
	movq	-32(%rbp), %rax
.L236:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L238
	call	__stack_chk_fail@PLT
.L238:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3691:
	.size	_ZNKSt6vectorI4CCarSaIS0_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorI4CCarSaIS0_EE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,"axG",@progbits,_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_,comdat
	.weak	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.type	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, @function
_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_:
.LFB3692:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3692:
	.size	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, .-_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	.section	.text._ZNSt12_Vector_baseI4CCarSaIS0_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseI4CCarSaIS0_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI4CCarSaIS0_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseI4CCarSaIS0_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseI4CCarSaIS0_EE11_M_allocateEm:
.LFB3693:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L242
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4CCarEE8allocateERS1_m
	jmp	.L244
.L242:
	movl	$0, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3693:
	.size	_ZNSt12_Vector_baseI4CCarSaIS0_EE11_M_allocateEm, .-_ZNSt12_Vector_baseI4CCarSaIS0_EE11_M_allocateEm
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,comdat
	.weak	_ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.type	_ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, @function
_ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB3694:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3694:
	.size	_ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, .-_ZNSt6vectorI4CCarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.section	.text._ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_
	.type	_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_, @function
_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_:
.LFB3695:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4CCarE7destroyIS1_EEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3695:
	.size	_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_, .-_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_
	.section	.text._ZSt4moveIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,"axG",@progbits,_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,comdat
	.weak	_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.type	_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, @function
_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_:
.LFB3696:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3696:
	.size	_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, .-_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.section	.text._ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_:
.LFB3698:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3698:
	.size	_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2ES6_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC5ES6_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2ES6_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2ES6_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2ES6_:
.LFB3700:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-9(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3700:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2ES6_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2ES6_
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1ES6_
	.set	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1ES6_,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2ES6_
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_:
.LFB3702:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	jmp	.L254
.L257:
	cmpq	$0, -40(%rbp)
	jne	.L255
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_
	jmp	.L253
.L255:
	subq	$1, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_T0_
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L254:
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmpq	$16, %rax
	setg	%al
	testb	%al, %al
	jne	.L257
.L253:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L258
	call	__stack_chk_fail@PLT
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3702:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_T1_
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_, @function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_:
.LFB3703:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmpq	$16, %rax
	setg	%al
	testb	%al, %al
	je	.L260
	leaq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	leaq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	jmp	.L262
.L260:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
.L262:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3703:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_, .-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4CCarEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4CCarEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI4CCarEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI4CCarEC2Ev:
.LFB3705:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3705:
	.size	_ZN9__gnu_cxx13new_allocatorI4CCarEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI4CCarEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI4CCarEC1Ev,_ZN9__gnu_cxx13new_allocatorI4CCarEC2Ev
	.section	.text._ZNSt16allocator_traitsISaI4CCarEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI4CCarEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI4CCarEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI4CCarEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI4CCarEE10deallocateERS1_PS0_m:
.LFB3707:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4CCarE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3707:
	.size	_ZNSt16allocator_traitsISaI4CCarEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI4CCarEE10deallocateERS1_PS0_m
	.section	.text._ZSt8_DestroyIP4CCarEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP4CCarEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP4CCarEvT_S2_
	.type	_ZSt8_DestroyIP4CCarEvT_S2_, @function
_ZSt8_DestroyIP4CCarEvT_S2_:
.LFB3708:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIP4CCarEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3708:
	.size	_ZSt8_DestroyIP4CCarEvT_S2_, .-_ZSt8_DestroyIP4CCarEvT_S2_
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, @function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB3709:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3709:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB3710:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3710:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB3711:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3711:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv
	.type	_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv, @function
_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv:
.LFB3754:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorI4CCarSaIS0_EE11_S_max_sizeERKS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3754:
	.size	_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv, .-_ZNKSt6vectorI4CCarSaIS0_EE8max_sizeEv
	.section	.text._ZNKSt6vectorI4CCarSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv:
.LFB3755:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3755:
	.size	_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv, .-_ZNKSt6vectorI4CCarSaIS0_EE4sizeEv
	.section	.text._ZNSt16allocator_traitsISaI4CCarEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaI4CCarEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaI4CCarEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaI4CCarEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaI4CCarEE8allocateERS1_m:
.LFB3756:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4CCarE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3756:
	.size	_ZNSt16allocator_traitsISaI4CCarEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaI4CCarEE8allocateERS1_m
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorI4CCarSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorI4CCarSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, @function
_ZNSt6vectorI4CCarSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE:
.LFB3757:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3757:
	.size	_ZNSt6vectorI4CCarSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorI4CCarSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx13new_allocatorI4CCarE7destroyIS1_EEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4CCarE7destroyIS1_EEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarE7destroyIS1_EEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorI4CCarE7destroyIS1_EEvPT_, @function
_ZN9__gnu_cxx13new_allocatorI4CCarE7destroyIS1_EEvPT_:
.LFB3758:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3758:
	.size	_ZN9__gnu_cxx13new_allocatorI4CCarE7destroyIS1_EEvPT_, .-_ZN9__gnu_cxx13new_allocatorI4CCarE7destroyIS1_EEvPT_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_:
.LFB3759:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3759:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,"axG",@progbits,_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,comdat
	.weak	_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.type	_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, @function
_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_:
.LFB3760:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb1EP4CCarS1_ET1_T0_S3_S2_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3760:
	.size	_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, .-_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.section	.text._ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_,"axG",@progbits,_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_,comdat
	.weak	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_
	.type	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_, @function
_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_:
.LFB3761:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_
	leaq	-25(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3761:
	.size	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_, .-_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_
	.section	.text._ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_T0_,comdat
	.weak	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_T0_
	.type	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_T0_, @function
_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_T0_:
.LFB3762:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmiEl
	movq	%rax, %rbx
	leaq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_SF_T0_
	leaq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_SF_T0_
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L288
	call	__stack_chk_fail@PLT
.L288:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3762:
	.size	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_T0_, .-_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_T0_
	.section	.text._ZN4CCarC2EOS_,"axG",@progbits,_ZN4CCarC5EOS_,comdat
	.align 2
	.weak	_ZN4CCarC2EOS_
	.type	_ZN4CCarC2EOS_, @function
_ZN4CCarC2EOS_:
.LFB3765:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	movq	-16(%rbp), %rax
	movl	64(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3765:
	.size	_ZN4CCarC2EOS_, .-_ZN4CCarC2EOS_
	.weak	_ZN4CCarC1EOS_
	.set	_ZN4CCarC1EOS_,_ZN4CCarC2EOS_
	.section	.text._ZN4CCaraSEOS_,"axG",@progbits,_ZN4CCaraSEOS_,comdat
	.align 2
	.weak	_ZN4CCaraSEOS_
	.type	_ZN4CCaraSEOS_, @function
_ZN4CCaraSEOS_:
.LFB3769:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@PLT
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_@PLT
	movq	-16(%rbp), %rax
	movl	64(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3769:
	.size	_ZN4CCaraSEOS_, .-_ZN4CCaraSEOS_
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,comdat
	.weak	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_:
.LFB3763:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3763
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-128(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxeqIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L302
	leaq	-120(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -104(%rbp)
	jmp	.L295
.L298:
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-129(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	je	.L296
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	leaq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB42:
	call	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
.LEHE42:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rbx
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	jmp	.L297
.L296:
.LEHB43:
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_
.L297:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv
.L295:
	leaq	-128(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L298
	jmp	.L292
.L301:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE43:
.L302:
	nop
.L292:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L300
	call	__stack_chk_fail@PLT
.L300:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3763:
	.section	.gcc_except_table
.LLSDA3763:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3763-.LLSDACSB3763
.LLSDACSB3763:
	.uleb128 .LEHB42-.LFB3763
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L301-.LFB3763
	.uleb128 0
	.uleb128 .LEHB43-.LFB3763
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE3763:
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,comdat
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	.section	.text._ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,"axG",@progbits,_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_,comdat
	.weak	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	.type	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_, @function
_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_:
.LFB3770:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L304
.L305:
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv
.L304:
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L305
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L306
	call	__stack_chk_fail@PLT
.L306:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3770:
	.size	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_, .-_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_T0_
	.section	.text._ZN9__gnu_cxx13new_allocatorI4CCarE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4CCarE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI4CCarE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI4CCarE10deallocateEPS1_m:
.LFB3771:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3771:
	.size	_ZN9__gnu_cxx13new_allocatorI4CCarE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI4CCarE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP4CCarEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP4CCarEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP4CCarEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP4CCarEEvT_S4_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIP4CCarEEvT_S4_:
.LFB3772:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L310
.L311:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI4CCarEPT_RS1_
	movq	%rax, %rdi
	call	_ZSt8_DestroyI4CCarEvPT_
	addq	$72, -8(%rbp)
.L310:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L311
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3772:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP4CCarEEvT_S4_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIP4CCarEEvT_S4_
	.section	.text._ZNSt6vectorI4CCarSaIS0_EE11_S_max_sizeERKS1_,"axG",@progbits,_ZNSt6vectorI4CCarSaIS0_EE11_S_max_sizeERKS1_,comdat
	.weak	_ZNSt6vectorI4CCarSaIS0_EE11_S_max_sizeERKS1_
	.type	_ZNSt6vectorI4CCarSaIS0_EE11_S_max_sizeERKS1_, @function
_ZNSt6vectorI4CCarSaIS0_EE11_S_max_sizeERKS1_:
.LFB3814:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$128102389400760775, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4CCarEE8max_sizeERKS1_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L314
	call	__stack_chk_fail@PLT
.L314:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3814:
	.size	_ZNSt6vectorI4CCarSaIS0_EE11_S_max_sizeERKS1_, .-_ZNSt6vectorI4CCarSaIS0_EE11_S_max_sizeERKS1_
	.section	.text._ZNKSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3815:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3815:
	.size	_ZNKSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI4CCarSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv:
.LFB3817:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$128102389400760775, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3817:
	.size	_ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorI4CCarE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4CCarE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorI4CCarE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorI4CCarE8allocateEmPKv:
.LFB3816:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L320
	movabsq	$256204778801521550, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L321
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L321:
	call	_ZSt17__throw_bad_allocv@PLT
.L320:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3816:
	.size	_ZN9__gnu_cxx13new_allocatorI4CCarE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorI4CCarE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt12__relocate_aIP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt12__relocate_aIP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt12__relocate_aIP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt12__relocate_aIP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3818:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarET_S2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarET_S2_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3818:
	.size	_ZSt12__relocate_aIP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt12__relocate_aIP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB3819:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3819:
	.size	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt14__copy_move_a1ILb1EP4CCarS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a1ILb1EP4CCarS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a1ILb1EP4CCarS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a1ILb1EP4CCarS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a1ILb1EP4CCarS1_ET1_T0_S3_S2_:
.LFB3820:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb1EP4CCarS1_ET1_T0_S3_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3820:
	.size	_ZSt14__copy_move_a1ILb1EP4CCarS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a1ILb1EP4CCarS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,"axG",@progbits,_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_,comdat
	.weak	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.type	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_, @function
_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_:
.LFB3821:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3821:
	.size	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_, .-_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_, @function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_:
.LFB3822:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-41(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L332
.L334:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-41(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	je	.L333
	leaq	-41(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_
.L333:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv
.L332:
	leaq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	testb	%al, %al
	jne	.L334
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L335
	call	__stack_chk_fail@PLT
.L335:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3822:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_, .-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_T0_
	.section	.text._ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_,"axG",@progbits,_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_,comdat
	.weak	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_
	.type	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_, @function
_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_:
.LFB3823:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L337
.L338:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_
.L337:
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmpq	$1, %rax
	setg	%al
	testb	%al, %al
	jne	.L338
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3823:
	.size	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_, .-_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmiEl:
.LFB3824:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	negq	%rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L341
	call	__stack_chk_fail@PLT
.L341:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3824:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmiEl
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_:
.LFB3826:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %r12
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3826:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_SF_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_SF_T0_,comdat
	.weak	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_SF_T0_
	.type	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_SF_T0_, @function
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_SF_T0_:
.LFB3825:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-33(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	je	.L345
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-33(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	je	.L346
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L351
.L346:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-33(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	je	.L348
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L351
.L348:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L351
.L345:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-33(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	je	.L349
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L351
.L349:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-33(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	je	.L350
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	jmp	.L351
.L350:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
.L351:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3825:
	.size	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_SF_T0_, .-_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_SF_T0_
	.section	.text._ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_SF_T0_,"axG",@progbits,_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_SF_T0_,comdat
	.weak	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_SF_T0_
	.type	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_SF_T0_, @function
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_SF_T0_:
.LFB3827:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L353
.L354:
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv
.L353:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-25(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	jne	.L354
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv
	jmp	.L355
.L356:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv
.L355:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-25(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	jne	.L356
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	xorl	$1, %eax
	testb	%al, %al
	je	.L357
	movq	-8(%rbp), %rax
	jmp	.L360
.L357:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEppEv
	jmp	.L353
.L360:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3827:
	.size	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_SF_T0_, .-_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEET_SF_SF_SF_T0_
	.section	.text._ZN9__gnu_cxxeqIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxeqIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxeqIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxeqIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxeqIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB3828:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3828:
	.size	_ZN9__gnu_cxxeqIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxeqIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_:
.LFB3829:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3829:
	.size	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,"axG",@progbits,_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_,comdat
	.weak	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.type	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, @function
_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_:
.LFB3830:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3830:
	.size	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_, .-_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_
	.section	.text._ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE,comdat
	.weak	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE, @function
_ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE:
.LFB3833:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_
	movq	%rax, %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1EONS0_15_Iter_comp_iterIS6_EE
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L369
	call	__stack_chk_fail@PLT
.L369:
	movl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3833:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE, .-_ZN9__gnu_cxx5__ops15__val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS8_EE
	.section	.text._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_,comdat
	.weak	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_
	.type	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_, @function
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_:
.LFB3834:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	movq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv
	jmp	.L371
.L372:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rbx
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv
.L371:
	movq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-121(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_
	testb	%al, %al
	jne	.L372
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rbx
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L373
	call	__stack_chk_fail@PLT
.L373:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3834:
	.size	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_, .-_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_
	.section	.text._ZSt11__addressofI4CCarEPT_RS1_,"axG",@progbits,_ZSt11__addressofI4CCarEPT_RS1_,comdat
	.weak	_ZSt11__addressofI4CCarEPT_RS1_
	.type	_ZSt11__addressofI4CCarEPT_RS1_, @function
_ZSt11__addressofI4CCarEPT_RS1_:
.LFB3835:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3835:
	.size	_ZSt11__addressofI4CCarEPT_RS1_, .-_ZSt11__addressofI4CCarEPT_RS1_
	.section	.text._ZSt8_DestroyI4CCarEvPT_,"axG",@progbits,_ZSt8_DestroyI4CCarEvPT_,comdat
	.weak	_ZSt8_DestroyI4CCarEvPT_
	.type	_ZSt8_DestroyI4CCarEvPT_, @function
_ZSt8_DestroyI4CCarEvPT_:
.LFB3836:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3836:
	.size	_ZSt8_DestroyI4CCarEvPT_, .-_ZSt8_DestroyI4CCarEvPT_
	.section	.text._ZNSt16allocator_traitsISaI4CCarEE8max_sizeERKS1_,"axG",@progbits,_ZNSt16allocator_traitsISaI4CCarEE8max_sizeERKS1_,comdat
	.weak	_ZNSt16allocator_traitsISaI4CCarEE8max_sizeERKS1_
	.type	_ZNSt16allocator_traitsISaI4CCarEE8max_sizeERKS1_, @function
_ZNSt16allocator_traitsISaI4CCarEE8max_sizeERKS1_:
.LFB3860:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI4CCarE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3860:
	.size	_ZNSt16allocator_traitsISaI4CCarEE8max_sizeERKS1_, .-_ZNSt16allocator_traitsISaI4CCarEE8max_sizeERKS1_
	.section	.text._ZSt12__niter_baseIP4CCarET_S2_,"axG",@progbits,_ZSt12__niter_baseIP4CCarET_S2_,comdat
	.weak	_ZSt12__niter_baseIP4CCarET_S2_
	.type	_ZSt12__niter_baseIP4CCarET_S2_, @function
_ZSt12__niter_baseIP4CCarET_S2_:
.LFB3861:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3861:
	.size	_ZSt12__niter_baseIP4CCarET_S2_, .-_ZSt12__niter_baseIP4CCarET_S2_
	.section	.text._ZSt14__relocate_a_1IP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_
	.type	_ZSt14__relocate_a_1IP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_, @function
_ZSt14__relocate_a_1IP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3862:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L382
.L383:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI4CCarEPT_RS1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI4CCarEPT_RS1_
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt19__relocate_object_aI4CCarS0_SaIS0_EEvPT_PT0_RT1_
	addq	$72, -40(%rbp)
	addq	$72, -24(%rbp)
.L382:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L383
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3862:
	.size	_ZSt14__relocate_a_1IP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_, .-_ZSt14__relocate_a_1IP4CCarS1_SaIS0_EET0_T_S4_S3_RT1_
	.section	.text._ZSt14__copy_move_a2ILb1EP4CCarS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EP4CCarS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EP4CCarS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb1EP4CCarS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a2ILb1EP4CCarS1_ET1_T0_S3_S2_:
.LFB3863:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP4CCarS4_EET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3863:
	.size	_ZSt14__copy_move_a2ILb1EP4CCarS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb1EP4CCarS1_ET1_T0_S3_S2_
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_,comdat
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_, @function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_:
.LFB3864:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3864
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-216(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	cmpq	$1, %rax
	setle	%al
	testb	%al, %al
	jne	.L397
	leaq	-216(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	subq	$2, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -192(%rbp)
.L393:
	movq	-192(%rbp), %rdx
	leaq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -200(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	leaq	-96(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
.LEHB44:
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_
.LEHE44:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	cmpq	$0, -192(%rbp)
	jne	.L390
	movl	$0, %ebx
	jmp	.L391
.L390:
	subq	$1, -192(%rbp)
	movl	$1, %ebx
.L391:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	cmpl	$1, %ebx
	jne	.L387
	jmp	.L393
.L396:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB45:
	call	_Unwind_Resume@PLT
.LEHE45:
.L397:
	nop
.L387:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L395
	call	__stack_chk_fail@PLT
.L395:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3864:
	.section	.gcc_except_table
.LLSDA3864:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3864-.LLSDACSB3864
.LLSDACSB3864:
	.uleb128 .LEHB44-.LFB3864
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L396-.LFB3864
	.uleb128 0
	.uleb128 .LEHB45-.LFB3864
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE3864:
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_,comdat
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_, .-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_RT0_
	.section	.text._ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,"axG",@progbits,_ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_,comdat
	.weak	_ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.type	_ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, @function
_ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_:
.LFB3865:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setb	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3865:
	.size	_ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, .-_ZN9__gnu_cxxltIP4CCarSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_
	.section	.text._ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_,"axG",@progbits,_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_,comdat
	.weak	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_
	.type	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_, @function
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_:
.LFB3866:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3866
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	leaq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rbx
	leaq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	leaq	-184(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIP4CCarSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_
	movq	%rax, %rsi
	leaq	-96(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB46:
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_
.LEHE46:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L402
	jmp	.L404
.L403:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB47:
	call	_Unwind_Resume@PLT
.LEHE47:
.L404:
	call	__stack_chk_fail@PLT
.L402:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3866:
	.section	.gcc_except_table
.LLSDA3866:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3866-.LLSDACSB3866
.LLSDACSB3866:
	.uleb128 .LEHB46-.LFB3866
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L403-.LFB3866
	.uleb128 0
	.uleb128 .LEHB47-.LFB3866
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE3866:
	.section	.text._ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_,"axG",@progbits,_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_,comdat
	.size	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_, .-_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_SF_SF_RT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv, @function
_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv:
.LFB3867:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3867:
	.size	_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEmmEv
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_,comdat
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_, @function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_:
.LFB3868:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rbx
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapI4CCarENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3868:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_EvT_T0_
	.section	.text._ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_,comdat
	.weak	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.type	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, @function
_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_:
.LFB3869:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIP4CCarSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt23__copy_move_backward_a1ILb1EP4CCarS1_ET1_T0_S3_S2_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3869:
	.size	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_, .-_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_
	.section	.text._ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_,"axG",@progbits,_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_,comdat
	.weak	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_, @function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_:
.LFB3873:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3873:
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_, .-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC5EONS0_15_Iter_comp_iterIS6_EE,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE:
.LFB3875:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3875:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1EONS0_15_Iter_comp_iterIS6_EE
	.set	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1EONS0_15_Iter_comp_iterIS6_EE,_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_:
.LFB3877:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3877:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorI4CCarE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorI4CCarE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorI4CCarE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorI4CCarE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorI4CCarE8max_sizeEv:
.LFB3889:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorI4CCarE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3889:
	.size	_ZNK9__gnu_cxx13new_allocatorI4CCarE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorI4CCarE8max_sizeEv
	.section	.text._ZSt19__relocate_object_aI4CCarS0_SaIS0_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aI4CCarS0_SaIS0_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aI4CCarS0_SaIS0_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aI4CCarS0_SaIS0_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aI4CCarS0_SaIS0_EEvPT_PT0_RT1_:
.LFB3890:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI4CCarEPT_RS1_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI4CCarEE7destroyIS0_EEvRS1_PT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3890:
	.size	_ZSt19__relocate_object_aI4CCarS0_SaIS0_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aI4CCarS0_SaIS0_EEvPT_PT0_RT1_
	.section	.text._ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP4CCarS4_EET0_T_S6_S5_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP4CCarS4_EET0_T_S6_S5_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP4CCarS4_EET0_T_S6_S5_
	.type	_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP4CCarS4_EET0_T_S6_S5_, @function
_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP4CCarS4_EET0_T_S6_S5_:
.LFB3891:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L419
.L420:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	addq	$72, -24(%rbp)
	addq	$72, -40(%rbp)
	subq	$1, -8(%rbp)
.L419:
	cmpq	$0, -8(%rbp)
	jg	.L420
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3891:
	.size	_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP4CCarS4_EET0_T_S6_S5_, .-_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIP4CCarS4_EET0_T_S6_S5_
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_,comdat
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_:
.LFB3892:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3892
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L423
.L425:
	movq	-112(%rbp), %rax
	addq	$1, %rax
	addq	%rax, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rbx
	movq	-112(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rcx
	leaq	-161(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESE_EEbT_T0_
	testb	%al, %al
	je	.L424
	subq	$1, -112(%rbp)
.L424:
	movq	-112(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rbx
	movq	-144(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
.L423:
	movq	-152(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	cmpq	%rax, -112(%rbp)
	jl	.L425
	movq	-152(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L426
	movq	-152(%rbp), %rax
	subq	$2, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	cmpq	%rax, -112(%rbp)
	jne	.L426
	movq	-112(%rbp), %rax
	addq	$1, %rax
	addq	%rax, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rbx
	movq	-144(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	movq	-112(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)
.L426:
	leaq	-161(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRK4CCarS6_E_EEEONSt16remove_referenceIT_E4typeEOSB_
	movq	%rax, %rdx
	leaq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1EONS0_15_Iter_comp_iterIS6_EE
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	leaq	-120(%rbp), %rdi
	leaq	-96(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB48:
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_RT2_
.LEHE48:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L428
	jmp	.L430
.L429:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB49:
	call	_Unwind_Resume@PLT
.LEHE49:
.L430:
	call	__stack_chk_fail@PLT
.L428:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3892:
	.section	.gcc_except_table
.LLSDA3892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3892-.LLSDACSB3892
.LLSDACSB3892:
	.uleb128 .LEHB48-.LFB3892
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L429-.LFB3892
	.uleb128 0
	.uleb128 .LEHB49-.LFB3892
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSE3892:
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_,comdat
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_T2_
	.section	.text._ZSt4swapI4CCarENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,"axG",@progbits,_ZSt4swapI4CCarENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,comdat
	.weak	_ZSt4swapI4CCarENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.type	_ZSt4swapI4CCarENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_, @function
_ZSt4swapI4CCarENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_:
.LFB3893:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4CCarD1Ev
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L432
	call	__stack_chk_fail@PLT
.L432:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3893:
	.size	_ZSt4swapI4CCarENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_, .-_ZSt4swapI4CCarENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.section	.text._ZSt23__copy_move_backward_a1ILb1EP4CCarS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EP4CCarS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1EP4CCarS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a1ILb1EP4CCarS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a1ILb1EP4CCarS1_ET1_T0_S3_S2_:
.LFB3894:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt23__copy_move_backward_a2ILb1EP4CCarS1_ET1_T0_S3_S2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3894:
	.size	_ZSt23__copy_move_backward_a1ILb1EP4CCarS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a1ILb1EP4CCarS1_ET1_T0_S3_S2_
	.section	.text._ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_:
.LFB3897:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JS1_EEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3897:
	.size	_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, .-_ZNSt16allocator_traitsISaI4CCarEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC5EONS0_15_Iter_comp_iterIS6_EE,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE:
.LFB3899:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZN7CGarage8sortCarsEvEUlRK4CCarS3_E_EONSt16remove_referenceIT_E4typeEOS7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3899:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1EONS0_15_Iter_comp_iterIS6_EE
	.set	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC1EONS0_15_Iter_comp_iterIS6_EE,_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EC2EONS0_15_Iter_comp_iterIS6_EE
	.section	.text._ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_RT2_,"axG",@progbits,_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_RT2_,comdat
	.weak	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_RT2_
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_RT2_, @function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_RT2_:
.LFB3901:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -32(%rbp)
	jmp	.L438
.L441:
	movq	-32(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rbx
	movq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -32(%rbp)
.L438:
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.L439
	movq	-32(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_
	testb	%al, %al
	je	.L439
	movl	$1, %eax
	jmp	.L440
.L439:
	movl	$0, %eax
.L440:
	testb	%al, %al
	jne	.L441
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rbx
	movq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEplEl
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L442
	call	__stack_chk_fail@PLT
.L442:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3901:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_RT2_, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRKS2_SC_E_EEEvT_T0_SG_T1_RT2_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EP4CCarS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EP4CCarS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb1EP4CCarS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb1EP4CCarS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a2ILb1EP4CCarS1_ET1_T0_S3_S2_:
.LFB3902:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4CCarS4_EET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3902:
	.size	_ZSt23__copy_move_backward_a2ILb1EP4CCarS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb1EP4CCarS1_ET1_T0_S3_S2_
	.section	.text._ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB3903:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3903:
	.size	_ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JS1_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JS1_EEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JS1_EEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JS1_EEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JS1_EEEvPT_DpOT0_:
.LFB3904:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardI4CCarEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$72, %edi
	call	_ZnwmPv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCarC1EOS_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3904:
	.size	_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JS1_EEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorI4CCarE9constructIS1_JS1_EEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_:
.LFB3905:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIP4CCarSt6vectorIS1_SaIS1_EEEdeEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZZN7CGarage8sortCarsEvENKUlRK4CCarS2_E_clES2_S2_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3905:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7CGarage8sortCarsEvEUlRK4CCarS5_E_EclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4CCarS4_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4CCarS4_EET0_T_S6_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4CCarS4_EET0_T_S6_S5_
	.type	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4CCarS4_EET0_T_S6_S5_, @function
_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4CCarS4_EET0_T_S6_S5_:
.LFB3906:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-8198552921648689607, %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L451
.L452:
	subq	$72, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIR4CCarEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	subq	$72, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4CCaraSEOS_
	subq	$1, -8(%rbp)
.L451:
	cmpq	$0, -8(%rbp)
	jg	.L452
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3906:
	.size	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4CCarS4_EET0_T_S6_S5_, .-_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP4CCarS4_EET0_T_S6_S5_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3907:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L456
	cmpl	$65535, -8(%rbp)
	jne	.L456
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L456:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3907:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3908:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3908:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
