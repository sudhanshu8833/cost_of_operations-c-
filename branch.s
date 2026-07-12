	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI0_0:
	.long	1                               ; 0x1
	.long	1000                            ; 0x3e8
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x28, x27, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w27, -40
	.cfi_offset w28, -48
	mov	w9, #6544
Lloh0:
	adrp	x16, ___chkstk_darwin@GOTPAGE
Lloh1:
	ldr	x16, [x16, ___chkstk_darwin@GOTPAGEOFF]
	blr	x16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #2448
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
	mov	w8, #5489
	str	w8, [sp, #24]
	mov	w9, #1
	mov	w10, #35173
	movk	w10, #27655, lsl #16
	add	x11, sp, #24
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	eor	w8, w8, w8, lsr #30
	madd	w8, w8, w10, w9
	str	w8, [x11, x9, lsl #2]
	add	x9, x9, #1
	cmp	x9, #624
	b.ne	LBB0_1
; %bb.2:
	str	xzr, [sp, #2520]
Lloh5:
	adrp	x8, lCPI0_0@PAGE
Lloh6:
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	str	d0, [sp, #16]
	add	x19, sp, #2536
	add	x0, sp, #2536
	mov	w1, #4000
	bl	_bzero
	mov	x20, #0
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #16
	add	x1, sp, #24
	add	x2, sp, #16
	bl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	str	w0, [x19, x20]
	add	x20, x20, #4
	cmp	x20, #4000
	b.ne	LBB0_3
; %bb.4:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	mov	x8, #0
	str	xzr, [sp, #8]
	add	x9, sp, #2536
	add	x10, sp, #8
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	add	x8, x8, #4
	cmp	x8, #4000
	b.eq	LBB0_8
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x9, x8]
	cmp	w11, #501
	b.lt	LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	ldr	x12, [sp, #8]
	add	x11, x12, x11
	str	x11, [sp, #8]
	add	x11, x9, x8
	; InlineAsm Start
	; InlineAsm End
	; InlineAsm Start
	; InlineAsm End
	b	LBB0_5
LBB0_8:
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x19, x0, x19
Lloh7:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh8:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh9:
	adrp	x1, l_.str@PAGE
Lloh10:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #9
	bl	__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #2528
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
Lloh11:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh12:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2528
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
; %bb.9:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp2:
	mov	w1, #10
	blr	x8
Ltmp3:
; %bb.10:
	mov	x20, x0
	add	x0, sp, #2528
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldr	x1, [sp, #8]
Lloh13:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh14:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #2528
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp5:
Lloh15:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh16:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #2528
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp6:
; %bb.11:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp7:
	mov	w1, #10
	blr	x8
Ltmp8:
; %bb.12:
	mov	x20, x0
	add	x0, sp, #2528
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldur	x8, [x29, #-40]
Lloh17:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh18:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh19:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_14
; %bb.13:
	mov	w0, #0
	add	sp, sp, #1, lsl #12             ; =4096
	add	sp, sp, #2448
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #48             ; 16-byte Folded Reload
	ret
LBB0_14:
	bl	___stack_chk_fail
LBB0_15:
Ltmp9:
	b	LBB0_17
LBB0_16:
Ltmp4:
LBB0_17:
	mov	x19, x0
	add	x0, sp, #2528
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpLdr	Lloh5, Lloh6
	.loh AdrpLdrGot	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh7, Lloh8
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpLdrGotLdr	Lloh17, Lloh18, Lloh19
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
	.uleb128 Ltmp3-Ltmp0                    ;   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp5-Ltmp3                    ;   Call between Ltmp3 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp8-Ltmp5                    ;   Call between Ltmp5 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin0             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp8               ;   Call between Ltmp8 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE ; -- Begin function _ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.p2align	2
__ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE: ; @_ZNSt3__124uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
; %bb.0:
	ldp	w8, w0, [x2]
	subs	w11, w0, w8
	b.eq	LBB1_5
; %bb.1:
	mov	w8, #-272236544
	mov	w9, #22144
	movk	w9, #40236, lsl #16
	mov	w10, #45279
	movk	w10, #39176, lsl #16
	add	w11, w11, #1
	cbz	w11, LBB1_6
; %bb.2:
	clz	w12, w11
	lsl	w13, w11, w12
	tst	w13, #0x7fffffff
	mov	w13, #31
	cinc	x13, x13, ne
	sub	x12, x13, x12
	lsr	x13, x12, #5
	tst	x12, #0x1f
	cinc	x13, x13, ne
	cmp	x13, x12
	udiv	x12, x12, x13
	neg	w12, w12
	mov	w13, #-1
	lsr	w12, w13, w12
	csel	w12, wzr, w12, hi
	ldr	x15, [x1, #2496]
	mov	x13, #3361
	movk	x13, #8402, lsl #16
	movk	x13, #53773, lsl #32
	movk	x13, #3360, lsl #48
	mov	w14, #624
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	add	x16, x15, #1
	lsr	x17, x16, #4
	umulh	x17, x17, x13
	lsr	x17, x17, #1
	lsl	x0, x15, #2
	add	x3, x15, #397
	msub	x15, x17, x14, x16
	ldr	w16, [x1, x0]
	and	w16, w16, #0x80000000
	ldr	w17, [x1, x15, lsl #2]
	and	w4, w17, #0x7ffffffe
	orr	w16, w4, w16
	lsr	x4, x3, #4
	umulh	x4, x4, x13
	lsr	x4, x4, #1
	msub	x3, x4, x14, x3
	ldr	w3, [x1, x3, lsl #2]
	eor	w16, w3, w16, lsr #1
	sbfx	w17, w17, #0, #1
	and	w17, w17, w10
	eor	w16, w16, w17
	str	w16, [x1, x0]
	eor	w16, w16, w16, lsr #11
	and	w17, w9, w16, lsl #7
	eor	w16, w17, w16
	and	w17, w8, w16, lsl #15
	eor	w16, w17, w16
	eor	w16, w16, w16, lsr #18
	and	w16, w16, w12
	cmp	w16, w11
	b.hs	LBB1_3
; %bb.4:
	str	x15, [x1, #2496]
	ldr	w8, [x2]
	add	w0, w8, w16
LBB1_5:
	ret
LBB1_6:
	ldr	x11, [x1, #2496]
	add	x12, x11, #1
	lsr	x13, x12, #4
	mov	x14, #3361
	movk	x14, #8402, lsl #16
	movk	x14, #53773, lsl #32
	movk	x14, #3360, lsl #48
	umulh	x13, x13, x14
	lsr	x13, x13, #1
	mov	w15, #624
	msub	x12, x13, x15, x12
	lsl	x13, x11, #2
	ldr	w16, [x1, x13]
	and	w16, w16, #0x80000000
	ldr	w17, [x1, x12, lsl #2]
	and	w0, w17, #0x7ffffffe
	orr	w16, w0, w16
	add	x11, x11, #397
	lsr	x0, x11, #4
	umulh	x14, x0, x14
	lsr	x14, x14, #1
	msub	x11, x14, x15, x11
	ldr	w11, [x1, x11, lsl #2]
	eor	w11, w11, w16, lsr #1
	sbfx	w14, w17, #0, #1
	and	w10, w14, w10
	eor	w10, w11, w10
	str	w10, [x1, x13]
	eor	w10, w10, w10, lsr #11
	str	x12, [x1, #2496]
	and	w9, w9, w10, lsl #7
	eor	w9, w9, w10
	and	w8, w8, w9, lsl #15
	eor	w8, w8, w9
	eor	w0, w8, w8, lsr #18
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
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
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp10:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp11:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB2_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB2_7
; %bb.3:
Ltmp13:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp14:
; %bb.4:
Ltmp15:
Lloh20:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh21:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp16:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp17:
	mov	w1, #32
	blr	x8
Ltmp18:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB2_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp20:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp21:
; %bb.8:
	cbnz	x0, LBB2_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp23:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp24:
LBB2_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB2_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB2_12:
Ltmp25:
	b	LBB2_15
LBB2_13:
Ltmp19:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB2_16
LBB2_14:
Ltmp22:
LBB2_15:
	mov	x20, x0
LBB2_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB2_18
LBB2_17:
Ltmp12:
	mov	x20, x0
LBB2_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp26:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp27:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB2_11
LBB2_20:
Ltmp28:
	mov	x19, x0
Ltmp29:
	bl	___cxa_end_catch
Ltmp30:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_22:
Ltmp31:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh20, Lloh21
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp10-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin1            ;     jumps to Ltmp12
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp13-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp14-Ltmp13                  ;   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp22-Lfunc_begin1            ;     jumps to Ltmp22
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp15-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp18-Ltmp15                  ;   Call between Ltmp15 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin1            ;     jumps to Ltmp19
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp20-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp21-Ltmp20                  ;   Call between Ltmp20 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin1            ;     jumps to Ltmp22
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp23-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp24-Ltmp23                  ;   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp25-Lfunc_begin1            ;     jumps to Ltmp25
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp24-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Ltmp26-Ltmp24                  ;   Call between Ltmp24 and Ltmp26
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin1            ; >> Call Site 7 <<
	.uleb128 Ltmp27-Ltmp26                  ;   Call between Ltmp26 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin1            ;     jumps to Ltmp28
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin1            ; >> Call Site 8 <<
	.uleb128 Ltmp29-Ltmp27                  ;   Call between Ltmp27 and Ltmp29
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin1            ; >> Call Site 9 <<
	.uleb128 Ltmp30-Ltmp29                  ;   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin1            ;     jumps to Ltmp31
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp30-Lfunc_begin1            ; >> Call Site 10 <<
	.uleb128 Lfunc_end1-Ltmp30              ;   Call between Ltmp30 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
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
	mov	x19, x0
	cbz	x0, LBB3_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB3_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB3_15
LBB3_3:
	cmp	x23, #1
	b.lt	LBB3_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB3_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB3_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB3_8
LBB3_7:
	orr	x8, x23, #0xf
	add	x26, x8, #1
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB3_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp32:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp33:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB3_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB3_15
	b	LBB3_12
LBB3_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB3_15
LBB3_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB3_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB3_15
LBB3_14:
	str	xzr, [x20, #24]
	b	LBB3_16
LBB3_15:
	mov	x19, #0
LBB3_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB3_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev
LBB3_18:
Ltmp34:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB3_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB3_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp32-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp32
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp33-Ltmp32                  ;   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp34-Lfunc_begin2            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp33              ;   Call between Ltmp33 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
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
Lloh22:
	adrp	x0, l_.str.1@PAGE
Lloh23:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ue170006EPKc
	.loh AdrpAdd	Lloh22, Lloh23
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ue170006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ue170006EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ue170006EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ue170006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ue170006EPKc: ; @_ZNSt3__120__throw_length_errorB8ue170006EPKc
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
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
Ltmp35:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ue170006EPKc
Ltmp36:
; %bb.1:
Lloh24:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh25:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh26:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh27:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB6_2:
Ltmp37:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh24, Lloh25
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp35-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp35
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp36-Ltmp35                  ;   Call between Ltmp35 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin3            ;     jumps to Ltmp37
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp36              ;   Call between Ltmp36 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
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
Lloh28:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh29:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh28, Lloh29
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	2                               ; -- Begin function _GLOBAL__sub_I_branch_misprediction.cpp
__GLOBAL__sub_I_branch_misprediction.cpp: ; @_GLOBAL__sub_I_branch_misprediction.cpp
	.cfi_startproc
; %bb.0:
	b	__ZN9benchmark8internal17InitializeStreamsEv
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Time is: "

l_.str.1:                               ; @.str.1
	.asciz	"basic_string"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3, 0x0
	.quad	__GLOBAL__sub_I_branch_misprediction.cpp
.subsections_via_symbols
