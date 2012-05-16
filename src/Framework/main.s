	.file	"main.cpp"
	.section	.text._ZnwjPv,"axG",@progbits,_ZnwjPv,comdat
	.weak	_ZnwjPv
	.type	_ZnwjPv, @function
_ZnwjPv:
.LFB163:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE163:
	.size	_ZnwjPv, .-_ZnwjPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB165:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE165:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNKSt9type_info4nameEv,"axG",@progbits,_ZNKSt9type_info4nameEv,comdat
	.align 2
	.weak	_ZNKSt9type_info4nameEv
	.type	_ZNKSt9type_info4nameEv, @function
_ZNKSt9type_info4nameEv:
.LFB1094:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movzbl	(%eax), %eax
	cmpb	$42, %al
	jne	.L4
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	jmp	.L5
.L4:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
.L5:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1094:
	.size	_ZNKSt9type_info4nameEv, .-_ZNKSt9type_info4nameEv
	.section	.text._ZN5boost6detail23atomic_exchange_and_addEPii,"axG",@progbits,_ZN5boost6detail23atomic_exchange_and_addEPii,comdat
	.weak	_ZN5boost6detail23atomic_exchange_and_addEPii
	.type	_ZN5boost6detail23atomic_exchange_and_addEPii, @function
_ZN5boost6detail23atomic_exchange_and_addEPii:
.LFB1107:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	%ecx, %ebx
	.cfi_offset 3, -12
#APP
# 50 "/usr/local/include/boost/smart_ptr/detail/sp_counted_base_gcc_x86.hpp" 1
	lock
	xadd %ebx, (%eax)
# 0 "" 2
#NO_APP
	movl	%ebx, -8(%ebp)
	movl	-8(%ebp), %eax
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1107:
	.size	_ZN5boost6detail23atomic_exchange_and_addEPii, .-_ZN5boost6detail23atomic_exchange_and_addEPii
	.section	.text._ZN5boost6detail16atomic_incrementEPi,"axG",@progbits,_ZN5boost6detail16atomic_incrementEPi,comdat
	.weak	_ZN5boost6detail16atomic_incrementEPi
	.type	_ZN5boost6detail16atomic_incrementEPi, @function
_ZN5boost6detail16atomic_incrementEPi:
.LFB1108:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	8(%ebp), %edx
#APP
# 66 "/usr/local/include/boost/smart_ptr/detail/sp_counted_base_gcc_x86.hpp" 1
	lock
	incl (%eax)
# 0 "" 2
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1108:
	.size	_ZN5boost6detail16atomic_incrementEPi, .-_ZN5boost6detail16atomic_incrementEPi
	.section	.text._ZN5boost6detail15sp_counted_baseC2Ev,"axG",@progbits,_ZN5boost6detail15sp_counted_baseC5Ev,comdat
	.align 2
	.weak	_ZN5boost6detail15sp_counted_baseC2Ev
	.type	_ZN5boost6detail15sp_counted_baseC2Ev, @function
