	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_08012D30
sub_08012D30: @ 0x08012D30
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	bl sub_08001D3C
	ldr r1, _08012D60 @ =gUnk_03006590
	ldr r1, [r1, #0x28]
	bl LZ77UnCompWram
	movs r0, #4
	adds r1, r4, #0
	bl sub_08012F0C
	movs r0, #0xc0
	lsls r0, r0, #1
	movs r1, #0
	bl sub_08012F0C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012D60: .4byte gUnk_03006590

	thumb_func_start sub_08012D64
sub_08012D64: @ 0x08012D64
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, _08012DBC @ =gUnk_03006590
	lsls r4, r0, #4
	adds r4, r4, r0
	lsls r4, r4, #2
	subs r4, r4, r0
	lsls r4, r4, #2
	adds r6, r4, r5
	movs r0, #1
	mov r8, r0
	lsls r0, r1
	ldrb r3, [r6]
	orrs r0, r3
	strb r0, [r6]
	lsls r3, r1, #3
	subs r3, r3, r1
	lsls r3, r3, #2
	adds r3, r3, r4
	adds r0, r3, r5
	adds r0, #0x2c
	mov r1, r8
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x30
	adds r3, r3, r0
	adds r5, #0x28
	adds r4, r4, r5
	ldr r1, _08012DC0 @ =0x0000FFFE
	ands r1, r2
	adds r1, #0x10
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012DBC: .4byte gUnk_03006590
_08012DC0: .4byte 0x0000FFFE

	thumb_func_start sub_08012DC4
sub_08012DC4: @ 0x08012DC4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08012DDC @ =gUnk_03006590
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08012DDC: .4byte gUnk_03006590

	thumb_func_start sub_08012DE0
sub_08012DE0: @ 0x08012DE0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08012E08 @ =gUnk_03006590
	lsls r2, r0, #4
	adds r2, r2, r0
	lsls r2, r2, #2
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	ldrb r0, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08012E0C
	movs r0, #0
	b _08012E0E
	.align 2, 0
_08012E08: .4byte gUnk_03006590
_08012E0C:
	movs r0, #1
_08012E0E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08012E14
sub_08012E14: @ 0x08012E14
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08012E6C @ =gUnk_03006590
	mov ip, r3
	lsls r5, r1, #3
	subs r5, r5, r1
	lsls r5, r5, #2
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r4, r5, r1
	mov r0, ip
	adds r0, #0x30
	adds r4, r4, r0
	subs r0, #8
	adds r0, r1, r0
	ldr r3, _08012E70 @ =0x0000FFFE
	ands r3, r2
	adds r3, #0x10
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [r4]
	ldr r2, _08012E74 @ =gUnk_03006574
	mov r0, ip
	adds r0, #0x2c
	adds r1, r1, r0
	adds r1, r1, r5
	str r1, [r2]
	ldr r0, [r1, #4]
	ldrh r2, [r0]
	strh r2, [r1, #2]
	adds r0, #2
	str r0, [r1, #4]
	bl sub_080127E4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012E6C: .4byte gUnk_03006590
_08012E70: .4byte 0x0000FFFE
_08012E74: .4byte gUnk_03006574

	thumb_func_start sub_08012E78
sub_08012E78: @ 0x08012E78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08012E9C @ =gUnk_03006590
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r3, #0x30
	adds r1, r1, r3
	ldr r0, [r1]
	bx lr
	.align 2, 0
_08012E9C: .4byte gUnk_03006590

	thumb_func_start sub_08012EA0
sub_08012EA0: @ 0x08012EA0
	ldr r1, _08012EB8 @ =gUnk_03006574
	ldr r3, [r1]
	ldr r1, _08012EBC @ =gUnk_03006578
	ldr r2, [r1]
	ldr r1, _08012EC0 @ =0x0000FFFE
	ands r1, r0
	adds r1, #0x10
	ldr r0, [r2, #0x28]
	adds r0, r0, r1
	str r0, [r3, #4]
	bx lr
	.align 2, 0
_08012EB8: .4byte gUnk_03006574
_08012EBC: .4byte gUnk_03006578
_08012EC0: .4byte 0x0000FFFE

	thumb_func_start sub_08012EC4
sub_08012EC4: @ 0x08012EC4
	ldr r0, _08012ECC @ =gUnk_03006574
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_08012ECC: .4byte gUnk_03006574

	thumb_func_start sub_08012ED0
sub_08012ED0: @ 0x08012ED0
	ldr r0, _08012EDC @ =gUnk_03006578
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08012EDC: .4byte gUnk_03006578

	thumb_func_start sub_08012EE0
sub_08012EE0: @ 0x08012EE0
	ldr r0, _08012EF0 @ =gUnk_03006574
	ldr r2, [r0]
	ldr r1, [r2, #4]
	ldrh r0, [r1]
	adds r1, #2
	str r1, [r2, #4]
	bx lr
	.align 2, 0
_08012EF0: .4byte gUnk_03006574

	thumb_func_start sub_08012EF4
sub_08012EF4: @ 0x08012EF4
	ldr r0, _08012F08 @ =gUnk_03006574
	ldr r2, [r0]
	ldr r1, [r2, #4]
	ldrh r0, [r1]
	adds r1, #2
	str r1, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08012F08: .4byte gUnk_03006574

	thumb_func_start sub_08012F0C
sub_08012F0C: @ 0x08012F0C
	push {lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r2, #0
	cmp r2, #0x3f
	bhi _08012F2C
	ldr r0, _08012F28 @ =gUnk_030067B0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	b _08012F54
	.align 2, 0
_08012F28: .4byte gUnk_030067B0
_08012F2C:
	ldr r0, _08012F40 @ =0x0000017F
	cmp r2, r0
	bhi _08012F48
	ldr r0, _08012F44 @ =gUnk_0300657C
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	subs r0, #0x80
	strh r3, [r0]
	b _08012F54
	.align 2, 0
_08012F40: .4byte 0x0000017F
_08012F44: .4byte gUnk_0300657C
_08012F48:
	ldr r0, _08012F58 @ =gUnk_03006584
	ldr r0, [r0]
	adds r0, r1, r0
	ldr r1, _08012F5C @ =0xFFFFFE80
	adds r0, r0, r1
	strb r3, [r0]
_08012F54:
	pop {r0}
	bx r0
	.align 2, 0
_08012F58: .4byte gUnk_03006584
_08012F5C: .4byte 0xFFFFFE80

	thumb_func_start sub_08012F60
sub_08012F60: @ 0x08012F60
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r2, #0
	cmp r2, #0x3f
	bhi _08012F7C
	ldr r0, _08012F78 @ =gUnk_030067B0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _08012FAC
	.align 2, 0
_08012F78: .4byte gUnk_030067B0
_08012F7C:
	ldr r0, _08012F94 @ =0x0000017F
	cmp r2, r0
	bhi _08012F9C
	ldr r0, _08012F98 @ =gUnk_0300657C
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	subs r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _08012FAC
	.align 2, 0
_08012F94: .4byte 0x0000017F
_08012F98: .4byte gUnk_0300657C
_08012F9C:
	ldr r0, _08012FB0 @ =gUnk_03006584
	ldr r0, [r0]
	adds r0, r1, r0
	ldr r1, _08012FB4 @ =0xFFFFFE80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08012FAC:
	pop {r1}
	bx r1
	.align 2, 0
_08012FB0: .4byte gUnk_03006584
_08012FB4: .4byte 0xFFFFFE80

	thumb_func_start sub_08012FB8
sub_08012FB8: @ 0x08012FB8
	push {r4, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0x1f
	bhi _08012FD8
	ldr r0, _08012FD4 @ =gUnk_030067AC
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r3, [r0]
	b _0801302A
	.align 2, 0
_08012FD4: .4byte gUnk_030067AC
_08012FD8:
	cmp r2, #0xff
	bhi _08012FEC
	ldr r0, _08012FE8 @ =gUnk_03006570
	ldr r0, [r0]
	adds r0, r2, r0
	subs r0, #0x20
	strb r3, [r0]
	b _0801302A
	.align 2, 0
_08012FE8: .4byte gUnk_03006570
_08012FEC:
	movs r4, #7
	ands r4, r2
	cmp r3, #0
	bne _08013014
	ldr r1, _0801300C @ =0xFFFFFF00
	adds r0, r2, r1
	asrs r0, r0, #3
	ldr r1, _08013010 @ =gUnk_030067A8
	ldr r2, [r1]
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r4
	ldrb r0, [r2]
	bics r0, r1
	b _08013028
	.align 2, 0
_0801300C: .4byte 0xFFFFFF00
_08013010: .4byte gUnk_030067A8
_08013014:
	ldr r1, _08013030 @ =0xFFFFFF00
	adds r0, r0, r1
	asrs r0, r0, #3
	ldr r1, _08013034 @ =gUnk_030067A8
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r2]
	orrs r0, r1
_08013028:
	strb r0, [r2]
_0801302A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013030: .4byte 0xFFFFFF00
_08013034: .4byte gUnk_030067A8

	thumb_func_start sub_08013038
sub_08013038: @ 0x08013038
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, r3, #0
	cmp r3, #0x1f
	bhi _08013058
	ldr r0, _08013054 @ =gUnk_030067AC
	ldr r1, [r0]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _08013092
	.align 2, 0
_08013054: .4byte gUnk_030067AC
_08013058:
	cmp r3, #0xff
	bls _08013084
	movs r2, #7
	ands r2, r3
	ldr r0, _0801307C @ =0xFFFFFF00
	adds r1, r3, r0
	asrs r1, r1, #3
	ldr r0, _08013080 @ =gUnk_030067A8
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	b _08013092
	.align 2, 0
_0801307C: .4byte 0xFFFFFF00
_08013080: .4byte gUnk_030067A8
_08013084:
	ldr r0, _08013098 @ =gUnk_03006570
	ldr r0, [r0]
	adds r0, r1, r0
	subs r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08013092:
	pop {r1}
	bx r1
	.align 2, 0
_08013098: .4byte gUnk_03006570

	thumb_func_start sub_0801309C
sub_0801309C: @ 0x0801309C
	push {lr}
	ldr r0, _080130BC @ =gUnk_03006574
	ldr r2, [r0]
	ldr r0, [r2, #4]
	ldrh r1, [r0]
	strh r1, [r2, #2]
	adds r0, #2
	str r0, [r2, #4]
	bl sub_080127E4
	ldr r0, _080130C0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	pop {r0}
	bx r0
	.align 2, 0
_080130BC: .4byte gUnk_03006574
_080130C0: .4byte gUnk_03006578

	thumb_func_start sub_080130C4
sub_080130C4: @ 0x080130C4
	push {r4, lr}
	ldr r1, _080130F4 @ =gUnk_08B716B4
	ldr r4, _080130F8 @ =gUnk_03006574
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080130EE
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r2, [r1]
	strh r2, [r0, #2]
	adds r1, #2
	str r1, [r0, #4]
	bl sub_080127E4
_080130EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080130F4: .4byte gUnk_08B716B4
_080130F8: .4byte gUnk_03006574

	thumb_func_start sub_080130FC
sub_080130FC: @ 0x080130FC
	push {r4, lr}
	ldr r1, _0801312C @ =gUnk_08B716F4
	ldr r4, _08013130 @ =gUnk_03006574
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08013126
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r2, [r1]
	strh r2, [r0, #2]
	adds r1, #2
	str r1, [r0, #4]
	bl sub_080127E4
_08013126:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801312C: .4byte gUnk_08B716F4
_08013130: .4byte gUnk_03006574

	thumb_func_start sub_08013134
sub_08013134: @ 0x08013134
	push {r4, lr}
	ldr r1, _08013164 @ =gUnk_08B71750
	ldr r4, _08013168 @ =gUnk_03006574
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801315E
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r2, [r1]
	strh r2, [r0, #2]
	adds r1, #2
	str r1, [r0, #4]
	bl sub_080127E4
_0801315E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013164: .4byte gUnk_08B71750
_08013168: .4byte gUnk_03006574

	thumb_func_start sub_0801316C
sub_0801316C: @ 0x0801316C
	push {r4, lr}
	ldr r1, _0801319C @ =gUnk_08B718B0
	ldr r4, _080131A0 @ =gUnk_03006574
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08013196
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r2, [r1]
	strh r2, [r0, #2]
	adds r1, #2
	str r1, [r0, #4]
	bl sub_080127E4
_08013196:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801319C: .4byte gUnk_08B718B0
_080131A0: .4byte gUnk_03006574

	thumb_func_start sub_080131A4
sub_080131A4: @ 0x080131A4
	push {r4, lr}
	ldr r1, _080131D4 @ =gUnk_08B71AEC
	ldr r4, _080131D8 @ =gUnk_03006574
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080131CE
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r2, [r1]
	strh r2, [r0, #2]
	adds r1, #2
	str r1, [r0, #4]
	bl sub_080127E4
_080131CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080131D4: .4byte gUnk_08B71AEC
_080131D8: .4byte gUnk_03006574

	thumb_func_start sub_080131DC
sub_080131DC: @ 0x080131DC
	push {r4, r5, lr}
	ldr r5, _08013218 @ =gUnk_03006574
	ldr r1, [r5]
	ldr r0, [r1, #4]
	ldrh r2, [r0]
	adds r0, #2
	str r0, [r1, #4]
	lsls r4, r2, #0x10
	bl sub_08012578
	cmp r0, #0
	bne _08013206
	ldr r2, [r5]
	ldr r0, _0801321C @ =gUnk_03006578
	ldr r0, [r0]
	lsrs r1, r4, #0x11
	lsls r1, r1, #1
	adds r1, #0x10
	ldr r0, [r0, #0x28]
	adds r0, r0, r1
	str r0, [r2, #4]
_08013206:
	ldr r0, _0801321C @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08013218: .4byte gUnk_03006574
_0801321C: .4byte gUnk_03006578

	thumb_func_start sub_08013220
sub_08013220: @ 0x08013220
	ldr r0, _08013244 @ =gUnk_03006574
	ldr r2, [r0]
	ldr r0, [r2, #4]
	ldrh r1, [r0]
	adds r0, #2
	str r0, [r2, #4]
	ldr r0, _08013248 @ =gUnk_03006578
	ldr r3, [r0]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, #0x10
	ldr r0, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #1
	strb r0, [r3, #1]
	movs r0, #0
	bx lr
	.align 2, 0
_08013244: .4byte gUnk_03006574
_08013248: .4byte gUnk_03006578

	thumb_func_start sub_0801324C
sub_0801324C: @ 0x0801324C
	push {lr}
	bl sub_08012578
	ldr r2, _08013270 @ =gUnk_03006590
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x2c
	movs r0, #9
	strb r0, [r1]
	ldr r0, _08013274 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08013270: .4byte gUnk_03006590
_08013274: .4byte gUnk_03006578

	thumb_func_start sub_08013278
sub_08013278: @ 0x08013278
	push {lr}
	bl sub_08012578
	ldr r2, _080132A4 @ =gUnk_03006590
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r0, _080132A8 @ =gUnk_030067B0
	ldr r0, [r0]
	str r1, [r0, #0x1c]
	ldr r0, _080132AC @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080132A4: .4byte gUnk_03006590
_080132A8: .4byte gUnk_030067B0
_080132AC: .4byte gUnk_03006578

	thumb_func_start sub_080132B0
sub_080132B0: @ 0x080132B0
	movs r0, #0
	bx lr

	thumb_func_start sub_080132B4
sub_080132B4: @ 0x080132B4
	push {lr}
	movs r0, #0
	ldr r1, _080132C8 @ =gUnk_030067B0
	ldr r1, [r1]
	str r0, [r1, #0x10]
	bl sub_08001AEC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080132C8: .4byte gUnk_030067B0

	thumb_func_start sub_080132CC
sub_080132CC: @ 0x080132CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r5, _080132FC @ =gUnk_030067C0
	ldr r1, _08013300 @ =gUnk_080BAB18
	mov r0, sp
	movs r2, #0x40
	bl memcpy
	adds r3, r5, #0
	adds r3, #0x3a
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	bne _08013308
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _08013304
	movs r0, #1
	strb r0, [r3]
	b _08013308
	.align 2, 0
_080132FC: .4byte gUnk_030067C0
_08013300: .4byte gUnk_080BAB18
_08013304:
	subs r0, r2, #1
	strh r0, [r1]
_08013308:
	adds r0, r5, #0
	adds r0, #0x3a
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #1
	beq _08013318
	b _080134EE
_08013318:
	movs r0, #0x3c
	ldrsh r6, [r5, r0]
	cmp r6, #1
	beq _08013392
	cmp r6, #1
	bgt _0801332A
	cmp r6, #0
	beq _08013338
	b _080134EE
_0801332A:
	cmp r6, #2
	bne _08013330
	b _0801349E
_08013330:
	cmp r6, #3
	bne _08013336
	b _080134B2
_08013336:
	b _080134EE
_08013338:
	str r6, [r5, #8]
	movs r0, #0x7f
	str r0, [r5, #0xc]
	movs r0, #4
	str r0, [r5]
	str r6, [r5, #4]
	str r6, [sp, #0x40]
	add r0, sp, #0x40
	ldr r1, [r5, #0x10]
	ldr r4, _08013398 @ =0x010007B7
	adds r2, r4, #0
	bl CpuFastSet
	str r6, [sp, #0x44]
	add r0, sp, #0x44
	ldr r1, [r5, #0x14]
	adds r2, r4, #0
	bl CpuFastSet
	ldr r1, [r5, #0x10]
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	ldr r2, _0801339C @ =0x00001ECC
	str r2, [r1, #0xc]
	movs r3, #0x60
	strb r3, [r1, #5]
	ldr r0, [r5, #0x10]
	movs r1, #0xf6
	strb r1, [r0, #6]
	ldr r0, [r5, #0x14]
	str r2, [r0, #0xc]
	strb r3, [r0, #5]
	ldr r0, [r5, #0x14]
	strb r1, [r0, #6]
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r2, [r5, #0x2c]
	str r6, [r5, #0x30]
	strh r6, [r5, #0x3e]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
_08013392:
	movs r4, #0x88
	lsls r4, r4, #1
	b _080133D4
	.align 2, 0
_08013398: .4byte 0x010007B7
_0801339C: .4byte 0x00001ECC
_080133A0:
	ldr r0, [r5, #0x2c]
	subs r1, r0, #1
	str r1, [r5, #0x2c]
	cmp r1, #0
	bne _080133CE
	ldr r0, _080133BC @ =0x00001ECC
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _080133C0
	str r2, [r5, #0x30]
	ldr r0, [r5, #0x14]
	b _080133C4
	.align 2, 0
_080133BC: .4byte 0x00001ECC
_080133C0:
	str r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
_080133C4:
	adds r0, #0x10
	str r0, [r5, #0x28]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	b _0801349A
_080133CE:
	subs r4, #1
	cmp r4, #0
	beq _080134AA
_080133D4:
	ldr r0, [r5, #0x1c]
	ldrb r3, [r0]
	ldr r0, [r5]
	asrs r3, r0
	movs r0, #0xf
	ands r3, r0
	movs r0, #7
	ands r0, r3
	lsls r0, r0, #1
	adds r0, #1
	ldr r1, [r5, #0xc]
	muls r0, r1, r0
	cmp r0, #0
	bge _080133F2
	adds r0, #7
_080133F2:
	asrs r2, r0, #3
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08013402
	ldr r0, [r5, #8]
	subs r0, r0, r2
	b _08013406
_08013402:
	ldr r0, [r5, #8]
	adds r0, r0, r2
_08013406:
	str r0, [r5, #8]
	ldr r2, [r5, #8]
	ldr r0, [r5, #0x34]
	ldr r6, _08013448 @ =0xFFFFF000
	adds r0, r0, r6
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r2, #0
	bge _0801341C
	ldr r6, _0801344C @ =0x00000FFF
	adds r0, r2, r6
_0801341C:
	asrs r2, r0, #0xc
	ldr r0, _08013450 @ =0x00007FFF
	cmp r2, r0
	bgt _0801342A
	ldr r0, _08013454 @ =0xFFFF8000
	cmp r2, r0
	bge _0801342C
_0801342A:
	adds r2, r0, #0
_0801342C:
	lsls r0, r3, #2
	add r0, sp
	ldr r0, [r0]
	muls r0, r1, r0
	cmp r0, #0
	bge _0801343A
	adds r0, #0x3f
_0801343A:
	asrs r0, r0, #6
	str r0, [r5, #0xc]
	cmp r0, #0x7e
	bgt _08013458
	movs r0, #0x7f
	str r0, [r5, #0xc]
	b _08013462
	.align 2, 0
_08013448: .4byte 0xFFFFF000
_0801344C: .4byte 0x00000FFF
_08013450: .4byte 0x00007FFF
_08013454: .4byte 0xFFFF8000
_08013458:
	movs r1, #0xc0
	lsls r1, r1, #7
	cmp r0, r1
	ble _08013462
	str r1, [r5, #0xc]
_08013462:
	ldr r1, [r5, #0x28]
	adds r0, r2, #0
	cmp r0, #0
	bge _0801346C
	adds r0, #0xff
_0801346C:
	asrs r0, r0, #8
	strb r0, [r1]
	ldr r0, [r5, #0x28]
	adds r0, #1
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #0x1c]
	movs r2, #1
	eors r1, r2
	str r1, [r5, #4]
	ldr r0, [r5]
	movs r1, #4
	eors r0, r1
	str r0, [r5]
	ldr r0, [r5, #0x24]
	subs r0, #1
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _080133A0
	strh r0, [r5, #0x3e]
	movs r0, #3
_0801349A:
	strh r0, [r5, #0x3c]
	b _080134AA
_0801349E:
	ldrh r0, [r5, #0x3e]
	cmp r0, #0x1e
	bne _080134AA
	movs r0, #0
	strh r1, [r5, #0x3c]
	strh r0, [r5, #0x3e]
_080134AA:
	ldrh r0, [r5, #0x3e]
	adds r0, #1
	strh r0, [r5, #0x3e]
	b _080134EE
_080134B2:
	ldrh r0, [r5, #0x3e]
	adds r0, #1
	strh r0, [r5, #0x3e]
	ldrh r1, [r5, #0x3e]
	adds r0, r5, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bne _080134EE
	adds r0, r5, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080134E0
	movs r0, #2
	strb r0, [r7]
	movs r0, #3
	bl sub_08014848
	b _080134EE
_080134E0:
	cmp r0, #1
	bne _080134EE
	movs r0, #1
	movs r1, #0
	movs r2, #5
	bl sub_08013644
_080134EE:
	movs r0, #0
	ldrsb r0, [r7, r0]
	add sp, #0x48
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080134FC
sub_080134FC: @ 0x080134FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x40
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r1, _0801354C @ =gUnk_080BAB18
	mov r0, sp
	movs r2, #0x40
	bl memcpy
	movs r2, #0
	movs r4, #0x7f
	movs r0, #4
	mov r8, r0
	mov ip, r2
	cmp r5, #0
	ble _080135B0
_08013522:
	ldrb r1, [r7]
	mov r0, r8
	asrs r1, r0
	movs r0, #0xf
	ands r1, r0
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #1
	muls r0, r4, r0
	cmp r0, #0
	bge _0801353C
	adds r0, #7
_0801353C:
	asrs r3, r0, #3
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013550
	subs r2, r2, r3
	b _08013552
	.align 2, 0
_0801354C: .4byte gUnk_080BAB18
_08013550:
	adds r2, r2, r3
_08013552:
	ldr r0, _08013578 @ =0x00007FFF
	cmp r2, r0
	bgt _0801355E
	ldr r0, _0801357C @ =0xFFFF8000
	cmp r2, r0
	bge _08013560
_0801355E:
	adds r2, r0, #0
_08013560:
	lsls r0, r1, #2
	add r0, sp
	ldr r0, [r0]
	muls r0, r4, r0
	cmp r0, #0
	bge _0801356E
	adds r0, #0x3f
_0801356E:
	asrs r4, r0, #6
	cmp r4, #0x7e
	bgt _08013580
	movs r4, #0x7f
	b _0801358A
	.align 2, 0
_08013578: .4byte 0x00007FFF
_0801357C: .4byte 0xFFFF8000
_08013580:
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r4, r0
	ble _0801358A
	adds r4, r0, #0
_0801358A:
	adds r0, r2, #0
	cmp r0, #0
	bge _08013592
	adds r0, #0xff
_08013592:
	asrs r0, r0, #8
	strb r0, [r6]
	adds r6, #1
	add r7, ip
	movs r0, #1
	mov r1, ip
	eors r1, r0
	mov ip, r1
	movs r0, #4
	mov r1, r8
	eors r1, r0
	mov r8, r1
	subs r5, #1
	cmp r5, #0
	bne _08013522
_080135B0:
	movs r0, #0
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080135C0
sub_080135C0: @ 0x080135C0
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _080135E0 @ =gUnk_030067C0
	ldr r2, _080135E4 @ =0x05000011
	mov r0, sp
	bl CpuSet
	movs r0, #3
	bl sub_08014848
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080135E0: .4byte gUnk_030067C0
_080135E4: .4byte 0x05000011

	thumb_func_start sub_080135E8
sub_080135E8: @ 0x080135E8
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _080135FC @ =gUnk_030067C0
	cmp r2, #0
	bne _08013600
	movs r0, #3
	bl sub_08014848
	b _08013620
	.align 2, 0
_080135FC: .4byte gUnk_030067C0
_08013600:
	ldr r0, _08013628 @ =gUnk_0203C000
	str r0, [r4, #0x10]
	ldr r0, _0801362C @ =gUnk_0203E000
	str r0, [r4, #0x14]
	movs r0, #0
	str r0, [r4, #0x28]
	strh r2, [r4, #0x38]
	str r1, [r4, #0x34]
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	movs r0, #4
	bl sub_08001D3C
	ldm r0!, {r1}
	str r1, [r4, #0x20]
	str r0, [r4, #0x18]
_08013620:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013628: .4byte gUnk_0203C000
_0801362C: .4byte gUnk_0203E000

	thumb_func_start sub_08013630
sub_08013630: @ 0x08013630
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	movs r2, #5
	bl sub_08013644
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013644
sub_08013644: @ 0x08013644
	push {r4, r5, lr}
	sub sp, #0xc
	lsls r1, r1, #0x10
	ldr r3, _08013694 @ =gUnk_030067C0
	mov ip, r3
	mov r4, ip
	adds r4, #0x3a
	movs r5, #0
	movs r3, #3
	strb r3, [r4]
	mov r3, ip
	adds r3, #0x3b
	strb r0, [r3]
	mov r0, ip
	strh r5, [r0, #0x3c]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	subs r3, r3, r1
	adds r0, #0x40
	strh r3, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, _08013698 @ =0x000003E7
	lsrs r2, r2, #0x10
	str r5, [sp]
	movs r1, #2
	str r1, [sp, #4]
	adds r1, #0xfe
	str r1, [sp, #8]
	movs r1, #0
	movs r3, #0
	bl sub_080137C0
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013694: .4byte gUnk_030067C0
_08013698: .4byte 0x000003E7

	thumb_func_start sub_0801369C
sub_0801369C: @ 0x0801369C
	push {lr}
	ldr r2, _080136B8 @ =gUnk_030067C0
	adds r3, r2, #0
	adds r3, #0x3a
	movs r1, #0
	movs r0, #2
	strb r0, [r3]
	strh r1, [r2, #0x3c]
	movs r0, #3
	bl sub_08014848
	pop {r0}
	bx r0
	.align 2, 0
_080136B8: .4byte gUnk_030067C0

	thumb_func_start sub_080136BC
sub_080136BC: @ 0x080136BC
	ldr r0, _080136C8 @ =gUnk_030067C0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080136C8: .4byte gUnk_030067C0

	thumb_func_start sub_080136CC
sub_080136CC: @ 0x080136CC
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08013744 @ =gUnk_03006818
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08013748 @ =gUnk_030068E0
	strh r1, [r0]
	bl m4aSoundInit
	ldr r0, _0801374C @ =0x0095F800
	bl m4aSoundMode
	movs r4, #0
	str r4, [sp]
	ldr r5, _08013750 @ =gUnk_03006830
	ldr r2, _08013754 @ =0x05000005
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _08013758 @ =gUnk_03006850
	ldr r2, _0801375C @ =0x05000020
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0
	bl sub_08014640
	ldr r4, _08013760 @ =gUnk_03006814
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r4]
	ldr r5, _08013764 @ =gUnk_030068DC
	strh r0, [r5]
	ldr r6, _08013768 @ =gUnk_03006824
	strh r0, [r6]
	movs r0, #0xc0
	lsls r0, r0, #1
	bl sub_08012F60
	cmp r0, #1
	beq _0801376C
	ldrh r1, [r4]
	movs r0, #0x80
	bl sub_08012F0C
	ldrh r1, [r5]
	movs r0, #0x81
	bl sub_08012F0C
	ldrh r1, [r6]
	movs r0, #0x82
	bl sub_08012F0C
	b _08013784
	.align 2, 0
_08013744: .4byte gUnk_03006818
_08013748: .4byte gUnk_030068E0
_0801374C: .4byte 0x0095F800
_08013750: .4byte gUnk_03006830
_08013754: .4byte 0x05000005
_08013758: .4byte gUnk_03006850
_0801375C: .4byte 0x05000020
_08013760: .4byte gUnk_03006814
_08013764: .4byte gUnk_030068DC
_08013768: .4byte gUnk_03006824
_0801376C:
	movs r0, #0x80
	bl sub_08012F60
	strh r0, [r4]
	movs r0, #0x81
	bl sub_08012F60
	strh r0, [r5]
	movs r0, #0x82
	bl sub_08012F60
	strh r0, [r6]
_08013784:
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #1
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #2
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #3
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #4
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #5
	adds r1, r4, #0
	bl sub_080138D4
	adds r0, r4, #0
	bl sub_0801444C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080137C0
sub_080137C0: @ 0x080137C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r6, [sp, #0x34]
	mov sb, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	mov r7, sb
	lsls r7, r7, #0x10
	lsrs r5, r7, #0x10
	cmp r0, #0x63
	bls _080138C4
	movs r0, #0
	mov sb, r0
	movs r1, #2
	mov sl, r1
	ldr r6, _08013830 @ =gUnk_03006850
	mov ip, r6
_08013808:
	mov r7, ip
	ldrb r0, [r7]
	cmp r0, #0
	bne _08013834
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r7, #4]
	mov r6, sp
	ldrb r6, [r6, #8]
	strb r6, [r7, #1]
	strb r3, [r7, #2]
	strh r2, [r7, #6]
	strh r4, [r7, #8]
	strh r0, [r7, #0xa]
	strh r5, [r7, #0xc]
	mov r0, r8
	strb r0, [r7, #3]
	mov r1, sl
	strb r1, [r7]
	b _080138C4
	.align 2, 0
_08013830: .4byte gUnk_03006850
_08013834:
	mov r0, ip
	adds r0, #0x10
	mov r6, ip
	ldrb r1, [r6, #0x10]
	cmp r1, #0
	bne _08013862
	mov r7, sp
	ldrh r7, [r7, #4]
	strh r7, [r0, #4]
	mov r6, sp
	ldrb r6, [r6, #8]
	strb r6, [r0, #1]
	strb r3, [r0, #2]
	strh r2, [r0, #6]
	strh r4, [r0, #8]
	strh r1, [r0, #0xa]
	strh r5, [r0, #0xc]
	mov r7, r8
	strb r7, [r0, #3]
	mov r1, sl
	mov r0, ip
	strb r1, [r0, #0x10]
	b _080138C4
_08013862:
	mov r0, ip
	adds r0, #0x20
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801388C
	mov r6, sp
	ldrh r6, [r6, #4]
	strh r6, [r0, #4]
	mov r7, sp
	ldrb r7, [r7, #8]
	strb r7, [r0, #1]
	strb r3, [r0, #2]
	strh r2, [r0, #6]
	strh r4, [r0, #8]
	strh r1, [r0, #0xa]
	strh r5, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #3]
	mov r6, sl
	strb r6, [r0]
	b _080138C4
_0801388C:
	mov r0, ip
	adds r0, #0x30
	ldrb r1, [r0]
	cmp r1, #0
	bne _080138B6
	mov r7, sp
	ldrh r7, [r7, #4]
	strh r7, [r0, #4]
	mov r6, sp
	ldrb r6, [r6, #8]
	strb r6, [r0, #1]
	strb r3, [r0, #2]
	strh r2, [r0, #6]
	strh r4, [r0, #8]
	strh r1, [r0, #0xa]
	strh r5, [r0, #0xc]
	mov r7, r8
	strb r7, [r0, #3]
	mov r1, sl
	strb r1, [r0]
	b _080138C4
_080138B6:
	movs r6, #0x40
	add ip, r6
	movs r7, #4
	add sb, r7
	mov r0, sb
	cmp r0, #7
	ble _08013808
_080138C4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080138D4
sub_080138D4: @ 0x080138D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _080138F4 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080138FC
	ldr r0, _080138F8 @ =gUnk_030068DC
	b _080138FE
	.align 2, 0
_080138F4: .4byte 0xFFFF0000
_080138F8: .4byte gUnk_030068DC
_080138FC:
	ldr r0, _080139D4 @ =gUnk_03006824
_080138FE:
	ldrh r0, [r0]
	muls r0, r6, r0
	lsrs r0, r0, #0xc
	mov r8, r0
	mov r0, r8
	cmp r0, #1
	bhi _08013910
	movs r1, #2
	mov r8, r1
_08013910:
	movs r0, #2
	rsbs r0, r0, #0
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldr r1, _080139D8 @ =gUnk_030068D0
	subs r0, r7, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r6, [r0]
	movs r0, #0
	mov sb, r0
	lsls r1, r7, #2
	mov sl, r1
	ldr r5, _080139DC @ =gUnk_03006850
_0801392E:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08013944
	ldrh r0, [r5, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _08013944
	strh r6, [r5, #0xc]
_08013944:
	adds r4, r5, #0
	adds r4, #0x10
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _0801395E
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0801395E
	strh r6, [r4, #0xc]
_0801395E:
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	beq _08013978
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _08013978
	strh r6, [r4, #0xc]
_08013978:
	adds r4, r5, #0
	adds r4, #0x30
	ldrb r0, [r4]
	cmp r0, #0
	beq _08013992
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _08013992
	strh r6, [r4, #0xc]
_08013992:
	adds r5, #0x40
	movs r0, #4
	add sb, r0
	mov r1, sb
	cmp r1, #7
	bls _0801392E
	ldr r5, _080139E0 @ =0x0000FFFF
	subs r0, #5
	bl sub_08014640
	ldr r4, _080139E4 @ =gUnk_08B71D8C
	add r4, sl
	ldr r0, [r4]
	bl m4aMPlayImmInit
	ldr r0, [r4]
	mov r1, r8
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	adds r1, r5, #0
	bl m4aMPlayVolumeControl
	movs r0, #0
	bl sub_08014640
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080139D4: .4byte gUnk_03006824
_080139D8: .4byte gUnk_030068D0
_080139DC: .4byte gUnk_03006850
_080139E0: .4byte 0x0000FFFF
_080139E4: .4byte gUnk_08B71D8C

	thumb_func_start sub_080139E8
sub_080139E8: @ 0x080139E8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	movs r5, #0
_080139F2:
	ldr r1, _08013A14 @ =gUnk_03006850
	lsls r0, r5, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	beq _08013A2C
	cmp r1, #1
	bne _08013A18
	ldrh r0, [r0, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	bne _08013A2C
	movs r6, #1
	b _08013A6E
	.align 2, 0
_08013A14: .4byte gUnk_03006850
_08013A18:
	cmp r1, #2
	bne _08013A2C
	ldrh r0, [r0, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	bne _08013A2C
	movs r6, #2
_08013A2C:
	adds r0, r5, #1
	ldr r1, _08013A50 @ =gUnk_03006850
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	beq _08013A68
	cmp r1, #1
	bne _08013A54
	ldrh r0, [r0, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	bne _08013A68
	movs r6, #1
	b _08013A6E
	.align 2, 0
_08013A50: .4byte gUnk_03006850
_08013A54:
	cmp r1, #2
	bne _08013A68
	ldrh r0, [r0, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	bne _08013A68
	movs r6, #2
_08013A68:
	adds r5, #2
	cmp r5, #7
	bls _080139F2
_08013A6E:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08013A78
sub_08013A78: @ 0x08013A78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08013AF0 @ =gUnk_03006830
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #4
	bne _08013B0E
	ldrh r0, [r7, #0xa]
	adds r5, r0, #0
	cmp r5, #0
	bne _08013B08
	movs r6, #1
	rsbs r6, r6, #0
	ldr r4, _08013AF4 @ =gUnk_03006820
	strb r6, [r4]
	ldrh r0, [r7, #2]
	bl m4aSongNumStart
	strb r5, [r4]
	ldrh r0, [r7, #4]
	adds r1, r0, #0
	ldr r0, _08013AF8 @ =gUnk_03006814
	ldrh r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	cmp r2, #0
	bge _08013ABA
	ldr r0, _08013AFC @ =0x00000FFF
	adds r2, r2, r0
_08013ABA:
	asrs r5, r2, #0xc
	cmp r5, #1
	bgt _08013AC2
	movs r5, #2
_08013AC2:
	movs r0, #2
	rsbs r0, r0, #0
	ands r5, r0
	strh r1, [r7, #4]
	adds r0, r6, #0
	bl sub_08014640
	ldr r4, _08013B00 @ =gUnk_03007700
	adds r0, r4, #0
	bl m4aMPlayImmInit
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r1, _08013B04 @ =0x0000FFFF
	bl m4aMPlayVolumeControl
	movs r0, #0
	bl sub_08014640
	movs r0, #1
	strb r0, [r7]
	b _08013BEE
	.align 2, 0
_08013AF0: .4byte gUnk_03006830
_08013AF4: .4byte gUnk_03006820
_08013AF8: .4byte gUnk_03006814
_08013AFC: .4byte 0x00000FFF
_08013B00: .4byte gUnk_03007700
_08013B04: .4byte 0x0000FFFF
_08013B08:
	subs r0, #1
	strh r0, [r7, #0xa]
	b _08013BEE
_08013B0E:
	cmp r1, #3
	bne _08013BEE
	ldrh r0, [r7, #8]
	ldrh r1, [r7, #6]
	cmp r0, r1
	bne _08013B78
	ldrh r1, [r7, #0xc]
	ldr r0, _08013B68 @ =gUnk_03006814
	ldrh r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	cmp r2, #0
	bge _08013B2C
	ldr r3, _08013B6C @ =0x00000FFF
	adds r2, r2, r3
_08013B2C:
	asrs r6, r2, #0xc
	cmp r6, #1
	bgt _08013B34
	movs r6, #2
_08013B34:
	movs r0, #2
	rsbs r0, r0, #0
	ands r6, r0
	movs r5, #0
	strh r1, [r7, #4]
	adds r0, #1
	bl sub_08014640
	ldr r4, _08013B70 @ =gUnk_03007700
	adds r0, r4, #0
	bl m4aMPlayImmInit
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r1, _08013B74 @ =0x0000FFFF
	bl m4aMPlayVolumeControl
	movs r0, #0
	bl sub_08014640
	movs r0, #1
	strb r0, [r7]
	strh r5, [r7, #8]
	b _08013BEE
	.align 2, 0
_08013B68: .4byte gUnk_03006814
_08013B6C: .4byte 0x00000FFF
_08013B70: .4byte gUnk_03007700
_08013B74: .4byte 0x0000FFFF
_08013B78:
	ldrh r0, [r7, #4]
	lsls r0, r0, #0xc
	ldr r1, [r7, #0x10]
	adds r0, r0, r1
	cmp r0, #0
	bge _08013B88
	ldr r1, _08013B98 @ =0x00000FFF
	adds r0, r0, r1
_08013B88:
	asrs r0, r0, #0xc
	movs r1, #0xbd
	lsls r1, r1, #1
	cmp r0, r1
	ble _08013B9C
	adds r0, r1, #0
	b _08013BA2
	.align 2, 0
_08013B98: .4byte 0x00000FFF
_08013B9C:
	cmp r0, #1
	bgt _08013BA2
	movs r0, #2
_08013BA2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	ldr r0, _08013C34 @ =gUnk_03006814
	ldrh r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	cmp r2, #0
	bge _08013BB8
	ldr r3, _08013C38 @ =0x00000FFF
	adds r2, r2, r3
_08013BB8:
	asrs r5, r2, #0xc
	cmp r5, #1
	bgt _08013BC0
	movs r5, #2
_08013BC0:
	movs r0, #2
	rsbs r0, r0, #0
	ands r5, r0
	strh r1, [r7, #4]
	adds r0, #1
	bl sub_08014640
	ldr r4, _08013C3C @ =gUnk_03007700
	adds r0, r4, #0
	bl m4aMPlayImmInit
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r1, _08013C40 @ =0x0000FFFF
	bl m4aMPlayVolumeControl
	movs r0, #0
	bl sub_08014640
	ldrh r0, [r7, #8]
	adds r0, #1
	strh r0, [r7, #8]
_08013BEE:
	movs r0, #0
	mov r8, r0
	ldr r1, _08013C44 @ =gUnk_03006820
	mov sl, r1
_08013BF6:
	ldr r0, _08013C48 @ =gUnk_03006850
	mov r2, r8
	lsls r1, r2, #4
	adds r2, r1, r0
	ldrb r0, [r2]
	str r1, [sp, #4]
	movs r3, #1
	add r3, r8
	mov sb, r3
	cmp r0, #0
	bne _08013C0E
	b _080140D8
_08013C0E:
	cmp r0, #2
	beq _08013C14
	b _08013F0C
_08013C14:
	ldrh r0, [r2, #6]
	cmp r0, #0
	beq _08013C1C
	b _08013F06
_08013C1C:
	ldrh r2, [r2, #4]
	movs r1, #0
	ldr r0, _08013C4C @ =0x000003E6
	cmp r2, r0
	bhi _08013C54
	adds r0, r2, #0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08013C50 @ =gUnk_08B71DA4
	b _08013C6E
	.align 2, 0
_08013C34: .4byte gUnk_03006814
_08013C38: .4byte 0x00000FFF
_08013C3C: .4byte gUnk_03007700
_08013C40: .4byte 0x0000FFFF
_08013C44: .4byte gUnk_03006820
_08013C48: .4byte gUnk_03006850
_08013C4C: .4byte 0x000003E6
_08013C50: .4byte gUnk_08B71DA4
_08013C54:
	ldr r0, _08013C60 @ =0x000003E7
	cmp r2, r0
	bne _08013C64
	movs r1, #3
	b _08013C72
	.align 2, 0
_08013C60: .4byte 0x000003E7
_08013C64:
	cmp r2, r0
	bls _08013C72
	ldr r1, _08013CC0 @ =gUnk_08B71EF6
	ldr r3, _08013CC4 @ =0xFFFFFC18
	adds r0, r2, r3
_08013C6E:
	adds r0, r0, r1
	ldrb r1, [r0]
_08013C72:
	str r1, [sp]
	adds r5, r1, #0
	adds r0, r5, #0
	bl sub_080139E8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _08013CDC
	movs r1, #1
	rsbs r1, r1, #0
	mov r0, sl
	strb r1, [r0]
	ldr r4, _08013CC8 @ =gUnk_03006850
	ldr r2, [sp, #4]
	adds r4, r2, r4
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
	ldr r3, [sp]
	lsls r0, r3, #2
	ldr r1, _08013CCC @ =gUnk_08B71D8C
	adds r0, r0, r1
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #0xc]
	adds r0, r5, #0
	bl sub_080138D4
	movs r0, #0
	mov r2, sl
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4]
	movs r3, #1
	add r3, r8
	mov sb, r3
	b _080140D8
	.align 2, 0
_08013CC0: .4byte gUnk_08B71EF6
_08013CC4: .4byte 0xFFFFFC18
_08013CC8: .4byte gUnk_03006850
_08013CCC: .4byte gUnk_08B71D8C
_08013CD0:
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	b _08013D64
_08013CD6:
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	b _08013E06
_08013CDC:
	adds r6, r5, #0
	movs r7, #0
	movs r4, #0
	movs r0, #1
	add r0, r8
	mov sb, r0
	ldr r5, _08013EB8 @ =gUnk_03006850
_08013CEA:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08013D02
	cmp r0, #1
	bne _08013D02
	ldrh r0, [r5, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _08013CD0
_08013D02:
	adds r1, r5, #0
	adds r1, #0x10
	adds r4, #1
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _08013D20
	cmp r0, #1
	bne _08013D20
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _08013CD0
_08013D20:
	adds r1, r5, #0
	adds r1, #0x20
	adds r4, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013D3E
	cmp r0, #1
	bne _08013D3E
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _08013CD0
_08013D3E:
	adds r1, r5, #0
	adds r1, #0x30
	adds r4, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013D5C
	cmp r0, #1
	bne _08013D5C
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _08013CD0
_08013D5C:
	adds r5, #0x40
	adds r4, #1
	cmp r4, #7
	bls _08013CEA
_08013D64:
	lsls r0, r7, #4
	ldr r1, _08013EB8 @ =gUnk_03006850
	adds r0, r1, r0
	adds r2, r1, #0
	ldr r3, [sp, #4]
	adds r1, r3, r2
	ldrb r0, [r0, #3]
	ldrb r3, [r1, #3]
	cmp r0, r3
	bhs _08013D7A
	b _08013F00
_08013D7A:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	movs r7, #0
	movs r4, #0
	mov r8, r0
	adds r5, r2, #0
_08013D88:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08013DA0
	cmp r0, #1
	bne _08013DA0
	ldrh r0, [r5, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _08013CD6
_08013DA0:
	adds r1, r5, #0
	adds r1, #0x10
	adds r4, #1
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _08013DBE
	cmp r0, #1
	bne _08013DBE
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _08013CD6
_08013DBE:
	adds r1, r5, #0
	adds r1, #0x20
	adds r4, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013DDE
	cmp r0, #1
	bne _08013DDE
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08013DDE
	b _08013CD6
_08013DDE:
	adds r1, r5, #0
	adds r1, #0x30
	adds r4, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013DFE
	cmp r0, #1
	bne _08013DFE
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08013DFE
	b _08013CD6
_08013DFE:
	adds r5, #0x40
	adds r4, #1
	cmp r4, #7
	bls _08013D88
_08013E06:
	lsls r0, r7, #4
	ldr r2, _08013EB8 @ =gUnk_03006850
	adds r0, r2, r0
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08013EC0
	mov r3, r8
	lsrs r6, r3, #0x10
	movs r7, #0
	adds r4, r2, #0
_08013E1A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08013E32
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08013E32
	movs r0, #0
	strb r0, [r4]
_08013E32:
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08013E4E
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08013E4E
	movs r0, #0
	strb r0, [r4, #0x10]
_08013E4E:
	adds r5, r4, #0
	adds r5, #0x20
	ldrb r0, [r5]
	cmp r0, #0
	beq _08013E6A
	ldrh r0, [r5, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08013E6A
	movs r0, #0
	strb r0, [r5]
_08013E6A:
	adds r5, r4, #0
	adds r5, #0x30
	ldrb r0, [r5]
	cmp r0, #0
	beq _08013E86
	ldrh r0, [r5, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08013E86
	movs r0, #0
	strb r0, [r5]
_08013E86:
	adds r4, #0x40
	adds r7, #4
	cmp r7, #7
	bls _08013E1A
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	lsls r0, r6, #2
	ldr r1, _08013EBC @ =gUnk_08B71D8C
	adds r0, r0, r1
	ldr r0, [r0]
	bl MPlayStop
	movs r0, #0
	bl sub_08014640
	ldr r1, _08013EB8 @ =gUnk_03006850
	ldr r2, [sp, #4]
	adds r1, r2, r1
	movs r0, #0
	strh r0, [r1, #6]
	movs r0, #2
	strb r0, [r1]
	b _080140D8
	.align 2, 0
_08013EB8: .4byte gUnk_03006850
_08013EBC: .4byte gUnk_08B71D8C
_08013EC0:
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sl
	strb r0, [r3]
	ldr r4, _08013EF8 @ =gUnk_03006850
	ldr r1, [sp, #4]
	adds r4, r1, r4
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
	ldr r2, [sp]
	lsls r0, r2, #2
	ldr r3, _08013EFC @ =gUnk_08B71D8C
	adds r0, r0, r3
	ldr r0, [r0]
	bl m4aMPlayImmInit
	mov r1, r8
	lsrs r0, r1, #0x10
	ldrh r1, [r4, #0xc]
	bl sub_080138D4
	movs r0, #0
	mov r2, sl
	strb r0, [r2]
	movs r0, #1
	strb r0, [r4]
	b _080140D8
	.align 2, 0
_08013EF8: .4byte gUnk_03006850
_08013EFC: .4byte gUnk_08B71D8C
_08013F00:
	movs r0, #0
	strb r0, [r1]
	b _080140D8
_08013F06:
	subs r0, #1
	strh r0, [r2, #6]
	b _080140D8
_08013F0C:
	cmp r0, #1
	beq _08013F12
	b _080140D8
_08013F12:
	ldrh r2, [r2, #4]
	movs r1, #0
	ldr r0, _08013F28 @ =0x000003E6
	cmp r2, r0
	bhi _08013F30
	adds r0, r2, #0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08013F2C @ =gUnk_08B71DA4
	b _08013F4A
	.align 2, 0
_08013F28: .4byte 0x000003E6
_08013F2C: .4byte gUnk_08B71DA4
_08013F30:
	ldr r0, _08013F3C @ =0x000003E7
	cmp r2, r0
	bne _08013F40
	movs r1, #3
	b _08013F4E
	.align 2, 0
_08013F3C: .4byte 0x000003E7
_08013F40:
	cmp r2, r0
	bls _08013F4E
	ldr r1, _08013F78 @ =gUnk_08B71EF6
	ldr r3, _08013F7C @ =0xFFFFFC18
	adds r0, r2, r3
_08013F4A:
	adds r0, r0, r1
	ldrb r1, [r0]
_08013F4E:
	adds r7, r1, #0
	ldr r0, [sp, #4]
	ldr r1, _08013F80 @ =gUnk_03006850
	adds r4, r0, r1
	ldrb r1, [r4, #2]
	cmp r1, #0
	bne _08013F88
	lsls r0, r7, #2
	ldr r2, _08013F84 @ =gUnk_08B71D8C
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	movs r3, #1
	add r3, r8
	mov sb, r3
	cmp r0, #0
	beq _08013F72
	b _080140D8
_08013F72:
	strb r1, [r4]
	b _080140D8
	.align 2, 0
_08013F78: .4byte gUnk_08B71EF6
_08013F7C: .4byte 0xFFFFFC18
_08013F80: .4byte gUnk_03006850
_08013F84: .4byte gUnk_08B71D8C
_08013F88:
	cmp r1, #1
	bne _08013FEE
	lsls r0, r7, #2
	ldr r1, _08013FC8 @ =gUnk_08B71D8C
	adds r5, r0, r1
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	movs r2, #1
	add r2, r8
	mov sb, r2
	cmp r0, #0
	beq _08013FA2
	b _080140D8
_08013FA2:
	ldrh r0, [r4, #8]
	subs r0, #1
	movs r6, #0
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08013FCC
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sl
	strb r0, [r3]
	ldr r0, [r5]
	bl MPlayStop
	mov r1, sl
	strb r6, [r1]
	strb r6, [r4]
	b _080140D8
	.align 2, 0
_08013FC8: .4byte gUnk_08B71D8C
_08013FCC:
	movs r3, #1
	rsbs r3, r3, #0
	mov r2, sl
	strb r3, [r2]
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
	ldr r0, [r5]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #0xc]
	adds r0, r7, #0
	bl sub_080138D4
	mov r0, sl
	strb r6, [r0]
	b _080140D8
_08013FEE:
	cmp r1, #2
	bne _08014054
	lsls r0, r7, #2
	ldr r1, _08014044 @ =gUnk_08B71D8C
	adds r6, r0, r1
	ldr r0, [r6]
	ldrh r5, [r0, #4]
	cmp r5, #0
	bne _08014020
	movs r3, #1
	rsbs r3, r3, #0
	mov r2, sl
	strb r3, [r2]
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
	ldr r0, [r6]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #0xc]
	adds r0, r7, #0
	bl sub_080138D4
	mov r0, sl
	strb r5, [r0]
_08014020:
	ldrh r0, [r4, #8]
	adds r5, r0, #0
	cmp r5, #0
	bne _08014048
	movs r2, #1
	rsbs r2, r2, #0
	mov r1, sl
	strb r2, [r1]
	ldr r0, [r6]
	bl MPlayStop
	mov r3, sl
	strb r5, [r3]
	strb r5, [r4]
	movs r0, #1
	add r0, r8
	mov sb, r0
	b _080140D8
	.align 2, 0
_08014044: .4byte gUnk_08B71D8C
_08014048:
	subs r0, #1
	strh r0, [r4, #8]
	movs r1, #1
	add r1, r8
	mov sb, r1
	b _080140D8
_08014054:
	cmp r1, #3
	bne _08014094
	lsls r0, r7, #2
	ldr r2, _08014090 @ =gUnk_08B71D8C
	adds r5, r0, r2
	ldr r0, [r5]
	ldrh r6, [r0, #4]
	movs r3, #1
	add r3, r8
	mov sb, r3
	cmp r6, #0
	bne _080140D8
	movs r1, #1
	rsbs r1, r1, #0
	mov r0, sl
	strb r1, [r0]
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
	ldr r0, [r5]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #0xc]
	adds r0, r7, #0
	bl sub_080138D4
	mov r2, sl
	strb r6, [r2]
	b _080140D8
	.align 2, 0
_08014090: .4byte gUnk_08B71D8C
_08014094:
	movs r3, #1
	add r3, r8
	mov sb, r3
	cmp r1, #4
	bne _080140D8
	ldrh r0, [r4, #0xa]
	adds r5, r0, #0
	cmp r5, #0
	bne _080140D4
	movs r1, #1
	rsbs r1, r1, #0
	mov r0, sl
	strb r1, [r0]
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
	lsls r0, r7, #2
	ldr r2, _080140D0 @ =gUnk_08B71D8C
	adds r0, r0, r2
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #0xc]
	adds r0, r7, #0
	bl sub_080138D4
	mov r3, sl
	strb r5, [r3]
	ldrh r0, [r4, #8]
	b _080140D6
	.align 2, 0
_080140D0: .4byte gUnk_08B71D8C
_080140D4:
	subs r0, #1
_080140D6:
	strh r0, [r4, #0xa]
_080140D8:
	mov r8, sb
	mov r0, r8
	cmp r0, #7
	bgt _080140E2
	b _08013BF6
_080140E2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080140F4
sub_080140F4: @ 0x080140F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _080141A4 @ =gUnk_03006818
	movs r4, #0
	strh r4, [r0]
	ldr r0, _080141A8 @ =gUnk_030068E0
	strh r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	ldr r5, _080141AC @ =gUnk_03006820
	mov r1, r8
	strb r1, [r5]
	bl m4aSoundInit
	ldr r0, _080141B0 @ =0x0095F800
	bl m4aSoundMode
	movs r6, #0
	strb r4, [r5]
	str r6, [sp]
	ldr r7, _080141B4 @ =gUnk_03006830
	ldr r2, _080141B8 @ =0x05000005
	mov r0, sp
	adds r1, r7, #0
	bl CpuSet
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _080141BC @ =gUnk_03006850
	ldr r2, _080141C0 @ =0x05000020
	bl CpuSet
	movs r0, #1
	strb r0, [r7, #1]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #2
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #3
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #4
	adds r1, r4, #0
	bl sub_080138D4
	ldr r0, _080141C4 @ =gUnk_03006814
	ldrh r0, [r0]
	lsls r0, r0, #8
	asrs r5, r0, #0xc
	cmp r5, #1
	bgt _0801416E
	movs r5, #2
_0801416E:
	movs r0, #2
	rsbs r0, r0, #0
	ands r5, r0
	strh r4, [r7, #4]
	mov r0, r8
	bl sub_08014640
	ldr r4, _080141C8 @ =gUnk_03007700
	adds r0, r4, #0
	bl m4aMPlayImmInit
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r1, _080141CC @ =0x0000FFFF
	bl m4aMPlayVolumeControl
	movs r0, #0
	bl sub_08014640
	movs r0, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080141A4: .4byte gUnk_03006818
_080141A8: .4byte gUnk_030068E0
_080141AC: .4byte gUnk_03006820
_080141B0: .4byte 0x0095F800
_080141B4: .4byte gUnk_03006830
_080141B8: .4byte 0x05000005
_080141BC: .4byte gUnk_03006850
_080141C0: .4byte 0x05000020
_080141C4: .4byte gUnk_03006814
_080141C8: .4byte gUnk_03007700
_080141CC: .4byte 0x0000FFFF

	thumb_func_start sub_080141D0
sub_080141D0: @ 0x080141D0
	push {r4, r5, r6, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r4, #0
	ldr r6, _0801420C @ =gUnk_03006830
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _08014210
	movs r0, #1
	strh r0, [r6, #0xa]
	subs r0, #2
	bl sub_08014640
	ldrh r0, [r6, #2]
	bl m4aSongNumStop
	movs r0, #0
	bl sub_08014640
	strh r5, [r6, #2]
	strh r4, [r6, #4]
	movs r0, #4
	strb r0, [r6]
	b _08014254
	.align 2, 0
_0801420C: .4byte gUnk_03006830
_08014210:
	ldrh r0, [r6, #4]
	cmp r0, r4
	beq _08014254
	ldr r0, _0801425C @ =gUnk_03006814
	ldrh r0, [r0]
	muls r0, r4, r0
	cmp r0, #0
	bge _08014224
	ldr r2, _08014260 @ =0x00000FFF
	adds r0, r0, r2
_08014224:
	asrs r5, r0, #0xc
	cmp r5, #1
	bgt _0801422C
	movs r5, #2
_0801422C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r5, r0
	strh r1, [r6, #4]
	adds r0, #1
	bl sub_08014640
	ldr r4, _08014264 @ =gUnk_03007700
	adds r0, r4, #0
	bl m4aMPlayImmInit
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r1, _08014268 @ =0x0000FFFF
	bl m4aMPlayVolumeControl
	movs r0, #0
	bl sub_08014640
_08014254:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801425C: .4byte gUnk_03006814
_08014260: .4byte 0x00000FFF
_08014264: .4byte gUnk_03007700
_08014268: .4byte 0x0000FFFF

	thumb_func_start sub_0801426C
sub_0801426C: @ 0x0801426C
	push {r4, r5, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, _080142B0 @ =gUnk_03006830
	ldrb r0, [r4]
	cmp r0, #1
	bne _080142A8
	ldrh r0, [r4, #4]
	cmp r0, r5
	beq _080142A8
	movs r1, #0
	movs r0, #3
	strb r0, [r4]
	strh r1, [r4, #8]
	strh r2, [r4, #6]
	strh r5, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	ldrh r1, [r4, #6]
	bl __divsi3
	str r0, [r4, #0x10]
_080142A8:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080142B0: .4byte gUnk_03006830

	thumb_func_start sub_080142B4
sub_080142B4: @ 0x080142B4
	push {r4, r5, r6, r7, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080142D4 @ =0x000003E6
	cmp r2, r0
	bhi _080142DC
	adds r0, r2, #0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080142D8 @ =gUnk_08B71DA4
	b _080142F6
	.align 2, 0
_080142D4: .4byte 0x000003E6
_080142D8: .4byte gUnk_08B71DA4
_080142DC:
	ldr r0, _080142E8 @ =0x000003E7
	cmp r2, r0
	bne _080142EC
	movs r1, #3
	b _080142FA
	.align 2, 0
_080142E8: .4byte 0x000003E7
_080142EC:
	cmp r2, r0
	bls _080142FA
	ldr r1, _08014398 @ =gUnk_08B71EF6
	ldr r3, _0801439C @ =0xFFFFFC18
	adds r0, r2, r3
_080142F6:
	adds r0, r0, r1
	ldrb r1, [r0]
_080142FA:
	adds r6, r1, #0
	movs r7, #0
	ldr r5, _080143A0 @ =gUnk_03006850
_08014300:
	ldrb r0, [r5]
	cmp r0, #0
	beq _08014318
	ldrh r0, [r5, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08014318
	movs r0, #0
	strb r0, [r5]
_08014318:
	adds r1, r5, #0
	adds r1, #0x10
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _08014334
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08014334
	movs r0, #0
	strb r0, [r5, #0x10]
_08014334:
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	beq _08014350
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08014350
	movs r0, #0
	strb r0, [r4]
_08014350:
	adds r4, r5, #0
	adds r4, #0x30
	ldrb r0, [r4]
	cmp r0, #0
	beq _0801436C
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _0801436C
	movs r0, #0
	strb r0, [r4]
_0801436C:
	adds r5, #0x40
	adds r7, #4
	cmp r7, #7
	bls _08014300
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r0, _080143A4 @ =gUnk_08B71D8C
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl MPlayStop
	movs r0, #0
	bl sub_08014640
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014398: .4byte gUnk_08B71EF6
_0801439C: .4byte 0xFFFFFC18
_080143A0: .4byte gUnk_03006850
_080143A4: .4byte gUnk_08B71D8C

	thumb_func_start sub_080143A8
sub_080143A8: @ 0x080143A8
	push {r4, r5, lr}
	ldr r5, _080143BC @ =gUnk_030068E0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080143C0
	cmp r0, #1
	beq _080143D4
	b _08014428
	.align 2, 0
_080143BC: .4byte gUnk_030068E0
_080143C0:
	ldr r4, _080143D0 @ =gUnk_03006810
	bl sub_08012578
	strh r0, [r4]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _08014428
	.align 2, 0
_080143D0: .4byte gUnk_03006810
_080143D4:
	ldr r0, _080143EC @ =gUnk_03006810
	ldrh r2, [r0]
	movs r1, #0
	ldr r0, _080143F0 @ =0x000003E6
	cmp r2, r0
	bhi _080143F8
	adds r0, r2, #0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080143F4 @ =gUnk_08B71DA4
	b _08014412
	.align 2, 0
_080143EC: .4byte gUnk_03006810
_080143F0: .4byte 0x000003E6
_080143F4: .4byte gUnk_08B71DA4
_080143F8:
	ldr r0, _08014404 @ =0x000003E7
	cmp r2, r0
	bne _08014408
	movs r1, #3
	b _08014416
	.align 2, 0
_08014404: .4byte 0x000003E7
_08014408:
	cmp r2, r0
	bls _08014416
	ldr r1, _08014434 @ =gUnk_08B71EF6
	ldr r3, _08014438 @ =0xFFFFFC18
	adds r0, r2, r3
_08014412:
	adds r0, r0, r1
	ldrb r1, [r0]
_08014416:
	adds r0, r1, #0
	bl sub_080139E8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08014428
	ldr r0, _0801443C @ =gUnk_030068E0
	strh r1, [r0]
_08014428:
	ldr r0, _0801443C @ =gUnk_030068E0
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08014434: .4byte gUnk_08B71EF6
_08014438: .4byte 0xFFFFFC18
_0801443C: .4byte gUnk_030068E0

	thumb_func_start sub_08014440
sub_08014440: @ 0x08014440
	ldr r1, _08014448 @ =gUnk_03006830
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08014448: .4byte gUnk_03006830

	thumb_func_start sub_0801444C
sub_0801444C: @ 0x0801444C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	ldr r0, _080144A0 @ =gUnk_03006814
	ldrh r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	cmp r2, #0
	bge _08014464
	ldr r0, _080144A4 @ =0x00000FFF
	adds r2, r2, r0
_08014464:
	asrs r6, r2, #0xc
	cmp r6, #1
	bgt _0801446C
	movs r6, #2
_0801446C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r6, r0
	ldr r0, _080144A8 @ =gUnk_03006830
	strh r1, [r0, #4]
	ldr r5, _080144AC @ =0x0000FFFF
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r4, _080144B0 @ =gUnk_03007700
	adds r0, r4, #0
	bl m4aMPlayImmInit
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayVolumeControl
	movs r0, #0
	bl sub_08014640
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080144A0: .4byte gUnk_03006814
_080144A4: .4byte 0x00000FFF
_080144A8: .4byte gUnk_03006830
_080144AC: .4byte 0x0000FFFF
_080144B0: .4byte gUnk_03007700

	thumb_func_start sub_080144B4
sub_080144B4: @ 0x080144B4
	ldr r1, _080144BC @ =gUnk_03006814
	strh r0, [r1]
	bx lr
	.align 2, 0
_080144BC: .4byte gUnk_03006814

	thumb_func_start sub_080144C0
sub_080144C0: @ 0x080144C0
	ldr r0, _080144C8 @ =gUnk_03006814
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080144C8: .4byte gUnk_03006814

	thumb_func_start sub_080144CC
sub_080144CC: @ 0x080144CC
	ldr r0, _080144D4 @ =gUnk_03006830
	ldrb r0, [r0, #2]
	bx lr
	.align 2, 0
_080144D4: .4byte gUnk_03006830

	thumb_func_start sub_080144D8
sub_080144D8: @ 0x080144D8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r5, _08014504 @ =gUnk_03007700
	adds r0, r5, #0
	bl m4aMPlayImmInit
	adds r0, r5, #0
	adds r1, r4, #0
	bl m4aMPlayTempoControl
	movs r0, #0
	bl sub_08014640
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014504: .4byte gUnk_03007700

	thumb_func_start sub_08014508
sub_08014508: @ 0x08014508
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _0801453C @ =0x0000FFFF
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r5, _08014540 @ =gUnk_03007700
	adds r0, r5, #0
	bl m4aMPlayImmInit
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl m4aMPlayPitchControl
	movs r0, #0
	bl sub_08014640
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801453C: .4byte 0x0000FFFF
_08014540: .4byte gUnk_03007700

	thumb_func_start sub_08014544
sub_08014544: @ 0x08014544
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r4, _08014578 @ =gUnk_03006830
	movs r0, #1
	strh r0, [r4, #0xa]
	subs r0, #2
	bl sub_08014640
	ldrh r0, [r4, #2]
	bl m4aSongNumStop
	movs r0, #0
	bl sub_08014640
	strh r5, [r4, #2]
	strh r6, [r4, #4]
	movs r0, #4
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014578: .4byte gUnk_03006830

	thumb_func_start sub_0801457C
sub_0801457C: @ 0x0801457C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r4, _080145B8 @ =gUnk_03006830
	ldrb r0, [r4]
	cmp r0, #1
	bne _080145B0
	ldrh r0, [r4, #4]
	cmp r0, r2
	beq _080145B0
	movs r1, #0
	movs r0, #3
	strb r0, [r4]
	strh r1, [r4, #8]
	strh r3, [r4, #6]
	strh r2, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	ldrh r1, [r4, #6]
	bl __divsi3
	str r0, [r4, #0x10]
_080145B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080145B8: .4byte gUnk_03006830

	thumb_func_start sub_080145BC
sub_080145BC: @ 0x080145BC
	push {lr}
	ldr r1, _080145E0 @ =gUnk_03006830
	ldrb r0, [r1]
	cmp r0, #1
	bne _080145DC
	movs r0, #2
	strb r0, [r1]
	subs r0, #3
	bl sub_08014640
	ldr r0, _080145E4 @ =gUnk_03007700
	bl MPlayStop
	movs r0, #0
	bl sub_08014640
_080145DC:
	pop {r0}
	bx r0
	.align 2, 0
_080145E0: .4byte gUnk_03006830
_080145E4: .4byte gUnk_03007700

	thumb_func_start sub_080145E8
sub_080145E8: @ 0x080145E8
	push {lr}
	ldr r1, _0801460C @ =gUnk_03006830
	ldrb r0, [r1]
	cmp r0, #2
	bne _08014608
	movs r0, #1
	strb r0, [r1]
	subs r0, #2
	bl sub_08014640
	ldr r0, _08014610 @ =gUnk_03007700
	bl m4aMPlayContinue
	movs r0, #0
	bl sub_08014640
_08014608:
	pop {r0}
	bx r0
	.align 2, 0
_0801460C: .4byte gUnk_03006830
_08014610: .4byte gUnk_03007700

	thumb_func_start sub_08014614
sub_08014614: @ 0x08014614
	push {r4, lr}
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r4, _0801463C @ =gUnk_03006830
	ldrh r0, [r4, #2]
	bl m4aSongNumStop
	movs r0, #0
	bl sub_08014640
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #2]
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801463C: .4byte gUnk_03006830

	thumb_func_start sub_08014640
sub_08014640: @ 0x08014640
	ldr r1, _08014648 @ =gUnk_03006820
	strb r0, [r1]
	bx lr
	.align 2, 0
_08014648: .4byte gUnk_03006820

	thumb_func_start sub_0801464C
sub_0801464C: @ 0x0801464C
	ldr r0, _08014658 @ =gUnk_03006820
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08014658: .4byte gUnk_03006820

	thumb_func_start sub_0801465C
sub_0801465C: @ 0x0801465C
	push {r4, r5, lr}
	ldr r0, _080146A0 @ =gUnk_03006830
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0801469A
	ldr r0, _080146A4 @ =gUnk_03006820
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0801469A
	ldr r4, _080146A8 @ =0x04000006
	ldrh r0, [r4]
	adds r5, r0, #0
	bl m4aSoundMain
	ldr r1, _080146AC @ =gUnk_0300681C
	ldrh r4, [r4]
	strh r4, [r1]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bhs _08014694
	adds r0, r4, #0
	adds r0, #0xe3
	strh r0, [r1]
_08014694:
	ldrh r0, [r1]
	subs r0, r0, r5
	strh r0, [r1]
_0801469A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080146A0: .4byte gUnk_03006830
_080146A4: .4byte gUnk_03006820
_080146A8: .4byte 0x04000006
_080146AC: .4byte gUnk_0300681C

	thumb_func_start sub_080146B0
sub_080146B0: @ 0x080146B0
	push {r4, r5, lr}
	ldr r0, _080146E8 @ =gUnk_03006830
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080146E2
	ldr r4, _080146EC @ =0x04000006
	ldrh r0, [r4]
	adds r5, r0, #0
	bl m4aSoundMain
	ldr r1, _080146F0 @ =gUnk_0300681C
	ldrh r4, [r4]
	strh r4, [r1]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bhs _080146DC
	adds r0, r4, #0
	adds r0, #0xe3
	strh r0, [r1]
_080146DC:
	ldrh r0, [r1]
	subs r0, r0, r5
	strh r0, [r1]
_080146E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080146E8: .4byte gUnk_03006830
_080146EC: .4byte 0x04000006
_080146F0: .4byte gUnk_0300681C

	thumb_func_start sub_080146F4
sub_080146F4: @ 0x080146F4
	push {lr}
	bl SoundVSync_rev01
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08014700
sub_08014700: @ 0x08014700
	ldr r0, _08014708 @ =gUnk_03006830
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08014708: .4byte gUnk_03006830

	thumb_func_start sub_0801470C
sub_0801470C: @ 0x0801470C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0
	mov r8, r0
	movs r7, #0
	ldr r4, _0801473C @ =gUnk_03006850
_0801471E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08014740
	cmp r0, #1
	bne _08014740
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08014740
	lsls r0, r7, #0x10
	b _0801479C
	.align 2, 0
_0801473C: .4byte gUnk_03006850
_08014740:
	adds r1, r4, #0
	adds r1, #0x10
	adds r5, r7, #1
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0801475E
	cmp r0, #1
	bne _0801475E
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _0801479A
_0801475E:
	adds r1, r4, #0
	adds r1, #0x20
	adds r5, r7, #2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801477C
	cmp r0, #1
	bne _0801477C
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _0801479A
_0801477C:
	adds r1, r4, #0
	adds r1, #0x30
	adds r5, r7, #3
	ldrb r0, [r1]
	cmp r0, #0
	beq _080147A2
	cmp r0, #1
	bne _080147A2
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _080147A2
_0801479A:
	lsls r0, r5, #0x10
_0801479C:
	lsrs r0, r0, #0x10
	mov r8, r0
	b _080147AA
_080147A2:
	adds r4, #0x40
	adds r7, #4
	cmp r7, #7
	bls _0801471E
_080147AA:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080147B8
sub_080147B8: @ 0x080147B8
	push {lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r2, #0
	str r2, [sp]
	movs r2, #2
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_080147DC
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080147DC
sub_080147DC: @ 0x080147DC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r4, [sp]
	str r5, [sp, #4]
	movs r4, #0x80
	lsls r4, r4, #1
	str r4, [sp, #8]
	bl sub_080137C0
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08014814
sub_08014814: @ 0x08014814
	ldr r1, _0801481C @ =gUnk_030068DC
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801481C: .4byte gUnk_030068DC

	thumb_func_start sub_08014820
sub_08014820: @ 0x08014820
	ldr r0, _08014828 @ =gUnk_030068DC
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08014828: .4byte gUnk_030068DC

	thumb_func_start sub_0801482C
sub_0801482C: @ 0x0801482C
	ldr r1, _08014834 @ =gUnk_03006824
	strh r0, [r1]
	bx lr
	.align 2, 0
_08014834: .4byte gUnk_03006824

	thumb_func_start sub_08014838
sub_08014838: @ 0x08014838
	ldr r0, _08014840 @ =gUnk_03006824
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08014840: .4byte gUnk_03006824

	thumb_func_start __div03
__div03: @ 0x08014844
	bx lr
	.align 2, 0

	thumb_func_start sub_08014848
sub_08014848: @ 0x08014848
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r7, #0
	ldr r5, _080148E8 @ =gUnk_03006850
_08014852:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801486A
	ldrh r0, [r5, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _0801486A
	movs r0, #0
	strb r0, [r5]
_0801486A:
	adds r1, r5, #0
	adds r1, #0x10
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _08014886
	ldrh r0, [r1, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08014886
	movs r0, #0
	strb r0, [r5, #0x10]
_08014886:
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	beq _080148A2
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _080148A2
	movs r0, #0
	strb r0, [r4]
_080148A2:
	adds r4, r5, #0
	adds r4, #0x30
	ldrb r0, [r4]
	cmp r0, #0
	beq _080148BE
	ldrh r0, [r4, #4]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _080148BE
	movs r0, #0
	strb r0, [r4]
_080148BE:
	adds r5, #0x40
	adds r7, #4
	cmp r7, #7
	bls _08014852
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r1, _080148EC @ =gUnk_08B71D8C
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl MPlayStop
	movs r0, #0
	bl sub_08014640
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080148E8: .4byte gUnk_03006850
_080148EC: .4byte gUnk_08B71D8C

	thumb_func_start sub_080148F0
sub_080148F0: @ 0x080148F0
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08014964 @ =gUnk_03006850
	ldr r2, _08014968 @ =0x05000020
	mov r0, sp
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #1
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #2
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #3
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #4
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #5
	adds r1, r4, #0
	bl sub_080138D4
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r4, _0801496C @ =gUnk_08B71D8C
	ldr r0, [r4, #4]
	bl MPlayStop
	ldr r0, [r4, #8]
	bl MPlayStop
	ldr r0, [r4, #0xc]
	bl MPlayStop
	ldr r0, [r4, #0x10]
	bl MPlayStop
	ldr r0, [r4, #0x14]
	bl MPlayStop
	movs r0, #0
	bl sub_08014640
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014964: .4byte gUnk_03006850
_08014968: .4byte 0x05000020
_0801496C: .4byte gUnk_08B71D8C

	thumb_func_start sub_08014970
sub_08014970: @ 0x08014970
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	movs r3, #0
	ldr r0, _08014990 @ =0x000003E6
	cmp r1, r0
	bhi _08014998
	adds r0, r1, #0
	subs r0, #0x64
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08014994 @ =gUnk_08B71DA4
	adds r0, r2, r0
	b _080149B4
	.align 2, 0
_08014990: .4byte 0x000003E6
_08014994: .4byte gUnk_08B71DA4
_08014998:
	ldr r0, _080149A4 @ =0x000003E7
	cmp r1, r0
	bne _080149A8
	movs r3, #3
	b _080149B6
	.align 2, 0
_080149A4: .4byte 0x000003E7
_080149A8:
	cmp r2, r0
	bls _080149B6
	ldr r1, _080149BC @ =gUnk_08B71EF6
	ldr r3, _080149C0 @ =0xFFFFFC18
	adds r0, r2, r3
	adds r0, r0, r1
_080149B4:
	ldrb r3, [r0]
_080149B6:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080149BC: .4byte gUnk_08B71EF6
_080149C0: .4byte 0xFFFFFC18

	thumb_func_start sub_080149C4
sub_080149C4: @ 0x080149C4
	push {r4, lr}
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r4, _080149EC @ =gUnk_03006830
	ldrh r0, [r4, #2]
	bl m4aSongNumStop
	movs r0, #0
	bl sub_08014640
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #2]
	strb r1, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080149EC: .4byte gUnk_03006830

	thumb_func_start sub_080149F0
sub_080149F0: @ 0x080149F0
	push {lr}
	ldr r0, _08014A0C @ =gUnk_03006830
	ldrb r0, [r0]
	cmp r0, #1
	beq _08014A06
	cmp r0, #0
	beq _08014A06
	cmp r0, #2
	beq _08014A06
	cmp r0, #4
	bne _08014A10
_08014A06:
	movs r0, #0
	b _08014A12
	.align 2, 0
_08014A0C: .4byte gUnk_03006830
_08014A10:
	movs r0, #1
_08014A12:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014A18
sub_08014A18: @ 0x08014A18
	push {lr}
	ldr r1, _08014A40 @ =gUnk_03006830
	ldrb r0, [r1]
	cmp r0, #1
	bne _08014A38
	movs r0, #2
	strb r0, [r1]
	subs r0, #3
	bl sub_08014640
	ldr r0, _08014A44 @ =gUnk_03007700
	bl MPlayStop
	movs r0, #0
	bl sub_08014640
_08014A38:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08014A40: .4byte gUnk_03006830
_08014A44: .4byte gUnk_03007700

	thumb_func_start sub_08014A48
sub_08014A48: @ 0x08014A48
	push {lr}
	ldr r1, _08014A70 @ =gUnk_03006830
	ldrb r0, [r1]
	cmp r0, #2
	bne _08014A68
	movs r0, #1
	strb r0, [r1]
	subs r0, #2
	bl sub_08014640
	ldr r0, _08014A74 @ =gUnk_03007700
	bl m4aMPlayContinue
	movs r0, #0
	bl sub_08014640
_08014A68:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08014A70: .4byte gUnk_03006830
_08014A74: .4byte gUnk_03007700

	thumb_func_start sub_08014A78
sub_08014A78: @ 0x08014A78
	push {r4, r5, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	ldr r0, _08014AD0 @ =gUnk_03006814
	ldrh r0, [r0]
	adds r2, r1, #0
	muls r2, r0, r2
	cmp r2, #0
	bge _08014A94
	ldr r0, _08014AD4 @ =0x00000FFF
	adds r2, r2, r0
_08014A94:
	asrs r5, r2, #0xc
	cmp r5, #1
	bgt _08014A9C
	movs r5, #2
_08014A9C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r5, r0
	ldr r0, _08014AD8 @ =gUnk_03006830
	strh r1, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r4, _08014ADC @ =gUnk_03007700
	adds r0, r4, #0
	bl m4aMPlayImmInit
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r1, _08014AE0 @ =0x0000FFFF
	bl m4aMPlayVolumeControl
	movs r0, #0
	bl sub_08014640
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08014AD0: .4byte gUnk_03006814
_08014AD4: .4byte 0x00000FFF
_08014AD8: .4byte gUnk_03006830
_08014ADC: .4byte gUnk_03007700
_08014AE0: .4byte 0x0000FFFF

	thumb_func_start sub_08014AE4
sub_08014AE4: @ 0x08014AE4
	push {r4, r5, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r5, _08014B18 @ =gUnk_03007700
	adds r0, r5, #0
	bl m4aMPlayImmInit
	adds r0, r5, #0
	adds r1, r4, #0
	bl m4aMPlayTempoControl
	movs r0, #0
	bl sub_08014640
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08014B18: .4byte gUnk_03007700

	thumb_func_start sub_08014B1C
sub_08014B1C: @ 0x08014B1C
	push {r4, r5, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014640
	ldr r5, _08014B50 @ =gUnk_03007700
	adds r0, r5, #0
	bl m4aMPlayImmInit
	adds r0, r5, #0
	ldr r1, _08014B54 @ =0x0000FFFF
	adds r2, r4, #0
	bl m4aMPlayPitchControl
	movs r0, #0
	bl sub_08014640
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08014B50: .4byte gUnk_03007700
_08014B54: .4byte 0x0000FFFF

	thumb_func_start sub_08014B58
sub_08014B58: @ 0x08014B58
	push {r4, lr}
	sub sp, #8
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	adds r1, r0, #0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080147DC
	movs r0, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08014B8C
sub_08014B8C: @ 0x08014B8C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	bl sub_08012578
	mov sb, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl sub_08012578
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	bl sub_08012578
	mov r8, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_08012578
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #8]
	mov r0, sb
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_080137C0
	movs r0, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014C00
sub_08014C00: @ 0x08014C00
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	bl sub_08012578
	mov sl, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	bl sub_08012578
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	bl sub_08012578
	mov sb, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl sub_08012578
	mov r8, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_08012578
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	str r6, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, sl
	adds r1, r5, #0
	mov r2, sb
	mov r3, r8
	bl sub_080137C0
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014C80
sub_08014C80: @ 0x08014C80
	push {r4, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080135C0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x90
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080135E8
	ldr r0, _08014CB0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08014CB0: .4byte gUnk_03006578

	thumb_func_start sub_08014CB4
sub_08014CB4: @ 0x08014CB4
	push {lr}
	bl sub_08012578
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_08013630
	ldr r0, _08014CD0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08014CD0: .4byte gUnk_03006578

	thumb_func_start sub_08014CD4
sub_08014CD4: @ 0x08014CD4
	push {lr}
	bl sub_080136BC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _08014CEC
	bl sub_080136BC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08014CF0
_08014CEC:
	movs r0, #0
	b _08014CF2
_08014CF0:
	movs r0, #1
_08014CF2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014CF8
sub_08014CF8: @ 0x08014CF8
	push {lr}
	bl sub_0801369C
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08014D04
sub_08014D04: @ 0x08014D04
	movs r0, #0
	bx lr

	thumb_func_start sub_08014D08
sub_08014D08: @ 0x08014D08
	ldr r3, _08014D30 @ =gUnk_03006900
	movs r1, #0
	movs r0, #0
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	movs r2, #0xa
	strb r2, [r3, #0xc]
	strb r1, [r3, #0xd]
	strb r1, [r3, #0xe]
	strb r1, [r3, #0xf]
	adds r0, r3, #0
	adds r0, #0x50
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014D30: .4byte gUnk_03006900

	thumb_func_start sub_08014D34
sub_08014D34: @ 0x08014D34
	push {r4, r5, lr}
	ldr r5, _08014DB4 @ =0x04000128
	ldr r3, [r5]
	ldr r4, _08014DB8 @ =gUnk_03006900
	ldrh r0, [r4]
	cmp r0, #0
	beq _08014D44
	b _08014E48
_08014D44:
	ldrh r0, [r5]
	movs r1, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08014D52
	b _08014E48
_08014D52:
	movs r1, #0x80
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08014E48
	movs r0, #1
	strh r0, [r4]
	movs r0, #0xa
	strh r0, [r4, #4]
	strh r1, [r4, #2]
	strh r1, [r4, #6]
	ldr r0, _08014DBC @ =0x04000208
	strh r1, [r0]
	ldr r2, _08014DC0 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	bne _08014DE8
	ldr r0, _08014DC4 @ =0x00002003
	str r0, [r5]
	ldr r1, _08014DC8 @ =0x04000202
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xf6
	movs r2, #0xb0
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08014DCC @ =0x0400010E
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _08014DD0
	adds r1, #1
	movs r0, #6
	bl sub_08006FA8
	b _08014DD8
	.align 2, 0
_08014DB4: .4byte 0x04000128
_08014DB8: .4byte gUnk_03006900
_08014DBC: .4byte 0x04000208
_08014DC0: .4byte 0x04000200
_08014DC4: .4byte 0x00002003
_08014DC8: .4byte 0x04000202
_08014DCC: .4byte 0x0400010E
_08014DD0:
	ldr r1, _08014DE0 @ =sub_08014EE4
	movs r0, #6
	bl sub_08006FA8
_08014DD8:
	ldr r0, _08014DE4 @ =0x04000200
	ldrh r1, [r0]
	movs r2, #0x40
	b _08014E0E
	.align 2, 0
_08014DE0: .4byte sub_08014EE4
_08014DE4: .4byte 0x04000200
_08014DE8:
	ldr r0, _08014DFC @ =0x00006003
	str r0, [r5]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _08014E00
	adds r1, #1
	movs r0, #7
	bl sub_08006FA8
	b _08014E08
	.align 2, 0
_08014DFC: .4byte 0x00006003
_08014E00:
	ldr r1, _08014E50 @ =sub_08014EE4
	movs r0, #7
	bl sub_08006FA8
_08014E08:
	ldr r0, _08014E54 @ =0x04000200
	ldrh r1, [r0]
	movs r2, #0x80
_08014E0E:
	orrs r1, r2
	strh r1, [r0]
	ldr r1, _08014E58 @ =0x0400012A
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08014E5C @ =gUnk_03006900
	movs r1, #0
	movs r2, #0xa
	strb r2, [r3, #0xc]
	strb r1, [r3, #0xd]
	strb r1, [r3, #0xe]
	strb r1, [r3, #0xf]
	adds r0, r3, #0
	adds r0, #0x50
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	ldr r0, _08014E60 @ =gUnk_030068F0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, _08014E64 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
_08014E48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014E50: .4byte sub_08014EE4
_08014E54: .4byte 0x04000200
_08014E58: .4byte 0x0400012A
_08014E5C: .4byte gUnk_03006900
_08014E60: .4byte gUnk_030068F0
_08014E64: .4byte 0x04000208

	thumb_func_start sub_08014E68
sub_08014E68: @ 0x08014E68
	push {r4, r5, lr}
	bl sub_080151E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _08014EDC
	bl sub_08015224
	ldr r4, _08014ED0 @ =gUnk_0300690C
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _08014EBC
	movs r3, #0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r2, #2
	ldrsb r2, [r4, r2]
	subs r0, r0, r2
	cmp r3, r0
	bge _08014EB0
	adds r5, r4, #4
_08014E96:
	adds r1, r5, r3
	adds r0, r2, r3
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #1
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r2, #2
	ldrsb r2, [r4, r2]
	subs r0, r0, r2
	cmp r3, r0
	blt _08014E96
_08014EB0:
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	subs r0, r0, r1
	movs r1, #0
	strb r0, [r4, #1]
	strb r1, [r4, #2]
_08014EBC:
	bl sub_08015204
	ldr r1, _08014ED4 @ =gUnk_03006900
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08014ED8
	movs r0, #3
	strh r0, [r1]
	b _08014EDC
	.align 2, 0
_08014ED0: .4byte gUnk_0300690C
_08014ED4: .4byte gUnk_03006900
_08014ED8:
	subs r0, #1
	strh r0, [r1, #4]
_08014EDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08014EE4
sub_08014EE4: @ 0x08014EE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08014F08 @ =0x04000128
	ldrh r0, [r0]
	mov r8, r0
	movs r0, #0xc0
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08014F10
	ldr r1, _08014F0C @ =gUnk_03006900
	movs r0, #3
	strh r0, [r1]
	b _080150A8
	.align 2, 0
_08014F08: .4byte 0x04000128
_08014F0C: .4byte gUnk_03006900
_08014F10:
	movs r2, #0x30
	mov r0, r8
	ands r0, r2
	mov sb, r0
	cmp r0, #0
	beq _08014F24
	ldr r0, _08014F20 @ =0x04000120
	b _08014F26
	.align 2, 0
_08014F20: .4byte 0x04000120
_08014F24:
	ldr r0, _08014FA4 @ =0x04000122
_08014F26:
	ldrh r0, [r0]
	adds r6, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #6
	ldr r7, _08014FA8 @ =gUnk_03006900
	ldrh r0, [r7]
	cmp r0, #2
	beq _08014F38
	b _08015068
_08014F38:
	movs r1, #0
	mov sl, r1
	adds r0, r6, #0
	ands r0, r3
	cmp r0, r3
	beq _08014FDC
	lsrs r4, r6, #0xa
	movs r0, #3
	ands r4, r0
	adds r5, r7, #0
	adds r5, #0x50
	ldrb r0, [r5]
	adds r0, #1
	movs r2, #3
	ands r0, r2
	cmp r4, r0
	bne _08014FE4
	adds r0, r6, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_08015470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r6, #0xe
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r1, r0
	bne _08014FBC
	ldrb r0, [r5]
	adds r0, #1
	ands r0, r2
	cmp r4, r0
	bne _08014FAC
	movs r0, #1
	ldrsb r0, [r5, r0]
	cmp r0, #0x1f
	bgt _08014FAC
	strb r4, [r5]
	adds r1, r7, #0
	adds r1, #0x54
	adds r0, r0, r1
	strb r6, [r0]
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1b
	ble _08014FC4
	movs r2, #1
	mov sl, r2
	b _08014FC4
	.align 2, 0
_08014FA4: .4byte 0x04000122
_08014FA8: .4byte gUnk_03006900
_08014FAC:
	ldr r1, _08014FB8 @ =gUnk_030068F0
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	strh r2, [r7]
	b _08014FC4
	.align 2, 0
_08014FB8: .4byte gUnk_030068F0
_08014FBC:
	ldr r1, _08014FD8 @ =gUnk_030068F0
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_08014FC4:
	lsrs r0, r6, #0xc
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08014FE4
	ldr r1, _08014FD8 @ =gUnk_030068F0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	b _08014FE4
	.align 2, 0
_08014FD8: .4byte gUnk_030068F0
_08014FDC:
	ldr r1, _08015060 @ =gUnk_030068F0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
_08014FE4:
	ldr r5, _08015064 @ =gUnk_0300690C
	movs r0, #1
	ldrsb r0, [r5, r0]
	movs r1, #2
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	cmp r0, #0
	ble _08015082
	movs r2, #0x80
	lsls r2, r2, #2
	ands r6, r2
	lsls r0, r6, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _08015082
	adds r0, r5, #4
	adds r0, r1, r0
	ldrb r3, [r0]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #0xa
	orrs r3, r0
	adds r4, r5, #0
	subs r4, #0xc
	ldrh r1, [r4, #6]
	movs r6, #3
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0xc
	orrs r3, r0
	mov r0, sl
	cmp r0, #1
	bne _0801502C
	orrs r3, r2
_0801502C:
	adds r0, r3, #0
	str r3, [sp, #4]
	bl sub_08015470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ands r0, r6
	lsls r0, r0, #0xe
	ldr r3, [sp, #4]
	orrs r3, r0
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08015082
	strh r7, [r4, #6]
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _08015082
	.align 2, 0
_08015060: .4byte gUnk_030068F0
_08015064: .4byte gUnk_0300690C
_08015068:
	cmp r0, #1
	bne _080150A8
	cmp r6, r3
	bne _08015082
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08015082
	movs r0, #2
	strh r0, [r7]
_08015082:
	ldr r1, _080150B8 @ =gUnk_03006900
	ldrh r0, [r1]
	cmp r0, #3
	beq _0801508E
	movs r0, #0xa
	strh r0, [r1, #4]
_0801508E:
	ldr r0, _080150BC @ =0x0400012A
	strh r3, [r0]
	ldrh r0, [r1]
	cmp r0, #3
	beq _080150A8
	mov r1, sb
	cmp r1, #0
	bne _080150A8
	ldr r1, _080150C0 @ =0x04000128
	movs r0, #0x80
	mov r2, r8
	orrs r2, r0
	strh r2, [r1]
_080150A8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080150B8: .4byte gUnk_03006900
_080150BC: .4byte 0x0400012A
_080150C0: .4byte 0x04000128

	thumb_func_start sub_080150C4
sub_080150C4: @ 0x080150C4
	push {r4, lr}
	ldr r0, _08015104 @ =gUnk_03006900
	movs r2, #0
	str r2, [r0, #8]
	ldr r4, _08015108 @ =0x04000208
	strh r2, [r4]
	ldr r3, _0801510C @ =0x04000200
	ldrh r1, [r3]
	ldr r0, _08015110 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r3]
	ldr r0, _08015114 @ =0x04000134
	strh r2, [r0]
	ldr r1, _08015118 @ =0x04000128
	ldr r0, _0801511C @ =0x00002003
	str r0, [r1]
	subs r1, #0x1c
	movs r2, #0xb0
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4]
	bl sub_08014D08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015104: .4byte gUnk_03006900
_08015108: .4byte 0x04000208
_0801510C: .4byte 0x04000200
_08015110: .4byte 0x0000FF3F
_08015114: .4byte 0x04000134
_08015118: .4byte 0x04000128
_0801511C: .4byte 0x00002003

	thumb_func_start sub_08015120
sub_08015120: @ 0x08015120
	ldr r0, _0801512C @ =0x04000128
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	bx lr
	.align 2, 0
_0801512C: .4byte 0x04000128

	thumb_func_start __div04
__div04: @ 0x08015130
	bx lr
	.align 2, 0

	thumb_func_start sub_08015134
sub_08015134: @ 0x08015134
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r0, _080151BC @ =gUnk_03006900
	ldrh r0, [r0]
	cmp r0, #0
	beq _080151AE
	ldr r0, _080151C0 @ =0x04000208
	mov sl, r0
	movs r1, #0
	mov sb, r1
	strh r1, [r0]
	ldr r5, _080151C4 @ =0x04000200
	ldrh r1, [r5]
	ldr r4, _080151C8 @ =0x0000FF3F
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r5]
	ldr r6, _080151CC @ =0x04000128
	ldr r2, _080151D0 @ =0x00002003
	mov r8, r2
	strh r2, [r6]
	ldr r2, _080151D4 @ =0x0400010E
	ldrh r1, [r2]
	ldr r0, _080151D8 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080151DC @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	bl sub_08014D08
	movs r0, #6
	movs r1, #0
	bl sub_08006FA8
	movs r0, #7
	movs r1, #0
	bl sub_08006FA8
	ldrh r0, [r5]
	ands r4, r0
	strh r4, [r5]
	ldr r1, _080151E0 @ =0x04000134
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r6]
	mov r0, sb
	strh r0, [r1]
	mov r1, r8
	strh r1, [r6]
	movs r0, #1
	mov r2, sl
	strh r0, [r2]
_080151AE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080151BC: .4byte gUnk_03006900
_080151C0: .4byte 0x04000208
_080151C4: .4byte 0x04000200
_080151C8: .4byte 0x0000FF3F
_080151CC: .4byte 0x04000128
_080151D0: .4byte 0x00002003
_080151D4: .4byte 0x0400010E
_080151D8: .4byte 0x0000FFBF
_080151DC: .4byte 0x04000202
_080151E0: .4byte 0x04000134

	thumb_func_start sub_080151E4
sub_080151E4: @ 0x080151E4
	ldr r0, _080151EC @ =gUnk_03006900
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080151EC: .4byte gUnk_03006900

	thumb_func_start sub_080151F0
sub_080151F0: @ 0x080151F0
	ldr r0, _08015200 @ =0x04000128
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	bx lr
	.align 2, 0
_08015200: .4byte 0x04000128

	thumb_func_start sub_08015204
sub_08015204: @ 0x08015204
	ldr r3, _0801521C @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08015220 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0xc0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_0801521C: .4byte 0x04000208
_08015220: .4byte 0x04000200

	thumb_func_start sub_08015224
sub_08015224: @ 0x08015224
	ldr r3, _0801523C @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08015240 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08015244 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_0801523C: .4byte 0x04000208
_08015240: .4byte 0x04000200
_08015244: .4byte 0x0000FF3F

	thumb_func_start sub_08015248
sub_08015248: @ 0x08015248
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _08015274 @ =gUnk_0300690C
	adds r0, r2, #0
	subs r0, #0xc
	ldrh r0, [r0]
	cmp r0, #2
	bne _0801526E
	movs r0, #1
	ldrsb r0, [r2, r0]
	cmp r0, #0x1f
	bgt _0801526E
	adds r1, r2, #4
	adds r0, r0, r1
	strb r3, [r0]
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
_0801526E:
	pop {r0}
	bx r0
	.align 2, 0
_08015274: .4byte gUnk_0300690C

	thumb_func_start sub_08015278
sub_08015278: @ 0x08015278
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r4, _08015330 @ =gUnk_0300690C
	adds r0, r4, #0
	subs r0, #0xc
	ldrh r0, [r0]
	cmp r0, #2
	bne _08015328
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r0, r1, r5
	cmp r0, #0x20
	bgt _08015328
	movs r2, #0
	cmp r2, r5
	bge _08015322
	adds r6, r4, #4
	movs r0, #3
	ands r0, r5
	cmp r5, #0
	ble _080152CA
	cmp r0, #0
	beq _080152DE
	cmp r0, #1
	ble _080152CA
	cmp r0, #2
	ble _080152BA
	adds r1, r1, r6
	ldrb r0, [r3]
	strb r0, [r1]
	movs r2, #1
_080152BA:
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r0, r0, r2
	adds r0, r0, r6
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
_080152CA:
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r0, r0, r2
	adds r0, r6, r0
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r5
	bge _08015322
_080152DE:
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r1, r2
	adds r1, r6, r1
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r1, r0
	adds r1, r6, r1
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #2
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r1, r0
	adds r1, r6, r1
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #3
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r1, r1, r0
	adds r1, r6, r1
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r2, #4
	cmp r2, r5
	blt _080152DE
_08015322:
	ldrb r0, [r4, #1]
	adds r0, r5, r0
	strb r0, [r4, #1]
_08015328:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015330: .4byte gUnk_0300690C

	thumb_func_start sub_08015334
sub_08015334: @ 0x08015334
	ldr r0, _08015344 @ =gUnk_03006900
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08015344: .4byte gUnk_03006900

	thumb_func_start sub_08015348
sub_08015348: @ 0x08015348
	ldr r1, _08015350 @ =gUnk_03006900
	movs r0, #0
	strb r0, [r1, #0xd]
	bx lr
	.align 2, 0
_08015350: .4byte gUnk_03006900

	thumb_func_start sub_08015354
sub_08015354: @ 0x08015354
	push {r4, r5, lr}
	ldr r3, _08015394 @ =gUnk_03006950
	ldrb r5, [r3, #4]
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0801538A
	movs r1, #0
	subs r0, #1
	cmp r1, r0
	bge _08015384
	adds r4, r3, #4
_0801536C:
	adds r2, r4, r1
	adds r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	subs r0, #1
	cmp r1, r0
	blt _0801536C
_08015384:
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
_0801538A:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015394: .4byte gUnk_03006950

	thumb_func_start sub_08015398
sub_08015398: @ 0x08015398
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r6, _08015448 @ =gUnk_03006950
	adds r0, r6, #0
	subs r0, #0x50
	ldrh r0, [r0]
	cmp r0, #2
	bne _08015440
	movs r2, #0
	movs r7, #1
	ldrsb r7, [r6, r7]
	cmp r2, r5
	bge _08015416
	adds r4, r6, #4
	movs r0, #3
	ands r0, r5
	cmp r5, #0
	ble _080153DC
	cmp r0, #0
	beq _080153EA
	cmp r0, #1
	ble _080153DC
	cmp r0, #2
	ble _080153D2
	ldrb r0, [r6, #4]
	strb r0, [r3]
	movs r2, #1
_080153D2:
	adds r0, r3, r2
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
_080153DC:
	adds r0, r3, r2
	adds r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r5
	bge _08015416
_080153EA:
	adds r1, r3, r2
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	adds r1, r3, r0
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #2
	adds r1, r3, r0
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #3
	adds r1, r3, r0
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r2, #4
	cmp r2, r5
	blt _080153EA
_08015416:
	cmp r7, r5
	blt _08015440
	movs r2, #0
	subs r0, r7, r5
	cmp r2, r0
	bge _0801543A
	adds r4, r6, #4
	adds r3, r5, r4
_08015426:
	adds r1, r4, r2
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r2, #1
	movs r0, #1
	ldrsb r0, [r6, r0]
	subs r0, r0, r5
	cmp r2, r0
	blt _08015426
_0801543A:
	ldrb r0, [r6, #1]
	subs r0, r0, r5
	strb r0, [r6, #1]
_08015440:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015448: .4byte gUnk_03006950

	thumb_func_start sub_0801544C
sub_0801544C: @ 0x0801544C
	ldr r0, _0801545C @ =gUnk_03006900
	adds r0, #0x51
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_0801545C: .4byte gUnk_03006900

	thumb_func_start sub_08015460
sub_08015460: @ 0x08015460
	ldr r0, _0801546C @ =gUnk_03006900
	adds r0, #0x51
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0801546C: .4byte gUnk_03006900

	thumb_func_start sub_08015470
sub_08015470: @ 0x08015470
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #1
	movs r3, #0
	movs r5, #1
_0801547C:
	adds r0, r4, #0
	asrs r0, r3
	ands r0, r5
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r3, #1
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r5
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r3, #2
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r5
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r3, #3
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r5
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r3, #4
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r5
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r3, #5
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r5
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r3, #6
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r5
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, #7
	cmp r3, #0xd
	bls _0801547C
	movs r0, #3
	ands r2, r0
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080154F0
sub_080154F0: @ 0x080154F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _080156B0 @ =gSaveBlock1Ptr
	ldr r1, [r4]
	ldr r2, _080156B4 @ =0x010002EC
	mov r0, sp
	bl CpuSet
	movs r0, #1
	bl SetPlayerLevel
	movs r0, #0
	bl SetPlayerExp
	movs r0, #2
	bl sub_08018EC4
	bl sub_08017C40
	ldr r0, _080156B8 @ =gUnk_08B801AC
	ldr r0, [r0]
	bl SetPlayerName
	movs r0, #0
	bl SetPlayerGender
	movs r0, #0
	movs r1, #0
	bl SetForgeLevel
	movs r0, #1
	movs r1, #0
	bl SetForgeLevel
	movs r0, #2
	movs r1, #0
	bl SetForgeLevel
	movs r0, #3
	movs r1, #0
	bl SetForgeLevel
	movs r0, #4
	movs r1, #0
	bl SetForgeLevel
	movs r0, #5
	movs r1, #0
	bl SetForgeLevel
	movs r0, #1
	bl sub_08018E74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SetPlayerMaxHp
	movs r0, #1
	bl sub_08018E74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SetPlayerCurrentHp
	movs r0, #1
	bl sub_08018E88
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #4
	bl SetPlayerAtk
	movs r0, #1
	bl sub_08018E9C
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #4
	bl SetPlayerDef
	movs r0, #1
	bl sub_08018EB0
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #4
	bl SetPlayerAgl
	movs r0, #0
	bl sub_08018354
	ldr r0, _080156BC @ =gUnk_080BABB4
	bl sub_080183AC
	movs r0, #0
	bl sub_08017CD0
	ldr r0, [r4]
	movs r5, #0
	movs r7, #0xff
	adds r6, r4, #0
	ldr r4, _080156C0 @ =0x0000042C
	adds r3, r0, #0
	adds r3, #0xe5
_080155CC:
	ldrb r0, [r3]
	orrs r0, r7
	strb r0, [r3]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, r0, r5
	strb r5, [r0]
	adds r1, r5, #1
	ldrb r0, [r3, #0x1c]
	orrs r0, r7
	strb r0, [r3, #0x1c]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, r0, r1
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x38
	adds r2, r5, #2
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, r0, r2
	strb r2, [r0]
	adds r1, #0x1c
	adds r2, r5, #3
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, r0, r2
	strb r2, [r0]
	adds r1, #0x1c
	adds r2, r5, #4
	ldrb r0, [r1]
	orrs r0, r7
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, r0, r4
	adds r0, r0, r2
	strb r2, [r0]
	adds r3, #0x8c
	adds r5, #5
	cmp r5, #0x1d
	bls _080155CC
	bl sub_08015A28
	movs r0, #0
	movs r1, #0xff
	bl SetPlayerEquipWeaponType
	movs r0, #1
	movs r1, #0xff
	bl SetPlayerEquipWeaponType
	movs r0, #2
	movs r1, #0xff
	bl SetPlayerEquipWeaponType
	movs r0, #0xff
	bl SetPlayerEquipItemType
	bl sub_0801644C
	movs r0, #0xff
	bl SetGuardimalType
	movs r0, #0
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #1
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #2
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #3
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #0
	bl sub_080160F8
	movs r0, #1
	bl sub_08016724
	movs r0, #0
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #1
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #2
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #3
	movs r1, #0xff
	bl SetBattleAidItem
	bl sub_080191E4
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080156B0: .4byte gSaveBlock1Ptr
_080156B4: .4byte 0x010002EC
_080156B8: .4byte gUnk_08B801AC
_080156BC: .4byte gUnk_080BABB4
_080156C0: .4byte 0x0000042C

	thumb_func_start sub_080156C4
sub_080156C4: @ 0x080156C4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_080184F0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _080156EC @ =gUnk_080BABCA
	mov r0, sp
	movs r2, #7
	bl memcpy
	ldr r7, _080156F0 @ =gSaveBlock1Ptr
_080156DC:
	adds r4, #1
	cmp r4, #6
	ble _080156F4
	movs r4, #0
	ldr r0, [r7]
	adds r0, #0x59
	strb r4, [r0]
	b _08015780
	.align 2, 0
_080156EC: .4byte gUnk_080BABCA
_080156F0: .4byte gSaveBlock1Ptr
_080156F4:
	movs r5, #0
	lsls r0, r4, #0x18
	lsrs r6, r0, #0x18
_080156FA:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018728
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08015720
	cmp r0, #0xef
	bhi _08015720
	bl sub_080639E8
	mov r2, sp
	adds r1, r2, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	beq _08015770
_08015720:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018728
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08015748
	cmp r0, #0xef
	bhi _08015748
	bl sub_080639E8
	mov r2, sp
	adds r1, r2, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	beq _08015770
_08015748:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018728
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08015778
	cmp r0, #0xef
	bhi _08015778
	bl sub_080639E8
	mov r2, sp
	adds r1, r2, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bne _08015778
_08015770:
	ldr r0, [r7]
	adds r0, #0x59
	strb r6, [r0]
	b _08015780
_08015778:
	adds r5, #3
	cmp r5, #0x1d
	ble _080156FA
	b _080156DC
_08015780:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08015788
sub_08015788: @ 0x08015788
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_080184F0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _080157B0 @ =gUnk_080BABCA
	mov r0, sp
	movs r2, #7
	bl memcpy
	ldr r7, _080157B4 @ =gSaveBlock1Ptr
_080157A0:
	subs r4, #1
	cmp r4, #0
	bne _080157B8
	ldr r0, [r7]
	adds r0, #0x59
	strb r4, [r0]
	b _0801584A
	.align 2, 0
_080157B0: .4byte gUnk_080BABCA
_080157B4: .4byte gSaveBlock1Ptr
_080157B8:
	cmp r4, #0
	bge _080157BE
	movs r4, #6
_080157BE:
	movs r5, #0
	lsls r0, r4, #0x18
	lsrs r6, r0, #0x18
_080157C4:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018728
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080157EA
	cmp r0, #0xef
	bhi _080157EA
	bl sub_080639E8
	mov r2, sp
	adds r1, r2, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801583A
_080157EA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018728
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08015812
	cmp r0, #0xef
	bhi _08015812
	bl sub_080639E8
	mov r2, sp
	adds r1, r2, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801583A
_08015812:
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018728
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08015842
	cmp r0, #0xef
	bhi _08015842
	bl sub_080639E8
	mov r2, sp
	adds r1, r2, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bne _08015842
_0801583A:
	ldr r0, [r7]
	adds r0, #0x59
	strb r6, [r0]
	b _0801584A
_08015842:
	adds r5, #3
	cmp r5, #0x1d
	ble _080157C4
	b _080157A0
_0801584A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015854
sub_08015854: @ 0x08015854
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080158FC @ =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r7, #0
	movs r6, #0
	adds r4, r0, #0
	adds r4, #0xe4
	movs r0, #0xff
	mov r8, r0
_0801586E:
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	bne _08015900
	strb r5, [r4, #1]
	strb r6, [r4]
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08015888
	movs r0, #1
	strb r0, [r4]
_08015888:
	adds r0, r5, #0
	bl sub_08063B0C
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	bl sub_08063B0C
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_08063B0C
	strh r0, [r4, #0x18]
	strb r6, [r4, #7]
	adds r0, r5, #0
	bl sub_08063BB4
	strb r0, [r4, #2]
	adds r0, r5, #0
	bl sub_08063B9C
	strb r0, [r4, #3]
	ldrb r0, [r4, #4]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #4]
	ldrb r0, [r4, #5]
	orrs r0, r1
	strb r0, [r4, #5]
	ldrb r0, [r4, #6]
	orrs r0, r1
	strb r0, [r4, #6]
	adds r0, r5, #0
	bl sub_08063AC4
	strh r0, [r4, #8]
	adds r0, r5, #0
	bl sub_08063ADC
	strh r0, [r4, #0xa]
	adds r0, r5, #0
	bl sub_08063AF4
	strh r0, [r4, #0xc]
	adds r0, r5, #0
	bl sub_08063AC4
	strh r0, [r4, #0xe]
	adds r0, r5, #0
	bl sub_08063ADC
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	bl sub_08063AF4
	strh r0, [r4, #0x12]
	strb r6, [r4, #0x1a]
	strb r6, [r4, #0x1b]
	b _08015908
	.align 2, 0
_080158FC: .4byte gSaveBlock1Ptr
_08015900:
	adds r4, #0x1c
	adds r7, #1
	cmp r7, #0x1d
	bls _0801586E
_08015908:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015918
sub_08015918: @ 0x08015918
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080159C4 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r6, #0
	mov r8, r6
	adds r4, r0, #0
	adds r4, #0xe4
	movs r7, #0xff
_08015930:
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	bne _080159C8
	strb r5, [r4, #1]
	mov r0, r8
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0801594C
	movs r0, #1
	strb r0, [r4]
_0801594C:
	adds r0, r5, #0
	bl sub_08063B6C
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	bl sub_08063B6C
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_08063B6C
	strh r0, [r4, #0x18]
	mov r1, r8
	strb r1, [r4, #7]
	adds r0, r5, #0
	bl sub_08063BB4
	strb r0, [r4, #2]
	adds r0, r5, #0
	bl sub_08063B9C
	strb r0, [r4, #3]
	ldrb r0, [r4, #4]
	orrs r0, r7
	strb r0, [r4, #4]
	ldrb r0, [r4, #5]
	orrs r0, r7
	strb r0, [r4, #5]
	ldrb r0, [r4, #6]
	orrs r0, r7
	strb r0, [r4, #6]
	adds r0, r5, #0
	bl sub_08063B24
	strh r0, [r4, #8]
	adds r0, r5, #0
	bl sub_08063B3C
	strh r0, [r4, #0xa]
	adds r0, r5, #0
	bl sub_08063B54
	strh r0, [r4, #0xc]
	adds r0, r5, #0
	bl sub_08063B24
	strh r0, [r4, #0xe]
	adds r0, r5, #0
	bl sub_08063B3C
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	bl sub_08063B54
	strh r0, [r4, #0x12]
	movs r0, #1
	strb r0, [r4, #0x1a]
	mov r0, r8
	strb r0, [r4, #0x1b]
	b _080159D0
	.align 2, 0
_080159C4: .4byte gSaveBlock1Ptr
_080159C8:
	adds r4, #0x1c
	adds r6, #1
	cmp r6, #0x1d
	bls _08015930
_080159D0:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080159E0
sub_080159E0: @ 0x080159E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08015A24 @ =gSaveBlock1Ptr
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0xe4
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #1]
	movs r2, #0
	strb r2, [r0]
	movs r3, #0
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	strb r3, [r0, #7]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x18]
	strb r3, [r0, #0x1a]
	strb r3, [r0, #0x1b]
	bx lr
	.align 2, 0
_08015A24: .4byte gSaveBlock1Ptr

	thumb_func_start sub_08015A28
sub_08015A28: @ 0x08015A28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	mov ip, r0
_08015A34:
	movs r6, #0x1d
	movs r1, #1
	add r1, ip
	mov sb, r1
	cmp r6, ip
	bls _08015A86
	ldr r0, _08015A9C @ =gSaveBlock1Ptr
	mov r8, r0
_08015A44:
	mov r1, r8
	ldr r2, [r1]
	subs r7, r6, #1
	ldr r1, _08015AA0 @ =0x0000042C
	adds r0, r2, r1
	adds r5, r0, r7
	ldrb r4, [r5]
	adds r0, r0, r6
	ldrb r3, [r0]
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r1, #0xe5
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, #0xe5
	ldrb r0, [r1]
	ldrb r2, [r2]
	cmp r0, r2
	bls _08015A80
	strb r3, [r5]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _08015AA0 @ =0x0000042C
	adds r0, r0, r1
	adds r0, r0, r6
	strb r4, [r0]
_08015A80:
	adds r6, r7, #0
	cmp r6, ip
	bhi _08015A44
_08015A86:
	mov ip, sb
	mov r0, ip
	cmp r0, #0x1c
	bls _08015A34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015A9C: .4byte gSaveBlock1Ptr
_08015AA0: .4byte 0x0000042C

	thumb_func_start sub_08015AA4
sub_08015AA4: @ 0x08015AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	bl sub_08018728
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r0, r6, #0
	bl sub_08018744
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08018760
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_0801877C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	adds r0, r6, #0
	bl sub_080187B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r6, #0
	bl sub_08018840
	movs r0, #0xff
	str r0, [sp, #0xc]
	movs r1, #0xff
	str r1, [sp, #0x10]
	mov r0, sb
	bl sub_080639E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _08015B8C @ =0xFFFE0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl GetForgeLevel
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r6, #0
	bl sub_08018840
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08015B94
	ldr r0, [sp]
	lsls r1, r0, #0xc
	ldr r0, _08015B90 @ =gUnk_08B801A0
	adds r0, r7, r0
	ldrb r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	movs r5, #0xc8
	lsls r5, r5, #0xb
	adds r1, r5, #0
	bl __udivsi3
	str r0, [sp]
	ldr r1, [sp, #4]
	lsls r0, r1, #0xc
	muls r0, r4, r0
	adds r1, r5, #0
	bl __udivsi3
	str r0, [sp, #4]
	mov r1, sl
	lsls r0, r1, #0xc
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	mov sl, r0
	ldr r1, [sp, #8]
	lsls r0, r1, #0xc
	muls r0, r4, r0
	adds r1, r5, #0
	bl __udivsi3
	str r0, [sp, #8]
	cmp r7, #4
	bls _08015BFE
	adds r0, r6, #0
	bl sub_08018894
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl sub_08018878
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	b _08015BFE
	.align 2, 0
_08015B8C: .4byte 0xFFFE0000
_08015B90: .4byte gUnk_08B801A0
_08015B94:
	ldr r0, _08015C20 @ =gUnk_08B8018C
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r5, r0, #0xc
	ldr r0, _08015C24 @ =gUnk_08B80196
	adds r0, r7, r0
	ldrb r4, [r0]
	lsls r4, r4, #0xc
	adds r0, r6, #0
	bl sub_08018840
	subs r4, r4, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	movs r1, #0xfe
	bl __divsi3
	muls r4, r0, r4
	cmp r4, #0
	bge _08015BC0
	ldr r0, _08015C28 @ =0x00000FFF
	adds r4, r4, r0
_08015BC0:
	asrs r4, r4, #0xc
	adds r4, r5, r4
	ldr r1, [sp]
	adds r0, r1, #0
	muls r0, r4, r0
	movs r5, #0xc8
	lsls r5, r5, #0xb
	adds r1, r5, #0
	bl __udivsi3
	str r0, [sp]
	ldr r1, [sp, #4]
	adds r0, r1, #0
	muls r0, r4, r0
	adds r1, r5, #0
	bl __udivsi3
	str r0, [sp, #4]
	mov r0, sl
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	mov sl, r0
	ldr r1, [sp, #8]
	adds r0, r1, #0
	muls r0, r4, r0
	adds r1, r5, #0
	bl __udivsi3
	str r0, [sp, #8]
_08015BFE:
	mov r0, sl
	cmp r0, #0
	bge _08015C08
	movs r1, #0
	mov sl, r1
_08015C08:
	movs r0, #0
	bl GetEquipWeapon
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08015C30
	movs r1, #0xff
	ldr r0, _08015C2C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x46
	b _08015C62
	.align 2, 0
_08015C20: .4byte gUnk_08B8018C
_08015C24: .4byte gUnk_08B80196
_08015C28: .4byte 0x00000FFF
_08015C2C: .4byte gSaveBlock1Ptr
_08015C30:
	movs r0, #1
	bl GetEquipWeapon
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08015C4C
	movs r1, #0xff
	ldr r0, _08015C48 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x47
	b _08015C62
	.align 2, 0
_08015C48: .4byte gSaveBlock1Ptr
_08015C4C:
	movs r0, #2
	bl GetEquipWeapon
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _08015C64
	movs r1, #0xff
	ldr r0, _08015C78 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x48
_08015C62:
	strb r1, [r0]
_08015C64:
	bl sub_0801644C
	adds r0, r6, #0
	bl sub_080159E0
	mov r0, r8
	cmp r0, #0
	bne _08015C7C
	movs r1, #0xf0
	b _08015CAC
	.align 2, 0
_08015C78: .4byte gSaveBlock1Ptr
_08015C7C:
	mov r0, r8
	cmp r0, #1
	bne _08015C86
	movs r1, #0xf1
	b _08015CAC
_08015C86:
	mov r0, r8
	cmp r0, #2
	bne _08015C90
	movs r1, #0xf2
	b _08015CAC
_08015C90:
	mov r0, r8
	cmp r0, #3
	bne _08015C9A
	movs r1, #0xf3
	b _08015CAC
_08015C9A:
	mov r0, r8
	cmp r0, #4
	bne _08015CA4
	movs r1, #0xf4
	b _08015CAC
_08015CA4:
	mov r0, r8
	cmp r0, #5
	bne _08015CAE
	movs r1, #0xf5
_08015CAC:
	mov sb, r1
_08015CAE:
	mov r0, sb
	bl sub_08015854
	adds r6, r0, #0
	adds r0, r6, #0
	bl sub_080187D0
	adds r1, r0, #0
	ldr r0, [sp]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl SetBagWeaponAtk
	adds r0, r6, #0
	bl sub_080187EC
	adds r1, r0, #0
	ldr r0, [sp, #4]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl SetBagWeaponDef
	adds r0, r6, #0
	bl sub_08018808
	adds r1, r0, #0
	add r1, sl
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl SetBagWeaponAgl
	adds r0, r6, #0
	bl sub_08018824
	adds r1, r0, #0
	ldr r0, [sp, #8]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl SetBagWeaponMaxDur
	adds r0, r6, #0
	ldr r1, [sp, #0xc]
	bl SetBagWeaponSkill
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	bl SetBagWeaponSpecialEffect
	bl sub_08015A28
	adds r0, r6, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015D34
sub_08015D34: @ 0x08015D34
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	movs r1, #0
	bl sub_080188B0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	beq _08015D6C
	adds r0, r4, #0
	bl sub_08018B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	beq _08015D6C
	adds r0, r4, #0
	bl sub_08018B50
	adds r1, r0, #0
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018338
_08015D6C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_080188B0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	beq _08015D9E
	adds r0, r4, #0
	bl sub_08018B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	beq _08015D9E
	adds r0, r4, #0
	bl sub_08018B50
	adds r1, r0, #0
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018338
_08015D9E:
	adds r0, r5, #0
	movs r1, #2
	bl sub_080188B0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	beq _08015DD0
	adds r0, r4, #0
	bl sub_08018B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	beq _08015DD0
	adds r0, r4, #0
	bl sub_08018B50
	adds r1, r0, #0
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018338
_08015DD0:
	adds r0, r5, #0
	movs r1, #0xff
	bl SetBagWeaponSkill
	adds r0, r5, #0
	movs r1, #0xff
	bl SetBagWeaponSpecialEffect
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl SetBagWeaponEnhanceItem
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xff
	bl SetBagWeaponEnhanceItem
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl SetBagWeaponEnhanceItem
	adds r0, r5, #0
	bl sub_08015E3C
	adds r0, r5, #0
	bl sub_080187B4
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08018798
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bhs _08015E2C
	adds r0, r5, #0
	bl sub_080187B4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl SetBagWeaponCurrentDur
_08015E2C:
	adds r0, r5, #0
	movs r1, #0
	bl SetBagWeaponTec
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015E3C
sub_08015E3C: @ 0x08015E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r4, _08015E70 @ =gSaveBlock1Ptr
	ldr r0, [r4]
	adds r5, r0, #0
	adds r5, #0xe4
	adds r0, r7, #0
	bl sub_080187D0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r4]
	adds r3, r0, #0
	adds r3, #0xe4
	adds r0, r1, #0
	ldr r2, _08015E74 @ =0x000003E7
	cmp r0, r2
	ble _08015E78
	adds r1, r2, #0
	b _08015E7E
	.align 2, 0
_08015E70: .4byte gSaveBlock1Ptr
_08015E74: .4byte 0x000003E7
_08015E78:
	cmp r0, #0
	bge _08015E7E
	movs r1, #0
_08015E7E:
	lsls r4, r7, #3
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r1, [r0, #8]
	adds r0, r7, #0
	bl sub_080187EC
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08015EA8 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0xe4
	adds r0, r1, #0
	ldr r2, _08015EAC @ =0x000003E7
	str r4, [sp]
	cmp r0, r2
	ble _08015EB0
	adds r1, r2, #0
	b _08015EB6
	.align 2, 0
_08015EA8: .4byte gSaveBlock1Ptr
_08015EAC: .4byte 0x000003E7
_08015EB0:
	cmp r0, #0
	bge _08015EB6
	movs r1, #0
_08015EB6:
	ldr r2, [sp]
	subs r0, r2, r7
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r1, [r0, #0xa]
	adds r0, r7, #0
	bl sub_08018808
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08015EE0 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0xe4
	adds r2, r1, #0
	ldr r0, _08015EE4 @ =0x000003E7
	cmp r2, r0
	ble _08015EE8
	adds r1, r0, #0
	b _08015EF2
	.align 2, 0
_08015EE0: .4byte gSaveBlock1Ptr
_08015EE4: .4byte 0x000003E7
_08015EE8:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08015EF2
	ldr r1, _08015F1C @ =0x0000FF80
_08015EF2:
	ldr r4, [sp]
	subs r0, r4, r7
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_08018824
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _08015F20 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0xe4
	adds r0, r2, #0
	ldr r1, _08015F24 @ =0x000003E7
	cmp r0, r1
	ble _08015F28
	adds r2, r1, #0
	b _08015F2E
	.align 2, 0
_08015F1C: .4byte 0x0000FF80
_08015F20: .4byte gSaveBlock1Ptr
_08015F24: .4byte 0x000003E7
_08015F28:
	cmp r0, #0
	bgt _08015F2E
	movs r2, #1
_08015F2E:
	ldr r1, [sp]
	subs r0, r1, r7
	lsls r0, r0, #2
	adds r1, r0, r3
	strh r2, [r1, #0x16]
	movs r2, #0
	mov sl, r2
	adds r6, r0, #0
	adds r5, r6, r5
	ldr r3, _08015F7C @ =0x03E70000
	mov sb, r3
	ldr r4, _08015F80 @ =gSaveBlock1Ptr
	mov r8, r4
_08015F48:
	adds r0, r5, #4
	add r0, sl
	ldrb r4, [r0]
	cmp r4, #0xff
	beq _08016032
	adds r0, r4, #0
	bl sub_080638F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #8]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0xe4
	mov ip, r0
	adds r1, r2, #0
	mov r0, sb
	asrs r3, r0, #0x10
	cmp r1, r3
	ble _08015F84
	adds r2, r3, #0
	b _08015F8A
	.align 2, 0
_08015F7C: .4byte 0x03E70000
_08015F80: .4byte gSaveBlock1Ptr
_08015F84:
	cmp r1, #0
	bge _08015F8A
	movs r2, #0
_08015F8A:
	mov r1, ip
	adds r0, r6, r1
	strh r2, [r0, #8]
	adds r0, r4, #0
	bl sub_08063914
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r5, #0xa]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0xe4
	mov ip, r0
	adds r1, r2, #0
	mov r0, sb
	asrs r3, r0, #0x10
	cmp r1, r3
	ble _08015FB8
	adds r2, r3, #0
	b _08015FBE
_08015FB8:
	cmp r1, #0
	bge _08015FBE
	movs r2, #0
_08015FBE:
	mov r1, ip
	adds r0, r6, r1
	strh r2, [r0, #0xa]
	adds r0, r4, #0
	bl sub_08063930
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0xe4
	mov ip, r0
	adds r2, r1, #0
	mov r3, sb
	asrs r0, r3, #0x10
	cmp r2, r0
	ble _08015FEC
	adds r1, r0, #0
	b _08015FF6
_08015FEC:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08015FF6
	ldr r1, _08016024 @ =0x0000FF80
_08015FF6:
	mov r2, ip
	adds r0, r6, r2
	strh r1, [r0, #0xc]
	adds r0, r4, #0
	bl sub_0806394C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5, #0x16]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r4, r8
	ldr r0, [r4]
	adds r0, #0xe4
	adds r1, r2, #0
	mov r4, sb
	asrs r3, r4, #0x10
	cmp r1, r3
	ble _08016028
	adds r2, r3, #0
	b _0801602E
	.align 2, 0
_08016024: .4byte 0x0000FF80
_08016028:
	cmp r1, #0
	bgt _0801602E
	movs r2, #1
_0801602E:
	adds r0, r6, r0
	strh r2, [r0, #0x16]
_08016032:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #2
	bls _08015F48
	adds r0, r7, #0
	bl sub_080187B4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801605A
	ldr r0, _0801606C @ =gSaveBlock1Ptr
	ldr r1, [r0]
	adds r1, #0xe4
	movs r2, #1
	ldr r3, [sp]
	subs r0, r3, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	strh r2, [r0, #0x16]
_0801605A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801606C: .4byte gSaveBlock1Ptr

	thumb_func_start sub_08016070
sub_08016070: @ 0x08016070
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080160CC @ =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r1, #0
	mov sb, r1
	adds r7, r0, #0
	adds r7, #0xe4
_08016084:
	ldrb r0, [r7, #1]
	cmp r0, #0xff
	beq _080160E0
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080160E0
	mov r0, sb
	lsls r4, r0, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_080187B4
	lsls r0, r0, #0x10
	adds r6, r4, #0
	asrs r5, r0, #0x10
	ldr r0, _080160CC @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0xe4
	mov r8, r0
	adds r4, r5, #0
	adds r0, r6, #0
	bl sub_080187B4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	ble _080160D0
	adds r0, r6, #0
	bl sub_080187B4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _080160D6
	.align 2, 0
_080160CC: .4byte gSaveBlock1Ptr
_080160D0:
	cmp r4, #0
	bge _080160D6
	movs r5, #0
_080160D6:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	add r0, r8
	strh r5, [r0, #0x14]
_080160E0:
	adds r7, #0x1c
	movs r1, #1
	add sb, r1
	mov r0, sb
	cmp r0, #0x1d
	bls _08016084
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080160F8
sub_080160F8: @ 0x080160F8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xff
	bne _08016104
	b _08016254
_08016104:
	adds r0, r5, #0
	bl SetGuardimalType
	ldr r0, _0801625C @ =gUnk_08B801BC
	lsls r4, r5, #2
	adds r0, r4, r0
	ldr r0, [r0]
	bl SetGuardimalName
	movs r0, #1
	bl SetGuardimalLevel
	movs r0, #1
	bl sub_08016C78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SetGuardimalHp
	movs r0, #1
	bl sub_08016C78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018210
	movs r0, #1
	bl sub_08016CD8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SetGuardimalAtk
	movs r0, #1
	bl sub_08016D38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SetGuardimalDef
	movs r0, #1
	bl sub_08016D98
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl SetGuardimalAgl
	movs r0, #1
	bl sub_08016DF8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SetGuardimalMag
	movs r0, #0
	bl SetGuardimalExp
	movs r0, #2
	bl sub_08016E58
	bl SetGuardimalNextExp
	movs r0, #0
	movs r1, #0x92
	bl SetBattleAidItem
	movs r0, #1
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #2
	movs r1, #0xff
	bl SetBattleAidItem
	movs r0, #3
	movs r1, #0xff
	bl SetBattleAidItem
	movs r6, #0
	ldr r0, _08016260 @ =gUnk_08B7E0A8
	adds r4, r4, r5
	lsls r4, r4, #2
	adds r4, r4, r5
	adds r5, r4, r0
_080161AC:
	lsls r4, r6, #0x18
	lsrs r4, r4, #0x18
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_08018284
	movs r0, #1
	adds r1, r4, #0
	bl sub_08016EBC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_080182AC
	movs r0, #1
	adds r1, r4, #0
	bl sub_08016EBC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018298
	adds r4, r6, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r1, [r5, #1]
	adds r0, r4, #0
	bl sub_08018284
	movs r0, #1
	adds r1, r4, #0
	bl sub_08016EBC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_080182AC
	movs r0, #1
	adds r1, r4, #0
	bl sub_08016EBC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018298
	adds r4, r6, #2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r1, [r5, #2]
	adds r0, r4, #0
	bl sub_08018284
	movs r0, #1
	adds r1, r4, #0
	bl sub_08016EBC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_080182AC
	movs r0, #1
	adds r1, r4, #0
	bl sub_08016EBC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018298
	adds r5, #3
	adds r6, #3
	cmp r6, #0x14
	bls _080161AC
_08016254:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801625C: .4byte gUnk_08B801BC
_08016260: .4byte gUnk_08B7E0A8

	thumb_func_start sub_08016264
sub_08016264: @ 0x08016264
	push {r4, r5, lr}
	lsls r3, r0, #0x18
	lsrs r5, r3, #0x18
	lsls r1, r1, #0x18
	asrs r4, r1, #0x18
	cmp r4, #1
	bne _08016294
	ldr r0, _0801628C @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r0, r3, #0x1b
	ldr r1, _08016290 @ =0x00000564
	adds r2, r2, r1
	adds r2, r2, r0
	movs r1, #7
	ands r1, r5
	adds r0, r4, #0
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _080162AC
	.align 2, 0
_0801628C: .4byte gSaveBlock1Ptr
_08016290: .4byte 0x00000564
_08016294:
	ldr r0, _080162B4 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r0, r3, #0x1b
	ldr r1, _080162B8 @ =0x00000564
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #7
	ands r0, r5
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
_080162AC:
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080162B4: .4byte gSaveBlock1Ptr
_080162B8: .4byte 0x00000564

	thumb_func_start sub_080162BC
sub_080162BC: @ 0x080162BC
	push {r4, r5, r6, lr}
	lsls r3, r0, #0x18
	lsrs r6, r3, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	asrs r5, r2, #0x18
	cmp r5, #1
	bne _080162F8
	ldr r0, _080162F0 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r1, r3, #0x1b
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _080162F4 @ =0x00000583
	adds r2, r2, r0
	adds r2, r2, r1
	movs r1, #7
	ands r1, r6
	adds r0, r5, #0
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _08016318
	.align 2, 0
_080162F0: .4byte gSaveBlock1Ptr
_080162F4: .4byte 0x00000583
_080162F8:
	ldr r0, _08016320 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r1, r3, #0x1b
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08016324 @ =0x00000583
	adds r2, r2, r0
	adds r2, r2, r1
	movs r0, #7
	ands r0, r6
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
_08016318:
	strb r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016320: .4byte gSaveBlock1Ptr
_08016324: .4byte 0x00000583

	thumb_func_start sub_08016328
sub_08016328: @ 0x08016328
	push {r4, r5, r6, lr}
	lsls r3, r0, #0x18
	lsrs r6, r3, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	asrs r5, r2, #0x18
	cmp r5, #1
	bne _08016364
	ldr r0, _0801635C @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r1, r3, #0x1b
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08016360 @ =0x0000058F
	adds r2, r2, r0
	adds r2, r2, r1
	movs r1, #7
	ands r1, r6
	adds r0, r5, #0
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _08016384
	.align 2, 0
_0801635C: .4byte gSaveBlock1Ptr
_08016360: .4byte 0x0000058F
_08016364:
	ldr r0, _0801638C @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r1, r3, #0x1b
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08016390 @ =0x0000058F
	adds r2, r2, r0
	adds r2, r2, r1
	movs r0, #7
	ands r0, r6
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
_08016384:
	strb r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801638C: .4byte gSaveBlock1Ptr
_08016390: .4byte 0x0000058F

	thumb_func_start sub_08016394
sub_08016394: @ 0x08016394
	push {r4, r5, lr}
	lsls r3, r0, #0x18
	lsrs r5, r3, #0x18
	lsls r1, r1, #0x18
	asrs r4, r1, #0x18
	cmp r4, #1
	bne _080163C4
	ldr r0, _080163BC @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r0, r3, #0x1b
	ldr r1, _080163C0 @ =0x0000054A
	adds r2, r2, r1
	adds r2, r2, r0
	movs r1, #7
	ands r1, r5
	adds r0, r4, #0
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _080163DC
	.align 2, 0
_080163BC: .4byte gSaveBlock1Ptr
_080163C0: .4byte 0x0000054A
_080163C4:
	ldr r0, _080163E4 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r0, r3, #0x1b
	ldr r1, _080163E8 @ =0x0000054A
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #7
	ands r0, r5
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
_080163DC:
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080163E4: .4byte gSaveBlock1Ptr
_080163E8: .4byte 0x0000054A

	thumb_func_start sub_080163EC
sub_080163EC: @ 0x080163EC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	ldr r2, _08016418 @ =0xFF9C0000
	adds r3, r0, r2
	lsrs r5, r3, #0x10
	lsls r1, r1, #0x18
	asrs r4, r1, #0x18
	cmp r4, #1
	bne _08016424
	ldr r0, _0801641C @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r0, r3, #0x13
	ldr r1, _08016420 @ =0x0000059B
	adds r2, r2, r1
	adds r2, r2, r0
	movs r1, #7
	ands r1, r5
	adds r0, r4, #0
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _0801643C
	.align 2, 0
_08016418: .4byte 0xFF9C0000
_0801641C: .4byte gSaveBlock1Ptr
_08016420: .4byte 0x0000059B
_08016424:
	ldr r0, _08016444 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	lsrs r0, r3, #0x13
	ldr r1, _08016448 @ =0x0000059B
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #7
	ands r0, r5
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
_0801643C:
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016444: .4byte gSaveBlock1Ptr
_08016448: .4byte 0x0000059B

	thumb_func_start sub_0801644C
sub_0801644C: @ 0x0801644C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080164A4 @ =gSaveBlock1Ptr
	ldr r1, [r0]
	ldrh r2, [r1, #0x30]
	mov sb, r2
	ldrh r3, [r1, #0x3a]
	mov r8, r3
	adds r2, r1, #0
	adds r2, #0x44
	movs r3, #0
	ldrsh r7, [r2, r3]
	adds r1, #0x49
	ldrb r4, [r1]
	mov ip, r0
	cmp r4, #0xff
	beq _080164EE
	adds r0, r4, #0
	bl sub_08063968
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add sb, r0
	adds r0, r4, #0
	bl sub_08063984
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r8, r0
	adds r0, r4, #0
	bl sub_080639A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r7, r0
	ldr r0, _080164A8 @ =0x000003E7
	cmp sb, r0
	ble _080164AC
	mov sb, r0
	b _080164B6
	.align 2, 0
_080164A4: .4byte gSaveBlock1Ptr
_080164A8: .4byte 0x000003E7
_080164AC:
	mov r0, sb
	cmp r0, #0
	bge _080164B6
	movs r1, #0
	mov sb, r1
_080164B6:
	ldr r0, _080164C0 @ =0x000003E7
	cmp r8, r0
	ble _080164C4
	mov r8, r0
	b _080164CE
	.align 2, 0
_080164C0: .4byte 0x000003E7
_080164C4:
	mov r2, r8
	cmp r2, #0
	bge _080164CE
	movs r3, #0
	mov r8, r3
_080164CE:
	ldr r0, _080164DC @ =0x000003E7
	cmp r7, r0
	ble _080164E4
	adds r7, r0, #0
	ldr r0, _080164E0 @ =gSaveBlock1Ptr
	mov ip, r0
	b _080164EE
	.align 2, 0
_080164DC: .4byte 0x000003E7
_080164E0: .4byte gSaveBlock1Ptr
_080164E4:
	ldr r1, _08016558 @ =gSaveBlock1Ptr
	mov ip, r1
	cmp r7, #0
	bge _080164EE
	movs r7, #0
_080164EE:
	mov r2, ip
	ldr r0, [r2]
	mov r3, sb
	strh r3, [r0, #0x2e]
	mov r1, r8
	strh r1, [r0, #0x38]
	adds r0, #0x42
	strh r7, [r0]
	movs r2, #0
	mov sl, r2
	movs r3, #2
	str r3, [sp]
_08016506:
	mov r1, ip
	ldr r0, [r1]
	ldrh r6, [r0, #0x2e]
	ldrh r5, [r0, #0x38]
	adds r1, r0, #0
	adds r1, #0x42
	movs r2, #0
	ldrsh r3, [r1, r2]
	mov r2, sl
	lsrs r1, r2, #0x18
	adds r0, #0x46
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0xff
	beq _0801659A
	adds r0, r4, #0
	bl sub_08018744
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	adds r6, r3, r0
	adds r0, r4, #0
	bl sub_08018760
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r5, r1, r0
	adds r0, r4, #0
	bl sub_0801877C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r7, r0
	ldr r2, _0801655C @ =0x000003E7
	cmp r6, r2
	ble _08016560
	adds r6, r2, #0
	b _08016566
	.align 2, 0
_08016558: .4byte gSaveBlock1Ptr
_0801655C: .4byte 0x000003E7
_08016560:
	cmp r6, #0
	bge _08016566
	movs r6, #0
_08016566:
	ldr r0, _08016570 @ =0x000003E7
	cmp r5, r0
	ble _08016574
	adds r5, r0, #0
	b _0801657A
	.align 2, 0
_08016570: .4byte 0x000003E7
_08016574:
	cmp r5, #0
	bge _0801657A
	movs r5, #0
_0801657A:
	ldr r1, _08016588 @ =0x000003E7
	cmp r3, r1
	ble _08016590
	adds r3, r1, #0
	ldr r2, _0801658C @ =gSaveBlock1Ptr
	mov ip, r2
	b _0801659A
	.align 2, 0
_08016588: .4byte 0x000003E7
_0801658C: .4byte gSaveBlock1Ptr
_08016590:
	ldr r0, _080165DC @ =gSaveBlock1Ptr
	mov ip, r0
	cmp r3, #0
	bge _0801659A
	movs r3, #0
_0801659A:
	mov r2, sl
	lsrs r1, r2, #0x18
	mov r0, ip
	ldr r2, [r0]
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x28
	adds r0, r0, r1
	strh r6, [r0]
	adds r0, r2, #0
	adds r0, #0x32
	adds r0, r0, r1
	strh r5, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	adds r0, r0, r1
	strh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x11
	add sl, r1
	ldr r2, [sp]
	subs r2, #1
	str r2, [sp]
	cmp r2, #0
	bge _08016506
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080165DC: .4byte gSaveBlock1Ptr

	thumb_func_start sub_080165E0
sub_080165E0: @ 0x080165E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r0, #1
	bl sub_08018E74
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #1
	bl sub_08018E88
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #1
	bl sub_08018E9C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #1
	bl sub_08018EB0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	movs r4, #2
	b _080166A0
_08016622:
	adds r0, r4, #0
	bl sub_08018E74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r4, #0
	bl sub_08018E88
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r4, #0
	bl sub_08018E9C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r4, #0
	bl sub_08018EB0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r4, #0x14
	bhi _08016670
	adds r0, r5, #1
	b _08016696
_08016670:
	cmp r4, #0x28
	bhi _08016678
	adds r0, r5, #2
	b _08016696
_08016678:
	cmp r4, #0x3c
	bhi _08016680
	adds r0, r5, #3
	b _08016696
_08016680:
	cmp r4, #0x50
	bhi _08016688
	adds r0, r5, #4
	b _08016696
_08016688:
	cmp r4, #0x5f
	bhi _08016690
	adds r0, r5, #5
	b _08016696
_08016690:
	cmp r4, #0x63
	bhi _0801669A
	adds r0, r5, #6
_08016696:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801669A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080166A0:
	adds r0, r6, #1
	cmp r4, r0
	blt _08016622
	adds r0, r6, #0
	bl sub_08018EC4
	adds r4, r0, #0
	cmp r6, #0x62
	bhi _080166C0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018EC4
	subs r3, r0, r4
	b _080166C2
_080166C0:
	movs r3, #0
_080166C2:
	ldr r1, _08016718 @ =gSaveBlock1Ptr
	ldr r0, [r1]
	strb r6, [r0, #1]
	ldr r2, [r1]
	strh r7, [r2, #0x24]
	strh r7, [r2, #0x26]
	adds r0, r5, #0
	ldr r2, [r1]
	ldr r1, _0801671C @ =0x0000270F
	cmp r0, r1
	bls _080166DA
	adds r0, r1, #0
_080166DA:
	adds r1, r2, #0
	adds r1, #0x56
	strh r0, [r1]
	mov r0, sl
	strh r0, [r2, #0x30]
	mov r1, sb
	strh r1, [r2, #0x3a]
	adds r0, r2, #0
	adds r0, #0x44
	mov r1, r8
	strh r1, [r0]
	adds r0, r4, #0
	ldr r1, _08016720 @ =0x05F5E0FF
	cmp r0, r1
	bls _080166FA
	adds r0, r1, #0
_080166FA:
	str r0, [r2, #0x5c]
	adds r0, r3, #0
	cmp r0, r1
	bls _08016704
	adds r0, r1, #0
_08016704:
	str r0, [r2, #0x60]
	bl sub_0801644C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016718: .4byte gSaveBlock1Ptr
_0801671C: .4byte 0x0000270F
_08016720: .4byte 0x05F5E0FF

	thumb_func_start sub_08016724
sub_08016724: @ 0x08016724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_08018914
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0xff
	bne _08016744
	b _08016906
_08016744:
	movs r0, #1
	bl sub_08016C78
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r0, #1
	bl sub_08016DF8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #1
	bl sub_08016CD8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #1
	bl sub_08016D38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #1
	bl sub_08016D98
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r4, #0
	movs r5, #2
	adds r0, r7, #1
	mov r8, r0
	ldr r1, [sp]
	lsls r1, r1, #2
	str r1, [sp, #0x14]
	cmp r5, r8
	bge _08016830
_08016792:
	adds r0, r5, #0
	bl sub_08016C78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl sub_08016DF8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [sp, #4]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_08016CD8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [sp, #8]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r5, #0
	bl sub_08016D38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r0, r5, #0
	bl sub_08016D98
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	cmp r5, #0x14
	bhi _080167FC
	adds r0, r4, #1
	b _08016822
_080167FC:
	cmp r5, #0x28
	bhi _08016804
	adds r0, r4, #2
	b _08016822
_08016804:
	cmp r5, #0x3c
	bhi _0801680C
	adds r0, r4, #3
	b _08016822
_0801680C:
	cmp r5, #0x50
	bhi _08016814
	adds r0, r4, #4
	b _08016822
_08016814:
	cmp r5, #0x5f
	bhi _0801681C
	adds r0, r4, #5
	b _08016822
_0801681C:
	cmp r5, #0x63
	bhi _08016826
	adds r0, r4, #6
_08016822:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08016826:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blt _08016792
_08016830:
	adds r0, r7, #0
	bl sub_08016E58
	str r0, [sp, #0xc]
	cmp r7, #0x62
	bhi _0801684E
	mov r3, r8
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	bl sub_08016E58
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	b _08016852
_0801684E:
	movs r2, #0
	str r2, [sp, #0x10]
_08016852:
	ldr r0, _08016868 @ =gSaveBlock1Ptr
	ldr r1, [r0]
	adds r1, #0x64
	strb r7, [r1, #1]
	ldr r0, [r0]
	adds r0, #0x64
	ldrh r1, [r0, #0x10]
	cmp r6, r1
	bls _0801686C
	strh r1, [r0, #0x12]
	b _0801686E
	.align 2, 0
_08016868: .4byte gSaveBlock1Ptr
_0801686C:
	strh r6, [r0, #0x12]
_0801686E:
	ldr r1, _08016918 @ =gSaveBlock1Ptr
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x64
	strh r6, [r2, #0x10]
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r2, #0x14]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r2, #0x16]
	mov r3, sl
	strh r3, [r2, #0x18]
	mov r0, sb
	strh r0, [r2, #0x1a]
	adds r0, r4, #0
	ldr r3, _0801691C @ =0x0000270F
	cmp r0, r3
	bls _08016896
	adds r0, r3, #0
_08016896:
	strh r0, [r2, #0x1c]
	movs r5, #0
	ldr r2, _08016920 @ =gUnk_08B7E0A8
	mov sb, r2
	adds r6, r1, #0
	ldr r3, [sp, #0x14]
	ldr r1, [sp]
	adds r0, r3, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r8, r0
_080168AC:
	mov r2, r8
	adds r0, r5, r2
	add r0, sb
	ldrb r1, [r0]
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, r0, r4
	adds r0, #0x90
	strb r1, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08016EBC
	ldr r1, [r6]
	adds r1, r1, r4
	adds r1, #0x93
	strb r0, [r1]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08016EBC
	ldr r1, [r6]
	adds r1, r1, r4
	adds r1, #0x92
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x14
	bls _080168AC
	ldr r1, [sp, #0xc]
	ldr r0, _08016918 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x64
	ldr r2, _08016924 @ =0x05F5E0FF
	cmp r1, r2
	bls _080168FA
	adds r1, r2, #0
_080168FA:
	str r1, [r3, #0x20]
	ldr r0, [sp, #0x10]
	cmp r0, r2
	bls _08016904
	adds r0, r2, #0
_08016904:
	str r0, [r3, #0x24]
_08016906:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016918: .4byte gSaveBlock1Ptr
_0801691C: .4byte 0x0000270F
_08016920: .4byte gUnk_08B7E0A8
_08016924: .4byte 0x05F5E0FF

	thumb_func_start sub_08016928
sub_08016928: @ 0x08016928
	push {r4, r5, r6, lr}
	ldr r0, _080169AC @ =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r5, #0
	movs r6, #0
	adds r4, r0, #0
	adds r4, #0xe4
_08016936:
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	beq _08016966
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08016966
	ldrb r0, [r4, #1]
	bl sub_080639E8
	lsls r0, r0, #0x18
	movs r1, #0xfe
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	ldr r1, _080169AC @ =gSaveBlock1Ptr
	ldr r1, [r1]
	adds r1, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08016966
	adds r5, #1
_08016966:
	adds r2, r4, #0
	adds r2, #0x1c
	ldrb r0, [r2, #1]
	cmp r0, #0xff
	beq _0801699A
	ldrb r1, [r4, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801699A
	ldrb r0, [r2, #1]
	bl sub_080639E8
	lsls r0, r0, #0x18
	movs r1, #0xfe
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	ldr r1, _080169AC @ =gSaveBlock1Ptr
	ldr r1, [r1]
	adds r1, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801699A
	adds r5, #1
_0801699A:
	adds r4, #0x38
	adds r6, #2
	cmp r6, #0x1d
	bls _08016936
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080169AC: .4byte gSaveBlock1Ptr

	thumb_func_start sub_080169B0
sub_080169B0: @ 0x080169B0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08016A58 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r7, #0
	movs r6, #0
	adds r4, r0, #0
	adds r4, #0xe4
_080169BE:
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	beq _080169FE
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080169FE
	ldrb r0, [r4, #1]
	bl sub_080639E8
	lsls r0, r0, #0x18
	movs r1, #0xfe
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	ldr r1, _08016A58 @ =gSaveBlock1Ptr
	ldr r1, [r1]
	adds r1, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #2
	bls _080169FE
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018840
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080169FE
	adds r7, #1
_080169FE:
	adds r2, r4, #0
	adds r2, #0x1c
	adds r5, r6, #1
	ldrb r0, [r2, #1]
	cmp r0, #0xff
	beq _08016A44
	ldrb r1, [r4, #0x1c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08016A44
	ldrb r0, [r2, #1]
	bl sub_080639E8
	lsls r0, r0, #0x18
	movs r1, #0xfe
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	ldr r1, _08016A58 @ =gSaveBlock1Ptr
	ldr r1, [r1]
	adds r1, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #2
	bls _08016A44
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08018840
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08016A44
	adds r7, #1
_08016A44:
	adds r4, #0x38
	adds r6, #2
	cmp r6, #0x1d
	bls _080169BE
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016A58: .4byte gSaveBlock1Ptr

	thumb_func_start sub_08016A5C
sub_08016A5C: @ 0x08016A5C
	push {r4, r5, lr}
	movs r3, #0
	ldr r1, _08016A70 @ =gSaveBlock1Ptr
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016A7C
	ldr r0, _08016A74 @ =gUnk_08B801AC
	ldr r3, [r0]
	b _08016A84
	.align 2, 0
_08016A70: .4byte gSaveBlock1Ptr
_08016A74: .4byte gUnk_08B801AC
_08016A78:
	movs r5, #0
	b _08016AB0
_08016A7C:
	cmp r0, #1
	bne _08016A84
	ldr r0, _08016AB8 @ =gUnk_08B801AC
	ldr r3, [r0, #4]
_08016A84:
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #8
	movs r5, #1
	movs r4, #0
	ldrh r1, [r3]
	ldrh r0, [r0, #8]
	cmp r1, r0
	bne _08016A78
	cmp r1, #0
	beq _08016AB0
_08016A9A:
	adds r3, #2
	adds r2, #2
	adds r4, #1
	cmp r4, #5
	bhi _08016AB0
	ldrh r0, [r3]
	ldrh r1, [r2]
	cmp r0, r1
	bne _08016A78
	cmp r0, #0
	bne _08016A9A
_08016AB0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08016AB8: .4byte gUnk_08B801AC

	thumb_func_start sub_08016ABC
sub_08016ABC: @ 0x08016ABC
	push {r4, r5, lr}
	movs r3, #0
	ldr r1, _08016AF4 @ =gSaveBlock1Ptr
	ldr r0, [r1]
	adds r0, #0x64
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #0
	beq _08016AEC
	cmp r0, #1
	beq _08016B04
	cmp r0, #2
	beq _08016B14
	cmp r0, #3
	beq _08016B2C
	cmp r0, #0xff
	bne _08016B30
	ldr r0, _08016AF8 @ =0x00000183
	bl sub_08012F60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08016B00
_08016AEC:
	ldr r0, _08016AFC @ =gUnk_08B801BC
	ldr r3, [r0]
	b _08016B30
	.align 2, 0
_08016AF4: .4byte gSaveBlock1Ptr
_08016AF8: .4byte 0x00000183
_08016AFC: .4byte gUnk_08B801BC
_08016B00:
	cmp r0, #1
	bne _08016B10
_08016B04:
	ldr r0, _08016B0C @ =gUnk_08B801BC
	ldr r3, [r0, #4]
	b _08016B30
	.align 2, 0
_08016B0C: .4byte gUnk_08B801BC
_08016B10:
	cmp r0, #2
	bne _08016B20
_08016B14:
	ldr r0, _08016B1C @ =gUnk_08B801BC
	ldr r3, [r0, #8]
	b _08016B30
	.align 2, 0
_08016B1C: .4byte gUnk_08B801BC
_08016B20:
	cmp r0, #3
	beq _08016B2C
	movs r0, #1
	b _08016B5C
_08016B28:
	movs r5, #0
	b _08016B5A
_08016B2C:
	ldr r0, _08016B64 @ =gUnk_08B801BC
	ldr r3, [r0, #0xc]
_08016B30:
	ldr r0, [r4]
	adds r0, #0x66
	movs r5, #1
	movs r4, #0
	ldrh r1, [r3]
	ldrh r2, [r0]
	cmp r1, r2
	bne _08016B28
	cmp r1, #0
	beq _08016B5A
_08016B44:
	adds r3, #2
	adds r0, #2
	adds r4, #1
	cmp r4, #5
	bhi _08016B5A
	ldrh r2, [r3]
	ldrh r1, [r0]
	cmp r2, r1
	bne _08016B28
	cmp r2, #0
	bne _08016B44
_08016B5A:
	adds r0, r5, #0
_08016B5C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08016B64: .4byte gUnk_08B801BC

	thumb_func_start sub_08016B68
sub_08016B68: @ 0x08016B68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08016B9C @ =gSaveBlock1Ptr
	mov ip, r0
	ldr r0, [r0]
	ldr r1, _08016BA0 @ =0x00000583
	adds r1, r1, r0
	mov r8, r1
	movs r7, #7
	movs r3, #0
	movs r6, #1
	movs r4, #0x38
_08016B84:
	lsrs r0, r3, #0x18
	lsrs r1, r3, #0x1b
	add r1, r8
	ldrb r1, [r1]
	ands r0, r7
	asrs r1, r0
	ands r1, r6
	cmp r1, #0
	beq _08016BA4
	movs r0, #1
	b _08016BA6
	.align 2, 0
_08016B9C: .4byte gSaveBlock1Ptr
_08016BA0: .4byte 0x00000583
_08016BA4:
	movs r0, #0
_08016BA6:
	cmp r0, #0
	bne _08016BD2
	lsrs r2, r3, #0x18
	mov r1, ip
	ldr r0, [r1]
	lsrs r1, r3, #0x1b
	adds r0, r0, r1
	ldr r1, _08016BC8 @ =0x00000589
	adds r0, r0, r1
	ldrb r0, [r0]
	ands r2, r7
	asrs r0, r2
	ands r0, r6
	cmp r0, #0
	beq _08016BCC
	movs r0, #1
	b _08016BCE
	.align 2, 0
_08016BC8: .4byte 0x00000589
_08016BCC:
	movs r0, #0
_08016BCE:
	cmp r0, #0
	beq _08016BD8
_08016BD2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08016BD8:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r3, r3, r0
	subs r4, #1
	cmp r4, #0
	bge _08016B84
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08016BF0
sub_08016BF0: @ 0x08016BF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08016C24 @ =gSaveBlock1Ptr
	mov ip, r0
	ldr r0, [r0]
	ldr r1, _08016C28 @ =0x0000058F
	adds r1, r1, r0
	mov r8, r1
	movs r7, #7
	movs r3, #0
	movs r6, #1
	movs r4, #0x27
_08016C0C:
	lsrs r0, r3, #0x18
	lsrs r1, r3, #0x1b
	add r1, r8
	ldrb r1, [r1]
	ands r0, r7
	asrs r1, r0
	ands r1, r6
	cmp r1, #0
	beq _08016C2C
	movs r0, #1
	b _08016C2E
	.align 2, 0
_08016C24: .4byte gSaveBlock1Ptr
_08016C28: .4byte 0x0000058F
_08016C2C:
	movs r0, #0
_08016C2E:
	cmp r0, #0
	bne _08016C5A
	lsrs r2, r3, #0x18
	mov r1, ip
	ldr r0, [r1]
	lsrs r1, r3, #0x1b
	adds r0, r0, r1
	ldr r1, _08016C50 @ =0x00000595
	adds r0, r0, r1
	ldrb r0, [r0]
	ands r2, r7
	asrs r0, r2
	ands r0, r6
	cmp r0, #0
	beq _08016C54
	movs r0, #1
	b _08016C56
	.align 2, 0
_08016C50: .4byte 0x00000595
_08016C54:
	movs r0, #0
_08016C56:
	cmp r0, #0
	beq _08016C60
_08016C5A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08016C60:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r3, r3, r0
	subs r4, #1
	cmp r4, #0
	bge _08016C0C
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08016C78
sub_08016C78: @ 0x08016C78
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	ldr r0, _08016C94 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016C9C
	ldr r0, _08016C98 @ =gUnk_08B7D130
	subs r1, #1
	b _08016CC4
	.align 2, 0
_08016C94: .4byte gSaveBlock1Ptr
_08016C98: .4byte gUnk_08B7D130
_08016C9C:
	cmp r0, #1
	bne _08016CAC
	ldr r0, _08016CA8 @ =gUnk_08B7D31F
	subs r1, #1
	b _08016CC4
	.align 2, 0
_08016CA8: .4byte gUnk_08B7D31F
_08016CAC:
	cmp r0, #2
	bne _08016CBC
	ldr r0, _08016CB8 @ =gUnk_08B7D50E
	subs r1, #1
	b _08016CC4
	.align 2, 0
_08016CB8: .4byte gUnk_08B7D50E
_08016CBC:
	cmp r0, #3
	bne _08016CD0
	ldr r0, _08016CCC @ =gUnk_08B7D6FD
	subs r1, r2, #1
_08016CC4:
	adds r1, r1, r0
	ldrb r0, [r1]
	b _08016CD2
	.align 2, 0
_08016CCC: .4byte gUnk_08B7D6FD
_08016CD0:
	movs r0, #0
_08016CD2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016CD8
sub_08016CD8: @ 0x08016CD8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	ldr r0, _08016CF4 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016CFC
	ldr r0, _08016CF8 @ =gUnk_08B7D193
	subs r1, #1
	b _08016D24
	.align 2, 0
_08016CF4: .4byte gSaveBlock1Ptr
_08016CF8: .4byte gUnk_08B7D193
_08016CFC:
	cmp r0, #1
	bne _08016D0C
	ldr r0, _08016D08 @ =gUnk_08B7D382
	subs r1, #1
	b _08016D24
	.align 2, 0
_08016D08: .4byte gUnk_08B7D382
_08016D0C:
	cmp r0, #2
	bne _08016D1C
	ldr r0, _08016D18 @ =gUnk_08B7D571
	subs r1, #1
	b _08016D24
	.align 2, 0
_08016D18: .4byte gUnk_08B7D571
_08016D1C:
	cmp r0, #3
	bne _08016D30
	ldr r0, _08016D2C @ =gUnk_08B7D760
	subs r1, r2, #1
_08016D24:
	adds r1, r1, r0
	ldrb r0, [r1]
	b _08016D32
	.align 2, 0
_08016D2C: .4byte gUnk_08B7D760
_08016D30:
	movs r0, #0
_08016D32:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016D38
sub_08016D38: @ 0x08016D38
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	ldr r0, _08016D54 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016D5C
	ldr r0, _08016D58 @ =gUnk_08B7D1F6
	subs r1, #1
	b _08016D84
	.align 2, 0
_08016D54: .4byte gSaveBlock1Ptr
_08016D58: .4byte gUnk_08B7D1F6
_08016D5C:
	cmp r0, #1
	bne _08016D6C
	ldr r0, _08016D68 @ =gUnk_08B7D3E5
	subs r1, #1
	b _08016D84
	.align 2, 0
_08016D68: .4byte gUnk_08B7D3E5
_08016D6C:
	cmp r0, #2
	bne _08016D7C
	ldr r0, _08016D78 @ =gUnk_08B7D5D4
	subs r1, #1
	b _08016D84
	.align 2, 0
_08016D78: .4byte gUnk_08B7D5D4
_08016D7C:
	cmp r0, #3
	bne _08016D90
	ldr r0, _08016D8C @ =gUnk_08B7D7C3
	subs r1, r2, #1
_08016D84:
	adds r1, r1, r0
	ldrb r0, [r1]
	b _08016D92
	.align 2, 0
_08016D8C: .4byte gUnk_08B7D7C3
_08016D90:
	movs r0, #0
_08016D92:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016D98
sub_08016D98: @ 0x08016D98
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	ldr r0, _08016DB4 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016DBC
	ldr r0, _08016DB8 @ =gUnk_08B7D259
	subs r1, #1
	b _08016DE4
	.align 2, 0
_08016DB4: .4byte gSaveBlock1Ptr
_08016DB8: .4byte gUnk_08B7D259
_08016DBC:
	cmp r0, #1
	bne _08016DCC
	ldr r0, _08016DC8 @ =gUnk_08B7D448
	subs r1, #1
	b _08016DE4
	.align 2, 0
_08016DC8: .4byte gUnk_08B7D448
_08016DCC:
	cmp r0, #2
	bne _08016DDC
	ldr r0, _08016DD8 @ =gUnk_08B7D637
	subs r1, #1
	b _08016DE4
	.align 2, 0
_08016DD8: .4byte gUnk_08B7D637
_08016DDC:
	cmp r0, #3
	bne _08016DF0
	ldr r0, _08016DEC @ =gUnk_08B7D826
	subs r1, r2, #1
_08016DE4:
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _08016DF2
	.align 2, 0
_08016DEC: .4byte gUnk_08B7D826
_08016DF0:
	movs r0, #0
_08016DF2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016DF8
sub_08016DF8: @ 0x08016DF8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	ldr r0, _08016E14 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016E1C
	ldr r0, _08016E18 @ =gUnk_08B7D2BC
	subs r1, #1
	b _08016E44
	.align 2, 0
_08016E14: .4byte gSaveBlock1Ptr
_08016E18: .4byte gUnk_08B7D2BC
_08016E1C:
	cmp r0, #1
	bne _08016E2C
	ldr r0, _08016E28 @ =gUnk_08B7D4AB
	subs r1, #1
	b _08016E44
	.align 2, 0
_08016E28: .4byte gUnk_08B7D4AB
_08016E2C:
	cmp r0, #2
	bne _08016E3C
	ldr r0, _08016E38 @ =gUnk_08B7D69A
	subs r1, #1
	b _08016E44
	.align 2, 0
_08016E38: .4byte gUnk_08B7D69A
_08016E3C:
	cmp r0, #3
	bne _08016E50
	ldr r0, _08016E4C @ =gUnk_08B7D889
	subs r1, r2, #1
_08016E44:
	adds r1, r1, r0
	ldrb r0, [r1]
	b _08016E52
	.align 2, 0
_08016E4C: .4byte gUnk_08B7D889
_08016E50:
	movs r0, #0
_08016E52:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016E58
sub_08016E58: @ 0x08016E58
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r2, r1, #0
	cmp r1, #0x64
	beq _08016EB4
	ldr r0, _08016E78 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016E80
	ldr r0, _08016E7C @ =gUnk_08B7DA78
	subs r1, #1
	b _08016EA8
	.align 2, 0
_08016E78: .4byte gSaveBlock1Ptr
_08016E7C: .4byte gUnk_08B7DA78
_08016E80:
	cmp r0, #1
	bne _08016E90
	ldr r0, _08016E8C @ =gUnk_08B7DC04
	subs r1, #1
	b _08016EA8
	.align 2, 0
_08016E8C: .4byte gUnk_08B7DC04
_08016E90:
	cmp r0, #2
	bne _08016EA0
	ldr r0, _08016E9C @ =gUnk_08B7DD90
	subs r1, #1
	b _08016EA8
	.align 2, 0
_08016E9C: .4byte gUnk_08B7DD90
_08016EA0:
	cmp r0, #3
	bne _08016EB4
	ldr r0, _08016EB0 @ =gUnk_08B7DF1C
	subs r1, r2, #1
_08016EA8:
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08016EB6
	.align 2, 0
_08016EB0: .4byte gUnk_08B7DF1C
_08016EB4:
	movs r0, #0
_08016EB6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016EBC
sub_08016EBC: @ 0x08016EBC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r0, #0xf2
	lsls r0, r0, #0x18
	adds r1, r1, r0
	lsrs r1, r1, #0x18
	cmp r1, #3
	bls _08016EDA
	cmp r4, #0x13
	beq _08016EDA
	cmp r4, #0x14
	bne _08016EE8
_08016EDA:
	movs r0, #0xf4
	lsls r0, r0, #1
	bl sub_08012F60
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08016F34
_08016EE8:
	ldr r0, _08016EF8 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016F00
	ldr r2, _08016EFC @ =gUnk_08B7E0FC
	b _08016F1E
	.align 2, 0
_08016EF8: .4byte gSaveBlock1Ptr
_08016EFC: .4byte gUnk_08B7E0FC
_08016F00:
	cmp r0, #1
	bne _08016F0C
	ldr r2, _08016F08 @ =gUnk_08B7E91B
	b _08016F1E
	.align 2, 0
_08016F08: .4byte gUnk_08B7E91B
_08016F0C:
	cmp r0, #2
	bne _08016F18
	ldr r2, _08016F14 @ =gUnk_08B7F13A
	b _08016F1E
	.align 2, 0
_08016F14: .4byte gUnk_08B7F13A
_08016F18:
	cmp r0, #3
	bne _08016F34
	ldr r2, _08016F30 @ =gUnk_08B7F959
_08016F1E:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r1, r0, #5
	adds r0, r0, r1
	subs r0, #1
	adds r0, r5, r0
	adds r0, r0, r2
	ldrb r0, [r0]
	b _08016F36
	.align 2, 0
_08016F30: .4byte gUnk_08B7F959
_08016F34:
	movs r0, #0
_08016F36:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08016F3C
sub_08016F3C: @ 0x08016F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r1, #0
	ldr r6, _08017018 @ =gSaveBlock1Ptr
	ldr r2, [r6]
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r2, r2, r1
	mov r1, sp
	adds r2, #0xe4
	ldm r2!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r2!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldr r2, [r2]
	str r2, [r1]
	lsls r1, r0, #3
	subs r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x16
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #8]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x19
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x10]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x1b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x18]
	bl sub_08012F0C
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080159E0
	adds r2, r6, #0
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x46
	ldrb r0, [r1]
	cmp r0, r5
	bne _08016FDE
	movs r0, #0xff
	strb r0, [r1]
_08016FDE:
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x47
	ldrb r0, [r1]
	cmp r0, r5
	bne _08016FEE
	movs r0, #0xff
	strb r0, [r1]
_08016FEE:
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x48
	ldrb r0, [r2]
	cmp r0, r5
	bne _08016FFE
	movs r0, #0xff
	strb r0, [r2]
_08016FFE:
	bl sub_0801644C
	bl sub_08015A28
	bl sub_08015788
	bl sub_080156C4
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017018: .4byte gSaveBlock1Ptr

	thumb_func_start sub_0801701C
sub_0801701C: @ 0x0801701C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r5, r0, #0
	add r7, sp, #0x1c
	lsls r0, r5, #3
	subs r4, r0, r5
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x16
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x19
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0x1b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #0x18]
	ldr r6, _080170D8 @ =gSaveBlock1Ptr
	movs r3, #0
	movs r4, #0
_08017096:
	ldr r2, [r6]
	adds r1, r2, r3
	adds r0, r1, #0
	adds r0, #0xe5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080170C4
	adds r0, r3, #0
	adds r0, #0x1c
	adds r1, r2, r0
	adds r0, r1, #0
	adds r0, #0xe5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080170C4
	adds r0, r3, #0
	adds r0, #0x38
	adds r1, r2, r0
	adds r0, r1, #0
	adds r0, #0xe5
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080170DC
_080170C4:
	adds r0, r1, #0
	adds r0, #0xe4
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	b _080170E4
	.align 2, 0
_080170D8: .4byte gSaveBlock1Ptr
_080170DC:
	adds r3, #0x54
	adds r4, #3
	cmp r4, #0x1d
	ble _08017096
_080170E4:
	bl sub_08015A28
	movs r0, #0
	strh r0, [r7]
	ldr r2, _08017170 @ =0x0100000E
	adds r0, r7, #0
	mov r1, sp
	bl CpuSet
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #1]
	mov r0, r8
	subs r4, r0, r5
	adds r0, r4, #0
	adds r0, #0x16
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #8]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x19
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x10]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x1b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	bl sub_08012F0C
	adds r0, r4, #0
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x18]
	bl sub_08012F0C
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017170: .4byte 0x0100000E

	thumb_func_start sub_08017174
sub_08017174: @ 0x08017174
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, _08017188 @ =0x000005AC
	adds r0, r4, r1
	ldr r3, [r0]
	ldr r0, _0801718C @ =0x0098967F
	cmp r3, r0
	ble _08017190
	adds r3, r0, #0
	b _08017196
	.align 2, 0
_08017188: .4byte 0x000005AC
_0801718C: .4byte 0x0098967F
_08017190:
	cmp r3, #0
	bge _08017196
	movs r3, #0
_08017196:
	ldr r1, _08017448 @ =gSaveBlock1Ptr
	ldr r2, [r1]
	ldr r5, _0801744C @ =0x000005AC
	adds r0, r2, r5
	str r3, [r0]
	ldrb r0, [r4, #2]
	strb r0, [r2, #2]
	ldrb r2, [r4, #3]
	ldr r0, [r1]
	strb r2, [r0, #3]
	ldrb r2, [r4, #4]
	ldr r0, [r1]
	strb r2, [r0, #4]
	ldrb r2, [r4, #5]
	ldr r0, [r1]
	strb r2, [r0, #5]
	ldrb r2, [r4, #6]
	ldr r0, [r1]
	strb r2, [r0, #6]
	ldrb r2, [r4, #7]
	ldr r0, [r1]
	strb r2, [r0, #7]
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r2, [r0]
	ldr r5, [r1]
	ldr r3, _08017450 @ =gUnk_08B80178
	adds r7, r1, #0
	ldrh r0, [r3, #0x12]
	cmp r2, r0
	bls _080171D6
	ldrh r2, [r3, #0x12]
_080171D6:
	adds r0, r5, #0
	adds r0, #0x4a
	strh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	ldrh r2, [r3, #0x12]
	cmp r1, r2
	bls _080171EA
	ldrh r1, [r3, #0x12]
_080171EA:
	adds r0, r5, #0
	adds r0, #0x4c
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r1, [r0]
	ldrh r0, [r3, #0x12]
	cmp r1, r0
	bls _080171FE
	ldrh r1, [r3, #0x12]
_080171FE:
	adds r0, r5, #0
	adds r0, #0x4e
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	ldrh r2, [r3, #0x12]
	cmp r1, r2
	bls _08017212
	ldrh r1, [r3, #0x12]
_08017212:
	adds r0, r5, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	ldrh r0, [r3, #0x12]
	cmp r1, r0
	bls _08017226
	ldrh r1, [r3, #0x12]
_08017226:
	adds r0, r5, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	ldrh r1, [r0]
	ldrh r2, [r3, #0x12]
	cmp r1, r2
	bls _0801723A
	ldrh r1, [r3, #0x12]
_0801723A:
	adds r0, r5, #0
	adds r0, #0x54
	strh r1, [r0]
	adds r6, r7, #0
	ldr r5, _08017454 @ =0x0000059B
	adds r2, r4, r5
	ldr r0, [r6]
	adds r0, r0, r5
	ldrb r1, [r2]
	strb r1, [r0]
	movs r3, #1
	cmp r3, #0x10
	bgt _08017290
_08017254:
	ldr r1, [r6]
	adds r1, r1, r5
	adds r1, r1, r3
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #1
	ldr r1, [r6]
	adds r1, r1, r5
	adds r1, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #2
	ldr r1, [r6]
	adds r1, r1, r5
	adds r1, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #3
	ldr r1, [r6]
	adds r1, r1, r5
	adds r1, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #4
	cmp r3, #0x10
	ble _08017254
_08017290:
	ldr r2, _08017448 @ =gSaveBlock1Ptr
	ldr r5, _08017458 @ =0x00000583
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _0801745C @ =0x00000589
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017460 @ =0x0000058A
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017464 @ =0x0000058B
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017468 @ =0x0000058C
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _0801746C @ =0x0000058D
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017470 @ =0x0000058E
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #7
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017474 @ =0x00000595
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017478 @ =0x00000596
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _0801747C @ =0x00000597
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017480 @ =0x00000599
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, #1
	adds r3, r4, r5
	ldr r0, [r2]
	adds r0, r0, r5
	ldrb r1, [r3]
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _08017484 @ =0x0000059A
	adds r0, r0, r1
	ldrb r1, [r3, #6]
	strb r1, [r0]
	adds r5, r2, #0
	ldr r6, _08017488 @ =0x00000564
	adds r2, r4, r6
	ldr r0, [r5]
	adds r0, r0, r6
	adds r1, r2, #0
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, [r5]
	ldr r3, _0801748C @ =0x00000565
	adds r0, r0, r3
	adds r1, r4, r3
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r0, [r5]
	ldr r1, _08017490 @ =0x00000566
	adds r0, r0, r1
	adds r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r0]
	movs r3, #3
_080173C6:
	ldr r1, [r5]
	adds r1, r1, r6
	adds r1, r1, r3
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #1
	ldr r1, [r5]
	adds r1, r1, r6
	adds r1, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #2
	ldr r1, [r5]
	adds r1, r1, r6
	adds r1, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #3
	ldr r1, [r5]
	adds r1, r1, r6
	adds r1, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #4
	cmp r3, #0x1e
	ble _080173C6
	movs r3, #0
	ldr r6, _08017448 @ =gSaveBlock1Ptr
	ldr r5, _08017494 @ =0x0000054A
	adds r2, r4, r5
_0801740A:
	ldr r1, [r6]
	adds r1, r1, r5
	adds r1, r1, r3
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #1
	ldr r1, [r6]
	adds r1, r1, r5
	adds r1, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r3, #2
	cmp r3, #0x19
	ble _0801740A
	ldr r2, _08017498 @ =0x000005D6
	adds r0, r4, r2
	ldrh r1, [r0]
	ldr r0, [r7]
	ldr r2, _0801749C @ =0x0000FFFF
	cmp r1, r2
	bls _0801743A
	adds r1, r2, #0
_0801743A:
	ldr r3, _08017498 @ =0x000005D6
	adds r0, r0, r3
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017448: .4byte gSaveBlock1Ptr
_0801744C: .4byte 0x000005AC
_08017450: .4byte gUnk_08B80178
_08017454: .4byte 0x0000059B
_08017458: .4byte 0x00000583
_0801745C: .4byte 0x00000589
_08017460: .4byte 0x0000058A
_08017464: .4byte 0x0000058B
_08017468: .4byte 0x0000058C
_0801746C: .4byte 0x0000058D
_08017470: .4byte 0x0000058E
_08017474: .4byte 0x00000595
_08017478: .4byte 0x00000596
_0801747C: .4byte 0x00000597
_08017480: .4byte 0x00000599
_08017484: .4byte 0x0000059A
_08017488: .4byte 0x00000564
_0801748C: .4byte 0x00000565
_08017490: .4byte 0x00000566
_08017494: .4byte 0x0000054A
_08017498: .4byte 0x000005D6
_0801749C: .4byte 0x0000FFFF

	thumb_func_start sub_080174A0
sub_080174A0: @ 0x080174A0
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08012EC4
	adds r5, r0, #0
	ldr r0, _08017504 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xb6
	lsls r0, r0, #3
	adds r4, r2, r0
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _08017508 @ =0x01000013
	bl CpuSet
	movs r3, #0
	ldrh r0, [r5]
	strh r0, [r4]
	ldrh r0, [r5]
	cmp r0, #0
	beq _080174E6
_080174D0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r3, #1
	adds r2, r4, r1
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1]
	cmp r0, #0
	bne _080174D0
_080174E6:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080174E6
	ldr r0, _0801750C @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08017504: .4byte gSaveBlock1Ptr
_08017508: .4byte 0x01000013
_0801750C: .4byte gUnk_03006578

	thumb_func_start sub_08017510
sub_08017510: @ 0x08017510
	push {r4, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	ldr r1, _08017534 @ =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r2, _08017538 @ =0x000005AC
	adds r1, r1, r2
	ldr r1, [r1]
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, _0801753C @ =0x0098967F
	cmp r1, r0
	ble _08017540
	adds r1, r0, #0
	b _08017546
	.align 2, 0
_08017534: .4byte gSaveBlock1Ptr
_08017538: .4byte 0x000005AC
_0801753C: .4byte 0x0098967F
_08017540:
	cmp r1, #0
	bge _08017546
	movs r1, #0
_08017546:
	ldr r0, _08017578 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r2, _0801757C @ =0x000005AC
	adds r0, r0, r2
	str r1, [r0]
	ldr r0, _08017580 @ =gUnk_03006B0C
	movs r2, #0
	strh r2, [r0]
	ldr r3, _08017584 @ =gUnk_03006B18
	strh r4, [r3]
	ldr r1, _08017588 @ =gUnk_03006B1C
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0801758C @ =gUnk_03005888
	strh r2, [r0]
	ldr r0, _08017590 @ =gUnk_030056B8
	strh r2, [r0]
	lsls r0, r4, #0x10
	cmp r0, #0
	blt _0801759C
	ldr r0, _08017594 @ =gUnk_03005170
	ldr r1, _08017598 @ =gUnk_08BCA088
	ldr r1, [r1]
	str r1, [r0]
	b _080175AC
	.align 2, 0
_08017578: .4byte gSaveBlock1Ptr
_0801757C: .4byte 0x000005AC
_08017580: .4byte gUnk_03006B0C
_08017584: .4byte gUnk_03006B18
_08017588: .4byte gUnk_03006B1C
_0801758C: .4byte gUnk_03005888
_08017590: .4byte gUnk_030056B8
_08017594: .4byte gUnk_03005170
_08017598: .4byte gUnk_08BCA088
_0801759C:
	ldr r1, _080175BC @ =gUnk_03005170
	ldr r0, _080175C0 @ =gUnk_08BCA094
	ldr r0, [r0]
	str r0, [r1]
	movs r1, #0
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	strh r0, [r3]
_080175AC:
	ldr r0, _080175C4 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080175BC: .4byte gUnk_03005170
_080175C0: .4byte gUnk_08BCA094
_080175C4: .4byte gUnk_03006578

	thumb_func_start sub_080175C8
sub_080175C8: @ 0x080175C8
	push {r4, r5, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	adds r5, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D054
	adds r1, r0, #0
	ldr r0, _08017600 @ =0x000001C5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08012F0C
	cmp r5, #0
	blt _0801760C
	ldr r0, _08017604 @ =gUnk_03005170
	ldr r1, _08017608 @ =gUnk_08BCA088
	b _08017610
	.align 2, 0
_08017600: .4byte 0x000001C5
_08017604: .4byte gUnk_03005170
_08017608: .4byte gUnk_08BCA088
_0801760C:
	ldr r0, _08017624 @ =gUnk_03005170
	ldr r1, _08017628 @ =gUnk_08BCA08C
_08017610:
	ldr r1, [r1]
	str r1, [r0, #4]
	ldr r0, _0801762C @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08017624: .4byte gUnk_03005170
_08017628: .4byte gUnk_08BCA08C
_0801762C: .4byte gUnk_03006578

	thumb_func_start sub_08017630
sub_08017630: @ 0x08017630
	push {r4, r5, r6, lr}
	bl GetPlayerMaxHp
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08017648 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldrh r1, [r0, #0x24]
	cmp r2, r1
	bls _0801764C
	strh r1, [r0, #0x26]
	b _0801764E
	.align 2, 0
_08017648: .4byte gSaveBlock1Ptr
_0801764C:
	strh r2, [r0, #0x26]
_0801764E:
	movs r5, #0
	movs r0, #0
	lsls r6, r0, #0x10
_08017654:
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_080189BC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018298
	adds r4, r5, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_080189BC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018298
	adds r4, r5, #2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_080189BC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08018298
	adds r5, #3
	cmp r5, #0x14
	ble _08017654
	ldr r0, _080176B0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	asrs r0, r6, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080176B0: .4byte gUnk_03006578

	thumb_func_start sub_080176B4
sub_080176B4: @ 0x080176B4
	push {r4, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08017718 @ =0x0000012B
	cmp r1, r0
	bhi _08017720
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _0801771C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	movs r2, #0
	movs r4, #0
	adds r1, r0, #0
	adds r1, #0xe4
_080176D4:
	ldrb r0, [r1, #1]
	cmp r0, r3
	bne _080176DC
	adds r2, #1
_080176DC:
	ldrb r0, [r1, #0x1d]
	cmp r0, r3
	bne _080176E4
	adds r2, #1
_080176E4:
	adds r0, r1, #0
	adds r0, #0x38
	ldrb r0, [r0, #1]
	cmp r0, r3
	bne _080176F0
	adds r2, #1
_080176F0:
	adds r0, r1, #0
	adds r0, #0x54
	ldrb r0, [r0, #1]
	cmp r0, r3
	bne _080176FC
	adds r2, #1
_080176FC:
	adds r0, r1, #0
	adds r0, #0x70
	ldrb r0, [r0, #1]
	cmp r0, r3
	bne _08017708
	adds r2, #1
_08017708:
	adds r1, #0x8c
	adds r4, #5
	cmp r4, #0x1d
	bls _080176D4
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	b _08017734
	.align 2, 0
_08017718: .4byte 0x0000012B
_0801771C: .4byte gSaveBlock1Ptr
_08017720:
	ldr r2, _0801774C @ =0xFFFFFED4
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08017750 @ =gSaveBlock1Ptr
	ldr r1, [r1]
	ldr r2, _08017754 @ =0x0000044A
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r1, [r1]
_08017734:
	movs r0, #0xe3
	lsls r0, r0, #1
	bl sub_08012F0C
	ldr r0, _08017758 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801774C: .4byte 0xFFFFFED4
_08017750: .4byte gSaveBlock1Ptr
_08017754: .4byte 0x0000044A
_08017758: .4byte gUnk_03006578

	thumb_func_start sub_0801775C
sub_0801775C: @ 0x0801775C
	push {lr}
	ldr r0, _080177A4 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x46
	ldrb r1, [r0]
	movs r0, #0xff
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r2, #0
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0801777E
	adds r1, #1
_0801777E:
	adds r0, r2, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0801778E
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0801778E:
	ldr r0, _080177A8 @ =0x000001C7
	bl sub_08012F0C
	ldr r0, _080177AC @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080177A4: .4byte gSaveBlock1Ptr
_080177A8: .4byte 0x000001C7
_080177AC: .4byte gUnk_03006578

	thumb_func_start sub_080177B0
sub_080177B0: @ 0x080177B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	bl sub_08012578
	movs r6, #0
	movs r1, #0
	lsls r7, r0, #0x10
_080177BE:
	lsls r4, r1, #3
	adds r5, r1, #1
	subs r4, r4, r1
	adds r4, #0x16
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	bl sub_08012F60
	str r0, [sp]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #8]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	bl sub_08012F60
	str r0, [sp, #0x18]
	mov r0, sp
	ldrb r0, [r0, #1]
	cmp r0, #0xff
	beq _0801782E
	adds r6, #1
_0801782E:
	adds r1, r5, #0
	cmp r1, #5
	ble _080177BE
	lsrs r0, r7, #0x10
	adds r1, r6, #0
	bl sub_08012F0C
	ldr r0, _08017850 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017850: .4byte gUnk_03006578

	thumb_func_start sub_08017854
sub_08017854: @ 0x08017854
	push {r4, r5, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080159E0
	ldr r2, _080178BC @ =gSaveBlock1Ptr
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x46
	ldrb r0, [r1]
	cmp r0, r4
	bne _0801787A
	movs r0, #0xff
	strb r0, [r1]
_0801787A:
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x47
	ldrb r0, [r1]
	cmp r0, r4
	bne _0801788A
	movs r0, #0xff
	strb r0, [r1]
_0801788A:
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, r5
	bne _0801789A
	movs r0, #0xff
	strb r0, [r1]
_0801789A:
	bl sub_0801644C
	bl sub_08015A28
	bl sub_08015788
	bl sub_080156C4
	ldr r0, _080178C0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080178BC: .4byte gSaveBlock1Ptr
_080178C0: .4byte gUnk_03006578

	thumb_func_start sub_080178C4
sub_080178C4: @ 0x080178C4
	push {r4, r5, lr}
	ldr r5, _08017934 @ =gUnk_03006578
	ldr r1, _08017938 @ =gSaveBlock1Ptr
	movs r4, #0xff
	ldr r0, [r1]
	adds r3, r0, #0
	adds r3, #0x8c
	ldrb r0, [r3]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	beq _080178E2
	cmp r2, #0
	bge _080178E2
	strb r4, [r3]
_080178E2:
	ldr r0, [r1]
	adds r3, r0, #0
	adds r3, #0x8d
	ldrb r0, [r3]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	beq _080178F8
	cmp r2, #0
	bge _080178F8
	strb r4, [r3]
_080178F8:
	ldr r0, [r1]
	adds r3, r0, #0
	adds r3, #0x8e
	ldrb r0, [r3]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	beq _0801790E
	cmp r2, #0
	bge _0801790E
	strb r4, [r3]
_0801790E:
	ldr r0, [r1]
	adds r3, r0, #0
	adds r3, #0x8f
	ldrb r0, [r3]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	beq _08017924
	cmp r2, #0
	bge _08017924
	strb r4, [r3]
_08017924:
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08017934: .4byte gUnk_03006578
_08017938: .4byte gSaveBlock1Ptr

	thumb_func_start sub_0801793C
sub_0801793C: @ 0x0801793C
	push {r4, r5, lr}
	bl sub_08012578
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_08012F0C
	movs r3, #0
_08017950:
	lsls r1, r3, #0x18
	lsrs r2, r1, #0x18
	cmp r2, #0xef
	bls _0801795C
	movs r0, #1
	b _0801797A
_0801795C:
	ldr r0, _0801798C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	lsrs r1, r1, #0x1b
	ldr r5, _08017990 @ =0x00000564
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r2
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0801797A
	movs r0, #0
_0801797A:
	cmp r0, #0
	beq _080179B6
	adds r0, r3, #1
	lsls r1, r0, #0x18
	lsrs r2, r1, #0x18
	cmp r2, #0xef
	bls _08017994
	movs r0, #1
	b _080179B2
	.align 2, 0
_0801798C: .4byte gSaveBlock1Ptr
_08017990: .4byte 0x00000564
_08017994:
	ldr r0, _080179C0 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	lsrs r1, r1, #0x1b
	ldr r5, _080179C4 @ =0x00000564
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r2
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080179B2
	movs r0, #0
_080179B2:
	cmp r0, #0
	bne _080179C8
_080179B6:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08012F0C
	b _080179CE
	.align 2, 0
_080179C0: .4byte gSaveBlock1Ptr
_080179C4: .4byte 0x00000564
_080179C8:
	adds r3, #2
	cmp r3, #0xef
	bls _08017950
_080179CE:
	ldr r0, _080179E0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080179E0: .4byte gUnk_03006578

	thumb_func_start sub_080179E4
sub_080179E4: @ 0x080179E4
	push {r4, r5, lr}
	bl sub_08012578
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_08012F0C
	movs r3, #0x64
_080179F8:
	lsls r2, r3, #0x10
	ldr r0, _08017A58 @ =0xFF9C0000
	adds r2, r2, r0
	ldr r0, _08017A5C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	lsrs r1, r2, #0x13
	ldr r5, _08017A60 @ =0x0000059B
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r2
	lsrs r0, r0, #0x10
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08017A20
	movs r0, #0
_08017A20:
	cmp r0, #0
	beq _08017A4E
	lsls r1, r3, #0x10
	ldr r0, _08017A64 @ =0xFF9D0000
	adds r1, r1, r0
	lsrs r2, r1, #0x10
	ldr r0, _08017A5C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	lsrs r1, r1, #0x13
	ldr r5, _08017A60 @ =0x0000059B
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #7
	ands r2, r0
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08017A4A
	movs r0, #0
_08017A4A:
	cmp r0, #0
	bne _08017A68
_08017A4E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08012F0C
	b _08017A6E
	.align 2, 0
_08017A58: .4byte 0xFF9C0000
_08017A5C: .4byte gSaveBlock1Ptr
_08017A60: .4byte 0x0000059B
_08017A64: .4byte 0xFF9D0000
_08017A68:
	adds r3, #2
	cmp r3, #0xe9
	bls _080179F8
_08017A6E:
	ldr r0, _08017A80 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08017A80: .4byte gUnk_03006578

	thumb_func_start sub_08017A84
sub_08017A84: @ 0x08017A84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08017B10 @ =gSaveBlock1Ptr
	ldr r0, [r2]
	adds r0, #0x64
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	mov sb, r0
	movs r0, #0
	mov r8, r0
	ldr r3, _08017B14 @ =gUnk_08B7E0A8
	adds r7, r2, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r6, r0, r3
_08017AAA:
	mov r0, r8
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r6]
	ldr r0, [r7]
	lsls r4, r1, #2
	adds r0, r0, r4
	adds r0, #0x90
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	adds r0, #0x93
	ldrb r5, [r0]
	mov r0, sb
	bl sub_08016EBC
	ldr r1, [r7]
	adds r1, r1, r4
	adds r1, #0x93
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, #0x64
	adds r0, r0, r4
	adds r1, r0, #0
	adds r1, #0x2f
	ldrb r1, [r1]
	cmp r5, #0
	bne _08017AEC
	cmp r1, #0
	ble _08017AEC
	movs r1, #1
	adds r0, #0x2e
	strb r1, [r0]
_08017AEC:
	adds r6, #1
	movs r0, #1
	add r8, r0
	mov r0, r8
	cmp r0, #0x14
	ble _08017AAA
	ldr r0, _08017B18 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017B10: .4byte gSaveBlock1Ptr
_08017B14: .4byte gUnk_08B7E0A8
_08017B18: .4byte gUnk_03006578
