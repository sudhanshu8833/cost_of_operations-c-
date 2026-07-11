	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.private_extern	__ZNSt3__111make_uniqueB8ue170006IN9benchmark8internal17FunctionBenchmarkEJRA10_KcPFvRNS1_5StateEEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_ ; -- Begin function _ZNSt3__111make_uniqueB8ue170006IN9benchmark8internal17FunctionBenchmarkEJRA10_KcPFvRNS1_5StateEEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_
	.globl	__ZNSt3__111make_uniqueB8ue170006IN9benchmark8internal17FunctionBenchmarkEJRA10_KcPFvRNS1_5StateEEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_
	.weak_def_can_be_hidden	__ZNSt3__111make_uniqueB8ue170006IN9benchmark8internal17FunctionBenchmarkEJRA10_KcPFvRNS1_5StateEEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_
	.p2align	2
__ZNSt3__111make_uniqueB8ue170006IN9benchmark8internal17FunctionBenchmarkEJRA10_KcPFvRNS1_5StateEEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: ; @_ZNSt3__111make_uniqueB8ue170006IN9benchmark8internal17FunctionBenchmarkEJRA10_KcPFvRNS1_5StateEEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x1
	mov	x22, x0
	mov	x20, x8
	mov	w0, #304
	bl	__Znwm
	mov	x19, x0
	mov	x0, x22
	bl	_strlen
	mov	x8, #9223372036854775792
	cmp	x0, x8
	b.hs	LBB0_10
; %bb.1:
	mov	x23, x0
	cmp	x0, #23
	b.hs	LBB0_3
