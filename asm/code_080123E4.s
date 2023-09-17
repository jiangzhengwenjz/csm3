	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_080123E4
sub_080123E4: @ 0x080123E4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #1
	bne _08012424
	ldr r2, _08012420 @ =gUnk_03006590
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r0, r3, #4
	adds r0, r0, r3
	lsls r0, r0, #2
	subs r0, r0, r3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r0, #0
	adds r1, #0x2c
	ldrb r2, [r1]
	cmp r2, #8
	beq _0801244A
	adds r0, #0x2d
	strb r2, [r0]
	movs r0, #8
	strb r0, [r1]
	b _0801244A
	.align 2, 0
_08012420: .4byte gUnk_03006590
_08012424:
	ldr r2, _08012450 @ =gUnk_03006590
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r0, r3, #4
	adds r0, r0, r3
	lsls r0, r0, #2
	subs r0, r0, r3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r2
	adds r2, r1, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	cmp r0, #8
	bne _0801244A
	adds r0, r1, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	strb r0, [r2]
_0801244A:
	pop {r0}
	bx r0
	.align 2, 0
_08012450: .4byte gUnk_03006590

	thumb_func_start sub_08012454
sub_08012454: @ 0x08012454
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
	ldr r6, _080124CC @ =gUnk_03006578
_0801245E:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080124D0 @ =gUnk_03006590
	adds r0, r0, r1
	str r0, [r6]
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, #0
	beq _0801255A
	movs r7, #0
