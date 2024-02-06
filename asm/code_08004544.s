	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080045A4
sub_080045A4: @ 0x080045A4
	ldr r0, _080045AC @ =gUnk_030029AC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080045AC: .4byte gUnk_030029AC

	thumb_func_start sub_080045B0
sub_080045B0: @ 0x080045B0
	push {r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r0, _080045E0 @ =gUnk_030029AC
	str r4, [r0]
	movs r0, #3
	movs r1, #1
	bl sub_08001D3C
	mov r1, sp
	bl sub_08001CBC
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #4]
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	adds r1, r4, #0
	bl CpuFastSet
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080045E0: .4byte gUnk_030029AC

	thumb_func_start sub_080045E4
sub_080045E4: @ 0x080045E4
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #3
	movs r1, #0
	bl sub_08001D3C
	mov r1, sp
	bl sub_08001CBC
	ldr r0, [sp, #0x14]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08010D40
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08004614
sub_08004614: @ 0x08004614
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	ldr r4, [sp, #0x14]
	ldr r6, [sp, #0x18]
	orrs r1, r0
	orrs r2, r1
	lsls r3, r3, #0x10
	lsls r5, r5, #0x10
	orrs r4, r2
	orrs r6, r4
	lsrs r3, r3, #8
	lsrs r5, r5, #0xe
	orrs r3, r5
	orrs r3, r6
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800463C
sub_0800463C: @ 0x0800463C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08004654 @ =gUnk_03002990
	ldrh r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r1, r0
	ands r2, r1
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_08004654: .4byte gUnk_03002990

	thumb_func_start sub_08004658
sub_08004658: @ 0x08004658
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _08004680 @ =gUnk_03002990
	lsrs r0, r0, #0xf
	adds r4, #2
	adds r0, r0, r4
	ldrh r4, [r0]
	movs r0, #0x80
	ands r0, r4
	strh r0, [r1]
	movs r0, #3
	ands r0, r4
	strh r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r4, r0
	strh r4, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004680: .4byte gUnk_03002990

	thumb_func_start sub_08004684
sub_08004684: @ 0x08004684
	lsls r0, r0, #0x10
	ldr r3, _080046A4 @ =gUnk_03002990
	lsrs r0, r0, #0xf
	adds r3, #2
	adds r0, r0, r3
	ldrh r3, [r0]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r3
	lsrs r0, r0, #8
	strh r0, [r1]
	movs r0, #0xc
	ands r3, r0
	lsrs r3, r3, #2
	strh r3, [r2]
	bx lr
	.align 2, 0
_080046A4: .4byte gUnk_03002990

	thumb_func_start sub_080046A8
sub_080046A8: @ 0x080046A8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080046D4 @ =gUnk_03002990
	lsls r2, r0, #1
	adds r1, #2
	adds r2, r2, r1
	ldrh r1, [r2]
	movs r2, #0
	cmp r0, #2
	bne _080046CC
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
_080046CC:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080046D4: .4byte gUnk_03002990

	thumb_func_start sub_080046D8
sub_080046D8: @ 0x080046D8
	lsls r0, r0, #0x10
	ldr r1, _080046F4 @ =gUnk_03002990
	lsrs r0, r0, #0xf
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080046F4: .4byte gUnk_03002990

	thumb_func_start sub_080046F8
sub_080046F8: @ 0x080046F8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r4, _08004718 @ =gUnk_03002990
	ldrh r3, [r4, #0xa]
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r3
	lsrs r1, r1, #0xc
	orrs r0, r1
	orrs r2, r0
	strh r2, [r4, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004718: .4byte gUnk_03002990

	thumb_func_start sub_0800471C
sub_0800471C: @ 0x0800471C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _08004740 @ =gUnk_03002990
	movs r2, #0x80
	lsls r2, r2, #1
	lsls r2, r0
	ldrh r3, [r4]
	bics r3, r2
	lsls r1, r0
	lsls r1, r1, #8
	orrs r3, r1
	strh r3, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004740: .4byte gUnk_03002990

	thumb_func_start sub_08004744
sub_08004744: @ 0x08004744
	lsls r0, r0, #0x10
	orrs r2, r1
	orrs r3, r2
	ldr r1, _08004764 @ =gUnk_03002990
	lsrs r0, r0, #0xf
	adds r1, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r1, _08004768 @ =0x00003F7C
	ands r1, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	orrs r1, r3
	strh r1, [r0]
	bx lr
	.align 2, 0
_08004764: .4byte gUnk_03002990
_08004768: .4byte 0x00003F7C

	thumb_func_start sub_0800476C
sub_0800476C: @ 0x0800476C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r3, _08004794 @ =gUnk_03002990
	lsrs r0, r0, #0xf
	adds r3, #2
	adds r0, r0, r3
	ldrh r4, [r0]
	ldr r3, _08004798 @ =0x0000E0F3
	ands r3, r4
	lsrs r1, r1, #8
	lsrs r2, r2, #0xe
	orrs r1, r2
	orrs r3, r1
	strh r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004794: .4byte gUnk_03002990
_08004798: .4byte 0x0000E0F3

	thumb_func_start sub_0800479C
sub_0800479C: @ 0x0800479C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r3, _080047BC @ =gUnk_03002990
	cmp r0, #2
	bne _080047B6
	ldrh r1, [r3, #6]
	ldr r0, _080047C0 @ =0x0000DFFF
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #6]
_080047B6:
	pop {r0}
	bx r0
	.align 2, 0
_080047BC: .4byte gUnk_03002990
_080047C0: .4byte 0x0000DFFF

	thumb_func_start sub_080047C4
sub_080047C4: @ 0x080047C4
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _080047E0 @ =gUnk_03002990
	lsrs r0, r0, #0xf
	adds r2, #2
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r2, _080047E4 @ =0x0000FFBF
	ands r2, r3
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_080047E0: .4byte gUnk_03002990
_080047E4: .4byte 0x0000FFBF

	thumb_func_start sub_080047E8
sub_080047E8: @ 0x080047E8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r4, _08004808 @ =gUnk_03002990
	ldrh r3, [r4, #0xa]
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r3
	lsrs r1, r1, #0xc
	orrs r0, r1
	orrs r2, r0
	strh r2, [r4, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004808: .4byte gUnk_03002990

	thumb_func_start sub_0800480C
sub_0800480C: @ 0x0800480C
	lsls r0, r0, #0x10
	ldr r3, _08004820 @ =gUnk_03002990
	ldrh r2, [r3]
	ldr r1, _08004824 @ =0x0000EFFF
	ands r1, r2
	lsrs r0, r0, #4
	orrs r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0
_08004820: .4byte gUnk_03002990
_08004824: .4byte 0x0000EFFF

	thumb_func_start sub_08004828
sub_08004828: @ 0x08004828
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r3, _0800483C @ =gUnk_03002990
	ldrb r2, [r3, #0xa]
	lsrs r1, r1, #4
	lsrs r0, r0, #8
	orrs r1, r0
	orrs r2, r1
	strh r2, [r3, #0xa]
	bx lr
	.align 2, 0
_0800483C: .4byte gUnk_03002990

	thumb_func_start sub_08004840
sub_08004840: @ 0x08004840
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08004854 @ =gUnk_03002990
	ldrh r2, [r3, #0xc]
	ldr r1, _08004858 @ =0x0000FF3F
	ands r1, r2
	orrs r0, r1
	strh r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08004854: .4byte gUnk_03002990
_08004858: .4byte 0x0000FF3F

	thumb_func_start sub_0800485C
sub_0800485C: @ 0x0800485C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08004870 @ =gUnk_03002990
	ldrh r2, [r3, #0xc]
	ldr r1, _08004874 @ =0x0000FFC0
	ands r1, r2
	orrs r0, r1
	strh r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08004870: .4byte gUnk_03002990
_08004874: .4byte 0x0000FFC0

	thumb_func_start sub_08004878
sub_08004878: @ 0x08004878
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0800488C @ =gUnk_03002990
	ldrh r2, [r3, #0xc]
	ldr r1, _08004890 @ =0x0000C0FF
	ands r1, r2
	orrs r0, r1
	strh r0, [r3, #0xc]
	bx lr
	.align 2, 0
_0800488C: .4byte gUnk_03002990
_08004890: .4byte 0x0000C0FF

	thumb_func_start sub_08004894
sub_08004894: @ 0x08004894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _080048A8 @ =gUnk_03002990
	ldrh r2, [r3, #0xe]
	ldr r1, _080048AC @ =0x0000FFE0
	ands r1, r2
	orrs r0, r1
	strh r0, [r3, #0xe]
	bx lr
	.align 2, 0
_080048A8: .4byte gUnk_03002990
_080048AC: .4byte 0x0000FFE0

	thumb_func_start sub_080048B0
sub_080048B0: @ 0x080048B0
	lsls r0, r0, #0x10
	ldr r3, _080048C4 @ =gUnk_03002990
	ldrh r2, [r3, #0xe]
	ldr r1, _080048C8 @ =0x0000E0FF
	ands r1, r2
	lsrs r0, r0, #8
	orrs r1, r0
	strh r1, [r3, #0xe]
	bx lr
	.align 2, 0
_080048C4: .4byte gUnk_03002990
_080048C8: .4byte 0x0000E0FF

	thumb_func_start sub_080048CC
sub_080048CC: @ 0x080048CC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08004908 @ =gUnk_03002990
	ldrh r1, [r3]
	ldr r2, _0800490C @ =0x00009FFF
	ands r2, r1
	strh r2, [r3]
	cmp r0, #1
	bne _080048F0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_080048F0:
	cmp r4, #1
	bne _08004900
	ldrh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08004900:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004908: .4byte gUnk_03002990
_0800490C: .4byte 0x00009FFF

	thumb_func_start sub_08004910
sub_08004910: @ 0x08004910
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08004934 @ =gUnk_03002990
	ldrh r1, [r3]
	ldr r2, _08004938 @ =0x00007FFF
	ands r2, r1
	strh r2, [r3]
	cmp r0, #1
	bne _08004930
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08004930:
	pop {r0}
	bx r0
	.align 2, 0
_08004934: .4byte gUnk_03002990
_08004938: .4byte 0x00007FFF

	thumb_func_start sub_0800493C
sub_0800493C: @ 0x0800493C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r5, _080049B4 @ =gUnk_03002990
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08004956
	movs r1, #0
_08004956:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08004960
	movs r1, #0xff
_08004960:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _08004968
	movs r4, #0
_08004968:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08004972
	movs r4, #0xff
_08004972:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _0800497A
	movs r2, #0
_0800497A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08004984
	movs r2, #0xff
_08004984:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _0800498C
	movs r3, #0
_0800498C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08004996
	movs r3, #0xff
_08004996:
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r5, #0x10]
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r5, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080049B4: .4byte gUnk_03002990

	thumb_func_start sub_080049B8
sub_080049B8: @ 0x080049B8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r5, _08004A30 @ =gUnk_03002990
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _080049D2
	movs r1, #0
_080049D2:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080049DC
	movs r1, #0xff
_080049DC:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080049E4
	movs r4, #0
_080049E4:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080049EE
	movs r4, #0xff
_080049EE:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _080049F6
	movs r2, #0
_080049F6:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08004A00
	movs r2, #0xff
_08004A00:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _08004A08
	movs r3, #0
_08004A08:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _08004A12
	movs r3, #0xff
_08004A12:
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r5, #0x12]
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r5, #0x16]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004A30: .4byte gUnk_03002990

	thumb_func_start sub_08004A34
sub_08004A34: @ 0x08004A34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08004A48 @ =gUnk_03002990
	ldrh r2, [r3, #0x18]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r2
	orrs r0, r1
	strh r0, [r3, #0x18]
	bx lr
	.align 2, 0
_08004A48: .4byte gUnk_03002990

	thumb_func_start sub_08004A4C
sub_08004A4C: @ 0x08004A4C
	lsls r0, r0, #0x10
	ldr r2, _08004A5C @ =gUnk_03002990
	ldrb r1, [r2, #0x18]
	lsrs r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #0x18]
	bx lr
	.align 2, 0
_08004A5C: .4byte gUnk_03002990

	thumb_func_start sub_08004A60
sub_08004A60: @ 0x08004A60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08004A74 @ =gUnk_03002990
	ldrh r2, [r3, #0x1a]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r2
	orrs r0, r1
	strh r0, [r3, #0x1a]
	bx lr
	.align 2, 0
_08004A74: .4byte gUnk_03002990

	thumb_func_start sub_08004A78
sub_08004A78: @ 0x08004A78
	lsls r0, r0, #0x10
	ldr r2, _08004A88 @ =gUnk_03002990
	ldrb r1, [r2, #0x1a]
	lsrs r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #0x1a]
	bx lr
	.align 2, 0
_08004A88: .4byte gUnk_03002990

	thumb_func_start sub_08004A8C
sub_08004A8C: @ 0x08004A8C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _08004B08 @ =gUnk_03002D30
	ldr r6, _08004B0C @ =gUnk_03002D10
	movs r5, #0
	str r5, [sp]
	ldr r1, _08004B10 @ =gUnk_03002D00
	ldr r2, _08004B14 @ =0x05000004
	mov r0, sp
	bl CpuSet
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r0, [r4, #6]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4, #0x14]
	strh r0, [r4, #0x16]
	str r5, [r4, #0x18]
	str r5, [r4, #0x1c]
	strh r0, [r6, #8]
	strh r0, [r6, #0xa]
	strh r5, [r6, #0xc]
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1a]
	strh r5, [r6, #0x1c]
	movs r0, #0
	bl sub_08005B5C
	movs r0, #1
	bl sub_08005B5C
	movs r0, #2
	bl sub_08005B5C
	movs r0, #3
	bl sub_08005B5C
	ldr r0, _08004B18 @ =gUnk_030029B0
	str r5, [r0]
	ldr r1, _08004B1C @ =0x040000D4
	ldr r0, _08004B20 @ =sub_080065DC
	str r0, [r1]
	ldr r2, _08004B24 @ =gUnk_03002B40
	str r2, [r1, #4]
	ldr r0, _08004B28 @ =0x800000DA
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08004B2C @ =gUnk_03002B30
	adds r2, #1
	str r2, [r0]
	bl sub_08005B9C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004B08: .4byte gUnk_03002D30
_08004B0C: .4byte gUnk_03002D10
_08004B10: .4byte gUnk_03002D00
_08004B14: .4byte 0x05000004
_08004B18: .4byte gUnk_030029B0
_08004B1C: .4byte 0x040000D4
_08004B20: .4byte sub_080065DC
_08004B24: .4byte gUnk_03002B40
_08004B28: .4byte 0x800000DA
_08004B2C: .4byte gUnk_03002B30

	thumb_func_start sub_08004B30
sub_08004B30: @ 0x08004B30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08004D50 @ =gUnk_03002D00
	ldr r1, _08004D54 @ =0x04000010
	ldr r2, _08004D58 @ =0x04000004
	adds r0, r4, #0
	bl CpuSet
	ldr r6, _08004D5C @ =gUnk_03002D30
	mov r8, r4
	ldr r7, _08004D60 @ =gUnk_03002D10
	movs r0, #2
	bl sub_0800463C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08004C42
	ldrh r5, [r7, #0xc]
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08004B72
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r1, r2, #0
_08004B64:
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #0x10
	cmp r0, #0
	blt _08004B64
_08004B72:
	adds r0, r5, #0
	bl sub_08001EA0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r3, #8
	ldrsh r0, [r7, r3]
	bl sub_08001EFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001ED4
	strh r0, [r6]
	adds r0, r5, #0
	bl sub_08001E70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #8
	ldrsh r0, [r7, r1]
	bl sub_08001EFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001ED4
	strh r0, [r6, #2]
	adds r0, r5, #0
	bl sub_08001E70
	adds r4, r0, #0
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	bl sub_08001EFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001ED4
	strh r0, [r6, #4]
	adds r0, r5, #0
	bl sub_08001EA0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	bl sub_08001EFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001ED4
	strh r0, [r6, #6]
	movs r4, #0
	ldrsh r1, [r6, r4]
	mov r2, r8
	movs r3, #8
	ldrsh r0, [r2, r3]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r4, #2
	ldrsh r2, [r6, r4]
	mov r3, r8
	movs r4, #0xa
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, [r7]
	adds r1, r1, r0
	str r1, [r6, #8]
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r2, #8
	ldrsh r0, [r3, r2]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r3, #6
	ldrsh r2, [r6, r3]
	mov r4, r8
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, [r7, #4]
	adds r1, r1, r0
	str r1, [r6, #0xc]
_08004C42:
	movs r0, #3
	bl sub_0800463C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08004D3A
	ldrh r5, [r7, #0x1c]
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08004C6C
	movs r4, #0xb4
	lsls r4, r4, #1
	adds r1, r4, #0
_08004C5E:
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #0x10
	cmp r0, #0
	blt _08004C5E
_08004C6C:
	adds r0, r5, #0
	bl sub_08001EA0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	bl sub_08001EFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001ED4
	strh r0, [r6, #0x10]
	adds r0, r5, #0
	bl sub_08001E70
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	bl sub_08001EFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001ED4
	strh r0, [r6, #0x12]
	adds r0, r5, #0
	bl sub_08001E70
	adds r4, r0, #0
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	bl sub_08001EFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001ED4
	strh r0, [r6, #0x14]
	adds r0, r5, #0
	bl sub_08001EA0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
	bl sub_08001EFC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08001ED4
	strh r0, [r6, #0x16]
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	mov r3, r8
	movs r4, #0xc
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r0, #0x12
	ldrsh r2, [r6, r0]
	movs r4, #0xe
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r6, #0x18]
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	movs r2, #0xc
	ldrsh r0, [r3, r2]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r3, #0x16
	ldrsh r2, [r6, r3]
	mov r4, r8
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, [r7, #0x14]
	adds r1, r1, r0
	str r1, [r6, #0x1c]
_08004D3A:
	ldr r0, _08004D5C @ =gUnk_03002D30
	ldr r1, _08004D64 @ =0x04000020
	ldr r2, _08004D68 @ =0x04000008
	bl CpuSet
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004D50: .4byte gUnk_03002D00
_08004D54: .4byte 0x04000010
_08004D58: .4byte 0x04000004
_08004D5C: .4byte gUnk_03002D30
_08004D60: .4byte gUnk_03002D10
_08004D64: .4byte 0x04000020
_08004D68: .4byte 0x04000008

	thumb_func_start sub_08004D6C
sub_08004D6C: @ 0x08004D6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	movs r6, #0
	mov r5, sp
	movs r0, #0x80
	lsls r0, r0, #7
	adds r7, r0, #0
_08004D7A:
	movs r0, #0x34
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08004DC0 @ =gUnk_03002A20
	adds r4, r1, r0
	movs r0, #0
	str r0, [r5]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800463C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08004DFC
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _08004DF4
	ldrh r1, [r4]
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _08004DD2
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08004DC8
	ldr r2, _08004DC4 @ =0x0000FFFD
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4]
	adds r0, r4, #0
	bl sub_08004EB8
	b _08004DCE
	.align 2, 0
_08004DC0: .4byte gUnk_03002A20
_08004DC4: .4byte 0x0000FFFD
_08004DC8:
	adds r0, r4, #0
	bl sub_08005114
_08004DCE:
	movs r0, #1
	str r0, [r5]
_08004DD2:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _08004DF4
	ldrh r0, [r4]
	ands r0, r7
	cmp r0, #0
	beq _08004DEA
	adds r0, r4, #0
	bl sub_08005560
	movs r0, #1
	b _08004DF2
_08004DEA:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800549C
_08004DF2:
	str r0, [r5]
_08004DF4:
	ldrh r0, [r4, #8]
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	strh r0, [r4, #0xe]
_08004DFC:
	adds r5, #4
	adds r6, #1
	cmp r6, #3
	bls _08004D7A
	mov r0, sp
	bl sub_08005648
	movs r6, #0
	add r5, sp, #0x14
	mov r7, sp
_08004E10:
	movs r0, #0x34
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08004E4C @ =gUnk_03002A20
	adds r4, r1, r0
	ldr r0, [r7]
	cmp r0, #1
	bne _08004E5A
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	bne _08004E50
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #0x10
	mov r2, sp
	adds r2, #0x12
	adds r3, r5, #0
	bl sub_08004658
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldrh r2, [r5]
	lsrs r2, r2, #0xe
	lsls r2, r2, #0xb
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r2, r3
	bl sub_08006BA4
	b _08004E5A
	.align 2, 0
_08004E4C: .4byte gUnk_03002A20
_08004E50:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldrh r2, [r4, #0x30]
	bl sub_08006BA4
_08004E5A:
	adds r2, r6, #1
	movs r0, #0x34
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08004E98 @ =gUnk_03002A20
	adds r4, r1, r0
	ldr r0, [r7, #4]
	cmp r0, #1
	bne _08004EA6
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	bne _08004E9C
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #0x10
	mov r2, sp
	adds r2, #0x12
	adds r3, r5, #0
	bl sub_08004658
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldrh r2, [r5]
	lsrs r2, r2, #0xe
	lsls r2, r2, #0xb
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r2, r3
	bl sub_08006BA4
	b _08004EA6
	.align 2, 0
_08004E98: .4byte gUnk_03002A20
_08004E9C:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldrh r2, [r4, #0x30]
	bl sub_08006BA4
_08004EA6:
	adds r7, #8
	adds r6, #2
	cmp r6, #3
	bls _08004E10
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004EB8
sub_08004EB8: @ 0x08004EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	ldrb r0, [r6, #0x19]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0x1a]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldrh r0, [r6, #4]
	lsrs r0, r0, #3
	mov sb, r0
	ldrh r2, [r6, #8]
	lsrs r7, r2, #3
	str r7, [sp]
	ldrh r4, [r6, #0xa]
	lsrs r0, r4, #3
	mov r8, r0
	movs r1, #0x1e
	movs r3, #7
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08004EF0
	movs r1, #0x1f
_08004EF0:
	movs r5, #0xff
	adds r0, r5, #0
	ands r0, r2
	lsrs r0, r0, #3
	movs r2, #0x20
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, r1
	bls _08004F06
	adds r7, r1, #0
_08004F06:
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0x14
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08004F1A
	movs r1, #0x15
_08004F1A:
	adds r0, r5, #0
	ands r0, r4
	lsrs r0, r0, #3
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	cmp ip, r1
	bls _08004F2E
	mov ip, r1
_08004F2E:
	mov r2, ip
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r6, #0x1c]
	ldr r5, [r6, #0x20]
	mov r0, sb
	lsls r3, r0, #1
	mov r0, r8
	muls r0, r3, r0
	adds r4, r4, r0
	ldr r1, [sp]
	lsls r2, r1, #1
	adds r4, r4, r2
	movs r1, #0x1f
	mov r0, r8
	ands r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r0, [sp]
	ands r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0xc]
	ldr r6, [r6, #0x20]
	str r6, [sp, #0x10]
	mov sb, r3
	str r2, [sp, #0x1c]
	ldr r1, [sp]
	adds r1, r1, r7
	str r1, [sp, #0x14]
	mov r2, r8
	add r2, ip
	str r2, [sp, #0x18]
	cmp r7, #0
	beq _08004FC6
	mov r0, ip
	cmp r0, #0
	beq _08004FC6
	movs r1, #0
	cmp r1, ip
	bge _08004FC6
_08004F86:
	movs r0, #0
	adds r3, r5, #0
	adds r3, #0x40
	lsls r6, r1, #0x10
	cmp r0, r7
	bge _08004FB4
_08004F92:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	str r2, [sp, #0x20]
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r2, [sp, #8]
	adds r0, r0, r2
	ldr r2, [sp, #0x20]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, r7
	blt _08004F92
_08004FB4:
	add r4, sb
	adds r5, r3, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, ip
	blt _08004F86
_08004FC6:
	mov r2, sb
	mov r0, r8
	muls r0, r2, r0
	ldr r1, [sp, #0xc]
	adds r4, r1, r0
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	adds r4, r4, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	lsls r0, r1, #6
	ldr r2, [sp, #0x10]
	adds r5, r2, r0
	mov r0, sl
	cmp r0, #0
	beq _08005034
	mov r1, ip
	cmp r1, #0
	beq _08005034
	movs r1, #0
	cmp r1, ip
	bge _08005034
_08004FF4:
	movs r0, #0
	adds r3, r5, #0
	adds r3, #0x40
	lsls r6, r1, #0x10
	cmp r0, sl
	bge _08005022
_08005000:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	mov r8, r2
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r2, [sp, #8]
	adds r0, r0, r2
	mov r2, r8
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, sl
	blt _08005000
_08005022:
	add r4, sb
	adds r5, r3, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, ip
	blt _08004FF4
_08005034:
	ldr r2, [sp, #0x18]
	mov r0, sb
	muls r0, r2, r0
	ldr r1, [sp, #0xc]
	adds r4, r1, r0
	ldr r2, [sp, #0x1c]
	adds r4, r4, r2
	movs r0, #0x1f
	ldr r1, [sp]
	ands r1, r0
	lsls r0, r1, #1
	ldr r2, [sp, #0x10]
	adds r5, r2, r0
	cmp r7, #0
	beq _080050A0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080050A0
	movs r1, #0
	cmp r1, r0
	bge _080050A0
_0800505E:
	movs r0, #0
	adds r3, r5, #0
	adds r3, #0x40
	lsls r6, r1, #0x10
	cmp r0, r7
	bge _0800508C
_0800506A:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	mov r8, r2
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r2, [sp, #8]
	adds r0, r0, r2
	mov r2, r8
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, r7
	blt _0800506A
_0800508C:
	add r4, sb
	adds r5, r3, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	cmp r0, r2
	blt _0800505E
_080050A0:
	ldr r5, [sp, #0x10]
	ldr r7, [sp, #0x18]
	mov r0, sb
	muls r0, r7, r0
	ldr r1, [sp, #0xc]
	adds r4, r1, r0
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	adds r4, r4, r0
	mov r7, sl
	cmp r7, #0
	beq _08005102
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08005102
	movs r1, #0
	cmp r1, r0
	bge _08005102
_080050C4:
	movs r0, #0
	adds r3, r5, #0
	adds r3, #0x40
	lsls r6, r1, #0x10
	cmp r0, sl
	bge _080050EE
_080050D0:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r7, [sp, #8]
	adds r0, r0, r7
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, sl
	blt _080050D0
_080050EE:
	add r4, sb
	adds r5, r3, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	cmp r0, r2
	blt _080050C4
_08005102:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005114
sub_08005114: @ 0x08005114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov ip, r0
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0xc
	mov r1, ip
	ldrh r2, [r1, #0x1a]
	adds r2, r2, r0
	mov sb, r2
	ldrh r0, [r1, #4]
	lsrs r0, r0, #3
	str r0, [sp]
	ldrh r2, [r1, #8]
	lsrs r4, r2, #3
	str r4, [sp, #4]
	ldrh r3, [r1, #0xa]
	lsrs r0, r3, #3
	str r0, [sp, #8]
	movs r1, #0x1e
	movs r4, #7
	mov r8, r4
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _08005150
	movs r1, #0x1f
_08005150:
	movs r7, #0xff
	adds r0, r7, #0
	ands r0, r2
	lsrs r0, r0, #3
	movs r6, #0x20
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, r1
	bls _08005168
	str r1, [sp, #0x10]
_08005168:
	ldr r2, [sp, #0x10]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r1, #0x14
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0800517E
	movs r1, #0x15
_0800517E:
	adds r0, r7, #0
	ands r0, r3
	lsrs r0, r0, #3
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r1
	bls _08005190
	adds r5, r1, #0
_08005190:
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r4, ip
	ldrh r2, [r4, #0xc]
	lsrs r0, r2, #3
	str r0, [sp, #0x18]
	ldrh r4, [r4, #0xe]
	lsrs r1, r4, #3
	str r1, [sp, #0x1c]
	movs r1, #0x1e
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _080051B2
	movs r1, #0x1f
_080051B2:
	adds r0, r7, #0
	ands r0, r2
	lsrs r0, r0, #3
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	bls _080051C4
	adds r3, r1, #0
_080051C4:
	subs r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	movs r1, #0x14
	mov r0, r8
	ands r0, r4
	cmp r0, #0
	beq _080051D8
	movs r1, #0x15
_080051D8:
	adds r0, r7, #0
	ands r0, r4
	lsrs r0, r0, #3
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x14
	bls _080051EC
	mov r8, r1
_080051EC:
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r1, r4, r0
	ldr r4, [sp, #0xc]
	adds r2, r1, r4
	ldr r4, [sp, #0x18]
	adds r0, r4, r3
	ldr r4, [sp, #0x20]
	adds r3, r0, r4
	str r1, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	add r0, r8
	str r0, [sp, #0x34]
	ldr r1, [sp, #8]
	adds r5, r1, r5
	str r5, [sp, #0x2c]
	cmp r2, r3
	ble _080052A6
	mov r2, ip
	ldr r4, [r2, #0x1c]
	ldr r5, [r2, #0x20]
	ldr r0, [sp]
	lsls r2, r0, #1
	ldr r1, [sp, #0x1c]
	adds r0, r1, #0
	muls r0, r2, r0
	adds r4, r4, r0
	lsls r0, r3, #1
	adds r4, r4, r0
	movs r1, #0x1f
	ldr r0, [sp, #0x1c]
	ands r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	ands r3, r1
	lsls r0, r3, #1
	adds r5, r5, r0
	movs r1, #0
	mov r0, ip
	ldr r6, [r0, #0x1c]
	ldr r7, [r0, #0x20]
	adds r3, r2, #0
	cmp r1, r8
	bge _0800526A
_08005250:
	ldrh r0, [r4]
	add r0, sb
	strh r0, [r5]
	adds r4, r4, r2
	adds r5, #0x40
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	blt _08005250
_0800526A:
	ldr r2, [sp, #0x34]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r4, r6, r0
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x20]
	adds r0, r1, r2
	lsls r1, r0, #1
	adds r4, r4, r1
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	adds r5, r7, r0
	movs r1, #0
	cmp r1, sl
	bge _080052A6
	adds r2, r3, #0
_0800528C:
	ldrh r0, [r4]
	add r0, sb
	strh r0, [r5]
	adds r4, r4, r2
	adds r5, #0x40
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	blt _0800528C
_080052A6:
	ldr r2, [sp, #4]
	ldr r4, [sp, #0x18]
	cmp r2, r4
	bhs _0800533A
	mov r0, ip
	ldr r4, [r0, #0x1c]
	ldr r5, [r0, #0x20]
	ldr r1, [sp]
	lsls r3, r1, #1
	ldr r2, [sp, #0x1c]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r4, r4, r0
	ldr r0, [sp, #4]
	lsls r2, r0, #1
	adds r4, r4, r2
	movs r1, #0x1f
	ldr r0, [sp, #0x1c]
	ands r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r0, [sp, #4]
	ands r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r1, #0
	mov r0, ip
	ldr r6, [r0, #0x1c]
	ldr r7, [r0, #0x20]
	str r2, [sp, #0x24]
	cmp r1, r8
	bge _08005302
	adds r2, r3, #0
_080052E8:
	ldrh r0, [r4]
	add r0, sb
	strh r0, [r5]
	adds r4, r4, r2
	adds r5, #0x40
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	blt _080052E8
_08005302:
	ldr r2, [sp, #0x34]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r4, r6, r0
	ldr r0, [sp, #0x24]
	adds r4, r4, r0
	movs r0, #0x1f
	ldr r1, [sp, #4]
	ands r0, r1
	lsls r0, r0, #1
	adds r5, r7, r0
	movs r1, #0
	cmp r1, sl
	bge _0800533A
	adds r2, r3, #0
_08005320:
	ldrh r0, [r4]
	add r0, sb
	strh r0, [r5]
	adds r4, r4, r2
	adds r5, #0x40
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	blt _08005320
_0800533A:
	ldr r2, [sp, #0x2c]
	ldr r4, [sp, #0x14]
	adds r0, r2, r4
	ldr r3, [sp, #0x34]
	add r3, sl
	cmp r0, r3
	ble _080053E4
	mov r0, ip
	ldr r4, [r0, #0x1c]
	ldr r5, [r0, #0x20]
	ldr r1, [sp]
	lsls r2, r1, #1
	adds r0, r3, #0
	muls r0, r2, r0
	adds r4, r4, r0
	ldr r1, [sp, #4]
	lsls r0, r1, #1
	adds r4, r4, r0
	movs r1, #0x1f
	ands r3, r1
	lsls r0, r3, #6
	adds r5, r5, r0
	ldr r0, [sp, #4]
	ands r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	mov r0, ip
	ldr r6, [r0, #0x1c]
	ldr r7, [r0, #0x20]
	adds r3, r2, #0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _080053A0
	movs r0, #0
	cmp r0, r1
	bge _080053A0
_08005382:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	adds r0, r0, r4
	ldrh r0, [r0]
	add r0, sb
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x10]
	cmp r1, r2
	blt _08005382
_080053A0:
	ldr r1, [sp, #0x34]
	add r1, sl
	adds r0, r1, #0
	muls r0, r3, r0
	adds r4, r6, r0
	ldr r2, [sp, #0x28]
	lsls r0, r2, #1
	adds r4, r4, r0
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #6
	adds r5, r7, r1
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _080053E4
	movs r0, #0
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _080053E4
_080053C6:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	adds r0, r0, r4
	ldrh r0, [r0]
	add r0, sb
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0xc]
	cmp r1, r2
	blt _080053C6
_080053E4:
	ldr r4, [sp, #8]
	ldr r0, [sp, #0x1c]
	cmp r4, r0
	bhs _0800548C
	mov r1, ip
	ldr r4, [r1, #0x1c]
	ldr r5, [r1, #0x20]
	ldr r0, [sp]
	lsls r2, r0, #1
	ldr r1, [sp, #8]
	adds r0, r1, #0
	muls r0, r2, r0
	adds r4, r4, r0
	ldr r1, [sp, #4]
	lsls r0, r1, #1
	adds r4, r4, r0
	movs r1, #0x1f
	ldr r0, [sp, #8]
	ands r0, r1
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r0, [sp, #4]
	ands r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	mov r1, ip
	ldr r6, [r1, #0x1c]
	ldr r7, [r1, #0x20]
	adds r3, r2, #0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08005448
	movs r0, #0
	cmp r0, r2
	bge _08005448
_0800542A:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	adds r0, r0, r4
	ldrh r0, [r0]
	add r0, sb
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x10]
	cmp r1, r2
	blt _0800542A
_08005448:
	ldr r4, [sp, #8]
	adds r0, r4, #0
	muls r0, r3, r0
	adds r4, r6, r0
	ldr r1, [sp, #0x28]
	lsls r0, r1, #1
	adds r4, r4, r0
	movs r0, #0x1f
	ldr r2, [sp, #8]
	ands r2, r0
	lsls r0, r2, #6
	adds r5, r7, r0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0800548C
	movs r0, #0
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bge _0800548C
_0800546E:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r2, r0, r5
	adds r0, r0, r4
	ldrh r0, [r0]
	add r0, sb
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0xc]
	cmp r1, r2
	blt _0800546E
_0800548C:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800549C
sub_0800549C: @ 0x0800549C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0xc]
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r7, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	str r1, [sp, #0x14]
	mov sl, r0
	mov r2, r8
	ldrh r2, [r2, #0x10]
	cmp r0, r2
	bge _08005544
_080054C0:
	mov r0, r8
	ldrh r2, [r0, #0x14]
	add r2, sl
	ldrb r0, [r7, #2]
	lsls r0, r0, #1
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r1, r0
	adds r5, r4, #0
	adds r4, #4
	ldrb r0, [r5, #3]
	mov sb, r0
	ldrb r1, [r5, #2]
	mov ip, r1
	adds r0, r1, #0
	mov r1, sb
	muls r1, r0, r1
	adds r1, #1
	ldr r0, _08005558 @ =gUnk_03002D50
	adds r3, r2, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, _0800555C @ =gUnk_03002AF0
	adds r2, r2, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08005536
	ldrh r0, [r4]
	strb r0, [r2]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0800551A
	strb r6, [r3]
_0800551A:
	ldrb r3, [r7]
	ldrb r0, [r7, #1]
	str r0, [sp]
	mov r1, ip
	str r1, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, r8
	adds r2, r4, #0
	bl sub_080059A0
	movs r0, #1
	str r0, [sp, #0x10]
_08005536:
	adds r7, #6
	movs r1, #1
	add sl, r1
	mov r2, r8
	ldrh r2, [r2, #0x10]
	cmp sl, r2
	blt _080054C0
_08005544:
	ldr r0, [sp, #0x10]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005558: .4byte gUnk_03002D50
_0800555C: .4byte gUnk_03002AF0

	thumb_func_start sub_08005560
sub_08005560: @ 0x08005560
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	ldr r0, [r0, #0x28]
	mov r8, r0
	mov r1, sb
	ldr r1, [r1, #0x2c]
	str r1, [sp, #0xc]
	movs r2, #0
	b _08005626
_0800557C:
	mov r4, sb
	ldrh r0, [r4, #0x14]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	mov ip, r0
	mov r2, r8
	ldrb r0, [r2, #2]
	lsls r0, r0, #1
	ldr r3, [sp, #0xc]
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r7, r3, r0
	adds r5, r7, #4
	ldrb r3, [r7, #2]
	ldrb r2, [r7, #3]
	ldr r0, _080055B0 @ =gUnk_03002D50
	mov r4, ip
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080055B4
	adds r0, r3, #0
	muls r0, r2, r0
	adds r0, #1
	ldrb r1, [r7]
	b _080055BC
	.align 2, 0
_080055B0: .4byte gUnk_03002D50
_080055B4:
	adds r0, r3, #0
	muls r0, r2, r0
	adds r0, #1
	ldrb r1, [r1]
_080055BC:
	subs r1, #1
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	mov sl, r0
	lsls r6, r2, #0x10
	lsls r4, r3, #0x10
	asrs r1, r6, #0x10
	asrs r0, r4, #0x10
	muls r1, r0, r1
	adds r1, #1
	ldr r2, _08005640 @ =gUnk_03002D50
	add r2, ip
	ldrb r0, [r2]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r0, _08005644 @ =gUnk_03002AF0
	mov r3, ip
	adds r1, r3, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08005608
	ldrh r0, [r5]
	strb r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08005608
	strb r3, [r2]
_08005608:
	mov r0, r8
	ldrb r2, [r0]
	ldrb r3, [r0, #1]
	asrs r0, r4, #0x10
	str r0, [sp]
	asrs r0, r6, #0x10
	str r0, [sp, #4]
	mov r0, sb
	mov r1, sl
	bl sub_080057E4
	movs r1, #6
	add r8, r1
	ldr r2, [sp, #8]
	adds r2, #1
_08005626:
	str r2, [sp, #8]
	mov r3, sb
	ldrh r3, [r3, #0x10]
	cmp r2, r3
	blt _0800557C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005640: .4byte gUnk_03002D50
_08005644: .4byte gUnk_03002AF0

	thumb_func_start sub_08005648
sub_08005648: @ 0x08005648
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
_0800565A:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #3
	ldr r1, _080056D4 @ =gUnk_030029C0
	adds r5, r0, r1
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800566A
	b _080057C8
_0800566A:
	ldrb r0, [r5, #1]
	movs r1, #0x34
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r1, _080056D8 @ =gUnk_03002A20
	adds r2, r2, r1
	mov r8, r2
	bl sub_0800463C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _08005686
	b _080057C8
_08005686:
	mov r2, r8
	ldr r1, [r2, #0x2c]
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r6, r1, r0
	mov sl, r6
	adds r6, #4
	mov r4, sl
	ldrb r4, [r4, #2]
	str r4, [sp, #0x14]
	mov r0, sl
	ldrb r0, [r0, #3]
	mov sb, r0
	mov r7, sb
	adds r0, r7, #0
	muls r0, r4, r0
	adds r0, #1
	ldrb r1, [r5, #3]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r6, r6, r0
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080056DC
	ldrb r2, [r5, #5]
	ldrb r3, [r5, #6]
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	bl sub_080057E4
	b _080056F4
	.align 2, 0
_080056D4: .4byte gUnk_030029C0
_080056D8: .4byte gUnk_03002A20
_080056DC:
	ldr r2, _08005740 @ =gUnk_03002B30
	ldrb r0, [r5, #1]
	ldrb r3, [r5, #5]
	ldrb r1, [r5, #6]
	str r1, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r4, [r2]
	mov r1, r8
	adds r2, r6, #0
	bl _call_via_r4
_080056F4:
	ldrb r1, [r5]
	cmp r1, #4
	beq _080057BC
	ldrb r0, [r5, #2]
	subs r0, #1
	strb r0, [r5, #2]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080057BC
	cmp r1, #4
	bhi _08005756
	ldrb r3, [r5, #3]
	adds r1, r3, #1
	strb r1, [r5, #3]
	ldr r4, [sp, #0x14]
	mov r0, sb
	muls r0, r4, r0
	lsls r0, r0, #1
	adds r0, #2
	adds r6, r6, r0
	ldrh r0, [r6]
	strb r0, [r5, #2]
	mov r4, sl
	ldrb r0, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, r1
	bne _080057BC
	ldrb r0, [r5]
	cmp r0, #2
	beq _08005744
	cmp r0, #2
	ble _0800573C
	cmp r0, #3
	beq _0800574C
_0800573C:
	strb r2, [r5]
	b _08005788
	.align 2, 0
_08005740: .4byte gUnk_03002B30
_08005744:
	movs r0, #4
	strb r0, [r5]
	strb r3, [r5, #3]
	b _080057BC
_0800574C:
	strb r2, [r5, #3]
	mov r2, sl
	ldrh r0, [r2, #4]
	strb r0, [r5, #2]
	b _080057BC
_08005756:
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _080057B8
	subs r0, #1
	strb r0, [r5, #3]
	ldr r4, [sp, #0x14]
	mov r2, sb
	muls r2, r4, r2
	lsls r1, r2, #1
	adds r1, #2
	subs r6, r6, r1
	ldrh r1, [r6]
	strb r1, [r5, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080057BC
	ldrb r1, [r5]
	cmp r1, #6
	beq _08005796
	cmp r1, #6
	ble _08005786
	cmp r1, #7
	beq _0800579C
_08005786:
	strb r0, [r5]
_08005788:
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	b _080057BC
_08005796:
	movs r0, #4
	strb r0, [r5]
	b _080057BC
_0800579C:
	mov r4, sl
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r5, #3]
	mov r6, sl
	adds r6, #4
	adds r1, r2, #1
	ldrb r0, [r5, #3]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r6, r6, r0
	ldrh r0, [r6]
	strb r0, [r5, #2]
	b _080057BC
_080057B8:
	subs r0, #1
	strb r0, [r5, #3]
_080057BC:
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
_080057C8:
	ldr r2, [sp, #0x10]
	adds r2, #1
	str r2, [sp, #0x10]
	cmp r2, #0xb
	bhi _080057D4
	b _0800565A
_080057D4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080057E4
sub_080057E4: @ 0x080057E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r1, [sp]
	ldr r1, [sp, #0x44]
	ldr r4, [sp, #0x48]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldrb r1, [r0, #0x19]
	lsls r1, r1, #0xc
	ldrh r2, [r0, #0x1a]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldrh r1, [r0, #8]
	lsrs r1, r1, #3
	str r1, [sp, #8]
	ldrh r1, [r0, #0xa]
	lsrs r1, r1, #3
	ldr r0, [r0, #0x20]
	str r0, [sp, #0xc]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #1
	cmp r4, #0
	bge _0800582C
	b _08005990
_0800582C:
	str r1, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x14]
	adds r3, r1, #0
	adds r3, #0x15
	str r3, [sp, #0x18]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
_08005840:
	ldr r1, [sp, #0x14]
	adds r0, r1, r4
	subs r2, r4, #1
	str r2, [sp, #0x1c]
	ldr r3, [sp, #0x10]
	cmp r3, r0
	ble _08005850
	b _08005988
_08005850:
	ldr r1, [sp, #0x18]
	cmp r0, r1
	blt _08005858
	b _08005988
_08005858:
	mov r2, sl
	muls r2, r4, r2
	adds r4, r2, #0
	movs r1, #0x1f
	ands r1, r0
	mov r2, sl
	subs r2, #1
	cmp r2, #0
	bge _0800586C
	b _08005988
_0800586C:
	ldr r5, [sp, #8]
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	adds r7, r5, #0
	adds r7, #0x1f
	lsls r0, r1, #6
	ldr r1, [sp, #0xc]
	adds r6, r0, r1
	lsls r1, r2, #1
	lsls r0, r4, #1
	ldr r3, [sp]
	adds r0, r0, r3
	adds r4, r1, r0
	movs r0, #0x1f
	mov sb, r0
	movs r0, #3
	bics r0, r2
	cmp r2, #0
	blt _080058DE
	cmp r0, #0
	beq _08005900
	cmp r0, #3
	bge _080058DE
	cmp r0, #2
	bge _080058C0
	mov r3, ip
	adds r1, r3, r2
	cmp r5, r1
	bgt _080058BC
	cmp r1, r7
	bge _080058BC
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r0, [r4, #2]
	add r0, r8
	strh r0, [r1]
_080058BC:
	subs r4, #2
	subs r2, #1
_080058C0:
	mov r3, ip
	adds r1, r3, r2
	cmp r5, r1
	bgt _080058DA
	cmp r1, r7
	bge _080058DA
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r0, [r4, #2]
	add r0, r8
	strh r0, [r1]
_080058DA:
	subs r4, #2
	subs r2, #1
_080058DE:
	mov r3, ip
	adds r1, r3, r2
	cmp r5, r1
	bgt _080058F8
	cmp r1, r7
	bge _080058F8
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r0, [r4, #2]
	add r0, r8
	strh r0, [r1]
_080058F8:
	subs r4, #2
	subs r2, #1
	cmp r2, #0
	blt _08005988
_08005900:
	mov r3, ip
	adds r1, r3, r2
	cmp r5, r1
	bgt _0800591A
	cmp r1, r7
	bge _0800591A
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r0, [r4, #2]
	add r0, r8
	strh r0, [r1]
_0800591A:
	subs r1, r4, #2
	str r1, [sp, #0x20]
	subs r0, r2, #1
	mov r3, ip
	adds r1, r3, r0
	cmp r5, r1
	bgt _0800593C
	cmp r1, r7
	bge _0800593C
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldr r3, [sp, #0x20]
	ldrh r0, [r3, #2]
	add r0, r8
	strh r0, [r1]
_0800593C:
	subs r0, r4, #4
	str r0, [sp, #0x20]
	subs r0, r2, #2
	mov r3, ip
	adds r1, r3, r0
	cmp r5, r1
	bgt _0800595E
	cmp r1, r7
	bge _0800595E
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldr r3, [sp, #0x20]
	ldrh r0, [r3, #2]
	add r0, r8
	strh r0, [r1]
_0800595E:
	subs r0, r4, #6
	str r0, [sp, #0x20]
	subs r0, r2, #3
	mov r3, ip
	adds r1, r3, r0
	cmp r5, r1
	bgt _08005980
	cmp r1, r7
	bge _08005980
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r6
	ldr r3, [sp, #0x20]
	ldrh r0, [r3, #2]
	add r0, r8
	strh r0, [r1]
_08005980:
	subs r4, #8
	subs r2, #4
	cmp r2, #0
	bge _08005900
_08005988:
	ldr r4, [sp, #0x1c]
	cmp r4, #0
	blt _08005990
	b _08005840
_08005990:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080059A0
sub_080059A0: @ 0x080059A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, [sp]
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #0xc
	ldrh r4, [r3, #0x1a]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrh r4, [r3, #0x30]
	cmp r4, #0
	bne _080059F0
	lsls r0, r5, #1
	ldr r3, _080059EC @ =0x04000008
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r7, r0, #0xe
	b _080059FC
	.align 2, 0
_080059EC: .4byte 0x04000008
_080059F0:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r7, #1
	cmp r4, r0
	bhi _080059FC
	movs r7, #0
_080059FC:
	ldr r4, [sp]
	ldr r4, [r4, #0x20]
	str r4, [sp, #0x10]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	mov sb, r0
	cmp r0, #0
	bge _08005A10
	b _08005B4A
_08005A10:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
_08005A1C:
	ldr r0, [sp, #0x14]
	mov r5, sb
	muls r5, r0, r5
	ldr r1, [sp, #0x18]
	add r1, sb
	movs r0, #0x1f
	ands r1, r0
	ldr r4, [sp, #0x14]
	subs r4, #1
	mov r2, sb
	subs r2, #1
	str r2, [sp, #0x1c]
	cmp r4, #0
	bge _08005A3A
	b _08005B40
_08005A3A:
	lsls r1, r1, #6
	mov sl, r1
	lsls r1, r4, #1
	lsls r0, r5, #1
	ldr r3, [sp, #4]
	adds r0, r0, r3
	adds r1, r1, r0
	mov r8, r1
_08005A4A:
	movs r0, #0
	mov ip, r0
	ldr r1, [sp, #8]
	lsls r6, r1, #0x10
	ldr r2, [sp]
	ldrh r5, [r2]
	cmp r7, #0
	beq _08005A98
	asrs r0, r6, #0x10
	adds r1, r0, r4
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08005A6A
	movs r0, #0x3f
	subs r1, r0, r1
_08005A6A:
	cmp r7, #1
	bne _08005A74
	movs r3, #0x20
	ands r1, r3
	b _08005A7C
_08005A74:
	cmp r7, #2
	bne _08005A82
	movs r0, #0x20
	ands r1, r0
_08005A7C:
	lsls r1, r1, #5
	mov ip, r1
	b _08005A98
_08005A82:
	cmp r7, #3
	bne _08005A98
	ldr r0, [sp, #0x18]
	add r0, sb
	movs r2, #0x20
	ands r0, r2
	lsls r0, r0, #6
	ands r1, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	mov ip, r0
_08005A98:
	adds r1, r5, #0
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08005AC4
	mov r3, r8
	ldrh r2, [r3, #2]
	asrs r0, r6, #0x10
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	mov r3, ip
	lsls r1, r3, #1
	ldr r3, [sp, #0x10]
	adds r1, r1, r3
	add r1, sl
	adds r0, r0, r1
	ldr r3, [sp, #0xc]
	adds r1, r2, r3
	strh r1, [r0]
	b _08005B34
_08005AC4:
	mov r2, r8
	ldrh r0, [r2, #2]
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _08005B14 @ =0x0000F3FF
	ands r3, r2
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08005AEC
	movs r0, #0xc0
	lsls r0, r0, #4
	ands r2, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	eors r2, r0
	orrs r2, r3
_08005AEC:
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08005B04
	movs r0, #0xc0
	lsls r0, r0, #4
	ands r2, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	eors r2, r0
	orrs r2, r3
_08005B04:
	cmp r7, #0
	bne _08005B18
	asrs r1, r6, #0x10
	adds r1, r1, r4
	movs r3, #0x1f
	subs r1, r3, r1
	ands r1, r3
	b _08005B24
	.align 2, 0
_08005B14: .4byte 0x0000F3FF
_08005B18:
	asrs r0, r6, #0x10
	adds r0, r0, r4
	movs r1, #0x3f
	subs r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
_08005B24:
	lsls r1, r1, #1
	mov r3, ip
	lsls r0, r3, #1
	ldr r3, [sp, #0x10]
	adds r0, r0, r3
	add r0, sl
	adds r1, r1, r0
	strh r2, [r1]
_08005B34:
	movs r0, #2
	rsbs r0, r0, #0
	add r8, r0
	subs r4, #1
	cmp r4, #0
	bge _08005A4A
_08005B40:
	ldr r1, [sp, #0x1c]
	mov sb, r1
	cmp r1, #0
	blt _08005B4A
	b _08005A1C
_08005B4A:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005B5C
sub_08005B5C: @ 0x08005B5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x34
	muls r0, r1, r0
	ldr r1, _08005B98 @ =gUnk_03002A20
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x16]
	strb r2, [r0, #0x18]
	strb r2, [r0, #0x19]
	strh r1, [r0, #0x1a]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	strh r1, [r0, #0x30]
	bx lr
	.align 2, 0
_08005B98: .4byte gUnk_03002A20

	thumb_func_start sub_08005B9C
sub_08005B9C: @ 0x08005B9C
	push {lr}
	movs r3, #0
	movs r1, #0
	ldr r2, _08005C10 @ =gUnk_030029C0
_08005BA4:
	strb r1, [r2]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r1, [r2, #4]
	strb r1, [r2, #5]
	strb r1, [r2, #6]
	adds r0, r2, #0
	adds r0, #8
	strb r1, [r2, #8]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	adds r0, #8
	strb r1, [r2, #0x10]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	adds r0, #8
	strb r1, [r2, #0x18]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	adds r0, #8
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	adds r0, #8
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	adds r2, #0x30
	adds r3, #6
	cmp r3, #0xb
	bls _08005BA4
	pop {r0}
	bx r0
	.align 2, 0
_08005C10: .4byte gUnk_030029C0

	thumb_func_start sub_08005C14
sub_08005C14: @ 0x08005C14
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r0, #3
	ldr r1, _08005C44 @ =gUnk_030029C0
	adds r4, r0, r1
	cmp r5, #7
	bhi _08005C84
	lsls r0, r5, #2
	ldr r1, _08005C48 @ =_08005C4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005C44: .4byte gUnk_030029C0
_08005C48: .4byte _08005C4C
_08005C4C: @ jump table
	.4byte _08005C6C @ case 0
	.4byte _08005C84 @ case 1
	.4byte _08005C70 @ case 2
	.4byte _08005C74 @ case 3
	.4byte _08005C74 @ case 4
	.4byte _08005C78 @ case 5
	.4byte _08005C7C @ case 6
	.4byte _08005C80 @ case 7
_08005C6C:
	movs r0, #2
	b _08005C86
_08005C70:
	movs r0, #3
	b _08005C86
_08005C74:
	movs r0, #4
	b _08005C86
_08005C78:
	movs r0, #6
	b _08005C86
_08005C7C:
	movs r0, #5
	b _08005C86
_08005C80:
	movs r0, #7
	b _08005C86
_08005C84:
	movs r0, #1
_08005C86:
	strb r0, [r4]
	strb r7, [r4, #1]
	strb r6, [r4, #4]
	strb r3, [r4, #5]
	strb r2, [r4, #6]
	cmp r5, #3
	bls _08005CBC
	ldr r2, _08005CB8 @ =gUnk_03002A20
	ldrb r1, [r4, #1]
	movs r0, #0x34
	muls r0, r1, r0
	adds r1, r2, #0
	adds r1, #0x2c
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r4, #3]
	b _08005CC2
	.align 2, 0
_08005CB8: .4byte gUnk_03002A20
_08005CBC:
	movs r0, #0
	strb r0, [r4, #3]
	ldr r2, _08005CF0 @ =gUnk_03002A20
_08005CC2:
	ldrb r3, [r4, #4]
	movs r0, #0x34
	muls r0, r7, r0
	adds r0, r0, r2
	ldr r1, [r0, #0x2c]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r3, r1, #4
	ldrb r2, [r1, #3]
	ldrb r0, [r1, #2]
	muls r0, r2, r0
	adds r0, #1
	ldrb r1, [r4, #3]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	strb r0, [r4, #2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005CF0: .4byte gUnk_03002A20

	thumb_func_start sub_08005CF4
sub_08005CF4: @ 0x08005CF4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r1, sp
	bl sub_08001DC4
	ldr r3, _08005D68 @ =gUnk_03002A20
	movs r0, #0x34
	adds r2, r4, #0
	muls r2, r0, r2
	adds r4, r2, r3
	mov r1, sp
	ldrh r0, [r4]
	ldrh r1, [r1]
	orrs r0, r1
	strh r0, [r4]
	mov r0, sp
	ldrh r0, [r0, #2]
	strh r0, [r4, #2]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r4, #4]
	mov r0, sp
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r2, r0
	ldr r1, [sp, #0xc]
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r5, [r0]
	adds r3, #0x24
	adds r2, r2, r3
	str r6, [r2]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08005D5E
	ldrh r0, [r4]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4]
_08005D5E:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005D68: .4byte gUnk_03002A20

	thumb_func_start sub_08005D6C
sub_08005D6C: @ 0x08005D6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x34
	adds r4, r0, #0
	muls r4, r2, r4
	ldr r0, _08005E08 @ =gUnk_03002A20
	adds r4, r4, r0
	adds r0, r1, #0
	mov r1, sp
	bl sub_08001DE8
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x10]
	mov r0, sp
	ldrh r0, [r0, #6]
	strh r0, [r4, #0x12]
	ldr r3, [sp, #8]
	str r3, [r4, #0x28]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x2c]
	ldr r7, _08005E0C @ =gUnk_030029B0
	ldr r1, [r7]
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x16]
	mov r0, sp
	ldrh r0, [r0, #4]
	adds r1, r1, r0
	str r1, [r7]
	adds r5, r3, #0
	adds r6, r2, #0
	ldrh r4, [r4, #0x14]
	cmp r4, r1
	bhs _08005DFA
	ldr r0, _08005E10 @ =gUnk_03002D50
	mov r8, r0
	ldr r0, _08005E14 @ =gUnk_03002AF0
	mov ip, r0
_08005DC4:
	mov r0, r8
	adds r3, r4, r0
	ldrb r0, [r5, #3]
	strb r0, [r3]
	ldrb r0, [r5, #2]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r6, r0
	adds r2, r0, #4
	ldrb r1, [r0, #3]
	ldrb r0, [r0, #2]
	muls r0, r1, r0
	adds r0, #1
	ldrb r1, [r3]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r2, r2, r0
	mov r0, ip
	adds r1, r4, r0
	ldrb r0, [r2]
	strb r0, [r1]
	adds r5, #6
	adds r4, #1
	ldr r0, [r7]
	cmp r4, r0
	blo _08005DC4
_08005DFA:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005E08: .4byte gUnk_03002A20
_08005E0C: .4byte gUnk_030029B0
_08005E10: .4byte gUnk_03002D50
_08005E14: .4byte gUnk_03002AF0

	thumb_func_start sub_08005E18
sub_08005E18: @ 0x08005E18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r7, _08005E54 @ =gUnk_03002D00
	movs r0, #0x34
	muls r0, r5, r0
	ldr r2, _08005E58 @ =gUnk_03002A20
	adds r6, r0, r2
	movs r0, #0
	mov ip, r0
	ldrh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _08005E8C
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08005E5C
	movs r4, #0
	b _08005E68
	.align 2, 0
_08005E54: .4byte gUnk_03002D00
_08005E58: .4byte gUnk_03002A20
_08005E5C:
	ldrh r0, [r6, #4]
	subs r0, #0xf0
	cmp r0, r1
	bge _08005E6E
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08005E68:
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r0
_08005E6E:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08005E7A
	movs r3, #0
	b _08005E86
_08005E7A:
	ldrh r0, [r6, #6]
	subs r0, #0xa0
	cmp r0, r1
	bge _08005E8C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08005E86:
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r0
_08005E8C:
	cmp r5, #1
	beq _08005EAA
	cmp r5, #1
	bgt _08005E9A
	cmp r5, #0
	beq _08005EA4
	b _08005EBA
_08005E9A:
	cmp r5, #2
	beq _08005EB0
	cmp r5, #3
	beq _08005EB6
	b _08005EBA
_08005EA4:
	strh r4, [r7]
	strh r3, [r7, #2]
	b _08005EBA
_08005EAA:
	strh r4, [r7, #4]
	strh r3, [r7, #6]
	b _08005EBA
_08005EB0:
	strh r4, [r7, #8]
	strh r3, [r7, #0xa]
	b _08005EBA
_08005EB6:
	strh r4, [r7, #0xc]
	strh r3, [r7, #0xe]
_08005EBA:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	ldrh r1, [r6, #8]
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	ble _08005ECE
	adds r0, #0x10
	cmp r0, r2
	bgt _08005EDE
_08005ECE:
	movs r0, #0x34
	adds r1, r5, #0
	muls r1, r0, r1
	add r1, r8
	ldrh r2, [r1]
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
_08005EDE:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	ldrh r1, [r6, #0xa]
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	ble _08005EF2
	adds r0, #0x10
	cmp r0, r2
	bgt _08005F02
_08005EF2:
	movs r0, #0x34
	adds r1, r5, #0
	muls r1, r0, r1
	add r1, r8
	ldrh r2, [r1]
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
_08005F02:
	strh r4, [r6, #8]
	strh r3, [r6, #0xa]
	mov r0, ip
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08005F14
sub_08005F14: @ 0x08005F14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r1
	str r2, [sp, #0x1c]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	ldr r4, [sp, #0x50]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	str r3, [sp, #0x20]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	str r1, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	add r5, sp, #0xc
	movs r1, #0x34
	muls r1, r0, r1
	ldr r0, _08005FD8 @ =gUnk_03002A20
	adds r4, r1, r0
	mov r0, r8
	adds r1, r5, #0
	bl sub_08001DC4
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r7, r0
	bne _08005F68
	ldrh r1, [r4]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4]
_08005F68:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r6, r0
	bne _08005F78
	ldrh r1, [r4]
	movs r0, #8
	orrs r0, r1
	strh r0, [r4]
_08005F78:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005F86
	movs r7, #0
	movs r6, #0
_08005F86:
	mov r3, sl
	strb r3, [r4, #0x19]
	mov r0, sb
	strh r0, [r4, #0x1a]
	ldrh r1, [r4]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4]
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08005FFC
	ldr r1, [sp, #0x1c]
	cmp r8, r1
	beq _08005FB0
	ldr r2, _08005FDC @ =0x04000008
	mov r0, r8
	bl CpuSet
_08005FB0:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08005FE0
	mov r3, sl
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	lsls r3, r0, #0x10
	asrs r3, r3, #0x10
	str r7, [sp]
	str r6, [sp, #4]
	add r1, sp, #0xc
	str r1, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x1c]
	bl sub_0800600C
	b _08005FFC
	.align 2, 0
_08005FD8: .4byte gUnk_03002A20
_08005FDC: .4byte 0x04000008
_08005FE0:
	ldr r3, [sp, #0x20]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #0x24]
	lsls r3, r0, #0x10
	asrs r3, r3, #0x10
	str r7, [sp]
	str r6, [sp, #4]
	add r1, sp, #0xc
	str r1, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0x1c]
	bl sub_08006590
_08005FFC:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800600C
sub_0800600C: @ 0x0800600C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r1, [sp]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x48]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r1, [sp, #0x4c]
	ldrh r0, [r1, #2]
	lsrs r0, r0, #0xe
	cmp r0, #1
	beq _08006050
	cmp r0, #1
	ble _0800604A
	cmp r0, #2
	beq _08006056
	cmp r0, #3
	beq _0800605C
_0800604A:
	movs r2, #1
	str r2, [sp, #0xc]
	b _08006060
_08006050:
	movs r4, #2
	str r4, [sp, #0xc]
	b _08006060
_08006056:
	movs r6, #2
	str r6, [sp, #0xc]
	b _08006060
_0800605C:
	movs r0, #4
	str r0, [sp, #0xc]
_08006060:
	movs r4, #0
	ldr r1, [sp, #0xc]
	cmp r4, r1
	bhs _0800613E
_08006068:
	lsls r6, r4, #0xb
	mov r2, r8
	cmp r2, #0
	bne _08006078
	cmp r7, #0
	bne _08006078
	adds r1, r6, #0
	b _08006088
_08006078:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x4c]
	mov r2, r8
	adds r3, r7, #0
	bl sub_08006150
	adds r1, r0, #0
_08006088:
	adds r1, #0x20
	movs r5, #0
	ldr r2, [sp, #0x4c]
	ldr r0, [r2, #0xc]
	adds r4, #1
	str r4, [sp, #0x1c]
	ldr r4, [sp]
	adds r1, r4, r1
	str r1, [sp, #0x14]
	adds r0, r0, r6
	str r0, [sp, #0x10]
	movs r6, #0x80
	lsls r6, r6, #3
	mov sl, r6
	movs r0, #0x80
	lsls r0, r0, #4
	mov sb, r0
_080060AA:
	movs r4, #0
	lsls r1, r5, #5
	mov ip, r1
	adds r2, r5, #1
	str r2, [sp, #0x18]
	movs r6, #0x1f
	subs r0, r6, r5
	lsls r0, r0, #0x10
	str r0, [sp, #0x20]
_080060BC:
	mov r1, ip
	adds r0, r1, r4
	lsls r0, r0, #1
	ldr r2, [sp, #0x10]
	adds r0, r0, r2
	ldrh r3, [r0]
	lsrs r2, r3, #0xc
	adds r1, r3, #0
	ldr r6, _08006108 @ =0x000003FF
	ands r1, r6
	ldr r0, [sp, #4]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r6, [sp, #8]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r3, #0
	mov r6, sl
	ands r0, r6
	mov r6, r8
	eors r0, r6
	mov r6, sb
	ands r3, r6
	eors r3, r7
	orrs r0, r3
	lsrs r2, r2, #4
	orrs r1, r2
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r8, sl
	bne _0800610C
	movs r1, #0x1f
	subs r0, r1, r4
	lsls r0, r0, #0x10
	b _0800610E
	.align 2, 0
_08006108: .4byte 0x000003FF
_0800610C:
	lsls r0, r4, #0x10
_0800610E:
	lsrs r1, r0, #0x10
	cmp r7, sb
	bne _0800611A
	ldr r2, [sp, #0x20]
	lsrs r0, r2, #0x10
	b _0800611E
_0800611A:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
_0800611E:
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r6, [sp, #0x14]
	adds r0, r0, r6
	strh r3, [r0]
	adds r4, #1
	cmp r4, #0x1f
	bls _080060BC
	ldr r5, [sp, #0x18]
	cmp r5, #0x1f
	bls _080060AA
	ldr r4, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blo _08006068
_0800613E:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006150
sub_08006150: @ 0x08006150
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r0, [r0, #2]
	movs r5, #0xc0
	lsls r5, r5, #8
	adds r1, r5, #0
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08006182
	cmp r1, r0
	ble _080061F2
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	beq _0800618E
	cmp r1, r5
	beq _0800619A
	b _080061F2
_08006182:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r2, r0
	bne _080061F2
	movs r0, #1
	b _080061AC
_0800618E:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r3, r0
	bne _080061F2
	movs r0, #1
	b _080061AC
_0800619A:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r2, r0
	bne _080061C6
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r3, r0
	bne _080061B2
	movs r0, #3
_080061AC:
	subs r0, r0, r4
	lsls r0, r0, #0xb
	b _080061F4
_080061B2:
	movs r1, #1
	bics r1, r4
	lsls r1, r1, #0xb
	movs r0, #2
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x11
	lsls r0, r0, #0xc
	adds r0, r1, r0
	b _080061F4
_080061C6:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r3, r0
	bne _080061F2
	cmp r4, #1
	beq _080061E4
	cmp r4, #1
	ble _080061DE
	cmp r4, #2
	beq _080061EA
	cmp r4, #3
	beq _080061EE
_080061DE:
	movs r0, #0x80
	lsls r0, r0, #5
	b _080061F4
_080061E4:
	movs r0, #0xc0
	lsls r0, r0, #5
	b _080061F4
_080061EA:
	movs r0, #0
	b _080061F4
_080061EE:
	adds r0, r3, #0
	b _080061F4
_080061F2:
	lsls r0, r4, #0xb
_080061F4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080061FC
sub_080061FC: @ 0x080061FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x34
	muls r0, r2, r0
	ldr r2, _0800620C @ =gUnk_03002A20
	adds r0, r0, r2
	strh r1, [r0, #0x30]
	bx lr
	.align 2, 0
_0800620C: .4byte gUnk_03002A20

	thumb_func_start sub_08006210
sub_08006210: @ 0x08006210
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x34
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08006260 @ =gUnk_03002A20
	adds r4, r1, r0
	bl sub_08005B9C
	ldr r2, _08006264 @ =gUnk_030029B0
	ldrh r1, [r4, #0x16]
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	movs r1, #0
	ldrh r0, [r4, #0x16]
	cmp r1, r0
	bhs _08006254
	ldr r5, _08006268 @ =gUnk_03002AF0
	movs r2, #0
	ldr r3, _0800626C @ =gUnk_03002D50
_0800623C:
	ldrh r0, [r4, #0x14]
	adds r0, r0, r1
	adds r0, r0, r5
	strb r2, [r0]
	ldrh r0, [r4, #0x14]
	adds r0, r0, r1
	adds r0, r0, r3
	strb r2, [r0]
	adds r1, #1
	ldrh r0, [r4, #0x16]
	cmp r1, r0
	blo _0800623C
_08006254:
	adds r0, r6, #0
	bl sub_08005B5C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006260: .4byte gUnk_03002A20
_08006264: .4byte gUnk_030029B0
_08006268: .4byte gUnk_03002AF0
_0800626C: .4byte gUnk_03002D50

	thumb_func_start sub_08006270
sub_08006270: @ 0x08006270
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	ldr r3, _0800628C @ =gUnk_03002D00
	cmp r0, #1
	beq _080062A2
	cmp r0, #1
	bgt _08006290
	cmp r0, #0
	beq _0800629A
	b _080062BA
	.align 2, 0
_0800628C: .4byte gUnk_03002D00
_08006290:
	cmp r2, #2
	beq _080062AA
	cmp r2, #3
	beq _080062B2
	b _080062BA
_0800629A:
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	b _080062B8
_080062A2:
	ldrh r0, [r3, #4]
	strh r0, [r1]
	ldrh r0, [r3, #6]
	b _080062B8
_080062AA:
	ldrh r0, [r3, #8]
	strh r0, [r1]
	ldrh r0, [r3, #0xa]
	b _080062B8
_080062B2:
	ldrh r0, [r3, #0xc]
	strh r0, [r1]
	ldrh r0, [r3, #0xe]
_080062B8:
	strh r0, [r4]
_080062BA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080062C0
sub_080062C0: @ 0x080062C0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r4, _080062DC @ =gUnk_03002A20
	movs r3, #0x34
	muls r0, r3, r0
	adds r0, r0, r4
	ldrh r3, [r0, #4]
	strh r3, [r1]
	ldrh r0, [r0, #6]
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080062DC: .4byte gUnk_03002A20

	thumb_func_start sub_080062E0
sub_080062E0: @ 0x080062E0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _080062F4 @ =gUnk_03002D10
	cmp r0, #2
	beq _080062F8
	cmp r0, #3
	beq _080062FE
	b _08006302
	.align 2, 0
_080062F4: .4byte gUnk_03002D10
_080062F8:
	strh r1, [r3, #8]
	strh r2, [r3, #0xa]
	b _08006302
_080062FE:
	strh r1, [r3, #0x18]
	strh r2, [r3, #0x1a]
_08006302:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006308
sub_08006308: @ 0x08006308
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0800631C @ =gUnk_03002D10
	cmp r0, #2
	beq _08006320
	cmp r0, #3
	beq _0800632C
	b _08006338
	.align 2, 0
_0800631C: .4byte gUnk_03002D10
_08006320:
	movs r4, #8
	ldrsh r0, [r3, r4]
	str r0, [r1]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	b _08006336
_0800632C:
	movs r4, #0x18
	ldrsh r0, [r3, r4]
	str r0, [r1]
	movs r1, #0x1a
	ldrsh r0, [r3, r1]
_08006336:
	str r0, [r2]
_08006338:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006340
sub_08006340: @ 0x08006340
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08006354 @ =gUnk_03002D10
	cmp r0, #2
	beq _08006358
	cmp r0, #3
	beq _0800635E
	b _08006362
	.align 2, 0
_08006354: .4byte gUnk_03002D10
_08006358:
	str r1, [r3]
	str r2, [r3, #4]
	b _08006362
_0800635E:
	str r1, [r3, #0x10]
	str r2, [r3, #0x14]
_08006362:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006368
sub_08006368: @ 0x08006368
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0800637C @ =gUnk_03002D10
	cmp r0, #2
	beq _08006380
	cmp r0, #3
	beq _08006388
	b _08006390
	.align 2, 0
_0800637C: .4byte gUnk_03002D10
_08006380:
	ldr r0, [r3]
	str r0, [r1]
	ldr r0, [r3, #4]
	b _0800638E
_08006388:
	ldr r0, [r3, #0x10]
	str r0, [r1]
	ldr r0, [r3, #0x14]
_0800638E:
	str r0, [r2]
_08006390:
	pop {r0}
	bx r0

	thumb_func_start sub_08006394
sub_08006394: @ 0x08006394
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _080063AC @ =gUnk_03002D10
	cmp r0, #2
	beq _080063B0
	cmp r0, #3
	beq _080063B4
	b _080063B6
	.align 2, 0
_080063AC: .4byte gUnk_03002D10
_080063B0:
	strh r1, [r2, #0xc]
	b _080063B6
_080063B4:
	strh r1, [r2, #0x1c]
_080063B6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080063BC
sub_080063BC: @ 0x080063BC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080063D0 @ =gUnk_03002D10
	cmp r0, #2
	beq _080063CC
	cmp r0, #3
	beq _080063D4
_080063CC:
	ldrh r0, [r1, #0xc]
	b _080063D6
	.align 2, 0
_080063D0: .4byte gUnk_03002D10
_080063D4:
	ldrh r0, [r1, #0x1c]
_080063D6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080063E0
sub_080063E0: @ 0x080063E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x34
	muls r1, r0, r1
	ldr r0, _080063F8 @ =gUnk_03002A20
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #2
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080063F8: .4byte gUnk_03002A20

	thumb_func_start sub_080063FC
sub_080063FC: @ 0x080063FC
	push {lr}
	lsls r0, r0, #3
	ldr r1, _08006414 @ =gUnk_030029C0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0800643C
	lsls r0, r0, #2
	ldr r1, _08006418 @ =_0800641C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006414: .4byte gUnk_030029C0
_08006418: .4byte _0800641C
_0800641C: @ jump table
	.4byte _0800643C @ case 0
	.4byte _08006444 @ case 1
	.4byte _08006444 @ case 2
	.4byte _08006444 @ case 3
	.4byte _08006440 @ case 4
	.4byte _08006444 @ case 5
	.4byte _08006444 @ case 6
	.4byte _08006444 @ case 7
_0800643C:
	movs r0, #0
	b _08006446
_08006440:
	movs r0, #2
	b _08006446
_08006444:
	movs r0, #1
_08006446:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800644C
sub_0800644C: @ 0x0800644C
	lsls r0, r0, #3
	ldr r2, _08006458 @ =gUnk_030029C0
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08006458: .4byte gUnk_030029C0

	thumb_func_start sub_0800645C
sub_0800645C: @ 0x0800645C
	push {lr}
	movs r2, #0
	movs r3, #0
	ldr r1, _080064AC @ =gUnk_030029C0
_08006464:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800646C
	adds r2, #1
_0800646C:
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08006474
	adds r2, #1
_08006474:
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _0800647C
	adds r2, #1
_0800647C:
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _08006484
	adds r2, #1
_08006484:
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08006490
	adds r2, #1
_08006490:
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800649C
	adds r2, #1
_0800649C:
	adds r1, #0x30
	adds r3, #6
	cmp r3, #0xb
	bls _08006464
	movs r0, #0xc
	subs r0, r0, r2
	pop {r1}
	bx r1
	.align 2, 0
_080064AC: .4byte gUnk_030029C0

	thumb_func_start sub_080064B0
sub_080064B0: @ 0x080064B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	mov r7, sp
	mov r1, sp
	bl sub_08001CBC
	cmp r4, r6
	beq _080064EE
	ldr r2, _0800658C @ =0x0400000D
	adds r0, r4, #0
	adds r1, r6, #0
	bl CpuSet
	add r4, sp, #0x1c
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08001CBC
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #0x14]
	ldrh r2, [r7, #8]
	lsrs r2, r2, #2
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl CpuSet
_080064EE:
	movs r2, #0
	ldr r0, [sp, #4]
	cmp r2, r0
	bhs _08006584
	ldr r3, [sp, #0x10]
	adds r4, r0, #0
	adds r1, r6, #0
	adds r1, #0x30
	movs r0, #3
	ands r0, r4
	cmp r4, #0
	ble _08006532
	cmp r0, #0
	beq _08006546
	cmp r0, #1
	ble _08006532
	cmp r0, #2
	ble _08006522
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800651C
	adds r0, r0, r5
	strb r0, [r1]
_0800651C:
	adds r1, r6, #0
	adds r1, #0x31
	movs r2, #1
_08006522:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800652E
	adds r0, r0, r5
	strb r0, [r1]
_0800652E:
	adds r1, #1
	adds r2, #1
_08006532:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800653E
	adds r0, r0, r5
	strb r0, [r1]
_0800653E:
	adds r1, #1
	adds r2, #1
	cmp r2, r4
	bhs _08006584
_08006546:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08006552
	adds r0, r0, r5
	strb r0, [r1]
_08006552:
	adds r0, r2, #1
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08006560
	adds r0, r0, r5
	strb r0, [r1, #1]
_08006560:
	adds r0, r2, #2
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800656E
	adds r0, r0, r5
	strb r0, [r1, #2]
_0800656E:
	adds r0, r2, #3
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800657C
	adds r0, r0, r5
	strb r0, [r1, #3]
_0800657C:
	adds r1, #4
	adds r2, #4
	cmp r2, r4
	blo _08006546
_08006584:
	add sp, #0x38
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800658C: .4byte 0x0400000D

	thumb_func_start sub_08006590
sub_08006590: @ 0x08006590
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r4, [sp, #0x1c]
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldrh r0, [r4, #4]
	lsrs r0, r0, #3
	strh r0, [r4, #4]
	ldrh r0, [r4, #6]
	lsrs r0, r0, #3
	strh r0, [r4, #6]
	movs r3, #0
	cmp r3, r0
	bhs _080065D6
_080065AC:
	movs r2, #0
	adds r5, r3, #1
	b _080065C8
_080065B2:
	ldrh r0, [r4, #6]
	muls r0, r3, r0
	ldr r1, [r4, #0xc]
	adds r0, r0, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r1, r1, r6
	adds r0, r0, r7
	adds r0, #0x20
	strb r1, [r0]
	adds r2, #1
_080065C8:
	ldrh r0, [r4, #4]
	cmp r2, r0
	blo _080065B2
	adds r3, r5, #0
	ldrh r0, [r4, #6]
	cmp r3, r0
	blo _080065AC
_080065D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080065DC
sub_080065DC: @ 0x080065DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x58]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, [sp]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #0xc
	ldrh r6, [r4, #0x1a]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrh r4, [r4, #0x30]
	cmp r4, #0
	bne _08006630
	lsls r0, r5, #1
	ldr r7, _0800662C @ =0x04000008
	adds r0, r0, r7
	ldrh r0, [r0]
	lsrs r0, r0, #0xe
	mov r8, r0
	b _08006640
	.align 2, 0
_0800662C: .4byte 0x04000008
_08006630:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r5, #1
	mov r8, r5
	cmp r4, r0
	bhi _08006640
	movs r6, #0
	mov r8, r6
_08006640:
	ldr r7, [sp]
	ldr r7, [r7, #0x20]
	str r7, [sp, #0x10]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r2, r0, #1
	cmp r2, #0
	bge _08006652
	b _0800677A
_08006652:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x1c]
	asrs r0, r3, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x20]
_08006668:
	ldr r3, [sp, #0x14]
	adds r5, r2, #0
	muls r5, r3, r5
	ldr r4, [sp, #0x18]
	adds r3, r4, r2
	movs r0, #0x1f
	ands r3, r0
	ldr r4, [sp, #0x14]
	subs r4, #1
	subs r6, r2, #1
	str r6, [sp, #0x28]
	cmp r4, #0
	blt _08006772
	ldr r7, [sp, #0x1c]
	asrs r0, r7, #0x10
	adds r0, r0, r2
	mov sb, r0
	movs r1, #0x20
	ands r0, r1
	mov sb, r0
	lsls r0, r0, #6
	str r0, [sp, #0x24]
	lsls r1, r4, #1
	lsls r0, r5, #1
	ldr r2, [sp, #4]
	adds r0, r0, r2
	adds r6, r1, r0
	ldr r5, [sp, #0x20]
	adds r5, r4, r5
	str r5, [sp, #0x2c]
	lsls r3, r3, #6
	mov sl, r3
_080066A8:
	movs r5, #0
	ldr r7, [sp, #8]
	lsls r7, r7, #0x10
	mov ip, r7
	mov r0, r8
	cmp r0, #0
	beq _080066E2
	cmp r0, #1
	bne _080066C4
	ldr r0, [sp, #0x2c]
	movs r1, #0x20
	ands r0, r1
	lsls r5, r0, #5
	b _080066E2
_080066C4:
	mov r2, r8
	cmp r2, #2
	bne _080066D0
	mov r3, sb
	lsls r5, r3, #5
	b _080066E2
_080066D0:
	mov r7, r8
	cmp r7, #3
	bne _080066E2
	ldr r0, [sp, #0x2c]
	movs r1, #0x20
	ands r0, r1
	lsls r0, r0, #5
	ldr r2, [sp, #0x24]
	adds r5, r2, r0
_080066E2:
	ldr r3, [sp]
	ldrh r1, [r3]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0800670E
	ldrh r2, [r6, #2]
	mov r7, ip
	asrs r0, r7, #0x10
	adds r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	lsls r1, r5, #1
	ldr r3, [sp, #0x10]
	adds r1, r1, r3
	add r1, sl
	adds r0, r0, r1
	ldr r5, [sp, #0xc]
	adds r1, r2, r5
	strh r1, [r0]
	b _08006764
_0800670E:
	ldrh r0, [r6, #2]
	ldr r7, [sp, #0xc]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _0800678C @ =0x0000F3FF
	ands r3, r2
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08006734
	movs r0, #0xc0
	lsls r0, r0, #4
	ands r2, r0
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	eors r2, r0
	orrs r2, r3
_08006734:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800674C
	movs r0, #0xc0
	lsls r0, r0, #4
	ands r2, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	eors r2, r0
	orrs r2, r3
_0800674C:
	lsls r1, r5, #1
	ldr r3, [sp, #0x10]
	adds r1, r3, r1
	add r1, sl
	mov r5, ip
	asrs r0, r5, #0x10
	adds r0, r0, r4
	movs r7, #0x1f
	ands r0, r7
	lsls r0, r0, #1
	subs r1, r1, r0
	strh r2, [r1, #0x3e]
_08006764:
	subs r6, #2
	ldr r0, [sp, #0x2c]
	subs r0, #1
	str r0, [sp, #0x2c]
	subs r4, #1
	cmp r4, #0
	bge _080066A8
_08006772:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	blt _0800677A
	b _08006668
_0800677A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800678C: .4byte 0x0000F3FF

	thumb_func_start sub_08006790
sub_08006790: @ 0x08006790
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r1, #0
	lsls r4, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	bl sub_080069B8
	ldr r3, _080067B8 @ =gUnk_03002DB0
	movs r0, #0
	ldrsh r2, [r3, r0]
	cmp r2, #0
	beq _080067BC
	cmp r2, #1
	beq _080067F0
	b _08006876
	.align 2, 0
_080067B8: .4byte gUnk_03002DB0
_080067BC:
	ldr r0, _080067DC @ =gUnk_03002D90
	strh r2, [r0]
	ldr r0, _080067E0 @ =gUnk_03002D98
	strh r2, [r0]
	ldr r1, _080067E4 @ =gUnk_03002D94
	lsrs r0, r4, #0x13
	strh r0, [r1]
	ldr r0, _080067E8 @ =gUnk_03002DAC
	str r5, [r0]
	ldr r0, _080067EC @ =gUnk_03002DA8
	strh r2, [r0]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _08006876
	.align 2, 0
_080067DC: .4byte gUnk_03002D90
_080067E0: .4byte gUnk_03002D98
_080067E4: .4byte gUnk_03002D94
_080067E8: .4byte gUnk_03002DAC
_080067EC: .4byte gUnk_03002DA8
_080067F0:
	ldr r1, _08006800 @ =gUnk_03002DA8
	ldrh r0, [r1]
	mov r2, sb
	subs r0, r2, r0
	cmp r0, #0x80
	ble _08006804
	movs r0, #0x10
	b _0800680E
	.align 2, 0
_08006800: .4byte gUnk_03002DA8
_08006804:
	cmp r0, #0
	bge _0800680A
	adds r0, #7
_0800680A:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
_0800680E:
	mov r8, r0
	movs r6, #0
	ldr r7, _08006818 @ =gUnk_03002DA8
	b _08006836
	.align 2, 0
_08006818: .4byte gUnk_03002DA8
_0800681C:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r0, [r5]
	adds r0, #8
	str r0, [r5]
	ldrh r0, [r7]
	adds r0, #8
	strh r0, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _0800688C @ =gUnk_03002DA8
_08006836:
	cmp r6, r8
	bhs _0800685C
	ldr r4, _08006890 @ =gUnk_03002D94
	ldrh r0, [r4]
	ldr r5, _08006894 @ =gUnk_03002DAC
	ldr r1, [r5]
	bl EEPROMWrite1_check
	ldr r1, _08006898 @ =gUnk_03002D98
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800681C
	ldr r1, _0800689C @ =gUnk_03002D90
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0800688C @ =gUnk_03002DA8
_0800685C:
	ldrh r0, [r1]
	cmp r0, sb
	bhs _08006870
	ldr r0, _0800689C @ =gUnk_03002D90
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08006876
_08006870:
	ldr r1, _080068A0 @ =gUnk_03002DB0
	movs r0, #0
	strh r0, [r1]
_08006876:
	bl sub_08006A60
	ldr r0, _080068A0 @ =gUnk_03002DB0
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800688C: .4byte gUnk_03002DA8
_08006890: .4byte gUnk_03002D94
_08006894: .4byte gUnk_03002DAC
_08006898: .4byte gUnk_03002D98
_0800689C: .4byte gUnk_03002D90
_080068A0: .4byte gUnk_03002DB0

	thumb_func_start sub_080068A4
sub_080068A4: @ 0x080068A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r1, #0
	lsls r4, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	bl sub_080069B8
	ldr r3, _080068CC @ =gUnk_03002DB0
	movs r0, #0
	ldrsh r2, [r3, r0]
	cmp r2, #0
	beq _080068D0
	cmp r2, #1
	beq _08006904
	b _0800698A
	.align 2, 0
_080068CC: .4byte gUnk_03002DB0
_080068D0:
	ldr r0, _080068F0 @ =gUnk_03002D90
	strh r2, [r0]
	ldr r0, _080068F4 @ =gUnk_03002D98
	strh r2, [r0]
	ldr r1, _080068F8 @ =gUnk_03002D94
	lsrs r0, r4, #0x13
	strh r0, [r1]
	ldr r0, _080068FC @ =gUnk_03002DAC
	str r5, [r0]
	ldr r0, _08006900 @ =gUnk_03002DA8
	strh r2, [r0]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _0800698A
	.align 2, 0
_080068F0: .4byte gUnk_03002D90
_080068F4: .4byte gUnk_03002D98
_080068F8: .4byte gUnk_03002D94
_080068FC: .4byte gUnk_03002DAC
_08006900: .4byte gUnk_03002DA8
_08006904:
	ldr r1, _08006914 @ =gUnk_03002DA8
	ldrh r0, [r1]
	mov r2, sb
	subs r0, r2, r0
	cmp r0, #0x80
	ble _08006918
	movs r0, #0x10
	b _08006922
	.align 2, 0
_08006914: .4byte gUnk_03002DA8
_08006918:
	cmp r0, #0
	bge _0800691E
	adds r0, #7
_0800691E:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
_08006922:
	mov r8, r0
	movs r6, #0
	ldr r7, _0800692C @ =gUnk_03002DA8
	b _0800694A
	.align 2, 0
_0800692C: .4byte gUnk_03002DA8
_08006930:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldr r0, [r5]
	adds r0, #8
	str r0, [r5]
	ldrh r0, [r7]
	adds r0, #8
	strh r0, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _080069A0 @ =gUnk_03002DA8
_0800694A:
	cmp r6, r8
	bhs _08006970
	ldr r4, _080069A4 @ =gUnk_03002D94
	ldrh r0, [r4]
	ldr r5, _080069A8 @ =gUnk_03002DAC
	ldr r1, [r5]
	bl EEPROMRead
	ldr r1, _080069AC @ =gUnk_03002D98
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08006930
	ldr r1, _080069B0 @ =gUnk_03002D90
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080069A0 @ =gUnk_03002DA8
_08006970:
	ldrh r0, [r1]
	cmp r0, sb
	bhs _08006984
	ldr r0, _080069B0 @ =gUnk_03002D90
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800698A
_08006984:
	ldr r1, _080069B4 @ =gUnk_03002DB0
	movs r0, #0
	strh r0, [r1]
_0800698A:
	bl sub_08006A60
	ldr r0, _080069B4 @ =gUnk_03002DB0
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080069A0: .4byte gUnk_03002DA8
_080069A4: .4byte gUnk_03002D94
_080069A8: .4byte gUnk_03002DAC
_080069AC: .4byte gUnk_03002D98
_080069B0: .4byte gUnk_03002D90
_080069B4: .4byte gUnk_03002DB0

	thumb_func_start sub_080069B8
sub_080069B8: @ 0x080069B8
	ldr r0, _080069F0 @ =0x04000208
	movs r3, #0
	strh r3, [r0]
	ldr r2, _080069F4 @ =gUnk_03002D9C
	ldr r1, _080069F8 @ =0x04000200
	ldrh r0, [r1]
	strh r0, [r2]
	strh r3, [r1]
	ldr r3, _080069FC @ =gUnk_03002DA0
	ldr r1, _08006A00 @ =0x040000BA
	ldrh r0, [r1]
	movs r2, #0
	strh r0, [r3]
	strh r2, [r1]
	adds r1, #0xc
	ldrh r0, [r1]
	strh r0, [r3, #2]
	strh r2, [r1]
	adds r1, #0xc
	ldrh r0, [r1]
	strh r0, [r3, #4]
	strh r2, [r1]
	adds r1, #0xc
	ldrh r0, [r1]
	strh r0, [r3, #6]
	strh r2, [r1]
	bx lr
	.align 2, 0
_080069F0: .4byte 0x04000208
_080069F4: .4byte gUnk_03002D9C
_080069F8: .4byte 0x04000200
_080069FC: .4byte gUnk_03002DA0
_08006A00: .4byte 0x040000BA

	thumb_func_start sub_08006A04
sub_08006A04: @ 0x08006A04
	push {lr}
	ldr r0, _08006A2C @ =gUnk_03002DB0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08006A30 @ =gUnk_03002D90
	strh r1, [r0]
	ldr r0, _08006A34 @ =gUnk_03002D98
	strh r1, [r0]
	ldr r1, _08006A38 @ =gUnk_03002DA0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x40
	bl EEPROMConfigure
	pop {r0}
	bx r0
	.align 2, 0
_08006A2C: .4byte gUnk_03002DB0
_08006A30: .4byte gUnk_03002D90
_08006A34: .4byte gUnk_03002D98
_08006A38: .4byte gUnk_03002DA0

	thumb_func_start sub_08006A3C
sub_08006A3C: @ 0x08006A3C
	ldr r0, _08006A44 @ =gUnk_03002D90
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08006A44: .4byte gUnk_03002D90

	thumb_func_start sub_08006A48
sub_08006A48: @ 0x08006A48
	ldr r0, _08006A50 @ =gUnk_03002DA8
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08006A50: .4byte gUnk_03002DA8

	thumb_func_start sub_08006A54
sub_08006A54: @ 0x08006A54
	ldr r1, _08006A5C @ =gUnk_03002DA8
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08006A5C: .4byte gUnk_03002DA8

	thumb_func_start sub_08006A60
sub_08006A60: @ 0x08006A60
	ldr r2, _08006A90 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08006A94 @ =0x04000200
	ldr r0, _08006A98 @ =gUnk_03002D9C
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	ldr r2, _08006A9C @ =0x040000BA
	ldr r1, _08006AA0 @ =gUnk_03002DA0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #0xc
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #0xc
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #0xc
	ldrh r0, [r1, #6]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08006A90: .4byte 0x04000208
_08006A94: .4byte 0x04000200
_08006A98: .4byte gUnk_03002D9C
_08006A9C: .4byte 0x040000BA
_08006AA0: .4byte gUnk_03002DA0

	thumb_func_start sub_08006AA4
sub_08006AA4: @ 0x08006AA4
	push {lr}
	bl sub_08006C1C
	ldr r1, _08006AB4 @ =gUnk_03003184
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08006AB4: .4byte gUnk_03003184

	thumb_func_start sub_08006AB8
sub_08006AB8: @ 0x08006AB8
	push {lr}
	bl sub_08006C1C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start DmaCopyMapAndPltt
DmaCopyMapAndPltt: @ 0x08006AC4
	push {r4, r5, r6, lr}
	ldr r0, _08006B98 @ =gUnk_03003180
	ldr r6, [r0]
	subs r4, r6, #1
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08006B9C @ =gUnk_03002DC0
	adds r2, r0, r1
	cmp r4, #0
	blt _08006B92
	ldr r3, _08006BA0 @ =0x040000D4
	movs r5, #0x84
	lsls r5, r5, #0x18
	movs r0, #3
	bics r0, r4
	cmp r4, #0
	blt _08006B20
	cmp r0, #0
	beq _08006B3A
	cmp r0, #3
	bge _08006B20
	cmp r0, #2
	bge _08006B0A
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldr r0, [r2, #8]
	lsrs r0, r0, #2
	orrs r0, r5
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	subs r4, r6, #2
	subs r2, #0xc
_08006B0A:
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldr r0, [r2, #8]
	lsrs r0, r0, #2
	orrs r0, r5
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	subs r4, #1
	subs r2, #0xc
_08006B20:
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldr r0, [r2, #8]
	lsrs r0, r0, #2
	orrs r0, r5
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	subs r4, #1
	subs r2, #0xc
	cmp r4, #0
	blt _08006B92
_08006B3A:
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldr r0, [r2, #8]
	lsrs r0, r0, #2
	orrs r0, r5
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	adds r1, r2, #0
	subs r1, #0xc
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r1, #4]
	str r0, [r3, #4]
	ldr r0, [r1, #8]
	lsrs r0, r0, #2
	orrs r0, r5
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	subs r1, #0xc
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r1, #4]
	str r0, [r3, #4]
	ldr r0, [r1, #8]
	lsrs r0, r0, #2
	orrs r0, r5
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	subs r1, #0xc
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r1, #4]
	str r0, [r3, #4]
	ldr r0, [r1, #8]
	lsrs r0, r0, #2
	orrs r0, r5
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	subs r4, #4
	subs r2, #0x30
	cmp r4, #0
	bge _08006B3A
_08006B92:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006B98: .4byte gUnk_03003180
_08006B9C: .4byte gUnk_03002DC0
_08006BA0: .4byte 0x040000D4

	thumb_func_start sub_08006BA4
sub_08006BA4: @ 0x08006BA4
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r6, _08006BD0 @ =gUnk_03003180
	ldr r5, [r6]
	lsls r2, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #2
	ldr r3, _08006BD4 @ =gUnk_03002DC0
	adds r2, r2, r3
	adds r3, r0, #0
	ldr r0, _08006BD8 @ =gUnk_03003184
	ldr r0, [r0]
	cmp r0, #0
	bne _08006BDC
	cmp r5, #0x4f
	bhi _08006C0A
	str r3, [r2]
	str r1, [r2, #4]
	str r4, [r2, #8]
	adds r0, r5, #1
	str r0, [r6]
	b _08006C0A
	.align 2, 0
_08006BD0: .4byte gUnk_03003180
_08006BD4: .4byte gUnk_03002DC0
_08006BD8: .4byte gUnk_03003184
_08006BDC:
	movs r5, #0x80
	lsls r5, r5, #4
_08006BE0:
	ldr r0, [r6]
	cmp r0, #0x4f
	bhi _08006C00
	str r3, [r2]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r4, r0
	bgt _08006BF6
	str r4, [r2, #8]
	b _08006BF8
_08006BF6:
	str r0, [r2, #8]
_08006BF8:
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	adds r2, #0xc
_08006C00:
	adds r3, r3, r5
	adds r1, r1, r5
	subs r4, r4, r5
	cmp r4, #0
	bgt _08006BE0
_08006C0A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08006C10
sub_08006C10: @ 0x08006C10
	ldr r1, _08006C18 @ =gUnk_03003184
	str r0, [r1]
	bx lr
	.align 2, 0
_08006C18: .4byte gUnk_03003184

	thumb_func_start sub_08006C1C
sub_08006C1C: @ 0x08006C1C
	ldr r1, _08006C24 @ =gUnk_03003180
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08006C24: .4byte gUnk_03003180

	thumb_func_start sub_08006C28
sub_08006C28: @ 0x08006C28
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08006C40 @ =gUnk_03002DC0
	ldr r2, _08006C44 @ =0x050000F0
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08006C40: .4byte gUnk_03002DC0
_08006C44: .4byte 0x050000F0

	thumb_func_start sub_08006C48
sub_08006C48: @ 0x08006C48
	push {r4, r5, r6, r7, lr}
	ldr r1, _08006C94 @ =gUnk_03003230
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08006C98 @ =gUnk_03003210
	movs r0, #0
	str r0, [r1]
	movs r1, #0
	ldr r7, _08006C9C @ =gUnk_03003360
	ldr r5, _08006CA0 @ =gUnk_030031D0
	movs r3, #0
	movs r4, #0xff
	adds r6, r5, #0
	adds r6, #0x20
_08006C64:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #3
	adds r1, r2, r5
	str r3, [r1]
	strh r4, [r1, #4]
	strh r3, [r1, #6]
	adds r2, r2, r6
	str r3, [r2]
	strh r4, [r1, #0x24]
	strh r3, [r1, #0x26]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08006C64
	movs r0, #0
	strh r0, [r7]
	strh r0, [r7, #2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006C94: .4byte gUnk_03003230
_08006C98: .4byte gUnk_03003210
_08006C9C: .4byte gUnk_03003360
_08006CA0: .4byte gUnk_030031D0

	thumb_func_start sub_08006CA4
sub_08006CA4: @ 0x08006CA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08006D10 @ =gUnk_03003230
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08006D14 @ =gUnk_03003210
	movs r1, #0
	str r1, [r0]
	ldr r3, _08006D18 @ =gUnk_03003470
	ldr r4, _08006D1C @ =gUnk_03003340
	ldr r0, _08006D20 @ =gUnk_03003241
	mov r8, r0
	ldr r5, _08006D24 @ =gIntrTable
	ldr r6, _08006D28 @ =gUnk_03003350
	mov ip, r6
	ldr r7, _08006D2C @ =gUnk_03003220
	str r1, [r6]
	str r1, [r6, #4]
	str r1, [r7]
	str r1, [r7, #4]
	adds r2, r7, #0
	adds r2, #8
	mov r0, ip
	adds r0, #8
	str r1, [r6, #8]
	str r1, [r0, #4]
	str r1, [r7, #8]
	str r1, [r2, #4]
	str r1, [r3]
	str r1, [r3, #4]
	str r1, [r4]
	str r1, [r4, #4]
	mov r0, r8
	str r0, [r5, #4]
	ldr r3, _08006D30 @ =0x04000208
	strh r1, [r3]
	ldr r2, _08006D34 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08006D38 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006D10: .4byte gUnk_03003230
_08006D14: .4byte gUnk_03003210
_08006D18: .4byte gUnk_03003470
_08006D1C: .4byte gUnk_03003340
_08006D20: .4byte gUnk_03003241
_08006D24: .4byte gIntrTable
_08006D28: .4byte gUnk_03003350
_08006D2C: .4byte gUnk_03003220
_08006D30: .4byte 0x04000208
_08006D34: .4byte 0x04000200
_08006D38: .4byte 0x04000004

	thumb_func_start sub_08006D3C
sub_08006D3C: @ 0x08006D3C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08006E20 @ =gUnk_03003230
	ldrh r6, [r0]
	ldr r0, _08006E24 @ =0x04000006
	ldrh r0, [r0]
	adds r5, r0, #0
	adds r7, r5, #0
	cmp r5, #0x9f
	bhi _08006E1A
	ldr r3, _08006E28 @ =gUnk_03003350
	lsls r4, r6, #2
	adds r0, r4, r3
	ldr r2, [r0]
	cmp r2, #0
	beq _08006D68
	ldr r0, _08006E2C @ =gUnk_03003220
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08006D68:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r4, r0
	ldr r2, [r0]
	cmp r2, #0
	beq _08006D84
	ldr r0, _08006E2C @ =gUnk_03003220
	adds r0, #8
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08006D84:
	ldr r0, _08006E30 @ =gUnk_03003470
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08006DD2
	lsls r3, r5, #3
	adds r1, r0, r3
	ldr r0, _08006E34 @ =gUnk_03003340
	adds r0, r4, r0
	ldr r2, [r0]
	adds r2, r2, r3
	ldr r3, _08006E38 @ =0x04000028
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	ldrh r0, [r1]
	strh r0, [r3]
	adds r3, #2
	ldrh r0, [r1, #2]
	strh r0, [r3]
	ldr r1, _08006E3C @ =0x04000020
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #4
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	subs r1, #2
	ldrh r0, [r2]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r2, #2]
	strh r0, [r1]
_08006DD2:
	ldr r4, _08006E40 @ =gUnk_030031D0
	lsls r3, r6, #5
	adds r2, r3, r4
	ldrh r0, [r2, #4]
	cmp r0, r5
	bne _08006DE4
	ldr r1, [r2]
	ldrh r0, [r2, #6]
	strh r0, [r1]
_08006DE4:
	ldrh r0, [r2, #0xc]
	cmp r0, r5
	bne _08006DF6
	adds r0, r4, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r1, [r0]
	ldrh r0, [r2, #0xe]
	strh r0, [r1]
_08006DF6:
	ldrh r0, [r2, #0x14]
	cmp r0, r5
	bne _08006E08
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r3, r0
	ldr r1, [r0]
	ldrh r0, [r2, #0x16]
	strh r0, [r1]
_08006E08:
	ldrh r0, [r2, #0x1c]
	cmp r0, r7
	bne _08006E1A
	adds r0, r4, #0
	adds r0, #0x18
	adds r0, r3, r0
	ldr r1, [r0]
	ldrh r0, [r2, #0x1e]
	strh r0, [r1]
_08006E1A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006E20: .4byte gUnk_03003230
_08006E24: .4byte 0x04000006
_08006E28: .4byte gUnk_03003350
_08006E2C: .4byte gUnk_03003220
_08006E30: .4byte gUnk_03003470
_08006E34: .4byte gUnk_03003340
_08006E38: .4byte 0x04000028
_08006E3C: .4byte 0x04000020
_08006E40: .4byte gUnk_030031D0