_ZN5boost6detail15sp_counted_baseC2Ev:
.LFB1111:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$_ZTVN5boost6detail15sp_counted_baseE+8, (%eax)
	movl	8(%ebp), %eax
	movl	$1, 4(%eax)
	movl	8(%ebp), %eax
	movl	$1, 8(%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1111:
	.size	_ZN5boost6detail15sp_counted_baseC2Ev, .-_ZN5boost6detail15sp_counted_baseC2Ev
	.weak	_ZN5boost6detail15sp_counted_baseC1Ev
	.set	_ZN5boost6detail15sp_counted_baseC1Ev,_ZN5boost6detail15sp_counted_baseC2Ev
	.section	.text._ZN5boost6detail15sp_counted_baseD2Ev,"axG",@progbits,_ZN5boost6detail15sp_counted_baseD5Ev,comdat
	.align 2
	.weak	_ZN5boost6detail15sp_counted_baseD2Ev
	.type	_ZN5boost6detail15sp_counted_baseD2Ev, @function
_ZN5boost6detail15sp_counted_baseD2Ev:
.LFB1114:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTVN5boost6detail15sp_counted_baseE+8, (%eax)
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L9
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L9:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1114:
	.size	_ZN5boost6detail15sp_counted_baseD2Ev, .-_ZN5boost6detail15sp_counted_baseD2Ev
	.weak	_ZN5boost6detail15sp_counted_baseD1Ev
	.set	_ZN5boost6detail15sp_counted_baseD1Ev,_ZN5boost6detail15sp_counted_baseD2Ev
	.section	.text._ZN5boost6detail15sp_counted_baseD0Ev,"axG",@progbits,_ZN5boost6detail15sp_counted_baseD5Ev,comdat
	.align 2
	.weak	_ZN5boost6detail15sp_counted_baseD0Ev
	.type	_ZN5boost6detail15sp_counted_baseD0Ev, @function
_ZN5boost6detail15sp_counted_baseD0Ev:
.LFB1116:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail15sp_counted_baseD1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1116:
	.size	_ZN5boost6detail15sp_counted_baseD0Ev, .-_ZN5boost6detail15sp_counted_baseD0Ev
	.section	.text._ZN5boost6detail15sp_counted_base7destroyEv,"axG",@progbits,_ZN5boost6detail15sp_counted_base7destroyEv,comdat
	.align 2
	.weak	_ZN5boost6detail15sp_counted_base7destroyEv
	.type	_ZN5boost6detail15sp_counted_base7destroyEv, @function
_ZN5boost6detail15sp_counted_base7destroyEv:
.LFB1117:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	.L14
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L14:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1117:
	.size	_ZN5boost6detail15sp_counted_base7destroyEv, .-_ZN5boost6detail15sp_counted_base7destroyEv
	.section	.text._ZN5boost6detail15sp_counted_base12add_ref_copyEv,"axG",@progbits,_ZN5boost6detail15sp_counted_base12add_ref_copyEv,comdat
	.align 2
	.weak	_ZN5boost6detail15sp_counted_base12add_ref_copyEv
	.type	_ZN5boost6detail15sp_counted_base12add_ref_copyEv, @function
_ZN5boost6detail15sp_counted_base12add_ref_copyEv:
.LFB1118:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail16atomic_incrementEPi
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1118:
	.size	_ZN5boost6detail15sp_counted_base12add_ref_copyEv, .-_ZN5boost6detail15sp_counted_base12add_ref_copyEv
	.section	.text._ZN5boost6detail15sp_counted_base7releaseEv,"axG",@progbits,_ZN5boost6detail15sp_counted_base7releaseEv,comdat
	.align 2
	.weak	_ZN5boost6detail15sp_counted_base7releaseEv
	.type	_ZN5boost6detail15sp_counted_base7releaseEv, @function
_ZN5boost6detail15sp_counted_base7releaseEv:
.LFB1120:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5boost6detail23atomic_exchange_and_addEPii
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L17
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail15sp_counted_base12weak_releaseEv
.L17:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1120:
	.size	_ZN5boost6detail15sp_counted_base7releaseEv, .-_ZN5boost6detail15sp_counted_base7releaseEv
	.section	.text._ZN5boost6detail15sp_counted_base12weak_releaseEv,"axG",@progbits,_ZN5boost6detail15sp_counted_base12weak_releaseEv,comdat
	.align 2
	.weak	_ZN5boost6detail15sp_counted_base12weak_releaseEv
	.type	_ZN5boost6detail15sp_counted_base12weak_releaseEv, @function
_ZN5boost6detail15sp_counted_base12weak_releaseEv:
.LFB1122:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5boost6detail23atomic_exchange_and_addEPii
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L19
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L19:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1122:
	.size	_ZN5boost6detail15sp_counted_base12weak_releaseEv, .-_ZN5boost6detail15sp_counted_base12weak_releaseEv
	.section	.text._ZN5boost6detail12shared_countC2Ev,"axG",@progbits,_ZN5boost6detail12shared_countC5Ev,comdat
	.align 2
	.weak	_ZN5boost6detail12shared_countC2Ev
	.type	_ZN5boost6detail12shared_countC2Ev, @function
_ZN5boost6detail12shared_countC2Ev:
.LFB1137:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1137:
	.size	_ZN5boost6detail12shared_countC2Ev, .-_ZN5boost6detail12shared_countC2Ev
	.weak	_ZN5boost6detail12shared_countC1Ev
	.set	_ZN5boost6detail12shared_countC1Ev,_ZN5boost6detail12shared_countC2Ev
	.section	.text._ZN5boost6detail12shared_countD2Ev,"axG",@progbits,_ZN5boost6detail12shared_countD5Ev,comdat
	.align 2
	.weak	_ZN5boost6detail12shared_countD2Ev
	.type	_ZN5boost6detail12shared_countD2Ev, @function
_ZN5boost6detail12shared_countD2Ev:
.LFB1146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L22
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail15sp_counted_base7releaseEv
.L22:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1146:
	.size	_ZN5boost6detail12shared_countD2Ev, .-_ZN5boost6detail12shared_countD2Ev
	.weak	_ZN5boost6detail12shared_countD1Ev
	.set	_ZN5boost6detail12shared_countD1Ev,_ZN5boost6detail12shared_countD2Ev
	.section	.text._ZN5boost6detail12shared_countC2ERKS1_,"axG",@progbits,_ZN5boost6detail12shared_countC5ERKS1_,comdat
	.align 2
	.weak	_ZN5boost6detail12shared_countC2ERKS1_
	.type	_ZN5boost6detail12shared_countC2ERKS1_, @function
_ZN5boost6detail12shared_countC2ERKS1_:
.LFB1149:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L24
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail15sp_counted_base12add_ref_copyEv
.L24:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1149:
	.size	_ZN5boost6detail12shared_countC2ERKS1_, .-_ZN5boost6detail12shared_countC2ERKS1_
	.weak	_ZN5boost6detail12shared_countC1ERKS1_
	.set	_ZN5boost6detail12shared_countC1ERKS1_,_ZN5boost6detail12shared_countC2ERKS1_
	.section	.text._ZN5boost6detail12shared_countaSERKS1_,"axG",@progbits,_ZN5boost6detail12shared_countaSERKS1_,comdat
	.align 2
	.weak	_ZN5boost6detail12shared_countaSERKS1_
	.type	_ZN5boost6detail12shared_countaSERKS1_, @function
_ZN5boost6detail12shared_countaSERKS1_:
.LFB1151:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	je	.L27
	cmpl	$0, -12(%ebp)
	je	.L28
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail15sp_counted_base12add_ref_copyEv
.L28:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L29
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail15sp_counted_base7releaseEv
.L29:
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
.L27:
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1151:
	.size	_ZN5boost6detail12shared_countaSERKS1_, .-_ZN5boost6detail12shared_countaSERKS1_
	.section	.text._ZN5boost6detail12shared_count4swapERS1_,"axG",@progbits,_ZN5boost6detail12shared_count4swapERS1_,comdat
	.align 2
	.weak	_ZN5boost6detail12shared_count4swapERS1_
	.type	_ZN5boost6detail12shared_count4swapERS1_, @function
_ZN5boost6detail12shared_count4swapERS1_:
.LFB1152:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1152:
	.size	_ZN5boost6detail12shared_count4swapERS1_, .-_ZN5boost6detail12shared_count4swapERS1_
	.section	.text._ZN5boost6detail26sp_enable_shared_from_thisEz,"axG",@progbits,_ZN5boost6detail26sp_enable_shared_from_thisEz,comdat
	.weak	_ZN5boost6detail26sp_enable_shared_from_thisEz
	.type	_ZN5boost6detail26sp_enable_shared_from_thisEz, @function
_ZN5boost6detail26sp_enable_shared_from_thisEz:
.LFB1369:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1369:
	.size	_ZN5boost6detail26sp_enable_shared_from_thisEz, .-_ZN5boost6detail26sp_enable_shared_from_thisEz
	.section	.text._ZN12CMyComponentC2Ev,"axG",@progbits,_ZN12CMyComponentC5Ev,comdat
	.align 2
	.weak	_ZN12CMyComponentC2Ev
	.type	_ZN12CMyComponentC2Ev, @function
_ZN12CMyComponentC2Ev:
.LFB1834:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentEC2Ev
	movl	8(%ebp), %eax
	movl	$_ZTV12CMyComponent+8, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1834:
	.size	_ZN12CMyComponentC2Ev, .-_ZN12CMyComponentC2Ev
	.weak	_ZN12CMyComponentC1Ev
	.set	_ZN12CMyComponentC1Ev,_ZN12CMyComponentC2Ev
	.section	.text._ZN12CMyComponentD2Ev,"axG",@progbits,_ZN12CMyComponentD5Ev,comdat
	.align 2
	.weak	_ZN12CMyComponentD2Ev
	.type	_ZN12CMyComponentD2Ev, @function
_ZN12CMyComponentD2Ev:
.LFB1837:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV12CMyComponent+8, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentED2Ev
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L33
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L33:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1837:
	.size	_ZN12CMyComponentD2Ev, .-_ZN12CMyComponentD2Ev
	.weak	_ZN12CMyComponentD1Ev
	.set	_ZN12CMyComponentD1Ev,_ZN12CMyComponentD2Ev
	.section	.text._ZN12CMyComponentD0Ev,"axG",@progbits,_ZN12CMyComponentD5Ev,comdat
	.align 2
	.weak	_ZN12CMyComponentD0Ev
	.type	_ZN12CMyComponentD0Ev, @function
_ZN12CMyComponentD0Ev:
.LFB1839:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12CMyComponentD1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1839:
	.size	_ZN12CMyComponentD0Ev, .-_ZN12CMyComponentD0Ev
	.section	.text._ZNK12CMyComponent16GetComponentTypeEv,"axG",@progbits,_ZNK12CMyComponent16GetComponentTypeEv,comdat
	.align 2
	.weak	_ZNK12CMyComponent16GetComponentTypeEv
	.type	_ZNK12CMyComponent16GetComponentTypeEv, @function
_ZNK12CMyComponent16GetComponentTypeEv:
.LFB1840:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	$0, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1840:
	.size	_ZNK12CMyComponent16GetComponentTypeEv, .-_ZNK12CMyComponent16GetComponentTypeEv
	.section	.text._ZN7CMyLeafC2ERKSs,"axG",@progbits,_ZN7CMyLeafC5ERKSs,comdat
	.align 2
	.weak	_ZN7CMyLeafC2ERKSs
	.type	_ZN7CMyLeafC2ERKSs, @function
_ZN7CMyLeafC2ERKSs:
.LFB1842:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1842
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB0:
	.cfi_offset 3, -12
	call	_ZN12CMyComponentC2Ev
.LEHE0:
	movl	8(%ebp), %eax
	movl	$_ZTV7CMyLeaf+8, (%eax)
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB1:
	call	_ZN10TComponentI12CMyComponentE7SetNameERKSs
.LEHE1:
	jmp	.L42
.L41:
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12CMyComponentD2Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L42:
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1842:
	.size	_ZN7CMyLeafC2ERKSs, .-_ZN7CMyLeafC2ERKSs
.globl __gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1842:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1842-.LLSDACSB1842
.LLSDACSB1842:
	.uleb128 .LEHB0-.LFB1842
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB1-.LFB1842
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L41-.LFB1842
	.uleb128 0x0
	.uleb128 .LEHB2-.LFB1842
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1842:
	.section	.text._ZN7CMyLeafC2ERKSs,"axG",@progbits,_ZN7CMyLeafC5ERKSs,comdat
	.weak	_ZN7CMyLeafC1ERKSs
	.set	_ZN7CMyLeafC1ERKSs,_ZN7CMyLeafC2ERKSs
	.section	.text._ZN7CMyLeafD2Ev,"axG",@progbits,_ZN7CMyLeafD5Ev,comdat
	.align 2
	.weak	_ZN7CMyLeafD2Ev
	.type	_ZN7CMyLeafD2Ev, @function
_ZN7CMyLeafD2Ev:
.LFB1845:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV7CMyLeaf+8, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12CMyComponentD2Ev
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L43
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L43:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1845:
	.size	_ZN7CMyLeafD2Ev, .-_ZN7CMyLeafD2Ev
	.weak	_ZN7CMyLeafD1Ev
	.set	_ZN7CMyLeafD1Ev,_ZN7CMyLeafD2Ev
	.section	.text._ZN7CMyLeafD0Ev,"axG",@progbits,_ZN7CMyLeafD5Ev,comdat
	.align 2
	.weak	_ZN7CMyLeafD0Ev
	.type	_ZN7CMyLeafD0Ev, @function
_ZN7CMyLeafD0Ev:
.LFB1847:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN7CMyLeafD1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1847:
	.size	_ZN7CMyLeafD0Ev, .-_ZN7CMyLeafD0Ev
	.section	.text._ZNK7CMyLeaf16GetComponentTypeEv,"axG",@progbits,_ZNK7CMyLeaf16GetComponentTypeEv,comdat
	.align 2
	.weak	_ZNK7CMyLeaf16GetComponentTypeEv
	.type	_ZNK7CMyLeaf16GetComponentTypeEv, @function
_ZNK7CMyLeaf16GetComponentTypeEv:
.LFB1848:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	$1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1848:
	.size	_ZNK7CMyLeaf16GetComponentTypeEv, .-_ZNK7CMyLeaf16GetComponentTypeEv
	.section	.text._ZN12CMyCompositeC2Ev,"axG",@progbits,_ZN12CMyCompositeC5Ev,comdat
	.align 2
	.weak	_ZN12CMyCompositeC2Ev
	.type	_ZN12CMyCompositeC2Ev, @function
_ZN12CMyCompositeC2Ev:
.LFB1850:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12CMyComponentC2Ev
	movl	8(%ebp), %eax
	movl	$_ZTV12CMyComposite+8, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1850:
	.size	_ZN12CMyCompositeC2Ev, .-_ZN12CMyCompositeC2Ev
	.weak	_ZN12CMyCompositeC1Ev
	.set	_ZN12CMyCompositeC1Ev,_ZN12CMyCompositeC2Ev
	.section	.text._ZN12CMyCompositeD2Ev,"axG",@progbits,_ZN12CMyCompositeD5Ev,comdat
	.align 2
	.weak	_ZN12CMyCompositeD2Ev
	.type	_ZN12CMyCompositeD2Ev, @function
_ZN12CMyCompositeD2Ev:
.LFB1853:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV12CMyComposite+8, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12CMyComponentD2Ev
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L50
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L50:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1853:
	.size	_ZN12CMyCompositeD2Ev, .-_ZN12CMyCompositeD2Ev
	.weak	_ZN12CMyCompositeD1Ev
	.set	_ZN12CMyCompositeD1Ev,_ZN12CMyCompositeD2Ev
	.section	.text._ZN12CMyCompositeD0Ev,"axG",@progbits,_ZN12CMyCompositeD5Ev,comdat
	.align 2
	.weak	_ZN12CMyCompositeD0Ev
	.type	_ZN12CMyCompositeD0Ev, @function
_ZN12CMyCompositeD0Ev:
.LFB1855:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12CMyCompositeD1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1855:
	.size	_ZN12CMyCompositeD0Ev, .-_ZN12CMyCompositeD0Ev
	.section	.rodata
.LC0:
	.string	"jestem kompozytem"
	.section	.text._ZNK12CMyComposite16GetComponentTypeEv,"axG",@progbits,_ZNK12CMyComposite16GetComponentTypeEv,comdat
	.align 2
	.weak	_ZNK12CMyComposite16GetComponentTypeEv
	.type	_ZNK12CMyComposite16GetComponentTypeEv, @function
_ZNK12CMyComposite16GetComponentTypeEv:
.LFB1856:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$.LC0, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	$2, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1856:
	.size	_ZNK12CMyComposite16GetComponentTypeEv, .-_ZNK12CMyComposite16GetComponentTypeEv
	.section	.rodata
.LC1:
	.string	"Audio"
	.section	.text._ZN10CMyBuilder5AudioEv,"axG",@progbits,_ZN10CMyBuilder5AudioEv,comdat
	.weak	_ZN10CMyBuilder5AudioEv
	.type	_ZN10CMyBuilder5AudioEv, @function
_ZN10CMyBuilder5AudioEv:
.LFB1857:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1857
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	movl	8(%ebp), %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, %edi
	leal	-25(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-25(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC1, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
.LEHB3:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE3:
	leal	-32(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	$8, (%esp)
.LEHB4:
	call	_Znwj
.LEHE4:
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	-44(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB5:
	call	_ZN7CMyLeafC1ERKSs
.LEHE5:
	movl	%ebx, %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentEC1EPS0_
	leal	-40(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv
	subl	$4, %esp
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentEC1ESt12auto_ptr_refIS0_E
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
.LEHB6:
	call	_ZNSt8auto_ptrI12CMyComponentED1Ev
.LEHE6:
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
.LEHB7:
	call	_ZNSsD1Ev
.LEHE7:
	leal	-25(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	movl	%esi, %eax
	movl	%esi, %eax
	leal	-12(%ebp), %esp
	addl	$0, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
.L62:
	.cfi_restore_state
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %ebx
	jmp	.L58
.L61:
	movl	%eax, %ebx
.L58:
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L59
.L60:
	movl	%eax, %ebx
.L59:
	leal	-25(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
	.cfi_endproc
.LFE1857:
	.size	_ZN10CMyBuilder5AudioEv, .-_ZN10CMyBuilder5AudioEv
	.section	.gcc_except_table
.LLSDA1857:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1857-.LLSDACSB1857
.LLSDACSB1857:
	.uleb128 .LEHB3-.LFB1857
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L60-.LFB1857
	.uleb128 0x0
	.uleb128 .LEHB4-.LFB1857
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L61-.LFB1857
	.uleb128 0x0
	.uleb128 .LEHB5-.LFB1857
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L62-.LFB1857
	.uleb128 0x0
	.uleb128 .LEHB6-.LFB1857
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L61-.LFB1857
	.uleb128 0x0
	.uleb128 .LEHB7-.LFB1857
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L60-.LFB1857
	.uleb128 0x0
	.uleb128 .LEHB8-.LFB1857
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1857:
	.section	.text._ZN10CMyBuilder5AudioEv,"axG",@progbits,_ZN10CMyBuilder5AudioEv,comdat
	.section	.rodata
.LC2:
	.string	"ustawienia programu"
	.text
.globl main
	.type	main, @function
main:
.LFB1858:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1858
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0x0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	subl	$48, %esp
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB9:
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	call	_ZN12CMyCompositeC1Ev
.LEHE9:
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-9(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC2, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB10:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE10:
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB11:
	call	_ZN10TComponentI12CMyComponentE7SetNameERKSs
.LEHE11:
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB12:
	call	_ZNSsD1Ev
.LEHE12:
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB13:
	call	_ZN10TComponentI12CMyComponentE7GetNameEv
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10CMyBuilder5AudioEv
.LEHE13:
	subl	$4, %esp
	leal	-24(%ebp), %eax
	leal	-20(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentEC1ESt12auto_ptr_refIS0_E
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB14:
	call	_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E
.LEHE14:
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
.LEHB15:
	call	_ZNSt8auto_ptrI12CMyComponentED1Ev
.LEHE15:
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
.LEHB16:
	call	_ZNSt8auto_ptrI12CMyComponentED1Ev
.LEHE16:
	movl	-40(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %ebx
	leal	-10(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	leal	-10(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$.LC1, 4(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
.LEHB17:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE17:
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB18:
	call	*%ebx
	movl	(%eax), %edx
	addl	$28, %edx
	movl	(%edx), %edx
	movl	%eax, (%esp)
	call	*%edx
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
.LEHE18:
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
.LEHB19:
	call	_ZNSsD1Ev
.LEHE19:
	leal	-10(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	movl	$0, %ebx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB20:
	call	_ZN12CMyCompositeD1Ev
.LEHE20:
	movl	%ebx, %eax
	leal	-8(%ebp), %esp
	addl	$0, %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
.L72:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L65
.L71:
	movl	%eax, %ebx
.L65:
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L66
.L74:
	movl	%eax, %ebx
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentED1Ev
	jmp	.L68
.L75:
	movl	%eax, %ebx
.L68:
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentED1Ev
	jmp	.L66
.L77:
	movl	%eax, %ebx
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L70
.L76:
	movl	%eax, %ebx
.L70:
	leal	-10(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	jmp	.L66
.L73:
	movl	%eax, %ebx
.L66:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN12CMyCompositeD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB21:
	call	_Unwind_Resume
.LEHE21:
	.cfi_endproc
.LFE1858:
	.size	main, .-main
	.section	.gcc_except_table
.LLSDA1858:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1858-.LLSDACSB1858
.LLSDACSB1858:
	.uleb128 .LEHB9-.LFB1858
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB10-.LFB1858
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L71-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB11-.LFB1858
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L72-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB12-.LFB1858
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L71-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB13-.LFB1858
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L73-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB14-.LFB1858
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L74-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB15-.LFB1858
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L75-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB16-.LFB1858
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L73-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB17-.LFB1858
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L76-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB18-.LFB1858
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L77-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB19-.LFB1858
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L76-.LFB1858
	.uleb128 0x0
	.uleb128 .LEHB20-.LFB1858
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB21-.LFB1858
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1858:
	.text
	.section	.text._ZN10TComponentI12CMyComponentEC2Ev,"axG",@progbits,_ZN10TComponentI12CMyComponentEC5Ev,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentEC2Ev
	.type	_ZN10TComponentI12CMyComponentEC2Ev, @function
_ZN10TComponentI12CMyComponentEC2Ev:
.LFB1893:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV10TComponentI12CMyComponentE+8, (%eax)
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC1EPS3_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1893:
	.size	_ZN10TComponentI12CMyComponentEC2Ev, .-_ZN10TComponentI12CMyComponentEC2Ev
	.weak	_ZN10TComponentI12CMyComponentEC1Ev
	.set	_ZN10TComponentI12CMyComponentEC1Ev,_ZN10TComponentI12CMyComponentEC2Ev
	.section	.text._ZN10TComponentI12CMyComponentED2Ev,"axG",@progbits,_ZN10TComponentI12CMyComponentED5Ev,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentED2Ev
	.type	_ZN10TComponentI12CMyComponentED2Ev, @function
_ZN10TComponentI12CMyComponentED2Ev:
.LFB1896:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV10TComponentI12CMyComponentE+8, (%eax)
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED1Ev
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L79
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L79:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1896:
	.size	_ZN10TComponentI12CMyComponentED2Ev, .-_ZN10TComponentI12CMyComponentED2Ev
	.weak	_ZN10TComponentI12CMyComponentED1Ev
	.set	_ZN10TComponentI12CMyComponentED1Ev,_ZN10TComponentI12CMyComponentED2Ev
	.section	.text._ZN10TComponentI12CMyComponentED0Ev,"axG",@progbits,_ZN10TComponentI12CMyComponentED5Ev,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentED0Ev
	.type	_ZN10TComponentI12CMyComponentED0Ev, @function
_ZN10TComponentI12CMyComponentED0Ev:
.LFB1898:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentED1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1898:
	.size	_ZN10TComponentI12CMyComponentED0Ev, .-_ZN10TComponentI12CMyComponentED0Ev
	.section	.text._ZN10TComponentI12CMyComponentE7SetNameERKSs,"axG",@progbits,_ZN10TComponentI12CMyComponentE7SetNameERKSs,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE7SetNameERKSs
	.type	_ZN10TComponentI12CMyComponentE7SetNameERKSs, @function
_ZN10TComponentI12CMyComponentE7SetNameERKSs:
.LFB1899:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	addl	$36, %edx
	movl	(%edx), %ecx
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1899:
	.size	_ZN10TComponentI12CMyComponentE7SetNameERKSs, .-_ZN10TComponentI12CMyComponentE7SetNameERKSs
	.section	.text._ZNSt8auto_ptrI12CMyComponentEC2EPS0_,"axG",@progbits,_ZNSt8auto_ptrI12CMyComponentEC5EPS0_,comdat
	.align 2
	.weak	_ZNSt8auto_ptrI12CMyComponentEC2EPS0_
	.type	_ZNSt8auto_ptrI12CMyComponentEC2EPS0_, @function
_ZNSt8auto_ptrI12CMyComponentEC2EPS0_:
.LFB1913:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1913:
	.size	_ZNSt8auto_ptrI12CMyComponentEC2EPS0_, .-_ZNSt8auto_ptrI12CMyComponentEC2EPS0_
	.weak	_ZNSt8auto_ptrI12CMyComponentEC1EPS0_
	.set	_ZNSt8auto_ptrI12CMyComponentEC1EPS0_,_ZNSt8auto_ptrI12CMyComponentEC2EPS0_
	.section	.text._ZNSt8auto_ptrI12CMyComponentED2Ev,"axG",@progbits,_ZNSt8auto_ptrI12CMyComponentED5Ev,comdat
	.align 2
	.weak	_ZNSt8auto_ptrI12CMyComponentED2Ev
	.type	_ZNSt8auto_ptrI12CMyComponentED2Ev, @function
_ZNSt8auto_ptrI12CMyComponentED2Ev:
.LFB1916:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L86
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
.L86:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1916:
	.size	_ZNSt8auto_ptrI12CMyComponentED2Ev, .-_ZNSt8auto_ptrI12CMyComponentED2Ev
	.weak	_ZNSt8auto_ptrI12CMyComponentED1Ev
	.set	_ZNSt8auto_ptrI12CMyComponentED1Ev,_ZNSt8auto_ptrI12CMyComponentED2Ev
	.section	.text._ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv,"axG",@progbits,_ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv,comdat
	.align 2
	.weak	_ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv
	.type	_ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv, @function
_ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv:
.LFB1918:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentE7releaseEv
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt12auto_ptr_refI12CMyComponentEC1EPS0_
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE1918:
	.size	_ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv, .-_ZNSt8auto_ptrI12CMyComponentEcvSt12auto_ptr_refIT_EIS0_EEv
	.section	.text._ZNSt8auto_ptrI12CMyComponentEC2ESt12auto_ptr_refIS0_E,"axG",@progbits,_ZNSt8auto_ptrI12CMyComponentEC5ESt12auto_ptr_refIS0_E,comdat
	.align 2
	.weak	_ZNSt8auto_ptrI12CMyComponentEC2ESt12auto_ptr_refIS0_E
	.type	_ZNSt8auto_ptrI12CMyComponentEC2ESt12auto_ptr_refIS0_E, @function
_ZNSt8auto_ptrI12CMyComponentEC2ESt12auto_ptr_refIS0_E:
.LFB1920:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1920:
	.size	_ZNSt8auto_ptrI12CMyComponentEC2ESt12auto_ptr_refIS0_E, .-_ZNSt8auto_ptrI12CMyComponentEC2ESt12auto_ptr_refIS0_E
	.weak	_ZNSt8auto_ptrI12CMyComponentEC1ESt12auto_ptr_refIS0_E
	.set	_ZNSt8auto_ptrI12CMyComponentEC1ESt12auto_ptr_refIS0_E,_ZNSt8auto_ptrI12CMyComponentEC2ESt12auto_ptr_refIS0_E
	.section	.text._ZN10TComponentI12CMyComponentE7GetNameEv,"axG",@progbits,_ZN10TComponentI12CMyComponentE7GetNameEv,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE7GetNameEv
	.type	_ZN10TComponentI12CMyComponentE7GetNameEv, @function
_ZN10TComponentI12CMyComponentE7GetNameEv:
.LFB1922:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	addl	$20, %edx
	movl	(%edx), %edx
	movl	%eax, (%esp)
	call	*%edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1922:
	.size	_ZN10TComponentI12CMyComponentE7GetNameEv, .-_ZN10TComponentI12CMyComponentE7GetNameEv
	.section	.text._ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E,"axG",@progbits,_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E
	.type	_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E, @function
_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E:
.LFB1924:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1924
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB22:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
.LEHE22:
	movl	%eax, %ebx
	movl	(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentEC1ERS1_
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
.LEHB23:
	call	*%esi
.LEHE23:
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
.LEHB24:
	call	_ZNSt8auto_ptrI12CMyComponentED1Ev
.LEHE24:
	addl	$32, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L93:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB25:
	call	_Unwind_Resume
.LEHE25:
	.cfi_endproc
.LFE1924:
	.size	_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E, .-_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E
	.section	.gcc_except_table
.LLSDA1924:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1924-.LLSDACSB1924
.LLSDACSB1924:
	.uleb128 .LEHB22-.LFB1924
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB23-.LFB1924
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L93-.LFB1924
	.uleb128 0x0
	.uleb128 .LEHB24-.LFB1924
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB25-.LFB1924
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1924:
	.section	.text._ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E,"axG",@progbits,_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E,comdat
	.section	.text._ZN10TComponentI12CMyComponentEixERKSs,"axG",@progbits,_ZN10TComponentI12CMyComponentEixERKSs,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentEixERKSs
	.type	_ZN10TComponentI12CMyComponentEixERKSs, @function
_ZN10TComponentI12CMyComponentEixERKSs:
.LFB1925:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	movl	(%edx), %ecx
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1925:
	.size	_ZN10TComponentI12CMyComponentEixERKSs, .-_ZN10TComponentI12CMyComponentEixERKSs
	.section	.text._ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC2EPS3_,"axG",@progbits,_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC5EPS3_,comdat
	.align 2
	.weak	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC2EPS3_
	.type	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC2EPS3_, @function
_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC2EPS3_:
.LFB1945:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1945:
	.size	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC2EPS3_, .-_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC2EPS3_
	.weak	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC1EPS3_
	.set	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC1EPS3_,_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC2EPS3_
	.section	.text._ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED2Ev,"axG",@progbits,_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED5Ev,comdat
	.align 2
	.weak	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED2Ev
	.type	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED2Ev, @function
_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED2Ev:
.LFB1948:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN5boost14checked_deleteI14TComponentImplI12CMyComponentEEEvPT_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1948:
	.size	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED2Ev, .-_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED2Ev
	.weak	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED1Ev
	.set	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED1Ev,_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED2Ev
	.weak	_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init
	.section	.bss._ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init,"awG",@nobits,_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init,comdat
	.align 8
	.type	_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init, @gnu_unique_object
	.size	_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init, 8
_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init:
	.zero	8
	.section	.rodata
.LC3:
	.string	"Component.hpp"
.LC4:
	.string	"m_pImpl"
	.section	.text._ZN10TComponentI12CMyComponentE8GetPimplEv,"axG",@progbits,_ZN10TComponentI12CMyComponentE8GetPimplEv,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE8GetPimplEv
	.type	_ZN10TComponentI12CMyComponentE8GetPimplEv, @function
_ZN10TComponentI12CMyComponentE8GetPimplEv:
.LFB1950:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1950
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	$_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L99
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	$_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init, (%esp)
	call	__cxa_guard_acquire
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L99
	movl	$0, %esi
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB26:
	call	_ZN10TComponentI12CMyComponentE8SetPimplEv
.LEHE26:
	movl	%eax, _ZZN10TComponentI12CMyComponentE8GetPimplEvE4init
	movl	$_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init, (%esp)
	call	__cxa_guard_release
.L99:
	movl	$_ZTIP10TComponentI12CMyComponentE, %eax
	movl	%eax, (%esp)
	call	_ZNKSt9type_info4nameEv
	movl	%eax, 4(%esp)
	movl	$_ZSt4cout, (%esp)
.LEHB27:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEEcvMS4_PS3_Ev
	cmpl	$-1, %eax
	jne	.L100
	movl	$_ZZN10TComponentI12CMyComponentE8GetPimplEvE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$181, 8(%esp)
	movl	$.LC3, 4(%esp)
	movl	$.LC4, (%esp)
	call	__assert_fail
.L100:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEE3getEv
	addl	$16, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L103:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	%esi, %eax
	testb	%al, %al
	jne	.L102
	movl	$_ZGVZN10TComponentI12CMyComponentE8GetPimplEvE4init, (%esp)
	call	__cxa_guard_abort
.L102:
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE27:
	.cfi_endproc
.LFE1950:
	.size	_ZN10TComponentI12CMyComponentE8GetPimplEv, .-_ZN10TComponentI12CMyComponentE8GetPimplEv
	.section	.gcc_except_table
.LLSDA1950:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1950-.LLSDACSB1950
.LLSDACSB1950:
	.uleb128 .LEHB26-.LFB1950
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L103-.LFB1950
	.uleb128 0x0
	.uleb128 .LEHB27-.LFB1950
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1950:
	.section	.text._ZN10TComponentI12CMyComponentE8GetPimplEv,"axG",@progbits,_ZN10TComponentI12CMyComponentE8GetPimplEv,comdat
	.section	.text._ZN14TComponentImplI12CMyComponentE7SetNameERKSs,"axG",@progbits,_ZN14TComponentImplI12CMyComponentE7SetNameERKSs,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentE7SetNameERKSs
	.type	_ZN14TComponentImplI12CMyComponentE7SetNameERKSs, @function
_ZN14TComponentImplI12CMyComponentE7SetNameERKSs:
.LFB1951:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	leal	12(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSsaSERKSs
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1951:
	.size	_ZN14TComponentImplI12CMyComponentE7SetNameERKSs, .-_ZN14TComponentImplI12CMyComponentE7SetNameERKSs
	.section	.text._ZNSt8auto_ptrI12CMyComponentE7releaseEv,"axG",@progbits,_ZNSt8auto_ptrI12CMyComponentE7releaseEv,comdat
	.align 2
	.weak	_ZNSt8auto_ptrI12CMyComponentE7releaseEv
	.type	_ZNSt8auto_ptrI12CMyComponentE7releaseEv, @function
_ZNSt8auto_ptrI12CMyComponentE7releaseEv:
.LFB1961:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1961:
	.size	_ZNSt8auto_ptrI12CMyComponentE7releaseEv, .-_ZNSt8auto_ptrI12CMyComponentE7releaseEv
	.section	.text._ZNSt12auto_ptr_refI12CMyComponentEC2EPS0_,"axG",@progbits,_ZNSt12auto_ptr_refI12CMyComponentEC5EPS0_,comdat
	.align 2
	.weak	_ZNSt12auto_ptr_refI12CMyComponentEC2EPS0_
	.type	_ZNSt12auto_ptr_refI12CMyComponentEC2EPS0_, @function
_ZNSt12auto_ptr_refI12CMyComponentEC2EPS0_:
.LFB1963:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1963:
	.size	_ZNSt12auto_ptr_refI12CMyComponentEC2EPS0_, .-_ZNSt12auto_ptr_refI12CMyComponentEC2EPS0_
	.weak	_ZNSt12auto_ptr_refI12CMyComponentEC1EPS0_
	.set	_ZNSt12auto_ptr_refI12CMyComponentEC1EPS0_,_ZNSt12auto_ptr_refI12CMyComponentEC2EPS0_
	.section	.text._ZNK14TComponentImplI12CMyComponentE7GetNameEv,"axG",@progbits,_ZNK14TComponentImplI12CMyComponentE7GetNameEv,comdat
	.align 2
	.weak	_ZNK14TComponentImplI12CMyComponentE7GetNameEv
	.type	_ZNK14TComponentImplI12CMyComponentE7GetNameEv, @function
_ZNK14TComponentImplI12CMyComponentE7GetNameEv:
.LFB1965:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$12, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1965:
	.size	_ZNK14TComponentImplI12CMyComponentE7GetNameEv, .-_ZNK14TComponentImplI12CMyComponentE7GetNameEv
	.section	.text._ZNSt8auto_ptrI12CMyComponentEC2ERS1_,"axG",@progbits,_ZNSt8auto_ptrI12CMyComponentEC5ERS1_,comdat
	.align 2
	.weak	_ZNSt8auto_ptrI12CMyComponentEC2ERS1_
	.type	_ZNSt8auto_ptrI12CMyComponentEC2ERS1_, @function
_ZNSt8auto_ptrI12CMyComponentEC2ERS1_:
.LFB1969:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentE7releaseEv
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1969:
	.size	_ZNSt8auto_ptrI12CMyComponentEC2ERS1_, .-_ZNSt8auto_ptrI12CMyComponentEC2ERS1_
	.weak	_ZNSt8auto_ptrI12CMyComponentEC1ERS1_
	.set	_ZNSt8auto_ptrI12CMyComponentEC1ERS1_,_ZNSt8auto_ptrI12CMyComponentEC2ERS1_
	.section	.rodata
.LC5:
	.string	"ComponentImpl.hpp"
.LC6:
	.string	"0"
	.section	.text._ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E,"axG",@progbits,_ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E
	.type	_ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E, @function
_ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E:
.LFB1971:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$65, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE1971:
	.size	_ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E, .-_ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E
	.section	.text._ZN14TComponentImplI12CMyComponentEixERKSs,"axG",@progbits,_ZN14TComponentImplI12CMyComponentEixERKSs,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentEixERKSs
	.type	_ZN14TComponentImplI12CMyComponentEixERKSs, @function
_ZN14TComponentImplI12CMyComponentEixERKSs:
.LFB1972:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZN14TComponentImplI12CMyComponentEixERKSsE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$41, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE1972:
	.size	_ZN14TComponentImplI12CMyComponentEixERKSs, .-_ZN14TComponentImplI12CMyComponentEixERKSs
	.section	.text._ZN14TComponentImplI12CMyComponentED2Ev,"axG",@progbits,_ZN14TComponentImplI12CMyComponentED5Ev,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentED2Ev
	.type	_ZN14TComponentImplI12CMyComponentED2Ev, @function
_ZN14TComponentImplI12CMyComponentED2Ev:
.LFB1987:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1987
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV14TComponentImplI12CMyComponentE+8, (%eax)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
.LEHB28:
	.cfi_offset 3, -12
	call	_ZNSsD1Ev
.LEHE28:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
.LEHB29:
	call	_ZN12CMyComponentD1Ev
.LEHE29:
	addl	$20, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L114:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZN12CMyComponentD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB30:
	call	_Unwind_Resume
.LEHE30:
	.cfi_endproc
.LFE1987:
	.size	_ZN14TComponentImplI12CMyComponentED2Ev, .-_ZN14TComponentImplI12CMyComponentED2Ev
	.section	.gcc_except_table
.LLSDA1987:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1987-.LLSDACSB1987
.LLSDACSB1987:
	.uleb128 .LEHB28-.LFB1987
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L114-.LFB1987
	.uleb128 0x0
	.uleb128 .LEHB29-.LFB1987
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB30-.LFB1987
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1987:
	.section	.text._ZN14TComponentImplI12CMyComponentED2Ev,"axG",@progbits,_ZN14TComponentImplI12CMyComponentED5Ev,comdat
	.weak	_ZN14TComponentImplI12CMyComponentED1Ev
	.set	_ZN14TComponentImplI12CMyComponentED1Ev,_ZN14TComponentImplI12CMyComponentED2Ev
	.section	.text._ZN5boost14checked_deleteI14TComponentImplI12CMyComponentEEEvPT_,"axG",@progbits,_ZN5boost14checked_deleteI14TComponentImplI12CMyComponentEEEvPT_,comdat
	.weak	_ZN5boost14checked_deleteI14TComponentImplI12CMyComponentEEEvPT_
	.type	_ZN5boost14checked_deleteI14TComponentImplI12CMyComponentEEEvPT_, @function
_ZN5boost14checked_deleteI14TComponentImplI12CMyComponentEEEvPT_:
.LFB1985:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	testl	%ebx, %ebx
	je	.L115
	movl	%ebx, (%esp)
	call	_ZN14TComponentImplI12CMyComponentED1Ev
	movl	%ebx, (%esp)
	call	_ZdlPv
.L115:
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1985:
	.size	_ZN5boost14checked_deleteI14TComponentImplI12CMyComponentEEEvPT_, .-_ZN5boost14checked_deleteI14TComponentImplI12CMyComponentEEEvPT_
	.section	.text._ZN14TComponentImplI12CMyComponentEC2Ev,"axG",@progbits,_ZN14TComponentImplI12CMyComponentEC5Ev,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentEC2Ev
	.type	_ZN14TComponentImplI12CMyComponentEC2Ev, @function
_ZN14TComponentImplI12CMyComponentEC2Ev:
.LFB1992:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1992
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	movl	$_ZTV14TComponentImplI12CMyComponentE+8, (%eax)
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
.LEHB31:
	.cfi_offset 3, -12
	call	_ZN12CMyComponentC1Ev
.LEHE31:
	movl	8(%ebp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
.LEHB32:
	call	_ZNSsC1Ev
.LEHE32:
	jmp	.L120
.L119:
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZN12CMyComponentD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB33:
	call	_Unwind_Resume
.LEHE33:
.L120:
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1992:
	.size	_ZN14TComponentImplI12CMyComponentEC2Ev, .-_ZN14TComponentImplI12CMyComponentEC2Ev
	.section	.gcc_except_table
.LLSDA1992:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1992-.LLSDACSB1992
.LLSDACSB1992:
	.uleb128 .LEHB31-.LFB1992
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB32-.LFB1992
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L119-.LFB1992
	.uleb128 0x0
	.uleb128 .LEHB33-.LFB1992
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1992:
	.section	.text._ZN14TComponentImplI12CMyComponentEC2Ev,"axG",@progbits,_ZN14TComponentImplI12CMyComponentEC5Ev,comdat
	.weak	_ZN14TComponentImplI12CMyComponentEC1Ev
	.set	_ZN14TComponentImplI12CMyComponentEC1Ev,_ZN14TComponentImplI12CMyComponentEC2Ev
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED2Ev,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED5Ev,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED2Ev
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED2Ev, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED2Ev:
.LFB1995:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1995:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED2Ev, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED2Ev
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED1Ev
	.set	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED1Ev,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED2Ev
	.section	.text._ZN14TCompositeImplI12CMyComponentEC2Ev,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentEC5Ev,comdat
	.align 2
	.weak	_ZN14TCompositeImplI12CMyComponentEC2Ev
	.type	_ZN14TCompositeImplI12CMyComponentEC2Ev, @function
_ZN14TCompositeImplI12CMyComponentEC2Ev:
.LFB1997:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1997
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB34:
	.cfi_offset 3, -12
	call	_ZN14TComponentImplI12CMyComponentEC2Ev
.LEHE34:
	movl	8(%ebp), %eax
	movl	$_ZTV14TCompositeImplI12CMyComponentE+8, (%eax)
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
.LEHB35:
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC1Ev
.LEHE35:
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, (%esp)
.LEHB36:
	call	_ZN12CMyComponentC1Ev
.LEHE36:
	movl	8(%ebp), %eax
	addl	$48, %eax
	movl	%eax, (%esp)
.LEHB37:
	call	_ZNSsC1Ev
.LEHE37:
	jmp	.L130
.L129:
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, (%esp)
	call	_ZN12CMyComponentD1Ev
	jmp	.L125
.L128:
	movl	%eax, %ebx
.L125:
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEED1Ev
	jmp	.L126
.L127:
	movl	%eax, %ebx
.L126:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN14TComponentImplI12CMyComponentED2Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB38:
	call	_Unwind_Resume
.LEHE38:
.L130:
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1997:
	.size	_ZN14TCompositeImplI12CMyComponentEC2Ev, .-_ZN14TCompositeImplI12CMyComponentEC2Ev
	.section	.gcc_except_table
.LLSDA1997:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1997-.LLSDACSB1997
.LLSDACSB1997:
	.uleb128 .LEHB34-.LFB1997
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB35-.LFB1997
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L127-.LFB1997
	.uleb128 0x0
	.uleb128 .LEHB36-.LFB1997
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L128-.LFB1997
	.uleb128 0x0
	.uleb128 .LEHB37-.LFB1997
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L129-.LFB1997
	.uleb128 0x0
	.uleb128 .LEHB38-.LFB1997
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1997:
	.section	.text._ZN14TCompositeImplI12CMyComponentEC2Ev,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentEC5Ev,comdat
	.weak	_ZN14TCompositeImplI12CMyComponentEC1Ev
	.set	_ZN14TCompositeImplI12CMyComponentEC1Ev,_ZN14TCompositeImplI12CMyComponentEC2Ev
	.section	.text._ZN9TLeafImplI12CMyComponentEC2Ev,"axG",@progbits,_ZN9TLeafImplI12CMyComponentEC5Ev,comdat
	.align 2
	.weak	_ZN9TLeafImplI12CMyComponentEC2Ev
	.type	_ZN9TLeafImplI12CMyComponentEC2Ev, @function
_ZN9TLeafImplI12CMyComponentEC2Ev:
.LFB2000:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN14TComponentImplI12CMyComponentEC2Ev
	movl	8(%ebp), %eax
	movl	$_ZTV9TLeafImplI12CMyComponentE+8, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2000:
	.size	_ZN9TLeafImplI12CMyComponentEC2Ev, .-_ZN9TLeafImplI12CMyComponentEC2Ev
	.weak	_ZN9TLeafImplI12CMyComponentEC1Ev
	.set	_ZN9TLeafImplI12CMyComponentEC1Ev,_ZN9TLeafImplI12CMyComponentEC2Ev
	.section	.rodata
.LC7:
	.string	"GetComponentType: composite"
.LC8:
	.string	"GetComponentType: leaf"
	.section	.text._ZN10TComponentI12CMyComponentE8SetPimplEv,"axG",@progbits,_ZN10TComponentI12CMyComponentE8SetPimplEv,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE8SetPimplEv
	.type	_ZN10TComponentI12CMyComponentE8SetPimplEv, @function
_ZN10TComponentI12CMyComponentE8SetPimplEv:
.LFB1989:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA1989
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$48, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB39:
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	*%edx
	cmpl	$1, %eax
	je	.L134
	cmpl	$2, %eax
	jne	.L141
.L135:
	movl	$52, (%esp)
	call	_Znwj
.LEHE39:
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB40:
	call	_ZN14TCompositeImplI12CMyComponentEC1Ev
.LEHE40:
	movl	%ebx, %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
.LEHB41:
	call	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_
	movl	$.LC7, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	jmp	.L136
.L134:
	movl	$16, (%esp)
	call	_Znwj
.LEHE41:
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB42:
	call	_ZN9TLeafImplI12CMyComponentEC1Ev
.LEHE42:
	movl	%ebx, %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
.LEHB43:
	call	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_
	movl	$.LC8, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	jmp	.L136
.L141:
	movl	$_ZZN10TComponentI12CMyComponentE8SetPimplEvE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$199, 8(%esp)
	movl	$.LC3, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
.L136:
	movl	$0, %eax
	addl	$16, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L139:
	.cfi_restore_state
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L140:
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	_ZdlPv
	movl	%esi, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE43:
	.cfi_endproc
.LFE1989:
	.size	_ZN10TComponentI12CMyComponentE8SetPimplEv, .-_ZN10TComponentI12CMyComponentE8SetPimplEv
	.section	.gcc_except_table
.LLSDA1989:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1989-.LLSDACSB1989
.LLSDACSB1989:
	.uleb128 .LEHB39-.LFB1989
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB40-.LFB1989
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L139-.LFB1989
	.uleb128 0x0
	.uleb128 .LEHB41-.LFB1989
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB42-.LFB1989
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L140-.LFB1989
	.uleb128 0x0
	.uleb128 .LEHB43-.LFB1989
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE1989:
	.section	.text._ZN10TComponentI12CMyComponentE8SetPimplEv,"axG",@progbits,_ZN10TComponentI12CMyComponentE8SetPimplEv,comdat
	.section	.text._ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEEcvMS4_PS3_Ev,"axG",@progbits,_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEEcvMS4_PS3_Ev,comdat
	.align 2
	.weak	_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEEcvMS4_PS3_Ev
	.type	_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEEcvMS4_PS3_Ev, @function
_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEEcvMS4_PS3_Ev:
.LFB2002:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L143
	movl	$0, %eax
	jmp	.L144
.L143:
	movl	$-1, %eax
.L144:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2002:
	.size	_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEEcvMS4_PS3_Ev, .-_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEEcvMS4_PS3_Ev
	.section	.text._ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEE3getEv,"axG",@progbits,_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEE3getEv,comdat
	.align 2
	.weak	_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEE3getEv
	.type	_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEE3getEv, @function
_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEE3getEv:
.LFB2003:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2003:
	.size	_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEE3getEv, .-_ZNK5boost10scoped_ptrI14TComponentImplI12CMyComponentEE3getEv
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC2Ev,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC5Ev,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC2Ev
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC2Ev, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC2Ev:
.LFB2014:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2014:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC2Ev, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC2Ev
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC1Ev
	.set	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC1Ev,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEC2Ev
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED2Ev
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED2Ev, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED2Ev:
.LFB2018:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2018:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED2Ev, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED2Ev
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED1Ev
	.set	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED1Ev,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED2Ev
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED2Ev
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED2Ev, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED2Ev:
.LFB2020:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA2020
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB44:
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E
.LEHE44:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED1Ev
	addl	$20, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L152:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB45:
	call	_Unwind_Resume
.LEHE45:
	.cfi_endproc
.LFE2020:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED2Ev, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED2Ev
	.section	.gcc_except_table
.LLSDA2020:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2020-.LLSDACSB2020
.LLSDACSB2020:
	.uleb128 .LEHB44-.LFB2020
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L152-.LFB2020
	.uleb128 0x0
	.uleb128 .LEHB45-.LFB2020
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE2020:
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED5Ev,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED1Ev
	.set	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED1Ev,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EED2Ev
	.section	.rodata
	.align 4
.LC9:
	.string	"/usr/local/include/boost/smart_ptr/scoped_ptr.hpp"
.LC10:
	.string	"p == 0 || p != px"
	.section	.text._ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_,"axG",@progbits,_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_,comdat
	.align 2
	.weak	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_
	.type	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_, @function
_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_:
.LFB2022:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	cmpl	$0, 12(%ebp)
	je	.L154
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	.L154
	movl	$_ZZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_E19__PRETTY_FUNCTION__, 12(%esp)
	movl	$85, 8(%esp)
	movl	$.LC9, 4(%esp)
	movl	$.LC10, (%esp)
	call	__assert_fail
.L154:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEEC1EPS3_
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE4swapERS4_
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEED1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2022:
	.size	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_, .-_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC2Ev
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC2Ev, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC2Ev:
.LFB2032:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2032:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC2Ev, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC2Ev
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC1Ev
	.set	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC1Ev,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EEC2Ev
	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev, @function
_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev:
.LFB2035:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2035:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev, .-_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED1Ev
	.set	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED1Ev,_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E:
.LFB2037:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	jmp	.L159
.L160:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E
	movl	-12(%ebp), %eax
	movl	%eax, 12(%ebp)
.L159:
	cmpl	$0, 12(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L160
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2037:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv:
.LFB2038:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2038:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv
	.section	.text._ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE4swapERS4_,"axG",@progbits,_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE4swapERS4_,comdat
	.align 2
	.weak	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE4swapERS4_
	.type	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE4swapERS4_, @function
_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE4swapERS4_:
.LFB2039:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2039:
	.size	_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE4swapERS4_, .-_ZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE4swapERS4_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev:
.LFB2041:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2041:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev
	.set	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev:
.LFB2044:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2044:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEED2Ev
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base:
.LFB2046:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2046:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base:
.LFB2047:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2047:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E:
.LFB2048:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA2048
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	12(%ebp), %eax
	leal	16(%eax), %ebx
	.cfi_offset 3, -12
	leal	-9(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB46:
	call	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv
.LEHE46:
	subl	$4, %esp
	leal	-9(%ebp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
.LEHB47:
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE7destroyEPS7_
.LEHE47:
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED1Ev
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB48:
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
.L170:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE48:
	.cfi_endproc
.LFE2048:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E
	.section	.gcc_except_table
.LLSDA2048:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2048-.LLSDACSB2048
.LLSDACSB2048:
	.uleb128 .LEHB46-.LFB2048
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB47-.LFB2048
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L170-.LFB2048
	.uleb128 0x0
	.uleb128 .LEHB48-.LFB2048
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE2048:
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E,comdat
	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev,"axG",@progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev, @function
_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev:
.LFB2050:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2050:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev, .-_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC1Ev
	.set	_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC1Ev,_ZNSaISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv:
.LFB2052:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 16(%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2052:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv
	.section	.text._ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv,"axG",@progbits,_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv
	.type	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv, @function
_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv:
.LFB2053:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	%ebx, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE21_M_get_Node_allocatorEv
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1ISt13_Rb_tree_nodeIS5_EEERKSaIT_E
	movl	%ebx, %eax
	movl	%ebx, %eax
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2053:
	.size	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv, .-_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv
	.section	.text._ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev,"axG",@progbits,_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev
	.type	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev, @function
_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev:
.LFB2055:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2055:
	.size	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev, .-_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev
	.weak	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED1Ev
	.set	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED1Ev,_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev
	.section	.text._ZN5boost10shared_ptrI12CMyComponentED2Ev,"axG",@progbits,_ZN5boost10shared_ptrI12CMyComponentED5Ev,comdat
	.align 2
	.weak	_ZN5boost10shared_ptrI12CMyComponentED2Ev
	.type	_ZN5boost10shared_ptrI12CMyComponentED2Ev, @function
_ZN5boost10shared_ptrI12CMyComponentED2Ev:
.LFB2060:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail12shared_countD1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2060:
	.size	_ZN5boost10shared_ptrI12CMyComponentED2Ev, .-_ZN5boost10shared_ptrI12CMyComponentED2Ev
	.weak	_ZN5boost10shared_ptrI12CMyComponentED1Ev
	.set	_ZN5boost10shared_ptrI12CMyComponentED1Ev,_ZN5boost10shared_ptrI12CMyComponentED2Ev
	.section	.text._ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED2Ev,"axG",@progbits,_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED5Ev,comdat
	.align 2
	.weak	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED2Ev
	.type	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED2Ev, @function
_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED2Ev:
.LFB2062:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA2062
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
.LEHB49:
	.cfi_offset 3, -12
	call	_ZN5boost10shared_ptrI12CMyComponentED1Ev
.LEHE49:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB50:
	call	_ZNSsD1Ev
.LEHE50:
	addl	$20, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L181:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB51:
	call	_Unwind_Resume
.LEHE51:
	.cfi_endproc
.LFE2062:
	.size	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED2Ev, .-_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED2Ev
	.section	.gcc_except_table
.LLSDA2062:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2062-.LLSDACSB2062
.LLSDACSB2062:
	.uleb128 .LEHB49-.LFB2062
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L181-.LFB2062
	.uleb128 0x0
	.uleb128 .LEHB50-.LFB2062
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB51-.LFB2062
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE2062:
	.section	.text._ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED2Ev,"axG",@progbits,_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED5Ev,comdat
	.weak	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED1Ev
	.set	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED1Ev,_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE7destroyEPS7_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE7destroyEPS7_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE7destroyEPS7_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE7destroyEPS7_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE7destroyEPS7_:
.LFB2057:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2057:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE7destroyEPS7_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE7destroyEPS7_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E:
.LFB2064:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$1, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE10deallocateEPS9_j
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2064:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev:
.LFB2066:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2066:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEEC2Ev
	.section	.text._ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE21_M_get_Node_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE21_M_get_Node_allocatorEv
	.type	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE21_M_get_Node_allocatorEv, @function
_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE21_M_get_Node_allocatorEv:
.LFB2068:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2068:
	.size	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE21_M_get_Node_allocatorEv, .-_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE21_M_get_Node_allocatorEv
	.section	.text._ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ISt13_Rb_tree_nodeIS5_EEERKSaIT_E,"axG",@progbits,_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC5ISt13_Rb_tree_nodeIS5_EEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ISt13_Rb_tree_nodeIS5_EEERKSaIT_E
	.type	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ISt13_Rb_tree_nodeIS5_EEERKSaIT_E, @function
_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ISt13_Rb_tree_nodeIS5_EEERKSaIT_E:
.LFB2070:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2070:
	.size	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ISt13_Rb_tree_nodeIS5_EEERKSaIT_E, .-_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ISt13_Rb_tree_nodeIS5_EEERKSaIT_E
	.weak	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1ISt13_Rb_tree_nodeIS5_EEERKSaIT_E
	.set	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1ISt13_Rb_tree_nodeIS5_EEERKSaIT_E,_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ISt13_Rb_tree_nodeIS5_EEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev:
.LFB2076:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2076:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE10deallocateEPS9_j,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE10deallocateEPS9_j,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE10deallocateEPS9_j
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE10deallocateEPS9_j, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE10deallocateEPS9_j:
.LFB2078:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2078:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE10deallocateEPS9_j, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE10deallocateEPS9_j
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2Ev:
.LFB2080:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2080:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2Ev
	.weak	_ZTV9TLeafImplI12CMyComponentE
	.section	.rodata._ZTV9TLeafImplI12CMyComponentE,"aG",@progbits,_ZTV9TLeafImplI12CMyComponentE,comdat
	.align 32
	.type	_ZTV9TLeafImplI12CMyComponentE, @object
	.size	_ZTV9TLeafImplI12CMyComponentE, 48
_ZTV9TLeafImplI12CMyComponentE:
	.long	0
	.long	_ZTI9TLeafImplI12CMyComponentE
	.long	_ZN14TComponentImplI12CMyComponentEixERKSs
	.long	_ZN14TComponentImplI12CMyComponentEixEi
	.long	_ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E
	.long	_ZNK14TComponentImplI12CMyComponentE8GetCountEv
	.long	_ZNK14TComponentImplI12CMyComponentE8GetIndexEv
	.long	_ZNK14TComponentImplI12CMyComponentE7GetNameEv
	.long	_ZN14TComponentImplI12CMyComponentE6RemoveERS0_
	.long	_ZN14TComponentImplI12CMyComponentE6RemoveERKSs
	.long	_ZN14TComponentImplI12CMyComponentE6RemoveEi
	.long	_ZN14TComponentImplI12CMyComponentE7SetNameERKSs
	.weak	_ZTV14TCompositeImplI12CMyComponentE
	.section	.rodata._ZTV14TCompositeImplI12CMyComponentE,"aG",@progbits,_ZTV14TCompositeImplI12CMyComponentE,comdat
	.align 32
	.type	_ZTV14TCompositeImplI12CMyComponentE, @object
	.size	_ZTV14TCompositeImplI12CMyComponentE, 48
_ZTV14TCompositeImplI12CMyComponentE:
	.long	0
	.long	_ZTI14TCompositeImplI12CMyComponentE
	.long	_ZN14TCompositeImplI12CMyComponentEixERKSs
	.long	_ZN14TCompositeImplI12CMyComponentEixEi
	.long	_ZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_E
	.long	_ZNK14TCompositeImplI12CMyComponentE8GetCountEv
	.long	_ZNK14TCompositeImplI12CMyComponentE8GetIndexEv
	.long	_ZNK14TCompositeImplI12CMyComponentE7GetNameEv
	.long	_ZN14TCompositeImplI12CMyComponentE6RemoveERS0_
	.long	_ZN14TCompositeImplI12CMyComponentE6RemoveERKSs
	.long	_ZN14TCompositeImplI12CMyComponentE6RemoveEi
	.long	_ZN14TCompositeImplI12CMyComponentE7SetNameERKSs
	.weak	_ZTV14TComponentImplI12CMyComponentE
	.section	.rodata._ZTV14TComponentImplI12CMyComponentE,"aG",@progbits,_ZTV14TComponentImplI12CMyComponentE,comdat
	.align 32
	.type	_ZTV14TComponentImplI12CMyComponentE, @object
	.size	_ZTV14TComponentImplI12CMyComponentE, 48
_ZTV14TComponentImplI12CMyComponentE:
	.long	0
	.long	_ZTI14TComponentImplI12CMyComponentE
	.long	_ZN14TComponentImplI12CMyComponentEixERKSs
	.long	_ZN14TComponentImplI12CMyComponentEixEi
	.long	_ZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_E
	.long	_ZNK14TComponentImplI12CMyComponentE8GetCountEv
	.long	_ZNK14TComponentImplI12CMyComponentE8GetIndexEv
	.long	_ZNK14TComponentImplI12CMyComponentE7GetNameEv
	.long	_ZN14TComponentImplI12CMyComponentE6RemoveERS0_
	.long	_ZN14TComponentImplI12CMyComponentE6RemoveERKSs
	.long	_ZN14TComponentImplI12CMyComponentE6RemoveEi
	.long	_ZN14TComponentImplI12CMyComponentE7SetNameERKSs
	.weak	_ZTV12CMyComposite
	.section	.rodata._ZTV12CMyComposite,"aG",@progbits,_ZTV12CMyComposite,comdat
	.align 32
	.type	_ZTV12CMyComposite, @object
	.size	_ZTV12CMyComposite, 60
_ZTV12CMyComposite:
	.long	0
	.long	_ZTI12CMyComposite
	.long	_ZN12CMyCompositeD1Ev
	.long	_ZN12CMyCompositeD0Ev
	.long	_ZN10TComponentI12CMyComponentEixERKSs
	.long	_ZN10TComponentI12CMyComponentEixEi
	.long	_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E
	.long	_ZN10TComponentI12CMyComponentE8GetCountEv
	.long	_ZN10TComponentI12CMyComponentE8GetIndexEv
	.long	_ZN10TComponentI12CMyComponentE7GetNameEv
	.long	_ZN10TComponentI12CMyComponentE6RemoveERS0_
	.long	_ZN10TComponentI12CMyComponentE6RemoveERKSs
	.long	_ZN10TComponentI12CMyComponentE6RemoveEi
	.long	_ZN10TComponentI12CMyComponentE7SetNameERKSs
	.long	_ZNK12CMyComposite16GetComponentTypeEv
	.weak	_ZTV7CMyLeaf
	.section	.rodata._ZTV7CMyLeaf,"aG",@progbits,_ZTV7CMyLeaf,comdat
	.align 32
	.type	_ZTV7CMyLeaf, @object
	.size	_ZTV7CMyLeaf, 60
_ZTV7CMyLeaf:
	.long	0
	.long	_ZTI7CMyLeaf
	.long	_ZN7CMyLeafD1Ev
	.long	_ZN7CMyLeafD0Ev
	.long	_ZN10TComponentI12CMyComponentEixERKSs
	.long	_ZN10TComponentI12CMyComponentEixEi
	.long	_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E
	.long	_ZN10TComponentI12CMyComponentE8GetCountEv
	.long	_ZN10TComponentI12CMyComponentE8GetIndexEv
	.long	_ZN10TComponentI12CMyComponentE7GetNameEv
	.long	_ZN10TComponentI12CMyComponentE6RemoveERS0_
	.long	_ZN10TComponentI12CMyComponentE6RemoveERKSs
	.long	_ZN10TComponentI12CMyComponentE6RemoveEi
	.long	_ZN10TComponentI12CMyComponentE7SetNameERKSs
	.long	_ZNK7CMyLeaf16GetComponentTypeEv
	.weak	_ZTV12CMyComponent
	.section	.rodata._ZTV12CMyComponent,"aG",@progbits,_ZTV12CMyComponent,comdat
	.align 32
	.type	_ZTV12CMyComponent, @object
	.size	_ZTV12CMyComponent, 60
_ZTV12CMyComponent:
	.long	0
	.long	_ZTI12CMyComponent
	.long	_ZN12CMyComponentD1Ev
	.long	_ZN12CMyComponentD0Ev
	.long	_ZN10TComponentI12CMyComponentEixERKSs
	.long	_ZN10TComponentI12CMyComponentEixEi
	.long	_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E
	.long	_ZN10TComponentI12CMyComponentE8GetCountEv
	.long	_ZN10TComponentI12CMyComponentE8GetIndexEv
	.long	_ZN10TComponentI12CMyComponentE7GetNameEv
	.long	_ZN10TComponentI12CMyComponentE6RemoveERS0_
	.long	_ZN10TComponentI12CMyComponentE6RemoveERKSs
	.long	_ZN10TComponentI12CMyComponentE6RemoveEi
	.long	_ZN10TComponentI12CMyComponentE7SetNameERKSs
	.long	_ZNK12CMyComponent16GetComponentTypeEv
	.weak	_ZTV10TComponentI12CMyComponentE
	.section	.rodata._ZTV10TComponentI12CMyComponentE,"aG",@progbits,_ZTV10TComponentI12CMyComponentE,comdat
	.align 32
	.type	_ZTV10TComponentI12CMyComponentE, @object
	.size	_ZTV10TComponentI12CMyComponentE, 60
_ZTV10TComponentI12CMyComponentE:
	.long	0
	.long	_ZTI10TComponentI12CMyComponentE
	.long	_ZN10TComponentI12CMyComponentED1Ev
	.long	_ZN10TComponentI12CMyComponentED0Ev
	.long	_ZN10TComponentI12CMyComponentEixERKSs
	.long	_ZN10TComponentI12CMyComponentEixEi
	.long	_ZN10TComponentI12CMyComponentE3AddESt8auto_ptrIS0_E
	.long	_ZN10TComponentI12CMyComponentE8GetCountEv
	.long	_ZN10TComponentI12CMyComponentE8GetIndexEv
	.long	_ZN10TComponentI12CMyComponentE7GetNameEv
	.long	_ZN10TComponentI12CMyComponentE6RemoveERS0_
	.long	_ZN10TComponentI12CMyComponentE6RemoveERKSs
	.long	_ZN10TComponentI12CMyComponentE6RemoveEi
	.long	_ZN10TComponentI12CMyComponentE7SetNameERKSs
	.long	__cxa_pure_virtual
	.weak	_ZTVN5boost6detail15sp_counted_baseE
	.section	.rodata._ZTVN5boost6detail15sp_counted_baseE,"aG",@progbits,_ZTVN5boost6detail15sp_counted_baseE,comdat
	.align 8
	.type	_ZTVN5boost6detail15sp_counted_baseE, @object
	.size	_ZTVN5boost6detail15sp_counted_baseE, 28
_ZTVN5boost6detail15sp_counted_baseE:
	.long	0
	.long	_ZTIN5boost6detail15sp_counted_baseE
	.long	_ZN5boost6detail15sp_counted_baseD1Ev
	.long	_ZN5boost6detail15sp_counted_baseD0Ev
	.long	__cxa_pure_virtual
	.long	_ZN5boost6detail15sp_counted_base7destroyEv
	.long	__cxa_pure_virtual
	.weak	_ZTS9TLeafImplI12CMyComponentE
	.section	.rodata._ZTS9TLeafImplI12CMyComponentE,"aG",@progbits,_ZTS9TLeafImplI12CMyComponentE,comdat
	.type	_ZTS9TLeafImplI12CMyComponentE, @object
	.size	_ZTS9TLeafImplI12CMyComponentE, 27
_ZTS9TLeafImplI12CMyComponentE:
	.string	"9TLeafImplI12CMyComponentE"
	.weak	_ZTI9TLeafImplI12CMyComponentE
	.section	.rodata._ZTI9TLeafImplI12CMyComponentE,"aG",@progbits,_ZTI9TLeafImplI12CMyComponentE,comdat
	.align 4
	.type	_ZTI9TLeafImplI12CMyComponentE, @object
	.size	_ZTI9TLeafImplI12CMyComponentE, 12
_ZTI9TLeafImplI12CMyComponentE:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS9TLeafImplI12CMyComponentE
	.long	_ZTI14TComponentImplI12CMyComponentE
	.weak	_ZTS14TCompositeImplI12CMyComponentE
	.section	.rodata._ZTS14TCompositeImplI12CMyComponentE,"aG",@progbits,_ZTS14TCompositeImplI12CMyComponentE,comdat
	.align 32
	.type	_ZTS14TCompositeImplI12CMyComponentE, @object
	.size	_ZTS14TCompositeImplI12CMyComponentE, 33
_ZTS14TCompositeImplI12CMyComponentE:
	.string	"14TCompositeImplI12CMyComponentE"
	.weak	_ZTI14TCompositeImplI12CMyComponentE
	.section	.rodata._ZTI14TCompositeImplI12CMyComponentE,"aG",@progbits,_ZTI14TCompositeImplI12CMyComponentE,comdat
	.align 4
	.type	_ZTI14TCompositeImplI12CMyComponentE, @object
	.size	_ZTI14TCompositeImplI12CMyComponentE, 12
_ZTI14TCompositeImplI12CMyComponentE:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS14TCompositeImplI12CMyComponentE
	.long	_ZTI14TComponentImplI12CMyComponentE
	.weak	_ZTSP10TComponentI12CMyComponentE
	.section	.rodata._ZTSP10TComponentI12CMyComponentE,"aG",@progbits,_ZTSP10TComponentI12CMyComponentE,comdat
	.type	_ZTSP10TComponentI12CMyComponentE, @object
	.size	_ZTSP10TComponentI12CMyComponentE, 30
_ZTSP10TComponentI12CMyComponentE:
	.string	"P10TComponentI12CMyComponentE"
	.weak	_ZTIP10TComponentI12CMyComponentE
	.section	.rodata._ZTIP10TComponentI12CMyComponentE,"aG",@progbits,_ZTIP10TComponentI12CMyComponentE,comdat
	.align 4
	.type	_ZTIP10TComponentI12CMyComponentE, @object
	.size	_ZTIP10TComponentI12CMyComponentE, 16
_ZTIP10TComponentI12CMyComponentE:
	.long	_ZTVN10__cxxabiv119__pointer_type_infoE+8
	.long	_ZTSP10TComponentI12CMyComponentE
	.long	0
	.long	_ZTI10TComponentI12CMyComponentE
	.weak	_ZTS14TComponentImplI12CMyComponentE
	.section	.rodata._ZTS14TComponentImplI12CMyComponentE,"aG",@progbits,_ZTS14TComponentImplI12CMyComponentE,comdat
	.align 32
	.type	_ZTS14TComponentImplI12CMyComponentE, @object
	.size	_ZTS14TComponentImplI12CMyComponentE, 33
_ZTS14TComponentImplI12CMyComponentE:
	.string	"14TComponentImplI12CMyComponentE"
	.weak	_ZTI14TComponentImplI12CMyComponentE
	.section	.rodata._ZTI14TComponentImplI12CMyComponentE,"aG",@progbits,_ZTI14TComponentImplI12CMyComponentE,comdat
	.align 4
	.type	_ZTI14TComponentImplI12CMyComponentE, @object
	.size	_ZTI14TComponentImplI12CMyComponentE, 8
_ZTI14TComponentImplI12CMyComponentE:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS14TComponentImplI12CMyComponentE
	.weak	_ZTS12CMyComposite
	.section	.rodata._ZTS12CMyComposite,"aG",@progbits,_ZTS12CMyComposite,comdat
	.type	_ZTS12CMyComposite, @object
	.size	_ZTS12CMyComposite, 15
_ZTS12CMyComposite:
	.string	"12CMyComposite"
	.weak	_ZTI12CMyComposite
	.section	.rodata._ZTI12CMyComposite,"aG",@progbits,_ZTI12CMyComposite,comdat
	.align 4
	.type	_ZTI12CMyComposite, @object
	.size	_ZTI12CMyComposite, 12
_ZTI12CMyComposite:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS12CMyComposite
	.long	_ZTI12CMyComponent
	.weak	_ZTS7CMyLeaf
	.section	.rodata._ZTS7CMyLeaf,"aG",@progbits,_ZTS7CMyLeaf,comdat
	.type	_ZTS7CMyLeaf, @object
	.size	_ZTS7CMyLeaf, 9
_ZTS7CMyLeaf:
	.string	"7CMyLeaf"
	.weak	_ZTI7CMyLeaf
	.section	.rodata._ZTI7CMyLeaf,"aG",@progbits,_ZTI7CMyLeaf,comdat
	.align 4
	.type	_ZTI7CMyLeaf, @object
	.size	_ZTI7CMyLeaf, 12
_ZTI7CMyLeaf:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS7CMyLeaf
	.long	_ZTI12CMyComponent
	.weak	_ZTS12CMyComponent
	.section	.rodata._ZTS12CMyComponent,"aG",@progbits,_ZTS12CMyComponent,comdat
	.type	_ZTS12CMyComponent, @object
	.size	_ZTS12CMyComponent, 15
_ZTS12CMyComponent:
	.string	"12CMyComponent"
	.weak	_ZTI12CMyComponent
	.section	.rodata._ZTI12CMyComponent,"aG",@progbits,_ZTI12CMyComponent,comdat
	.align 4
	.type	_ZTI12CMyComponent, @object
	.size	_ZTI12CMyComponent, 12
_ZTI12CMyComponent:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS12CMyComponent
	.long	_ZTI10TComponentI12CMyComponentE
	.weak	_ZTS10TComponentI12CMyComponentE
	.section	.rodata._ZTS10TComponentI12CMyComponentE,"aG",@progbits,_ZTS10TComponentI12CMyComponentE,comdat
	.type	_ZTS10TComponentI12CMyComponentE, @object
	.size	_ZTS10TComponentI12CMyComponentE, 29
_ZTS10TComponentI12CMyComponentE:
	.string	"10TComponentI12CMyComponentE"
	.weak	_ZTI10TComponentI12CMyComponentE
	.section	.rodata._ZTI10TComponentI12CMyComponentE,"aG",@progbits,_ZTI10TComponentI12CMyComponentE,comdat
	.align 4
	.type	_ZTI10TComponentI12CMyComponentE, @object
	.size	_ZTI10TComponentI12CMyComponentE, 8
_ZTI10TComponentI12CMyComponentE:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS10TComponentI12CMyComponentE
	.weak	_ZTSN5boost6detail15sp_counted_baseE
	.section	.rodata._ZTSN5boost6detail15sp_counted_baseE,"aG",@progbits,_ZTSN5boost6detail15sp_counted_baseE,comdat
	.align 32
	.type	_ZTSN5boost6detail15sp_counted_baseE, @object
	.size	_ZTSN5boost6detail15sp_counted_baseE, 33
_ZTSN5boost6detail15sp_counted_baseE:
	.string	"N5boost6detail15sp_counted_baseE"
	.weak	_ZTIN5boost6detail15sp_counted_baseE
	.section	.rodata._ZTIN5boost6detail15sp_counted_baseE,"aG",@progbits,_ZTIN5boost6detail15sp_counted_baseE,comdat
	.align 4
	.type	_ZTIN5boost6detail15sp_counted_baseE, @object
	.size	_ZTIN5boost6detail15sp_counted_baseE, 8
_ZTIN5boost6detail15sp_counted_baseE:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTSN5boost6detail15sp_counted_baseE
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2085:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L191
	cmpl	$65535, 12(%ebp)
	jne	.L191
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L191:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2085:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZN14TComponentImplI12CMyComponentEixEi,"axG",@progbits,_ZN14TComponentImplI12CMyComponentEixEi,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentEixEi
	.type	_ZN14TComponentImplI12CMyComponentEixEi, @function
_ZN14TComponentImplI12CMyComponentEixEi:
.LFB2086:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZN14TComponentImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$53, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE2086:
	.size	_ZN14TComponentImplI12CMyComponentEixEi, .-_ZN14TComponentImplI12CMyComponentEixEi
	.section	.text._ZNK14TComponentImplI12CMyComponentE8GetCountEv,"axG",@progbits,_ZNK14TComponentImplI12CMyComponentE8GetCountEv,comdat
	.align 2
	.weak	_ZNK14TComponentImplI12CMyComponentE8GetCountEv
	.type	_ZNK14TComponentImplI12CMyComponentE8GetCountEv, @function
_ZNK14TComponentImplI12CMyComponentE8GetCountEv:
.LFB2087:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZNK14TComponentImplI12CMyComponentE8GetCountEvE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$74, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE2087:
	.size	_ZNK14TComponentImplI12CMyComponentE8GetCountEv, .-_ZNK14TComponentImplI12CMyComponentE8GetCountEv
	.section	.text._ZNK14TComponentImplI12CMyComponentE8GetIndexEv,"axG",@progbits,_ZNK14TComponentImplI12CMyComponentE8GetIndexEv,comdat
	.align 2
	.weak	_ZNK14TComponentImplI12CMyComponentE8GetIndexEv
	.type	_ZNK14TComponentImplI12CMyComponentE8GetIndexEv, @function
_ZNK14TComponentImplI12CMyComponentE8GetIndexEv:
.LFB2088:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZNK14TComponentImplI12CMyComponentE8GetIndexEvE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$85, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE2088:
	.size	_ZNK14TComponentImplI12CMyComponentE8GetIndexEv, .-_ZNK14TComponentImplI12CMyComponentE8GetIndexEv
	.section	.text._ZN14TComponentImplI12CMyComponentE6RemoveERS0_,"axG",@progbits,_ZN14TComponentImplI12CMyComponentE6RemoveERS0_,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentE6RemoveERS0_
	.type	_ZN14TComponentImplI12CMyComponentE6RemoveERS0_, @function
_ZN14TComponentImplI12CMyComponentE6RemoveERS0_:
.LFB2089:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZN14TComponentImplI12CMyComponentE6RemoveERS0_E19__PRETTY_FUNCTION__, 12(%esp)
	movl	$103, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE2089:
	.size	_ZN14TComponentImplI12CMyComponentE6RemoveERS0_, .-_ZN14TComponentImplI12CMyComponentE6RemoveERS0_
	.section	.text._ZN14TComponentImplI12CMyComponentE6RemoveERKSs,"axG",@progbits,_ZN14TComponentImplI12CMyComponentE6RemoveERKSs,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentE6RemoveERKSs
	.type	_ZN14TComponentImplI12CMyComponentE6RemoveERKSs, @function
_ZN14TComponentImplI12CMyComponentE6RemoveERKSs:
.LFB2090:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZN14TComponentImplI12CMyComponentE6RemoveERKSsE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$108, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE2090:
	.size	_ZN14TComponentImplI12CMyComponentE6RemoveERKSs, .-_ZN14TComponentImplI12CMyComponentE6RemoveERKSs
	.section	.text._ZN14TComponentImplI12CMyComponentE6RemoveEi,"axG",@progbits,_ZN14TComponentImplI12CMyComponentE6RemoveEi,comdat
	.align 2
	.weak	_ZN14TComponentImplI12CMyComponentE6RemoveEi
	.type	_ZN14TComponentImplI12CMyComponentE6RemoveEi, @function
_ZN14TComponentImplI12CMyComponentE6RemoveEi:
.LFB2091:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZN14TComponentImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$113, 8(%esp)
	movl	$.LC5, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE2091:
	.size	_ZN14TComponentImplI12CMyComponentE6RemoveEi, .-_ZN14TComponentImplI12CMyComponentE6RemoveEi
	.section	.rodata
.LC11:
	.string	"CompositeImpl.hpp"
	.section	.text._ZN14TCompositeImplI12CMyComponentEixERKSs,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentEixERKSs,comdat
	.align 2
	.weak	_ZN14TCompositeImplI12CMyComponentEixERKSs
	.type	_ZN14TCompositeImplI12CMyComponentEixERKSs, @function
_ZN14TCompositeImplI12CMyComponentEixERKSs:
.LFB2092:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %ecx
	leal	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4findERS7_
	subl	$4, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv
	subl	$4, %esp
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_
	testb	%al, %al
	je	.L200
	movl	$_ZZN14TCompositeImplI12CMyComponentEixERKSsE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$51, 8(%esp)
	movl	$.LC11, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
.L200:
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZNK5boost10shared_ptrI12CMyComponentEdeEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2092:
	.size	_ZN14TCompositeImplI12CMyComponentEixERKSs, .-_ZN14TCompositeImplI12CMyComponentEixERKSs
	.section	.rodata
	.align 4
.LC12:
	.string	"index < 0 && \"Wrong index value.\""
	.align 4
.LC13:
	.string	"static_cast<size_t>(index) >= m_Components.size() && \"Index is out of range.\""
	.section	.text._ZN14TCompositeImplI12CMyComponentEixEi,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentEixEi,comdat
	.align 2
	.weak	_ZN14TCompositeImplI12CMyComponentEixEi
	.type	_ZN14TCompositeImplI12CMyComponentEixEi, @function
_ZN14TCompositeImplI12CMyComponentEixEi:
.LFB2093:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	cmpl	$0, 12(%ebp)
	js	.L202
	.cfi_offset 3, -12
	movl	$_ZZN14TCompositeImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$65, 8(%esp)
	movl	$.LC11, 4(%esp)
	movl	$.LC12, (%esp)
	call	__assert_fail
.L202:
	movl	12(%ebp), %ebx
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv
	cmpl	%eax, %ebx
	jae	.L203
	movl	$_ZZN14TCompositeImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$66, 8(%esp)
	movl	$.LC11, 4(%esp)
	movl	$.LC13, (%esp)
	call	__assert_fail
.L203:
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv
	subl	$4, %esp
	movl	$0, -12(%ebp)
	jmp	.L204
.L205:
	leal	-20(%ebp), %eax
	movl	$0, 8(%esp)
	leal	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi
	subl	$4, %esp
	addl	$1, -12(%ebp)
.L204:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	setle	%al
	testb	%al, %al
	jne	.L205
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZNK5boost10shared_ptrI12CMyComponentEdeEv
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE2093:
	.size	_ZN14TCompositeImplI12CMyComponentEixEi, .-_ZN14TCompositeImplI12CMyComponentEixEi
	.section	.rodata
.LC14:
	.string	"component.get() == 0"
	.align 4
.LC15:
	.string	"!((bool)Return) && \"Component already existed. Replaced.\""
	.section	.text._ZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_E,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_E,comdat
	.align 2
	.weak	_ZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_E
	.type	_ZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_E, @function
_ZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_E:
.LFB2094:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8auto_ptrI12CMyComponentE3getEv
	testl	%eax, %eax
	je	.L207
	movl	$_ZZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$86, 8(%esp)
	movl	$.LC11, 4(%esp)
	movl	$.LC14, (%esp)
	call	__assert_fail
.L207:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8auto_ptrI12CMyComponentEptEv
	movl	(%eax), %edx
	addl	$28, %edx
	movl	(%edx), %edx
	movl	%eax, (%esp)
	call	*%edx
	movl	8(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	.L208
	movl	$_ZZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$89, 8(%esp)
	movl	$.LC11, 4(%esp)
	movl	$.LC15, (%esp)
	call	__assert_fail
.L208:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8auto_ptrI12CMyComponentEptEv
	movl	(%eax), %edx
	addl	$28, %edx
	movl	(%edx), %edx
	movl	%eax, (%esp)
	call	*%edx
	movl	8(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2094:
	.size	_ZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_E, .-_ZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_E
	.section	.text._ZNK14TCompositeImplI12CMyComponentE8GetCountEv,"axG",@progbits,_ZNK14TCompositeImplI12CMyComponentE8GetCountEv,comdat
	.align 2
	.weak	_ZNK14TCompositeImplI12CMyComponentE8GetCountEv
	.type	_ZNK14TCompositeImplI12CMyComponentE8GetCountEv, @function
_ZNK14TCompositeImplI12CMyComponentE8GetCountEv:
.LFB2095:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2095:
	.size	_ZNK14TCompositeImplI12CMyComponentE8GetCountEv, .-_ZNK14TCompositeImplI12CMyComponentE8GetCountEv
	.section	.text._ZNK14TCompositeImplI12CMyComponentE8GetIndexEv,"axG",@progbits,_ZNK14TCompositeImplI12CMyComponentE8GetIndexEv,comdat
	.align 2
	.weak	_ZNK14TCompositeImplI12CMyComponentE8GetIndexEv
	.type	_ZNK14TCompositeImplI12CMyComponentE8GetIndexEv, @function
_ZNK14TCompositeImplI12CMyComponentE8GetIndexEv:
.LFB2096:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$_ZZNK14TCompositeImplI12CMyComponentE8GetIndexEvE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$110, 8(%esp)
	movl	$.LC11, 4(%esp)
	movl	$.LC6, (%esp)
	call	__assert_fail
	.cfi_endproc
.LFE2096:
	.size	_ZNK14TCompositeImplI12CMyComponentE8GetIndexEv, .-_ZNK14TCompositeImplI12CMyComponentE8GetIndexEv
	.section	.text._ZNK14TCompositeImplI12CMyComponentE7GetNameEv,"axG",@progbits,_ZNK14TCompositeImplI12CMyComponentE7GetNameEv,comdat
	.align 2
	.weak	_ZNK14TCompositeImplI12CMyComponentE7GetNameEv
	.type	_ZNK14TCompositeImplI12CMyComponentE7GetNameEv, @function
_ZNK14TCompositeImplI12CMyComponentE7GetNameEv:
.LFB2097:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$48, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2097:
	.size	_ZNK14TCompositeImplI12CMyComponentE7GetNameEv, .-_ZNK14TCompositeImplI12CMyComponentE7GetNameEv
	.section	.text._ZN14TCompositeImplI12CMyComponentE6RemoveERS0_,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentE6RemoveERS0_,comdat
	.align 2
	.weak	_ZN14TCompositeImplI12CMyComponentE6RemoveERS0_
	.type	_ZN14TCompositeImplI12CMyComponentE6RemoveERS0_, @function
_ZN14TCompositeImplI12CMyComponentE6RemoveERS0_:
.LFB2098:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	addl	$28, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	8(%ebp), %edx
	addl	$16, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2098:
	.size	_ZN14TCompositeImplI12CMyComponentE6RemoveERS0_, .-_ZN14TCompositeImplI12CMyComponentE6RemoveERS0_
	.section	.text._ZN14TCompositeImplI12CMyComponentE6RemoveERKSs,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentE6RemoveERKSs,comdat
	.align 2
	.weak	_ZN14TCompositeImplI12CMyComponentE6RemoveERKSs
	.type	_ZN14TCompositeImplI12CMyComponentE6RemoveERKSs, @function
_ZN14TCompositeImplI12CMyComponentE6RemoveERKSs:
.LFB2099:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2099:
	.size	_ZN14TCompositeImplI12CMyComponentE6RemoveERKSs, .-_ZN14TCompositeImplI12CMyComponentE6RemoveERKSs
	.section	.text._ZN14TCompositeImplI12CMyComponentE6RemoveEi,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentE6RemoveEi,comdat
	.align 2
	.weak	_ZN14TCompositeImplI12CMyComponentE6RemoveEi
	.type	_ZN14TCompositeImplI12CMyComponentE6RemoveEi, @function
_ZN14TCompositeImplI12CMyComponentE6RemoveEi:
.LFB2100:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	cmpl	$0, 12(%ebp)
	js	.L215
	.cfi_offset 3, -12
	movl	$_ZZN14TCompositeImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$138, 8(%esp)
	movl	$.LC11, 4(%esp)
	movl	$.LC12, (%esp)
	call	__assert_fail
.L215:
	movl	12(%ebp), %ebx
	movl	8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, (%esp)
	call	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv
	cmpl	%eax, %ebx
	jae	.L216
	movl	$_ZZN14TCompositeImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$139, 8(%esp)
	movl	$.LC11, 4(%esp)
	movl	$.LC13, (%esp)
	call	__assert_fail
.L216:
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv
	subl	$4, %esp
	movl	$0, -12(%ebp)
	jmp	.L217
.L218:
	leal	-20(%ebp), %eax
	movl	$0, 8(%esp)
	leal	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi
	subl	$4, %esp
	addl	$1, -12(%ebp)
.L217:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	setle	%al
	testb	%al, %al
	jne	.L218
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseESt17_Rb_tree_iteratorIS8_E
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE2100:
	.size	_ZN14TCompositeImplI12CMyComponentE6RemoveEi, .-_ZN14TCompositeImplI12CMyComponentE6RemoveEi
	.section	.text._ZN14TCompositeImplI12CMyComponentE7SetNameERKSs,"axG",@progbits,_ZN14TCompositeImplI12CMyComponentE7SetNameERKSs,comdat
	.align 2
	.weak	_ZN14TCompositeImplI12CMyComponentE7SetNameERKSs
	.type	_ZN14TCompositeImplI12CMyComponentE7SetNameERKSs, @function
_ZN14TCompositeImplI12CMyComponentE7SetNameERKSs:
.LFB2101:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	leal	48(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSsaSERKSs
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2101:
	.size	_ZN14TCompositeImplI12CMyComponentE7SetNameERKSs, .-_ZN14TCompositeImplI12CMyComponentE7SetNameERKSs
	.section	.text._ZN10TComponentI12CMyComponentEixEi,"axG",@progbits,_ZN10TComponentI12CMyComponentEixEi,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentEixEi
	.type	_ZN10TComponentI12CMyComponentEixEi, @function
_ZN10TComponentI12CMyComponentEixEi:
.LFB2104:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	addl	$4, %edx
	movl	(%edx), %ecx
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2104:
	.size	_ZN10TComponentI12CMyComponentEixEi, .-_ZN10TComponentI12CMyComponentEixEi
	.section	.text._ZN10TComponentI12CMyComponentE8GetCountEv,"axG",@progbits,_ZN10TComponentI12CMyComponentE8GetCountEv,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE8GetCountEv
	.type	_ZN10TComponentI12CMyComponentE8GetCountEv, @function
_ZN10TComponentI12CMyComponentE8GetCountEv:
.LFB2105:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	addl	$12, %edx
	movl	(%edx), %edx
	movl	%eax, (%esp)
	call	*%edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2105:
	.size	_ZN10TComponentI12CMyComponentE8GetCountEv, .-_ZN10TComponentI12CMyComponentE8GetCountEv
	.section	.text._ZN10TComponentI12CMyComponentE8GetIndexEv,"axG",@progbits,_ZN10TComponentI12CMyComponentE8GetIndexEv,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE8GetIndexEv
	.type	_ZN10TComponentI12CMyComponentE8GetIndexEv, @function
_ZN10TComponentI12CMyComponentE8GetIndexEv:
.LFB2106:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	addl	$16, %edx
	movl	(%edx), %edx
	movl	%eax, (%esp)
	call	*%edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2106:
	.size	_ZN10TComponentI12CMyComponentE8GetIndexEv, .-_ZN10TComponentI12CMyComponentE8GetIndexEv
	.section	.text._ZN10TComponentI12CMyComponentE6RemoveERS0_,"axG",@progbits,_ZN10TComponentI12CMyComponentE6RemoveERS0_,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE6RemoveERS0_
	.type	_ZN10TComponentI12CMyComponentE6RemoveERS0_, @function
_ZN10TComponentI12CMyComponentE6RemoveERS0_:
.LFB2107:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	addl	$24, %edx
	movl	(%edx), %ecx
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2107:
	.size	_ZN10TComponentI12CMyComponentE6RemoveERS0_, .-_ZN10TComponentI12CMyComponentE6RemoveERS0_
	.section	.text._ZN10TComponentI12CMyComponentE6RemoveERKSs,"axG",@progbits,_ZN10TComponentI12CMyComponentE6RemoveERKSs,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE6RemoveERKSs
	.type	_ZN10TComponentI12CMyComponentE6RemoveERKSs, @function
_ZN10TComponentI12CMyComponentE6RemoveERKSs:
.LFB2108:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	addl	$28, %edx
	movl	(%edx), %ecx
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2108:
	.size	_ZN10TComponentI12CMyComponentE6RemoveERKSs, .-_ZN10TComponentI12CMyComponentE6RemoveERKSs
	.section	.text._ZN10TComponentI12CMyComponentE6RemoveEi,"axG",@progbits,_ZN10TComponentI12CMyComponentE6RemoveEi,comdat
	.align 2
	.weak	_ZN10TComponentI12CMyComponentE6RemoveEi
	.type	_ZN10TComponentI12CMyComponentE6RemoveEi, @function
_ZN10TComponentI12CMyComponentE6RemoveEi:
.LFB2109:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN10TComponentI12CMyComponentE8GetPimplEv
	movl	(%eax), %edx
	addl	$32, %edx
	movl	(%edx), %ecx
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2109:
	.size	_ZN10TComponentI12CMyComponentE6RemoveEi, .-_ZN10TComponentI12CMyComponentE6RemoveEi
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4findERS7_,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4findERS7_,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4findERS7_
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4findERS7_, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4findERS7_:
.LFB2110:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4findERS1_
	subl	$4, %esp
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret	$4
	.cfi_endproc
.LFE2110:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4findERS7_, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4findERS7_
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv:
.LFB2111:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv
	subl	$4, %esp
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret	$4
	.cfi_endproc
.LFE2111:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv
	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_,comdat
	.align 2
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_, @function
_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_:
.LFB2112:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	sete	%al
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2112:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_, .-_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_
	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv,comdat
	.align 2
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv, @function
_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv:
.LFB2113:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$16, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2113:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv, .-_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEptEv
	.section	.rodata
	.align 4
.LC16:
	.string	"/usr/local/include/boost/smart_ptr/shared_ptr.hpp"
.LC17:
	.string	"px != 0"
	.section	.text._ZNK5boost10shared_ptrI12CMyComponentEdeEv,"axG",@progbits,_ZNK5boost10shared_ptrI12CMyComponentEdeEv,comdat
	.align 2
	.weak	_ZNK5boost10shared_ptrI12CMyComponentEdeEv
	.type	_ZNK5boost10shared_ptrI12CMyComponentEdeEv, @function
_ZNK5boost10shared_ptrI12CMyComponentEdeEv:
.LFB2114:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L231
	movl	$_ZZNK5boost10shared_ptrI12CMyComponentEdeEvE19__PRETTY_FUNCTION__, 12(%esp)
	movl	$418, 8(%esp)
	movl	$.LC16, 4(%esp)
	movl	$.LC17, (%esp)
	call	__assert_fail
.L231:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2114:
	.size	_ZNK5boost10shared_ptrI12CMyComponentEdeEv, .-_ZNK5boost10shared_ptrI12CMyComponentEdeEv
	.section	.text._ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv,"axG",@progbits,_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv
	.type	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv, @function
_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv:
.LFB2115:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2115:
	.size	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv, .-_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE4sizeEv
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv:
.LFB2116:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv
	subl	$4, %esp
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret	$4
	.cfi_endproc
.LFE2116:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5beginEv
.globl memmove
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi:
.LFB2117:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	memmove
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	movl	12(%ebp), %edx
	movl	%eax, (%edx)
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2117:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi, .-_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi
	.section	.text._ZNKSt8auto_ptrI12CMyComponentE3getEv,"axG",@progbits,_ZNKSt8auto_ptrI12CMyComponentE3getEv,comdat
	.align 2
	.weak	_ZNKSt8auto_ptrI12CMyComponentE3getEv
	.type	_ZNKSt8auto_ptrI12CMyComponentE3getEv, @function
_ZNKSt8auto_ptrI12CMyComponentE3getEv:
.LFB2118:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2118:
	.size	_ZNKSt8auto_ptrI12CMyComponentE3getEv, .-_ZNKSt8auto_ptrI12CMyComponentE3getEv
	.section	.text._ZNKSt8auto_ptrI12CMyComponentEptEv,"axG",@progbits,_ZNKSt8auto_ptrI12CMyComponentEptEv,comdat
	.align 2
	.weak	_ZNKSt8auto_ptrI12CMyComponentEptEv
	.type	_ZNKSt8auto_ptrI12CMyComponentEptEv, @function
_ZNKSt8auto_ptrI12CMyComponentEptEv:
.LFB2119:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2119:
	.size	_ZNKSt8auto_ptrI12CMyComponentEptEv, .-_ZNKSt8auto_ptrI12CMyComponentEptEv
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_:
.LFB2120:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseERS1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2120:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseERS7_
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_:
.LFB2121:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA2121
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	leal	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB52:
	.cfi_offset 3, -12
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE11lower_boundERS7_
	subl	$4, %esp
	leal	-20(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE3endEv
	subl	$4, %esp
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_
	testb	%al, %al
	jne	.L239
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv
	movl	%eax, %ebx
	leal	-41(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE8key_compEv
	subl	$4, %esp
	movl	%ebx, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L240
.L239:
	movl	$1, %eax
	jmp	.L241
.L240:
	movl	$0, %eax
.L241:
	testb	%al, %al
	je	.L242
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost10shared_ptrI12CMyComponentEC1Ev
.LEHE52:
	leal	-28(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB53:
	call	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC1ERS0_RKS4_
.LEHE53:
	leal	-48(%ebp), %eax
	leal	-40(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB54:
	call	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE6insertESt17_Rb_tree_iteratorIS8_ERKS8_
.LEHE54:
	subl	$4, %esp
	movl	-48(%ebp), %eax
	movl	%eax, -16(%ebp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
.LEHB55:
	call	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED1Ev
.LEHE55:
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
.LEHB56:
	call	_ZN5boost10shared_ptrI12CMyComponentED1Ev
.LEHE56:
.L242:
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv
	addl	$4, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
.L246:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEED1Ev
	jmp	.L244
.L245:
	movl	%eax, %ebx
.L244:
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost10shared_ptrI12CMyComponentED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB57:
	call	_Unwind_Resume
.LEHE57:
	.cfi_endproc
.LFE2121:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_
	.section	.gcc_except_table
.LLSDA2121:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2121-.LLSDACSB2121
.LLSDACSB2121:
	.uleb128 .LEHB52-.LFB2121
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB53-.LFB2121
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L245-.LFB2121
	.uleb128 0x0
	.uleb128 .LEHB54-.LFB2121
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L246-.LFB2121
	.uleb128 0x0
	.uleb128 .LEHB55-.LFB2121
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L245-.LFB2121
	.uleb128 0x0
	.uleb128 .LEHB56-.LFB2121
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB57-.LFB2121
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE2121:
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEEixERS7_,comdat
	.section	.text._ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E,"axG",@progbits,_ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E,comdat
	.align 2
	.weak	_ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E
	.type	_ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E, @function
_ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E:
.LFB2122:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA2122
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB58:
	.cfi_offset 3, -12
	call	_ZN5boost10shared_ptrI12CMyComponentEC1IS1_EERSt8auto_ptrIT_E
.LEHE58:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB59:
	call	_ZN5boost10shared_ptrI12CMyComponentE4swapERS2_
.LEHE59:
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB60:
	call	_ZN5boost10shared_ptrI12CMyComponentED1Ev
.LEHE60:
	movl	8(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L249:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost10shared_ptrI12CMyComponentED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB61:
	call	_Unwind_Resume
.LEHE61:
	.cfi_endproc
.LFE2122:
	.size	_ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E, .-_ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E
	.section	.gcc_except_table
.LLSDA2122:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2122-.LLSDACSB2122
.LLSDACSB2122:
	.uleb128 .LEHB58-.LFB2122
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB59-.LFB2122
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L249-.LFB2122
	.uleb128 0x0
	.uleb128 .LEHB60-.LFB2122
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB61-.LFB2122
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE2122:
	.section	.text._ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E,"axG",@progbits,_ZN5boost10shared_ptrI12CMyComponentEaSIS1_EERS2_RSt8auto_ptrIT_E,comdat
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseESt17_Rb_tree_iteratorIS8_E,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseESt17_Rb_tree_iteratorIS8_E,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseESt17_Rb_tree_iteratorIS8_E
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseESt17_Rb_tree_iteratorIS8_E, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseESt17_Rb_tree_iteratorIS8_E:
.LFB2123:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2123:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseESt17_Rb_tree_iteratorIS8_E, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE5eraseESt17_Rb_tree_iteratorIS8_E
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4findERS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4findERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4findERS1_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4findERS1_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4findERS1_:
.LFB2124:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv
	leal	-12(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_
	subl	$4, %esp
	leal	-16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv
	subl	$4, %esp
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_
	testb	%al, %al
	jne	.L252
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L253
.L252:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv
	subl	$4, %esp
	jmp	.L251
.L253:
	movl	-12(%ebp), %eax
	movl	%eax, (%ebx)
.L251:
	movl	%ebx, %eax
	leal	-8(%ebp), %esp
	addl	$0, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2124:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4findERS1_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4findERS1_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv:
.LFB2125:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2125:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv
	.section	.text._ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv,"axG",@progbits,_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv
	.type	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv, @function
_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv:
.LFB2126:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2126:
	.size	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv, .-_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv:
.LFB2127:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2127:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseERS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseERS1_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseERS1_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseERS1_:
.LFB2128:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	leal	-20(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11equal_rangeERS1_
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_ESE_
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv
	movl	-12(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2128:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseERS1_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseERS1_
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE11lower_boundERS7_,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE11lower_boundERS7_,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE11lower_boundERS7_
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE11lower_boundERS7_, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE11lower_boundERS7_:
.LFB2129:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11lower_boundERS1_
	subl	$4, %esp
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret	$4
	.cfi_endproc
.LFE2129:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE11lower_boundERS7_, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE11lower_boundERS7_
	.section	.text._ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE8key_compEv,"axG",@progbits,_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE8key_compEv,comdat
	.align 2
	.weak	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE8key_compEv
	.type	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE8key_compEv, @function
_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE8key_compEv:
.LFB2130:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8key_compEv
	subl	$4, %esp
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret	$4
	.cfi_endproc
.LFE2130:
	.size	_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE8key_compEv, .-_ZNKSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE8key_compEv
	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv,comdat
	.align 2
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv, @function
_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv:
.LFB2131:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$16, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2131:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv, .-_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEdeEv
	.section	.text._ZNKSt4lessISsEclERKSsS2_,"axG",@progbits,_ZNKSt4lessISsEclERKSsS2_,comdat
	.align 2
	.weak	_ZNKSt4lessISsEclERKSsS2_
	.type	_ZNKSt4lessISsEclERKSsS2_, @function
_ZNKSt4lessISsEclERKSsS2_:
.LFB2132:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2132:
	.size	_ZNKSt4lessISsEclERKSsS2_, .-_ZNKSt4lessISsEclERKSsS2_
	.section	.text._ZN5boost10shared_ptrI12CMyComponentEC2Ev,"axG",@progbits,_ZN5boost10shared_ptrI12CMyComponentEC5Ev,comdat
	.align 2
	.weak	_ZN5boost10shared_ptrI12CMyComponentEC2Ev
	.type	_ZN5boost10shared_ptrI12CMyComponentEC2Ev, @function
_ZN5boost10shared_ptrI12CMyComponentEC2Ev:
.LFB2134:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail12shared_countC1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2134:
	.size	_ZN5boost10shared_ptrI12CMyComponentEC2Ev, .-_ZN5boost10shared_ptrI12CMyComponentEC2Ev
	.weak	_ZN5boost10shared_ptrI12CMyComponentEC1Ev
	.set	_ZN5boost10shared_ptrI12CMyComponentEC1Ev,_ZN5boost10shared_ptrI12CMyComponentEC2Ev
	.section	.text._ZN5boost10shared_ptrI12CMyComponentEC2ERKS2_,"axG",@progbits,_ZN5boost10shared_ptrI12CMyComponentEC5ERKS2_,comdat
	.align 2
	.weak	_ZN5boost10shared_ptrI12CMyComponentEC2ERKS2_
	.type	_ZN5boost10shared_ptrI12CMyComponentEC2ERKS2_, @function
_ZN5boost10shared_ptrI12CMyComponentEC2ERKS2_:
.LFB2138:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5boost6detail12shared_countC1ERKS1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2138:
	.size	_ZN5boost10shared_ptrI12CMyComponentEC2ERKS2_, .-_ZN5boost10shared_ptrI12CMyComponentEC2ERKS2_
	.weak	_ZN5boost10shared_ptrI12CMyComponentEC1ERKS2_
	.set	_ZN5boost10shared_ptrI12CMyComponentEC1ERKS2_,_ZN5boost10shared_ptrI12CMyComponentEC2ERKS2_
	.section	.text._ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERS0_RKS4_,"axG",@progbits,_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC5ERS0_RKS4_,comdat
	.align 2
	.weak	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERS0_RKS4_
	.type	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERS0_RKS4_, @function
_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERS0_RKS4_:
.LFB2140:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSsC1ERKSs
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZN5boost10shared_ptrI12CMyComponentEC1ERKS2_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2140:
	.size	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERS0_RKS4_, .-_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERS0_RKS4_
	.weak	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC1ERS0_RKS4_
	.set	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC1ERS0_RKS4_,_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERS0_RKS4_
	.section	.text._ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE6insertESt17_Rb_tree_iteratorIS8_ERKS8_,"axG",@progbits,_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE6insertESt17_Rb_tree_iteratorIS8_ERKS8_,comdat
	.align 2
	.weak	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE6insertESt17_Rb_tree_iteratorIS8_ERKS8_
	.type	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE6insertESt17_Rb_tree_iteratorIS8_ERKS8_, @function
_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE6insertESt17_Rb_tree_iteratorIS8_ERKS8_:
.LFB2142:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	leal	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1ERKSt17_Rb_tree_iteratorIS6_E
	movl	12(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS6_ERKS6_
	subl	$4, %esp
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret	$4
	.cfi_endproc
.LFE2142:
	.size	_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE6insertESt17_Rb_tree_iteratorIS8_ERKS8_, .-_ZNSt3mapISsN5boost10shared_ptrI12CMyComponentEESt4lessISsESaISt4pairIKSsS3_EEE6insertESt17_Rb_tree_iteratorIS8_ERKS8_
	.section	.text._ZN5boost10shared_ptrI12CMyComponentEC2IS1_EERSt8auto_ptrIT_E,"axG",@progbits,_ZN5boost10shared_ptrI12CMyComponentEC5IS1_EERSt8auto_ptrIT_E,comdat
	.align 2
	.weak	_ZN5boost10shared_ptrI12CMyComponentEC2IS1_EERSt8auto_ptrIT_E
	.type	_ZN5boost10shared_ptrI12CMyComponentEC2IS1_EERSt8auto_ptrIT_E, @function
_ZN5boost10shared_ptrI12CMyComponentEC2IS1_EERSt8auto_ptrIT_E:
.LFB2144:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA2144
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_ZNKSt8auto_ptrI12CMyComponentE3getEv
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail12shared_countC1Ev
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8auto_ptrI12CMyComponentE3getEv
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB62:
	call	_ZN5boost6detail12shared_countC1I12CMyComponentEERSt8auto_ptrIT_E
.LEHE62:
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
.LEHB63:
	call	_ZN5boost6detail12shared_countaSERKS1_
.LEHE63:
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
.LEHB64:
	call	_ZN5boost6detail12shared_countD1Ev
.LEHE64:
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail26sp_enable_shared_from_thisEz
	addl	$36, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L271:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail12shared_countD1Ev
	jmp	.L269
.L270:
	movl	%eax, %ebx
.L269:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail12shared_countD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB65:
	call	_Unwind_Resume
.LEHE65:
	.cfi_endproc
.LFE2144:
	.size	_ZN5boost10shared_ptrI12CMyComponentEC2IS1_EERSt8auto_ptrIT_E, .-_ZN5boost10shared_ptrI12CMyComponentEC2IS1_EERSt8auto_ptrIT_E
	.section	.gcc_except_table
.LLSDA2144:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2144-.LLSDACSB2144
.LLSDACSB2144:
	.uleb128 .LEHB62-.LFB2144
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L270-.LFB2144
	.uleb128 0x0
	.uleb128 .LEHB63-.LFB2144
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L271-.LFB2144
	.uleb128 0x0
	.uleb128 .LEHB64-.LFB2144
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L270-.LFB2144
	.uleb128 0x0
	.uleb128 .LEHB65-.LFB2144
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE2144:
	.section	.text._ZN5boost10shared_ptrI12CMyComponentEC2IS1_EERSt8auto_ptrIT_E,"axG",@progbits,_ZN5boost10shared_ptrI12CMyComponentEC5IS1_EERSt8auto_ptrIT_E,comdat
	.weak	_ZN5boost10shared_ptrI12CMyComponentEC1IS1_EERSt8auto_ptrIT_E
	.set	_ZN5boost10shared_ptrI12CMyComponentEC1IS1_EERSt8auto_ptrIT_E,_ZN5boost10shared_ptrI12CMyComponentEC2IS1_EERSt8auto_ptrIT_E
	.section	.text._ZN5boost10shared_ptrI12CMyComponentE4swapERS2_,"axG",@progbits,_ZN5boost10shared_ptrI12CMyComponentE4swapERS2_,comdat
	.align 2
	.weak	_ZN5boost10shared_ptrI12CMyComponentE4swapERS2_
	.type	_ZN5boost10shared_ptrI12CMyComponentE4swapERS2_, @function
_ZN5boost10shared_ptrI12CMyComponentE4swapERS2_:
.LFB2146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZSt4swapIP12CMyComponentEvRT_S3_
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5boost6detail12shared_count4swapERS1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2146:
	.size	_ZN5boost10shared_ptrI12CMyComponentE4swapERS2_, .-_ZN5boost10shared_ptrI12CMyComponentE4swapERS2_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E:
.LFB2147:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 20(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2147:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv:
.LFB2148:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$4, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2148:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_:
.LFB2149:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	jmp	.L276
.L278:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	24(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	xorl	$1, %eax
	testb	%al, %al
	je	.L277
	movl	16(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base
	movl	%eax, 16(%ebp)
	jmp	.L276
.L277:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base
	movl	%eax, 16(%ebp)
.L276:
	cmpl	$0, 16(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L278
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2149:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base:
.LFB2150:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt18_Rb_tree_node_base
	movl	%eax, 4(%esp)
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2150:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2EPSt13_Rb_tree_nodeIS6_E,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC5EPSt13_Rb_tree_nodeIS6_E,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2EPSt13_Rb_tree_nodeIS6_E
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2EPSt13_Rb_tree_nodeIS6_E, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2EPSt13_Rb_tree_nodeIS6_E:
.LFB2152:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2152:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2EPSt13_Rb_tree_nodeIS6_E, .-_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2EPSt13_Rb_tree_nodeIS6_E
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	.set	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E,_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2EPSt13_Rb_tree_nodeIS6_E
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11equal_rangeERS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11equal_rangeERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11equal_rangeERS1_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11equal_rangeERS1_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11equal_rangeERS1_:
.LFB2154:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	movl	%eax, -16(%ebp)
	jmp	.L282
.L286:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L283
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base
	movl	%eax, -12(%ebp)
	jmp	.L282
.L283:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L284
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base
	movl	%eax, -12(%ebp)
	jmp	.L282
.L284:
	movl	-12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base
	movl	%eax, -12(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base
	movl	%eax, -20(%ebp)
	leal	-32(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_
	subl	$4, %esp
	leal	-28(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC1ERKS7_SA_
	jmp	.L281
.L282:
	cmpl	$0, -12(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L286
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	leal	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC1ERKS7_SA_
.L281:
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret	$4
	.cfi_endproc
.LFE2154:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11equal_rangeERS1_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11equal_rangeERS1_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_ESE_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_ESE_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_ESE_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_ESE_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_ESE_:
.LFB2155:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	leal	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv
	subl	$4, %esp
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_
	testb	%al, %al
	je	.L288
	leal	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE3endEv
	subl	$4, %esp
	leal	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_
	testb	%al, %al
	je	.L288
	movl	$1, %eax
	jmp	.L289
.L288:
	movl	$0, %eax
.L289:
	testb	%al, %al
	je	.L292
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5clearEv
	jmp	.L287
.L293:
	leal	-20(%ebp), %eax
	movl	$0, 8(%esp)
	leal	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEi
	subl	$4, %esp
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_E
.L292:
	leal	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEneERKS7_
	testb	%al, %al
	jne	.L293
.L287:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2155:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_ESE_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5eraseESt17_Rb_tree_iteratorIS6_ESE_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11lower_boundERS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11lower_boundERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11lower_boundERS1_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11lower_boundERS1_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11lower_boundERS1_:
.LFB2156:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	8(%ebp), %esi
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	movl	%eax, %ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv
	movl	16(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_
	subl	$4, %esp
	movl	%esi, %eax
	leal	-8(%ebp), %esp
	addl	$0, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2156:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11lower_boundERS1_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11lower_boundERS1_
	.section	.text._ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8key_compEv,"axG",@progbits,_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8key_compEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8key_compEv
	.type	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8key_compEv, @function
_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8key_compEv:
.LFB2157:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2157:
	.size	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8key_compEv, .-_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8key_compEv
	.section	.text._ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_,"axG",@progbits,_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_,comdat
	.weak	_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	.type	_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_, @function
_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_:
.LFB2158:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSs7compareERKSs
	shrl	$31, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2158:
	.size	_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_, .-_ZStltIcSt11char_traitsIcESaIcEEbRKSbIT_T0_T1_ES8_
	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ERKSt17_Rb_tree_iteratorIS6_E,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC5ERKSt17_Rb_tree_iteratorIS6_E,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ERKSt17_Rb_tree_iteratorIS6_E
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ERKSt17_Rb_tree_iteratorIS6_E, @function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ERKSt17_Rb_tree_iteratorIS6_E:
.LFB2160:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2160:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ERKSt17_Rb_tree_iteratorIS6_E, .-_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ERKSt17_Rb_tree_iteratorIS6_E
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1ERKSt17_Rb_tree_iteratorIS6_E
	.set	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1ERKSt17_Rb_tree_iteratorIS6_E,_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC2ERKSt17_Rb_tree_iteratorIS6_E
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS6_ERKS6_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS6_ERKS6_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS6_ERKS6_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS6_ERKS6_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS6_ERKS6_:
.LFB2162:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$80, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	16(%ebp), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	cmpl	%eax, %esi
	sete	%al
	testb	%al, %al
	je	.L299
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE4sizeEv
	testl	%eax, %eax
	je	.L300
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L300
	movl	$1, %eax
	jmp	.L301
.L300:
	movl	$0, %eax
.L301:
	testb	%al, %al
	je	.L302
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	jmp	.L298
.L302:
	leal	-28(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_
	subl	$4, %esp
	movl	-28(%ebp), %eax
	movl	%eax, (%ebx)
	jmp	.L298
.L299:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	movl	12(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L304
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv
	movl	(%eax), %eax
	cmpl	%eax, %esi
	sete	%al
	testb	%al, %al
	je	.L305
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv
	movl	(%eax), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	jmp	.L298
.L305:
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-11(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	movl	%eax, %esi
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L306
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L307
	movl	-20(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	jmp	.L298
.L307:
	movl	16(%ebp), %edx
	movl	16(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	jmp	.L298
.L306:
	leal	-36(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_
	subl	$4, %esp
	movl	-36(%ebp), %eax
	movl	%eax, (%ebx)
	jmp	.L298
.L304:
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L308
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv
	movl	(%eax), %eax
	cmpl	%eax, %esi
	sete	%al
	testb	%al, %al
	je	.L309
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv
	movl	(%eax), %eax
	movl	20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	jmp	.L298
.L309:
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEv
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	movl	%eax, %esi
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-13(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	movl	12(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L310
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L311
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	jmp	.L298
.L311:
	movl	-20(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	jmp	.L298
.L310:
	leal	-44(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_
	subl	$4, %esp
	movl	-44(%ebp), %eax
	movl	%eax, (%ebx)
	jmp	.L298
.L308:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
.L298:
	movl	%ebx, %eax
	leal	-8(%ebp), %esp
	addl	$0, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2162:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS6_ERKS6_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS6_ERKS6_
	.section	.text._ZN5boost6detail12shared_countC2I12CMyComponentEERSt8auto_ptrIT_E,"axG",@progbits,_ZN5boost6detail12shared_countC5I12CMyComponentEERSt8auto_ptrIT_E,comdat
	.align 2
	.weak	_ZN5boost6detail12shared_countC2I12CMyComponentEERSt8auto_ptrIT_E
	.type	_ZN5boost6detail12shared_countC2I12CMyComponentEERSt8auto_ptrIT_E, @function
_ZN5boost6detail12shared_countC2I12CMyComponentEERSt8auto_ptrIT_E:
.LFB2164:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	_ZNKSt8auto_ptrI12CMyComponentE3getEv
	movl	%eax, %esi
	movl	$16, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC1EPS2_
	movl	%ebx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8auto_ptrI12CMyComponentE7releaseEv
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2164:
	.size	_ZN5boost6detail12shared_countC2I12CMyComponentEERSt8auto_ptrIT_E, .-_ZN5boost6detail12shared_countC2I12CMyComponentEERSt8auto_ptrIT_E
	.weak	_ZN5boost6detail12shared_countC1I12CMyComponentEERSt8auto_ptrIT_E
	.set	_ZN5boost6detail12shared_countC1I12CMyComponentEERSt8auto_ptrIT_E,_ZN5boost6detail12shared_countC2I12CMyComponentEERSt8auto_ptrIT_E
	.section	.text._ZSt4swapIP12CMyComponentEvRT_S3_,"axG",@progbits,_ZSt4swapIP12CMyComponentEvRT_S3_,comdat
	.weak	_ZSt4swapIP12CMyComponentEvRT_S3_
	.type	_ZSt4swapIP12CMyComponentEvRT_S3_, @function
_ZSt4swapIP12CMyComponentEvRT_S3_:
.LFB2166:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2166:
	.size	_ZSt4swapIP12CMyComponentEvRT_S3_, .-_ZSt4swapIP12CMyComponentEvRT_S3_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E:
.LFB2167:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt13_Rb_tree_nodeIS6_E
	movl	%eax, 4(%esp)
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2167:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt18_Rb_tree_node_base:
.LFB2168:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$16, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2168:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt18_Rb_tree_node_base
	.section	.text._ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_,"axG",@progbits,_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_,comdat
	.align 2
	.weak	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	.type	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_, @function
_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_:
.LFB2169:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2169:
	.size	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_, .-_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_:
.LFB2170:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -12
	jmp	.L318
.L320:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	24(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L319
	movl	16(%ebp), %eax
	movl	%eax, 20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base
	movl	%eax, 16(%ebp)
	jmp	.L318
.L319:
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base
	movl	%eax, 16(%ebp)
.L318:
	cmpl	$0, 16(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L320
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	movl	%ebx, %eax
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2170:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS6_ESF_RS1_
	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC2ERKS7_SA_,"axG",@progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC5ERKS7_SA_,comdat
	.align 2
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC2ERKS7_SA_
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC2ERKS7_SA_, @function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC2ERKS7_SA_:
.LFB2172:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2172:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC2ERKS7_SA_, .-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC2ERKS7_SA_
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC1ERKS7_SA_
	.set	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC1ERKS7_SA_,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEES7_EC2ERKS7_SA_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5clearEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5clearEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5clearEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5clearEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5clearEv:
.LFB2174:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	movl	%eax, (%ebx)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_M_rootEv
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	movl	%eax, (%ebx)
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2174:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5clearEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5clearEv
	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEneERKS7_,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEneERKS7_,comdat
	.align 2
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEneERKS7_
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEneERKS7_, @function
_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEneERKS7_:
.LFB2175:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	setne	%al
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2175:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEneERKS7_, .-_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEneERKS7_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv:
.LFB2177:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$16, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2177:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE12_M_rightmostEv
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_:
.LFB2178:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	cmpl	$0, 16(%ebp)
	jne	.L326
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	cmpl	20(%ebp), %eax
	je	.L326
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	movl	%eax, %esi
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	movl	12(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L327
.L326:
	movl	$1, %eax
	jmp	.L328
.L327:
	movl	$0, %eax
.L328:
	movb	%al, -9(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	leal	4(%eax), %ecx
	movl	-16(%ebp), %edx
	movzbl	-9(%ebp), %eax
	movl	%ecx, 12(%esp)
	movl	20(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 20(%eax)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	movl	%ebx, %eax
	addl	$32, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2178:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_:
.LFB2179:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$64, %esp
	movl	8(%ebp), %ebx
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_M_beginEv
	movl	%eax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_M_endEv
	movl	%eax, -24(%ebp)
	movb	$1, -9(%ebp)
	jmp	.L330
.L333:
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt13_Rb_tree_nodeIS6_E
	movl	%eax, %esi
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-10(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	movl	12(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	movb	%al, -9(%ebp)
	cmpb	$0, -9(%ebp)
	je	.L331
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_S_leftEPSt18_Rb_tree_node_base
	jmp	.L332
.L331:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPSt18_Rb_tree_node_base
.L332:
	movl	%eax, -20(%ebp)
.L330:
	cmpl	$0, -20(%ebp)
	setne	%al
	testb	%al, %al
	jne	.L333
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEC1EPSt13_Rb_tree_nodeIS6_E
	cmpb	$0, -9(%ebp)
	je	.L334
	leal	-32(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE5beginEv
	subl	$4, %esp
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEeqERKS7_
	testb	%al, %al
	je	.L335
	movb	$1, -11(%ebp)
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %edx
	leal	-36(%ebp), %eax
	movl	16(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	leal	-11(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC1ERKS7_RKb
	jmp	.L329
.L335:
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv
.L334:
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSt10_Select1stISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEclERKS6_
	movl	%eax, %esi
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE6_S_keyEPKSt18_Rb_tree_node_base
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt4lessISsEclERKSsS2_
	testb	%al, %al
	je	.L337
	movb	$1, -13(%ebp)
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %edx
	leal	-40(%ebp), %eax
	movl	16(%ebp), %esi
	movl	%esi, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE10_M_insert_EPKSt18_Rb_tree_node_baseSF_RKS6_
	subl	$4, %esp
	leal	-13(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC1ERKS7_RKb
	jmp	.L329
.L337:
	movb	$0, -14(%ebp)
	leal	-14(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC1ERKS7_RKb
.L329:
	movl	%ebx, %eax
	leal	-8(%ebp), %esp
	addl	$0, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE2179:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE16_M_insert_uniqueERKS6_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv:
.LFB2180:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$12, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2180:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_leftmostEv
	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv, @function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv:
.LFB2181:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2181:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv, .-_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base:
.LFB2182:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2182:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_rightEPKSt18_Rb_tree_node_base
	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEv,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEv,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEv
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEv, @function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEv:
.LFB2183:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2183:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEv, .-_ZNSt23_Rb_tree_const_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEppEv
	.section	.text._ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC2EPS2_,"axG",@progbits,_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC5EPS2_,comdat
	.align 2
	.weak	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC2EPS2_
	.type	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC2EPS2_, @function
_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC2EPS2_:
.LFB2185:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail15sp_counted_baseC2Ev
	movl	8(%ebp), %eax
	movl	$_ZTVN5boost6detail17sp_counted_impl_pI12CMyComponentEE+8, (%eax)
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2185:
	.size	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC2EPS2_, .-_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC2EPS2_
	.weak	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC1EPS2_
	.set	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC1EPS2_,_ZN5boost6detail17sp_counted_impl_pI12CMyComponentEC2EPS2_
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt13_Rb_tree_nodeIS6_E,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt13_Rb_tree_nodeIS6_E,comdat
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt13_Rb_tree_nodeIS6_E
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt13_Rb_tree_nodeIS6_E, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt13_Rb_tree_nodeIS6_E:
.LFB2187:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$16, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2187:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt13_Rb_tree_nodeIS6_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE8_S_valueEPKSt13_Rb_tree_nodeIS6_E
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_M_rootEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_M_rootEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_M_rootEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_M_rootEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_M_rootEv:
.LFB2188:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$8, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2188:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_M_rootEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE7_M_rootEv
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_:
.LFB2191:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA2191
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
.LEHB66:
	.cfi_offset 3, -12
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_get_nodeEv
.LEHE66:
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	leal	16(%eax), %ebx
	leal	-9(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNKSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE13get_allocatorEv
	subl	$4, %esp
	leal	-9(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
.LEHB67:
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_
.LEHE67:
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED1Ev
	movl	-16(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	ret
.L348:
	.cfi_restore_state
	movl	%eax, %ebx
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSaISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	__cxa_begin_catch
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS6_E
.LEHB68:
	call	__cxa_rethrow
.LEHE68:
.L349:
	movl	%eax, %ebx
	call	__cxa_end_catch
	movl	%ebx, %eax
	movl	%eax, (%esp)
.LEHB69:
	call	_Unwind_Resume
.LEHE69:
	.cfi_endproc
.LFE2191:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_
	.section	.gcc_except_table
	.align 4
.LLSDA2191:
	.byte	0xff
	.byte	0x0
	.uleb128 .LLSDATT2191-.LLSDATTD2191
.LLSDATTD2191:
	.byte	0x1
	.uleb128 .LLSDACSE2191-.LLSDACSB2191
.LLSDACSB2191:
	.uleb128 .LEHB66-.LFB2191
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 .LEHB67-.LFB2191
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L348-.LFB2191
	.uleb128 0x3
	.uleb128 .LEHB68-.LFB2191
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L349-.LFB2191
	.uleb128 0x0
	.uleb128 .LEHB69-.LFB2191
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE2191:
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x7d
	.align 4
	.long	0
.LLSDATT2191:
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE14_M_create_nodeERKS6_,comdat
	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC2ERKS7_RKb,"axG",@progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC5ERKS7_RKb,comdat
	.align 2
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC2ERKS7_RKb
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC2ERKS7_RKb, @function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC2ERKS7_RKb:
.LFB2193:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 4(%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2193:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC2ERKS7_RKb, .-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC2ERKS7_RKb
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC1ERKS7_RKb
	.set	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC1ERKS7_RKb,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKSsN5boost10shared_ptrI12CMyComponentEEEEbEC2ERKS7_RKb
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv:
.LFB2195:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	movl	8(%ebp), %edx
	movl	%eax, (%edx)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2195:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv, .-_ZNSt17_Rb_tree_iteratorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEmmEv
	.section	.text._ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_get_nodeEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_get_nodeEv
	.type	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_get_nodeEv, @function
_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_get_nodeEv:
.LFB2196:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8allocateEjPKv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2196:
	.size	_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_get_nodeEv, .-_ZNSt8_Rb_treeISsSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEESt10_Select1stIS6_ESt4lessISsESaIS6_EE11_M_get_nodeEv
	.section	.text._ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERKS5_,"axG",@progbits,_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC5ERKS5_,comdat
	.align 2
	.weak	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERKS5_
	.type	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERKS5_, @function
_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERKS5_:
.LFB2199:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSsC1ERKSs
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ZN5boost10shared_ptrI12CMyComponentEC1ERKS2_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERKS5_, .-_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERKS5_
	.weak	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC1ERKS5_
	.set	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC1ERKS5_,_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC2ERKS5_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_:
.LFB2197:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	.cfi_lsda 0x0,.LLSDA2197
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	movl	12(%ebp), %esi
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, 4(%esp)
	movl	$12, (%esp)
	call	_ZnwjPv
	movl	%eax, %ebx
	movl	%ebx, %eax
	testl	%eax, %eax
	je	.L354
	movl	%ebx, %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
.LEHB70:
	call	_ZNSt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEC1ERKS5_
.LEHE70:
	jmp	.L354
.L358:
	movl	%eax, %edi
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	_ZdlPvS_
	movl	%edi, %eax
	movl	%eax, (%esp)
.LEHB71:
	call	_Unwind_Resume
.LEHE71:
.L354:
	addl	$28, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_
	.section	.gcc_except_table
.LLSDA2197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2197-.LLSDACSB2197
.LLSDACSB2197:
	.uleb128 .LEHB70-.LFB2197
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L358-.LFB2197
	.uleb128 0x0
	.uleb128 .LEHB71-.LFB2197
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE2197:
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEE9constructEPS7_RKS7_,comdat
	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8allocateEjPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8allocateEjPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8allocateEjPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8allocateEjPKv, @function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8allocateEjPKv:
.LFB2201:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8max_sizeEv
	cmpl	12(%ebp), %eax
	setb	%al
	testb	%al, %al
	je	.L360
	call	_ZSt17__throw_bad_allocv
.L360:
	movl	12(%ebp), %eax
	sall	$2, %eax
	leal	0(,%eax,8), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, (%esp)
	call	_Znwj
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8allocateEjPKv, .-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8allocateEjPKv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8max_sizeEv:
.LFB2202:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	$153391689, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKSsN5boost10shared_ptrI12CMyComponentEEEEE8max_sizeEv
	.weak	_ZTVN5boost6detail17sp_counted_impl_pI12CMyComponentEE
	.section	.rodata._ZTVN5boost6detail17sp_counted_impl_pI12CMyComponentEE,"aG",@progbits,_ZTVN5boost6detail17sp_counted_impl_pI12CMyComponentEE,comdat
	.align 8
	.type	_ZTVN5boost6detail17sp_counted_impl_pI12CMyComponentEE, @object
	.size	_ZTVN5boost6detail17sp_counted_impl_pI12CMyComponentEE, 28
_ZTVN5boost6detail17sp_counted_impl_pI12CMyComponentEE:
	.long	0
	.long	_ZTIN5boost6detail17sp_counted_impl_pI12CMyComponentEE
	.long	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED1Ev
	.long	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED0Ev
	.long	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE7disposeEv
	.long	_ZN5boost6detail15sp_counted_base7destroyEv
	.long	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE11get_deleterERKSt9type_info
	.section	.text._ZN5boost6detail17sp_counted_impl_pI12CMyComponentED2Ev,"axG",@progbits,_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED5Ev,comdat
	.align 2
	.weak	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED2Ev
	.type	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED2Ev, @function
_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED2Ev:
.LFB2204:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	$_ZTVN5boost6detail17sp_counted_impl_pI12CMyComponentEE+8, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail15sp_counted_baseD2Ev
	movl	$0, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L362
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
.L362:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED2Ev, .-_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED2Ev
	.weak	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED1Ev
	.set	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED1Ev,_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED2Ev
	.section	.text._ZN5boost6detail17sp_counted_impl_pI12CMyComponentED0Ev,"axG",@progbits,_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED5Ev,comdat
	.align 2
	.weak	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED0Ev
	.type	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED0Ev, @function
_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED0Ev:
.LFB2206:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED1Ev
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZdlPv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED0Ev, .-_ZN5boost6detail17sp_counted_impl_pI12CMyComponentED0Ev
	.weak	_ZTSN5boost6detail17sp_counted_impl_pI12CMyComponentEE
	.section	.rodata._ZTSN5boost6detail17sp_counted_impl_pI12CMyComponentEE,"aG",@progbits,_ZTSN5boost6detail17sp_counted_impl_pI12CMyComponentEE,comdat
	.align 32
	.type	_ZTSN5boost6detail17sp_counted_impl_pI12CMyComponentEE, @object
	.size	_ZTSN5boost6detail17sp_counted_impl_pI12CMyComponentEE, 51
_ZTSN5boost6detail17sp_counted_impl_pI12CMyComponentEE:
	.string	"N5boost6detail17sp_counted_impl_pI12CMyComponentEE"
	.weak	_ZTIN5boost6detail17sp_counted_impl_pI12CMyComponentEE
	.section	.rodata._ZTIN5boost6detail17sp_counted_impl_pI12CMyComponentEE,"aG",@progbits,_ZTIN5boost6detail17sp_counted_impl_pI12CMyComponentEE,comdat
	.align 4
	.type	_ZTIN5boost6detail17sp_counted_impl_pI12CMyComponentEE, @object
	.size	_ZTIN5boost6detail17sp_counted_impl_pI12CMyComponentEE, 12
_ZTIN5boost6detail17sp_counted_impl_pI12CMyComponentEE:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTSN5boost6detail17sp_counted_impl_pI12CMyComponentEE
	.long	_ZTIN5boost6detail15sp_counted_baseE
	.section	.text._ZN5boost6detail17sp_counted_impl_pI12CMyComponentE7disposeEv,"axG",@progbits,_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE7disposeEv,comdat
	.align 2
	.weak	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE7disposeEv
	.type	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE7disposeEv, @function
_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE7disposeEv:
.LFB2207:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_ZN5boost14checked_deleteI12CMyComponentEEvPT_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2207:
	.size	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE7disposeEv, .-_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE7disposeEv
	.section	.text._ZN5boost6detail17sp_counted_impl_pI12CMyComponentE11get_deleterERKSt9type_info,"axG",@progbits,_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE11get_deleterERKSt9type_info,comdat
	.align 2
	.weak	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE11get_deleterERKSt9type_info
	.type	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE11get_deleterERKSt9type_info, @function
_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE11get_deleterERKSt9type_info:
.LFB2208:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	movl	$0, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE11get_deleterERKSt9type_info, .-_ZN5boost6detail17sp_counted_impl_pI12CMyComponentE11get_deleterERKSt9type_info
	.section	.text._ZN5boost14checked_deleteI12CMyComponentEEvPT_,"axG",@progbits,_ZN5boost14checked_deleteI12CMyComponentEEvPT_,comdat
	.weak	_ZN5boost14checked_deleteI12CMyComponentEEvPT_
	.type	_ZN5boost14checked_deleteI12CMyComponentEEvPT_, @function
_ZN5boost14checked_deleteI12CMyComponentEEvPT_:
.LFB2209:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	.L369
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
.L369:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN5boost14checked_deleteI12CMyComponentEEvPT_, .-_ZN5boost14checked_deleteI12CMyComponentEEvPT_
	.text
	.type	_GLOBAL__I_main, @function
_GLOBAL__I_main:
.LFB2210:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2210:
	.size	_GLOBAL__I_main, .-_GLOBAL__I_main
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__I_main
	.weak	_ZZN10TComponentI12CMyComponentE8GetPimplEvE4init
	.section	.bss._ZZN10TComponentI12CMyComponentE8GetPimplEvE4init,"awG",@nobits,_ZZN10TComponentI12CMyComponentE8GetPimplEvE4init,comdat
	.align 4
	.type	_ZZN10TComponentI12CMyComponentE8GetPimplEvE4init, @gnu_unique_object
	.size	_ZZN10TComponentI12CMyComponentE8GetPimplEvE4init, 4
_ZZN10TComponentI12CMyComponentE8GetPimplEvE4init:
	.zero	4
	.section	.rodata
	.align 32
	.type	_ZZN10TComponentI12CMyComponentE8GetPimplEvE19__PRETTY_FUNCTION__, @object
	.size	_ZZN10TComponentI12CMyComponentE8GetPimplEvE19__PRETTY_FUNCTION__, 69
_ZZN10TComponentI12CMyComponentE8GetPimplEvE19__PRETTY_FUNCTION__:
	.string	"TComponentImpl<T>* TComponent<T>::GetPimpl() [with T = CMyComponent]"
	.align 32
	.type	_ZZN10TComponentI12CMyComponentE8SetPimplEvE19__PRETTY_FUNCTION__, @object
	.size	_ZZN10TComponentI12CMyComponentE8SetPimplEvE19__PRETTY_FUNCTION__, 54
_ZZN10TComponentI12CMyComponentE8SetPimplEvE19__PRETTY_FUNCTION__:
	.string	"int TComponent<T>::SetPimpl() [with T = CMyComponent]"
	.align 32
	.type	_ZZN14TCompositeImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TCompositeImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__, 60
_ZZN14TCompositeImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__:
	.string	"void TCompositeImpl<T>::Remove(int) [with T = CMyComponent]"
	.align 32
	.type	_ZZNK14TCompositeImplI12CMyComponentE8GetIndexEvE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK14TCompositeImplI12CMyComponentE8GetIndexEvE19__PRETTY_FUNCTION__, 64
_ZZNK14TCompositeImplI12CMyComponentE8GetIndexEvE19__PRETTY_FUNCTION__:
	.string	"int TCompositeImpl<T>::GetIndex() const [with T = CMyComponent]"
	.align 32
	.type	_ZZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__, 70
_ZZN14TCompositeImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__:
	.string	"void TCompositeImpl<T>::Add(std::auto_ptr<T>) [with T = CMyComponent]"
	.align 32
	.type	_ZZN14TCompositeImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TCompositeImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__, 62
_ZZN14TCompositeImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__:
	.string	"T& TCompositeImpl<T>::operator[](int) [with T = CMyComponent]"
	.align 32
	.type	_ZZNK5boost10shared_ptrI12CMyComponentEdeEvE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK5boost10shared_ptrI12CMyComponentEdeEvE19__PRETTY_FUNCTION__, 145
_ZZNK5boost10shared_ptrI12CMyComponentEdeEvE19__PRETTY_FUNCTION__:
	.string	"boost::shared_ptr<T>::reference boost::shared_ptr<T>::operator*() const [with T = CMyComponent, boost::shared_ptr<T>::reference = CMyComponent&]"
	.align 32
	.type	_ZZN14TCompositeImplI12CMyComponentEixERKSsE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TCompositeImplI12CMyComponentEixERKSsE19__PRETTY_FUNCTION__, 116
_ZZN14TCompositeImplI12CMyComponentEixERKSsE19__PRETTY_FUNCTION__:
	.string	"T& TCompositeImpl<T>::operator[](const std::string&) [with T = CMyComponent, std::string = std::basic_string<char>]"
	.align 32
	.type	_ZZN14TComponentImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TComponentImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__, 60
_ZZN14TComponentImplI12CMyComponentE6RemoveEiE19__PRETTY_FUNCTION__:
	.string	"void TComponentImpl<T>::Remove(int) [with T = CMyComponent]"
	.align 32
	.type	_ZZN14TComponentImplI12CMyComponentE6RemoveERKSsE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TComponentImplI12CMyComponentE6RemoveERKSsE19__PRETTY_FUNCTION__, 114
_ZZN14TComponentImplI12CMyComponentE6RemoveERKSsE19__PRETTY_FUNCTION__:
	.string	"void TComponentImpl<T>::Remove(const std::string&) [with T = CMyComponent, std::string = std::basic_string<char>]"
	.align 32
	.type	_ZZN14TComponentImplI12CMyComponentE6RemoveERS0_E19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TComponentImplI12CMyComponentE6RemoveERS0_E19__PRETTY_FUNCTION__, 59
_ZZN14TComponentImplI12CMyComponentE6RemoveERS0_E19__PRETTY_FUNCTION__:
	.string	"void TComponentImpl<T>::Remove(T&) [with T = CMyComponent]"
	.align 32
	.type	_ZZNK14TComponentImplI12CMyComponentE8GetIndexEvE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK14TComponentImplI12CMyComponentE8GetIndexEvE19__PRETTY_FUNCTION__, 64
_ZZNK14TComponentImplI12CMyComponentE8GetIndexEvE19__PRETTY_FUNCTION__:
	.string	"int TComponentImpl<T>::GetIndex() const [with T = CMyComponent]"
	.align 32
	.type	_ZZNK14TComponentImplI12CMyComponentE8GetCountEvE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK14TComponentImplI12CMyComponentE8GetCountEvE19__PRETTY_FUNCTION__, 64
_ZZNK14TComponentImplI12CMyComponentE8GetCountEvE19__PRETTY_FUNCTION__:
	.string	"int TComponentImpl<T>::GetCount() const [with T = CMyComponent]"
	.align 32
	.type	_ZZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__, 70
_ZZN14TComponentImplI12CMyComponentE3AddESt8auto_ptrIS0_EE19__PRETTY_FUNCTION__:
	.string	"void TComponentImpl<T>::Add(std::auto_ptr<T>) [with T = CMyComponent]"
	.align 32
	.type	_ZZN14TComponentImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TComponentImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__, 62
_ZZN14TComponentImplI12CMyComponentEixEiE19__PRETTY_FUNCTION__:
	.string	"T& TComponentImpl<T>::operator[](int) [with T = CMyComponent]"
	.align 32
	.type	_ZZN14TComponentImplI12CMyComponentEixERKSsE19__PRETTY_FUNCTION__, @object
	.size	_ZZN14TComponentImplI12CMyComponentEixERKSsE19__PRETTY_FUNCTION__, 116
_ZZN14TComponentImplI12CMyComponentEixERKSsE19__PRETTY_FUNCTION__:
	.string	"T& TComponentImpl<T>::operator[](const std::string&) [with T = CMyComponent, std::string = std::basic_string<char>]"
	.align 32
	.type	_ZZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_E19__PRETTY_FUNCTION__, @object
	.size	_ZZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_E19__PRETTY_FUNCTION__, 77
_ZZN5boost10scoped_ptrI14TComponentImplI12CMyComponentEE5resetEPS3_E19__PRETTY_FUNCTION__:
	.string	"void boost::scoped_ptr<T>::reset(T*) [with T = TComponentImpl<CMyComponent>]"
	.align 4
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 4
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.long	_ZL22__gthrw_pthread_cancelm
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.ident	"GCC: (Ubuntu/Linaro 4.5.2-8ubuntu4) 4.5.2"
	.section	.note.GNU-stack,"",@progbits