_0801247C:
	ldr r3, _080124D4 @ =gUnk_03006574
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x2c
	ldr r4, [r6]
	adds r0, r4, r0
	str r0, [r3]
	ldrb r0, [r4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0801254C
	movs r0, #0
	strb r0, [r4, #1]
_080124A2:
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _080124B0
_080124AA:
	ldr r1, [r6]
	movs r0, #0
	strb r0, [r1, #1]
_080124B0:
	ldr r0, [r6]
	strh r7, [r0, #4]
	ldr r0, _080124D4 @ =gUnk_03006574
	ldr r0, [r0]
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #8
	bhi _0801253A
	lsls r0, r0, #2
	ldr r1, _080124D8 @ =_080124DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080124CC: .4byte gUnk_03006578
_080124D0: .4byte gUnk_03006590
_080124D4: .4byte gUnk_03006574
_080124D8: .4byte _080124DC
_080124DC: @ jump table
	.4byte _08012500 @ case 0
	.4byte _08012506 @ case 1
	.4byte _0801250C @ case 2
	.4byte _08012512 @ case 3
	.4byte _08012518 @ case 4
	.4byte _0801251E @ case 5
	.4byte _08012524 @ case 6
	.4byte _0801253A @ case 7
	.4byte _0801252A @ case 8
_08012500:
	bl sub_0801309C
	b _0801253A
_08012506:
	bl sub_080130C4
	b _0801253A
_0801250C:
	bl sub_080130FC
	b _0801253A
_08012512:
	bl sub_08013134
	b _0801253A
_08012518:
	bl sub_0801316C
	b _0801253A
_0801251E:
	bl sub_080131A4
	b _0801253A
_08012524:
	bl sub_08012840
	b _0801253A
_0801252A:
	ldr r0, _08012574 @ =gUnk_03006578
	ldr r2, [r0]
	asrs r0, r5, #0x10
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0801253A:
	ldr r0, _08012574 @ =gUnk_03006578
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	adds r6, r0, #0
	cmp r1, #1
	beq _080124AA
	ldrb r0, [r2, #2]
	cmp r0, #1
	beq _080124A2
_0801254C:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _0801247C
_0801255A:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0801256A
	b _0801245E
_0801256A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012574: .4byte gUnk_03006578

	thumb_func_start sub_08012578
sub_08012578: @ 0x08012578
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _080125A8 @ =gUnk_03002088
	movs r0, #0
	str r0, [r1]
	mov r8, r0
	adds r6, r1, #0
	ldr r0, _080125AC @ =gUnk_03006574
	mov sb, r0
	ldr r7, _080125B0 @ =gUnk_03002008
_08012590:
	mov r1, sb
	ldr r3, [r1]
	ldr r0, [r3, #4]
	ldrh r1, [r0]
	adds r4, r1, #0
	adds r0, #2
	str r0, [r3, #4]
	cmp r1, #0
	bne _080125B4
	movs r3, #1
	mov r8, r3
	b _080127CC
	.align 2, 0
_080125A8: .4byte gUnk_03002088
_080125AC: .4byte gUnk_03006574
_080125B0: .4byte gUnk_03002008
_080125B4:
	cmp r1, #0x7f
	bls _080125BA
	b _080126BC
_080125BA:
	cmp r1, #2
	beq _080125DA
	cmp r1, #2
	bgt _080125C8
	cmp r1, #1
	beq _080125CE
	b _080127CC
_080125C8:
	cmp r1, #3
	beq _08012638
	b _080127CC
_080125CE:
	ldrh r2, [r0]
	adds r0, #2
	str r0, [r3, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	b _080127C0
_080125DA:
	ldrh r1, [r0]
	adds r0, #2
	str r0, [r3, #4]
	adds r5, r1, #0
	cmp r5, #0x3f
	bhi _080125FC
	ldr r3, [r6]
	lsls r2, r3, #2
	adds r2, r2, r7
	ldr r0, _080125F8 @ =gUnk_030067B0
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _08012656
	.align 2, 0
_080125F8: .4byte gUnk_030067B0
_080125FC:
	ldr r0, _08012614 @ =0x0000017F
	cmp r5, r0
	bhi _0801261C
	ldr r3, [r6]
	lsls r2, r3, #2
	adds r2, r2, r7
	ldr r0, _08012618 @ =gUnk_0300657C
	ldr r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r1
	subs r0, #0x80
	b _08012652
	.align 2, 0
_08012614: .4byte 0x0000017F
_08012618: .4byte gUnk_0300657C
_0801261C:
	ldr r2, [r6]
	lsls r1, r2, #2
	adds r1, r1, r7
	ldr r0, _08012630 @ =gUnk_03006584
	ldr r0, [r0]
	adds r0, r5, r0
	ldr r3, _08012634 @ =0xFFFFFE80
	adds r0, r0, r3
	b _08012676
	.align 2, 0
_08012630: .4byte gUnk_03006584
_08012634: .4byte 0xFFFFFE80
_08012638:
	ldrh r1, [r0]
	adds r0, #2
	str r0, [r3, #4]
	adds r5, r1, #0
	cmp r5, #0x1f
	bhi _08012664
	ldr r3, [r6]
	lsls r2, r3, #2
	adds r2, r2, r7
	ldr r0, _08012660 @ =gUnk_030067AC
	ldr r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r1
_08012652:
	movs r1, #0
	ldrsh r0, [r0, r1]
_08012656:
	str r0, [r2]
	adds r3, #1
	str r3, [r6]
	b _080127CC
	.align 2, 0
_08012660: .4byte gUnk_030067AC
_08012664:
	cmp r5, #0xff
	bhi _08012688
	ldr r2, [r6]
	lsls r1, r2, #2
	adds r1, r1, r7
	ldr r0, _08012684 @ =gUnk_03006570
	ldr r0, [r0]
	adds r0, r5, r0
	subs r0, #0x20
_08012676:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r1]
	adds r2, #1
	str r2, [r6]
	b _080127CC
	.align 2, 0
_08012684: .4byte gUnk_03006570
_08012688:
	movs r2, #7
	ands r2, r5
	ldr r4, [r6]
	lsls r3, r4, #2
	adds r3, r3, r7
	ldr r0, _080126B4 @ =0xFFFFFF00
	adds r1, r5, r0
	asrs r1, r1, #3
	ldr r0, _080126B8 @ =gUnk_030067A8
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	str r0, [r3]
	adds r4, #1
	str r4, [r6]
	b _080127CC
	.align 2, 0
_080126B4: .4byte 0xFFFFFF00
_080126B8: .4byte gUnk_030067A8
_080126BC:
	cmp r1, #0x81
	bhi _080126E4
	ldr r0, [r6]
	subs r0, #1
	str r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	cmp r1, #0x80
	beq _080126D6
	cmp r1, #0x81
	beq _080126E0
	b _080127C0
_080126D6:
	movs r0, #0
	cmp r2, #0
	bne _08012760
	movs r0, #1
	b _08012760
_080126E0:
	mvns r2, r2
	b _080127C0
_080126E4:
	ldr r1, [r6]
	subs r0, r1, #1
	str r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r3, [r0]
	subs r1, #2
	str r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r2, [r1]
	adds r0, r4, #0
	subs r0, #0x82
	cmp r0, #0xf
	bhi _080127C0
	lsls r0, r0, #2
	ldr r1, _0801270C @ =_08012710
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801270C: .4byte _08012710
_08012710: @ jump table
	.4byte _08012750 @ case 0
	.4byte _08012754 @ case 1
	.4byte _08012764 @ case 2
	.4byte _08012772 @ case 3
	.4byte _08012776 @ case 4
	.4byte _0801277A @ case 5
	.4byte _08012780 @ case 6
	.4byte _08012786 @ case 7
	.4byte _0801278C @ case 8
	.4byte _08012792 @ case 9
	.4byte _08012798 @ case 10
	.4byte _080127A4 @ case 11
	.4byte _080127A8 @ case 12
	.4byte _080127AC @ case 13
	.4byte _080127B0 @ case 14
	.4byte _080127B6 @ case 15
_08012750:
	muls r2, r3, r2
	b _080127C0
_08012754:
	cmp r3, #0
	beq _080127A0
	adds r0, r2, #0
	adds r1, r3, #0
	bl __divsi3
_08012760:
	adds r2, r0, #0
	b _080127C0
_08012764:
	cmp r3, #0
	beq _080127A0
	adds r0, r2, #0
	adds r1, r3, #0
	bl __modsi3
	b _08012760
_08012772:
	adds r2, r2, r3
	b _080127C0
_08012776:
	subs r2, r2, r3
	b _080127C0
_0801277A:
	cmp r2, r3
	blt _0801279C
	b _080127A0
_08012780:
	cmp r2, r3
	ble _0801279C
	b _080127A0
_08012786:
	cmp r2, r3
	bgt _0801279C
	b _080127A0
_0801278C:
	cmp r2, r3
	bge _0801279C
	b _080127A0
_08012792:
	cmp r2, r3
	beq _0801279C
	b _080127A0
_08012798:
	cmp r2, r3
	beq _080127A0
_0801279C:
	movs r2, #1
	b _080127C0
_080127A0:
	movs r2, #0
	b _080127C0
_080127A4:
	ands r2, r3
	b _080127C0
_080127A8:
	eors r2, r3
	b _080127C0
_080127AC:
	orrs r2, r3
	b _080127C0
_080127B0:
	adds r1, r2, #0
	ands r1, r3
	b _080127BA
_080127B6:
	adds r1, r2, #0
	orrs r1, r3
_080127BA:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_080127C0:
	ldr r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r7
	str r2, [r0]
	adds r1, #1
	str r1, [r6]
_080127CC:
	mov r1, r8
	cmp r1, #0
	bne _080127D4
	b _08012590
_080127D4:
	ldr r0, [r7]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080127E4
sub_080127E4: @ 0x080127E4
	push {lr}
	ldr r1, _08012808 @ =gUnk_03006574
	ldr r3, [r1]
	ldrh r0, [r3, #2]
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	beq _08012824
	cmp r2, r0
	bgt _0801280C
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _0801281E
	b _08012836
	.align 2, 0
_08012808: .4byte gUnk_03006574
_0801280C:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	beq _0801282A
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r2, r0
	beq _08012830
	b _08012836
_0801281E:
	movs r0, #3
	strb r0, [r3]
	b _0801283C
_08012824:
	movs r0, #4
	strb r0, [r3]
	b _0801283C
_0801282A:
	movs r0, #5
	strb r0, [r3]
	b _0801283C
_08012830:
	movs r0, #6
	strb r0, [r3]
	b _0801283C
_08012836:
	ldr r1, [r1]
	movs r0, #2
	strb r0, [r1]
_0801283C:
	pop {r0}
	bx r0

	thumb_func_start sub_08012840
sub_08012840: @ 0x08012840
	push {r4, r5, lr}
	ldr r4, _08012874 @ =gUnk_03006578
	ldr r1, [r4]
	ldrb r0, [r1, #7]
	subs r0, #1
	strb r0, [r1, #7]
	ldr r0, [r4]
	ldrb r1, [r0, #7]
	lsls r1, r1, #3
	adds r0, #0xc
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r1, [r0]
	movs r0, #2
	bl sub_08001D3C
	adds r2, r0, #0
	ldr r4, [r4]
	ldr r0, _08012878 @ =gUnk_03006590
	cmp r4, r0
	bne _0801287C
	ldr r1, [r4, #0x28]
	adds r0, r2, #0
	bl LZ77UnCompWram
	b _0801287E
	.align 2, 0
_08012874: .4byte gUnk_03006578
_08012878: .4byte gUnk_03006590
_0801287C:
	str r2, [r4, #0x28]
_0801287E:
	ldr r0, _080128B0 @ =gUnk_03006574
	ldr r2, [r0]
	ldr r4, _080128B4 @ =gUnk_03006578
	ldr r0, [r4]
	ldrb r1, [r0, #7]
	lsls r1, r1, #3
	adds r0, #8
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2, #4]
	ldr r0, _080128B8 @ =gUnk_030067B0
	ldr r0, [r0]
	str r5, [r0, #0x10]
	ldrh r0, [r1]
	strh r0, [r2, #2]
	adds r1, #2
	str r1, [r2, #4]
	bl sub_080127E4
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080128B0: .4byte gUnk_03006574
_080128B4: .4byte gUnk_03006578
_080128B8: .4byte gUnk_030067B0

	thumb_func_start sub_080128BC
sub_080128BC: @ 0x080128BC
	push {r4, r5, lr}
	ldr r0, _080128E0 @ =gUnk_03006574
	ldr r2, [r0]
	ldr r0, [r2, #4]
	ldrh r5, [r0]
	ldrh r1, [r0, #2]
	adds r0, #4
	str r0, [r2, #4]
	adds r4, r1, #0
	bl sub_08012578
	adds r2, r0, #0
	cmp r5, #2
	beq _080128E4
	cmp r5, #3
	beq _0801292C
	b _08012992
	.align 2, 0
_080128E0: .4byte gUnk_03006574
_080128E4:
	cmp r4, #0x3f
	bhi _080128F8
	ldr r0, _080128F4 @ =gUnk_030067B0
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	str r2, [r0]
	b _08012992
	.align 2, 0
_080128F4: .4byte gUnk_030067B0
_080128F8:
	ldr r0, _0801290C @ =0x0000017F
	cmp r4, r0
	bhi _08012914
	ldr r0, _08012910 @ =gUnk_0300657C
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r1
	subs r0, #0x80
	strh r2, [r0]
	b _08012992
	.align 2, 0
_0801290C: .4byte 0x0000017F
_08012910: .4byte gUnk_0300657C
_08012914:
	ldr r0, _08012924 @ =gUnk_03006584
	ldr r0, [r0]
	adds r0, r4, r0
	ldr r1, _08012928 @ =0xFFFFFE80
	adds r0, r0, r1
	strb r2, [r0]
	b _08012992
	.align 2, 0
_08012924: .4byte gUnk_03006584
_08012928: .4byte 0xFFFFFE80
_0801292C:
	cmp r4, #0x1f
	bhi _08012940
	ldr r0, _0801293C @ =gUnk_030067AC
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r1
	strh r2, [r0]
	b _08012992
	.align 2, 0
_0801293C: .4byte gUnk_030067AC
_08012940:
	cmp r4, #0xff
	bhi _08012954
	ldr r0, _08012950 @ =gUnk_03006570
	ldr r0, [r0]
	adds r0, r4, r0
	subs r0, #0x20
	strb r2, [r0]
	b _08012992
	.align 2, 0
_08012950: .4byte gUnk_03006570
_08012954:
	movs r3, #7
	ands r3, r4
	cmp r2, #0
	bne _0801297C
	ldr r1, _08012974 @ =0xFFFFFF00
	adds r0, r4, r1
	asrs r0, r0, #3
	ldr r1, _08012978 @ =gUnk_030067A8
	ldr r2, [r1]
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r3
	ldrb r0, [r2]
	bics r0, r1
	b _08012990
	.align 2, 0
_08012974: .4byte 0xFFFFFF00
_08012978: .4byte gUnk_030067A8
_0801297C:
	ldr r1, _080129A4 @ =0xFFFFFF00
	adds r0, r4, r1
	asrs r0, r0, #3
	ldr r1, _080129A8 @ =gUnk_030067A8
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #1
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
_08012990:
	strb r0, [r2]
_08012992:
	ldr r0, _080129AC @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080129A4: .4byte 0xFFFFFF00
_080129A8: .4byte gUnk_030067A8
_080129AC: .4byte gUnk_03006578

	thumb_func_start sub_080129B0
sub_080129B0: @ 0x080129B0
	push {r4, lr}
	ldr r0, _080129D4 @ =gUnk_03006574
	ldr r1, _080129D8 @ =gUnk_03006578
	ldr r3, [r1]
	adds r2, r3, #0
	adds r2, #0x2c
	ldr r4, [r0]
	cmp r4, r2
	bne _080129DC
	ldrb r0, [r3, #7]
	cmp r0, #0
	beq _080129DC
	ldrb r0, [r3]
	cmp r0, #1
	bne _080129E0
	movs r0, #7
	b _080129DE
	.align 2, 0
_080129D4: .4byte gUnk_03006574
_080129D8: .4byte gUnk_03006578
_080129DC:
	movs r0, #9
_080129DE:
	strb r0, [r4]
_080129E0:
	ldr r1, [r1]
	movs r0, #1
	strb r0, [r1, #1]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080129EC
sub_080129EC: @ 0x080129EC
	push {r4, r5, r6, r7, lr}
	bl sub_08012578
	adds r6, r0, #0
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	bl sub_08001D3C
	adds r2, r0, #0
	ldr r0, _08012A14 @ =gUnk_03006578
	ldr r1, [r0]
	ldr r0, _08012A18 @ =gUnk_03006590
	cmp r1, r0
	bne _08012A1C
	ldr r1, [r1, #0x28]
	adds r0, r2, #0
	bl LZ77UnCompWram
	b _08012A1E
	.align 2, 0
_08012A14: .4byte gUnk_03006578
_08012A18: .4byte gUnk_03006590
_08012A1C:
	str r2, [r1, #0x28]
_08012A1E:
	ldr r0, _08012A84 @ =gUnk_03006574
	ldr r1, [r0]
	ldr r2, _08012A88 @ =gUnk_03006578
	ldr r0, [r2]
	ldr r0, [r0, #0x28]
	adds r0, #0x10
	str r0, [r1, #4]
	movs r3, #0
	ldr r7, _08012A8C @ =gUnk_030067B0
	ldr r0, _08012A90 @ =gUnk_03006584
	mov ip, r0
	adds r4, r2, #0
	movs r2, #0
_08012A38:
	ldr r0, [r4]
	lsls r1, r3, #3
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r0, r0, r1
	strh r2, [r0, #0x34]
	ldr r0, [r4]
	adds r0, #0x38
	adds r0, r0, r1
	str r2, [r0]
	movs r5, #0
	ldr r0, [r4]
	adds r0, r0, r1
	adds r0, #0x3c
	str r2, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	adds r0, #0x40
	str r2, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	adds r0, #0x44
	str r2, [r0]
	adds r3, #1
	cmp r3, #7
	ble _08012A38
	ldr r0, [r7]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r6, [r0, #0x10]
	mov r1, ip
	ldr r0, [r1]
	strb r5, [r0]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012A84: .4byte gUnk_03006574
_08012A88: .4byte gUnk_03006578
_08012A8C: .4byte gUnk_030067B0
_08012A90: .4byte gUnk_03006584

	thumb_func_start sub_08012A94
sub_08012A94: @ 0x08012A94
	push {r4, r5, r6, lr}
	bl sub_08012578
	adds r6, r0, #0
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	bl sub_08001D3C
	adds r5, r0, #0
	ldr r3, _08012AE8 @ =gUnk_03006578
	ldr r4, [r3]
	ldrb r0, [r4, #7]
	lsls r0, r0, #3
	adds r1, r4, #0
	adds r1, #8
	adds r1, r1, r0
	ldr r0, _08012AEC @ =gUnk_03006574
	ldr r0, [r0]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r0, _08012AF0 @ =gUnk_030067B0
	ldr r0, [r0]
	ldr r2, [r0, #0x10]
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	str r2, [r0]
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
	ldr r3, [r3]
	ldr r0, _08012AF4 @ =gUnk_03006590
	cmp r3, r0
	bne _08012AF8
	ldr r1, [r3, #0x28]
	adds r0, r5, #0
	bl LZ77UnCompWram
	b _08012AFA
	.align 2, 0
_08012AE8: .4byte gUnk_03006578
_08012AEC: .4byte gUnk_03006574
_08012AF0: .4byte gUnk_030067B0
_08012AF4: .4byte gUnk_03006590
_08012AF8:
	str r5, [r3, #0x28]
_08012AFA:
	ldr r0, _08012B54 @ =gUnk_03006574
	ldr r2, [r0]
	ldr r1, _08012B58 @ =gUnk_03006578
	ldr r0, [r1]
	ldr r0, [r0, #0x28]
	adds r0, #0x10
	str r0, [r2, #4]
	movs r2, #0
	ldr r5, _08012B5C @ =gUnk_030067B0
	adds r4, r1, #0
	movs r3, #0
_08012B10:
	ldr r0, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r0, r0, r1
	strh r3, [r0, #0x34]
	ldr r0, [r4]
	adds r0, #0x38
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	adds r0, #0x3c
	str r3, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	adds r0, #0x40
	str r3, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	adds r0, #0x44
	str r3, [r0]
	adds r2, #1
	cmp r2, #7
	ble _08012B10
	ldr r0, [r5]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x18]
	str r6, [r0, #0x10]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08012B54: .4byte gUnk_03006574
_08012B58: .4byte gUnk_03006578
_08012B5C: .4byte gUnk_030067B0

	thumb_func_start sub_08012B60
sub_08012B60: @ 0x08012B60
	push {r4, lr}
	ldr r0, _08012B9C @ =gUnk_03006574
	ldr r4, [r0]
	ldr r2, [r4, #4]
	ldrh r3, [r2]
	adds r2, #2
	str r2, [r4, #4]
	ldrh r1, [r4, #8]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	str r2, [r0]
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	ldr r0, _08012BA0 @ =gUnk_03006578
	ldr r1, [r0]
	lsrs r3, r3, #1
	lsls r3, r3, #1
	adds r3, #0x10
	ldr r0, [r1, #0x28]
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08012B9C: .4byte gUnk_03006574
_08012BA0: .4byte gUnk_03006578

	thumb_func_start sub_08012BA4
sub_08012BA4: @ 0x08012BA4
	push {lr}
	ldr r0, _08012BE0 @ =gUnk_03006574
	ldr r1, [r0]
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _08012BD0
	subs r0, #1
	strh r0, [r1, #8]
	ldrh r0, [r1, #8]
	lsls r0, r0, #2
	adds r2, r1, #0
	adds r2, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08012BD0
	str r0, [r1, #4]
	ldrh r0, [r1, #8]
	lsls r0, r0, #2
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0]
_08012BD0:
	ldr r0, _08012BE4 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08012BE0: .4byte gUnk_03006574
_08012BE4: .4byte gUnk_03006578