; %bb.2:
	strb	w23, [sp, #31]
	add	x24, sp, #8
	cbnz	x23, LBB0_5
	b	LBB0_6
LBB0_3:
	orr	x8, x23, #0xf
	add	x25, x8, #1
Ltmp0:
	mov	x0, x25
	bl	__Znwm
Ltmp1:
; %bb.4:
	mov	x24, x0
	orr	x8, x25, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB0_5:
	mov	x0, x24
	mov	x1, x22
	mov	x2, x23
	bl	_memcpy
LBB0_6:
	strb	wzr, [x24, x23]
	ldr	x21, [x21]
Ltmp2:
	add	x1, sp, #8
	mov	x0, x19
	bl	__ZN9benchmark9BenchmarkC2ERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE
Ltmp3:
; %bb.7:
Lloh0:
	adrp	x8, __ZTVN9benchmark8internal17FunctionBenchmarkE@GOTPAGE
Lloh1:
	ldr	x8, [x8, __ZTVN9benchmark8internal17FunctionBenchmarkE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x19]
	str	x21, [x19, #296]
	str	x19, [x20]
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB0_9
; %bb.8:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB0_9:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB0_10:
Ltmp5:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev
Ltmp6:
; %bb.11:
	brk	#0x1
LBB0_12:
Ltmp4:
	mov	x20, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB0_15
; %bb.13:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	b	LBB0_15
LBB0_14:
Ltmp7:
	mov	x20, x0
LBB0_15:
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh0, Lloh1
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp7-Lfunc_begin0             ;     jumps to Ltmp7
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp2-Ltmp1                    ;   Call between Ltmp1 and Ltmp2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp2-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp3-Ltmp2                    ;   Call between Ltmp2 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0             ;     jumps to Ltmp7
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 6 <<
	.uleb128 Lfunc_end0-Ltmp6               ;   Call between Ltmp6 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZL9BM_AccessRN9benchmark5StateE
__ZL9BM_AccessRN9benchmark5StateE:      ; @_ZL9BM_AccessRN9benchmark5StateE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
	mov	w8, #7
	str	w8, [sp, #12]
	add	x8, sp, #12
	; InlineAsm Start
	; InlineAsm End
	ldr	w21, [x0, #28]
	ldr	x20, [x0, #16]
	bl	__ZN9benchmark5State16StartKeepRunningEv
	cmp	w21, #0
	ccmp	x20, #0, #4, eq
	b.eq	LBB1_4
; %bb.1:
	add	x8, sp, #8
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #12]
	mul	w9, w9, w9
	str	w9, [sp, #8]
	; InlineAsm Start
	; InlineAsm End
	cmp	x20, #0
	b.le	LBB1_5
; %bb.3:                                ;   in Loop: Header=BB1_2 Depth=1
	subs	x20, x20, #1
	b.ne	LBB1_2
LBB1_4:
	mov	x0, x19
	bl	__ZN9benchmark5State17FinishKeepRunningEv
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB1_5:
	bl	__ZL9BM_AccessRN9benchmark5StateE.cold.1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	w0, [sp, #20]
	bl	__ZN9benchmark23MaybeReenterWithoutASLREiPPc
Lloh5:
	adrp	x8, l___const.main.arg0_default@PAGE
Lloh6:
	add	x8, x8, l___const.main.arg0_default@PAGEOFF
Lloh7:
	ldr	x8, [x8]
	str	x8, [sp, #24]
	mov	w8, #107
	strh	w8, [sp, #32]
	add	x8, sp, #24
	str	x8, [sp, #8]
	cbnz	x19, LBB2_2
; %bb.1:
	mov	w8, #1
	str	w8, [sp, #20]
	add	x19, sp, #8
LBB2_2:
Lloh8:
	adrp	x2, __ZN9benchmark16PrintDefaultHelpEv@GOTPAGE
Lloh9:
	ldr	x2, [x2, __ZN9benchmark16PrintDefaultHelpEv@GOTPAGEOFF]
	add	x0, sp, #20
	mov	x1, x19
	bl	__ZN9benchmark10InitializeEPiPPcPFvvE
	ldr	w0, [sp, #20]
	mov	x1, x19
	bl	__ZN9benchmark27ReportUnrecognizedArgumentsEiPPc
	tbz	w0, #0, LBB2_4
; %bb.3:
	mov	w0, #1
	b	LBB2_5
LBB2_4:
	bl	__ZN9benchmark22RunSpecifiedBenchmarksEv
	bl	__ZN9benchmark8ShutdownEv
	mov	w0, #0
LBB2_5:
	ldur	x8, [x29, #-24]
Lloh10:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh11:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh12:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_7
; %bb.6:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB2_7:
	bl	___stack_chk_fail
	.loh AdrpAddLdr	Lloh5, Lloh6, Lloh7
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh13:
	adrp	x0, l_.str.4@PAGE
Lloh14:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ue170006EPKc
	.loh AdrpAdd	Lloh13, Lloh14
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ue170006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ue170006EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ue170006EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ue170006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ue170006EPKc: ; @_ZNSt3__120__throw_length_errorB8ue170006EPKc
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp8:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ue170006EPKc
Ltmp9:
; %bb.1:
Lloh15:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh16:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh17:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh18:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB4_2:
Ltmp10:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh15, Lloh16
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp8-Lfunc_begin1             ;   Call between Lfunc_begin1 and Ltmp8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Ltmp9-Ltmp8                    ;   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin1            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin1             ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp9               ;   Call between Ltmp9 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ue170006EPKc ; -- Begin function _ZNSt12length_errorC1B8ue170006EPKc
	.globl	__ZNSt12length_errorC1B8ue170006EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ue170006EPKc
	.p2align	2
__ZNSt12length_errorC1B8ue170006EPKc:   ; @_ZNSt12length_errorC1B8ue170006EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh19:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh20:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh19, Lloh20
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	2                               ; -- Begin function _GLOBAL__sub_I_bench_memory.cpp
__GLOBAL__sub_I_bench_memory.cpp:       ; @_GLOBAL__sub_I_bench_memory.cpp
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	bl	__ZN9benchmark8internal17InitializeStreamsEv
Lloh21:
	adrp	x8, __ZL9BM_AccessRN9benchmark5StateE@PAGE
Lloh22:
	add	x8, x8, __ZL9BM_AccessRN9benchmark5StateE@PAGEOFF
	str	x8, [sp, #8]
Lloh23:
	adrp	x0, l_.str@PAGE
Lloh24:
	add	x0, x0, l_.str@PAGEOFF
	add	x8, sp, #16
	add	x1, sp, #8
	bl	__ZNSt3__111make_uniqueB8ue170006IN9benchmark8internal17FunctionBenchmarkEJRA10_KcPFvRNS1_5StateEEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_
	ldr	x8, [sp, #16]
	stp	xzr, x8, [sp, #16]
Ltmp11:
	add	x0, sp, #24
	bl	__ZN9benchmark8internal25RegisterBenchmarkInternalENSt3__110unique_ptrINS_9BenchmarkENS1_14default_deleteIS3_EEEE
Ltmp12:
; %bb.1:
	mov	x19, x0
	ldr	x0, [sp, #24]
	str	xzr, [sp, #24]
	cbz	x0, LBB6_3
; %bb.2:
	ldr	x8, [x0]
	ldr	x8, [x8, #8]
	blr	x8
LBB6_3:
	ldr	x0, [sp, #16]
	str	xzr, [sp, #16]
	cbz	x0, LBB6_5
; %bb.4:
	ldr	x8, [x0]
	ldr	x8, [x8, #8]
	blr	x8
LBB6_5:
	adrp	x8, __ZL27benchmark_uniq_2_benchmark_@PAGE
	str	x19, [x8, __ZL27benchmark_uniq_2_benchmark_@PAGEOFF]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB6_6:
Ltmp13:
	mov	x19, x0
	ldr	x0, [sp, #24]
	str	xzr, [sp, #24]
	cbz	x0, LBB6_8
; %bb.7:
	ldr	x8, [x0]
	ldr	x8, [x8, #8]
	blr	x8
LBB6_8:
	add	x0, sp, #16
	bl	__GLOBAL__sub_I_bench_memory.cpp.cold.1
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp11-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp12-Ltmp11                  ;   Call between Ltmp11 and Ltmp12
	.uleb128 Ltmp13-Lfunc_begin2            ;     jumps to Ltmp13
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp12              ;   Call between Ltmp12 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZL9BM_AccessRN9benchmark5StateE.cold.1
__ZL9BM_AccessRN9benchmark5StateE.cold.1: ; @_ZL9BM_AccessRN9benchmark5StateE.cold.1
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh25:
	adrp	x0, l___func__._ZN9benchmark5State13StateIteratorppEv@PAGE
Lloh26:
	add	x0, x0, l___func__._ZN9benchmark5State13StateIteratorppEv@PAGEOFF
Lloh27:
	adrp	x1, l_.str.2@PAGE
Lloh28:
	add	x1, x1, l_.str.2@PAGEOFF
Lloh29:
	adrp	x3, l_.str.3@PAGE
Lloh30:
	add	x3, x3, l_.str.3@PAGEOFF
	mov	w2, #1097
	bl	___assert_rtn
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh25, Lloh26
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	2                               ; -- Begin function _GLOBAL__sub_I_bench_memory.cpp.cold.1
__GLOBAL__sub_I_bench_memory.cpp.cold.1: ; @_GLOBAL__sub_I_bench_memory.cpp.cold.1
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	ldr	x0, [x0]
	str	xzr, [x8]
	cbz	x0, LBB8_2
; %bb.1:
	ldr	x8, [x0]
	ldr	x8, [x8, #8]
	blr	x8
LBB8_2:
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,__ZL27benchmark_uniq_2_benchmark_,8,3 ; @_ZL27benchmark_uniq_2_benchmark_
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"BM_Access"

l___const.main.arg0_default:            ; @__const.main.arg0_default
	.asciz	"benchmark"

l___func__._ZN9benchmark5State13StateIteratorppEv: ; @__func__._ZN9benchmark5State13StateIteratorppEv
	.asciz	"operator++"

l_.str.2:                               ; @.str.2
	.asciz	"benchmark.h"

l_.str.3:                               ; @.str.3
	.asciz	"cached_ > 0"

l_.str.4:                               ; @.str.4
	.asciz	"basic_string"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3, 0x0
	.quad	__GLOBAL__sub_I_bench_memory.cpp
.subsections_via_symbols
