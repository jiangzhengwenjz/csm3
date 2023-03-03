	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08009584
sub_08009584: @ 0x08009584
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _080095C8 @ =gUnk_080BAAF8
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	ldr r0, _080095CC @ =gUnk_030040C0
	lsls r4, r4, #4
	adds r0, #8
	adds r4, r4, r0
	ldr r0, [r4]
	adds r0, #4
	lsls r5, r5, #2
	adds r0, r0, r5
	ldrb r1, [r0, #1]
	lsrs r1, r1, #6
	ldrb r0, [r0]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080095C8: .4byte gUnk_080BAAF8
_080095CC: .4byte gUnk_030040C0

	thumb_func_start sub_080095D0
sub_080095D0: @ 0x080095D0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08009648 @ =gUnk_080BAAF8
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	add r6, sp, #0xc
	ldr r1, _0800964C @ =gUnk_080BAAEC
	adds r0, r6, #0
	movs r2, #0xc
	bl memcpy
	ldr r0, _08009650 @ =gUnk_030040C0
	lsls r4, r4, #4
	adds r0, #8
	adds r4, r4, r0
	ldr r2, [r4]
	adds r2, #4
	lsls r5, r5, #2
	adds r2, r2, r5
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	ldrb r0, [r2]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r3, sp
	adds r0, r3, r1
	ldrb r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	ldrb r0, [r2]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r6, r6, r1
	ldrb r0, [r6]
	mov r3, sb
	strh r0, [r3]
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009648: .4byte gUnk_080BAAF8
_0800964C: .4byte gUnk_080BAAEC
_08009650: .4byte gUnk_030040C0

	thumb_func_start sub_08009654
sub_08009654: @ 0x08009654
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r2, #0x14
	ldr r0, _08009678 @ =gUnk_030040C0
	adds r2, r2, r0
	ldr r0, [r2, #8]
	lsrs r1, r1, #0x16
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _0800967C @ =0x000003FF
	ands r0, r1
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	lsls r0, r0, #5
	ldr r1, _08009680 @ =0x06010000
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08009678: .4byte gUnk_030040C0
_0800967C: .4byte 0x000003FF
_08009680: .4byte 0x06010000

	thumb_func_start sub_08009684
sub_08009684: @ 0x08009684
	push {r4, lr}
	movs r4, #0
	movs r1, #0
	ldr r2, _08009700 @ =gUnk_030040C0
	adds r3, r2, #0
	adds r3, #8
_08009690:
	strh r1, [r2]
	strh r1, [r2, #2]
	str r1, [r2, #4]
	str r1, [r3]
	str r1, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x10
	strh r1, [r2, #0x10]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	str r1, [r3, #0x10]
	str r1, [r0, #0xc]
	adds r0, #0x10
	strh r1, [r2, #0x20]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	str r1, [r3, #0x20]
	str r1, [r0, #0xc]
	adds r0, #0x10
	strh r1, [r2, #0x30]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	str r1, [r3, #0x30]
	str r1, [r0, #0xc]
	adds r0, #0x10
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	str r1, [r3, #0x40]
	str r1, [r0, #0xc]
	adds r0, #0x10
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	str r1, [r3, #0x50]
	str r1, [r0, #0xc]
	adds r0, #0x10
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	str r1, [r3, #0x60]
	str r1, [r0, #0xc]
	adds r0, #0x10
	strh r1, [r0]
	strh r1, [r0, #2]
	str r1, [r0, #4]
	str r1, [r3, #0x70]
	str r1, [r0, #0xc]
	adds r2, #0x80
	adds r3, #0x80
	adds r4, #8
	cmp r4, #0x1f
	bls _08009690
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009700: .4byte gUnk_030040C0

	thumb_func_start sub_08009704
sub_08009704: @ 0x08009704
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	ldr r2, _08009710 @ =gUnk_030040C0
	adds r0, r0, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_08009710: .4byte gUnk_030040C0

	thumb_func_start sub_08009714
sub_08009714: @ 0x08009714
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r1, _080097DC @ =gUnk_03004FE0
	movs r0, #0
	str r0, [r1]
	str r0, [sp, #0x10]
	str r0, [sp, #8]
	ldr r1, _080097E0 @ =gUnk_03004540
	ldr r2, _080097E4 @ =0x01000180
	add r0, sp, #8
	bl CpuFastSet
	movs r0, #0
	mov sb, r0
	ldr r0, _080097E8 @ =gUnk_03005164
	ldrb r0, [r0]
	cmp sb, r0
	bge _0800982C
	ldr r2, _080097EC @ =gUnk_030042C0
	mov sl, r2
_08009744:
	ldr r1, _080097F0 @ =gUnk_03004F50
	mov r2, sb
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r6, [r0]
	ldrb r0, [r6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r0, sl
	adds r0, #8
	adds r0, r1, r0
	ldr r2, [r0]
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r5, r2, r0
	ldrb r0, [r6, #4]
	lsls r0, r0, #3
	adds r0, #2
	adds r5, r5, r0
	ldrh r4, [r5, #2]
	movs r0, #4
	ldrsh r3, [r5, r0]
	movs r0, #6
	ldrsh r2, [r5, r0]
	mov r8, r2
	ldr r2, _080097F4 @ =gUnk_030042CC
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r5, r2, r0
	ldrb r7, [r5]
	adds r5, #4
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _080097B0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _080097F8 @ =gUnk_03004B50
	ldr r2, _080097FC @ =0x01000100
	str r3, [sp, #0x14]
	bl CpuFastSet
	ldr r3, [sp, #0x14]
_080097B0:
	adds r0, r6, #0
	adds r0, #0x24
	movs r1, #0
	strb r4, [r0]
	adds r0, #1
	strb r7, [r0]
	strh r1, [r6, #0x20]
	ldr r0, _08009800 @ =gUnk_03004B40
	ldr r0, [r0]
	cmp r0, #0
	bne _08009804
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r7, #0
	add r1, sp, #0x10
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08009840
	b _08009818
	.align 2, 0
_080097DC: .4byte gUnk_03004FE0
_080097E0: .4byte gUnk_03004540
_080097E4: .4byte 0x01000180
_080097E8: .4byte gUnk_03005164
_080097EC: .4byte gUnk_030042C0
_080097F0: .4byte gUnk_03004F50
_080097F4: .4byte gUnk_030042CC
_080097F8: .4byte gUnk_03004B50
_080097FC: .4byte 0x01000100
_08009800: .4byte gUnk_03004B40
_08009804:
	adds r4, r0, #1
	str r3, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r0, r7, #0
	add r1, sp, #0x10
	adds r2, r5, #0
	adds r3, r6, #0
	bl _call_via_r4
_08009818:
	ldrb r0, [r6, #0xc]
	movs r1, #0xfd
	ands r1, r0
	strb r1, [r6, #0xc]
	movs r0, #1
	add sb, r0
	ldr r0, _0800983C @ =gUnk_03005164
	ldrb r0, [r0]
	cmp sb, r0
	blt _08009744
_0800982C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800983C: .4byte gUnk_03005164

	thumb_func_start sub_08009840
sub_08009840: @ 0x08009840
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r8, r3
	ldr r1, _08009890 @ =gUnk_03004FE0
	ldrh r0, [r1]
	str r0, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	ldrb r3, [r3, #0xc]
	str r3, [sp, #0x14]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0800989C
	ldr r2, _08009894 @ =gUnk_030042C0
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0]
	ldr r0, _08009898 @ =gUnk_030040C0
	lsls r1, r4, #4
	adds r0, #0xc
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r1, #0x24]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0x18]
	b _080098B0
	.align 2, 0
_08009890: .4byte gUnk_03004FE0
_08009894: .4byte gUnk_030042C0
_08009898: .4byte gUnk_030040C0
_0800989C:
	ldr r2, _080099C8 @ =gUnk_030042C0
	mov r3, r8
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0]
	movs r0, #0
	str r0, [sp, #0x18]
_080098B0:
	subs r5, #1
	str r5, [sp, #8]
	cmp r5, #0
	bge _080098BA
	b _08009EEE
_080098BA:
	movs r1, #0
	str r1, [sp, #0x1c]
	ldr r2, [sp]
	ldr r3, [r2]
	cmp r3, #0x5f
	ble _080098C8
	b _08009EEE
_080098C8:
	ldr r2, _080099CC @ =gUnk_030040C0
	lsls r1, r4, #4
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x28]
	adds r1, r1, r2
	str r1, [sp, #0x2c]
_080098D8:
	lsls r1, r3, #4
	ldr r0, _080099D0 @ =gUnk_03004540
	adds r7, r1, r0
	adds r0, r3, #1
	ldr r3, [sp]
	str r0, [r3]
	ldr r5, [sp, #4]
	str r5, [sp, #0x24]
	movs r0, #6
	str r0, [sp, #0x20]
	ldrb r1, [r5]
	mov sb, r1
	ldr r3, _080099D4 @ =0x0000FFFF
	ldrb r2, [r5, #1]
	movs r1, #1
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #8
	orrs r2, r0
	mov ip, r2
	mov r5, r8
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080099C8 @ =gUnk_030042C0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r6, r2, #2
	adds r4, r4, r6
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _0800991E
	b _08009A54
_0800991E:
	ldr r1, _080099D8 @ =gUnk_03004FE0
	ldm r1!, {r0}
	lsls r0, r0, #2
	adds r0, r0, r1
	mov sl, r0
	ldr r1, _080099DC @ =gUnk_03004B50
	lsls r0, r2, #1
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r1, r3, #0
	cmp r0, r3
	beq _08009938
	adds r3, r0, #0
_08009938:
	cmp r3, r1
	bne _08009A34
	ldr r1, [r4]
	ldr r0, _080099E0 @ =0xF000FFFF
	ands r1, r0
	mov r3, r8
	ldrh r0, [r3, #0x20]
	lsrs r0, r0, #5
	ldrh r5, [r3, #0x1a]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	orrs r1, r0
	mov r0, sl
	str r1, [r0]
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r2]
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r3, _080099D8 @ =gUnk_03004FE0
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, #4
	ldr r5, _080099E4 @ =gUnk_030042B0
	ldr r1, [r5, #8]
	adds r1, r1, r0
	mov sl, r1
	adds r2, #1
	str r2, [r3]
	ldr r1, [sp, #0x28]
	ldr r0, [r1]
	adds r0, #4
	adds r0, r0, r6
	ldrb r1, [r0]
	lsrs r1, r1, #6
	ldrb r0, [r0, #1]
	lsrs r0, r0, #6
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _080099E8 @ =gUnk_08B71474
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r3, _080099EC @ =gUnk_08B71468
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r6, r1, #0
	muls r6, r0, r6
	ldr r5, [sp, #0x2c]
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080099AA
	lsrs r6, r6, #1
_080099AA:
	movs r0, #2
	ldr r1, [sp, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08009A1C
	mov r2, r8
	ldrb r2, [r2, #0xf]
	cmp ip, r2
	bne _080099F0
	mov r3, r8
	ldr r0, [r3, #0x10]
	cmp r0, #0
	beq _080099F0
	adds r5, r0, #0
	b _080099FC
	.align 2, 0
_080099C8: .4byte gUnk_030042C0
_080099CC: .4byte gUnk_030040C0
_080099D0: .4byte gUnk_03004540
_080099D4: .4byte 0x0000FFFF
_080099D8: .4byte gUnk_03004FE0
_080099DC: .4byte gUnk_03004B50
_080099E0: .4byte 0xF000FFFF
_080099E4: .4byte gUnk_030042B0
_080099E8: .4byte gUnk_08B71474
_080099EC: .4byte gUnk_08B71468
_080099F0:
	ldrh r1, [r4, #2]
	ldr r0, _08009A28 @ =0x00000FFF
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x18]
	adds r5, r1, r0
_080099FC:
	mov r2, r8
	ldrh r0, [r2, #0x20]
	ldr r3, [r2, #0x1c]
	adds r3, r3, r0
	ldr r4, _08009A2C @ =gUnk_03003180
	ldr r2, [r4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08009A30 @ =gUnk_03002DC0
	adds r0, r0, r1
	str r5, [r0]
	str r3, [r0, #4]
	str r6, [r0, #8]
	adds r2, #1
	str r2, [r4]
_08009A1C:
	mov r3, r8
	ldrh r0, [r3, #0x20]
	adds r0, r0, r6
	strh r0, [r3, #0x20]
	b _08009A44
	.align 2, 0
_08009A28: .4byte 0x00000FFF
_08009A2C: .4byte gUnk_03003180
_08009A30: .4byte gUnk_03002DC0
_08009A34:
	ldr r5, [sp, #0xc]
	adds r0, r5, r3
	lsls r0, r0, #2
	adds r0, #4
	ldr r2, _08009A50 @ =gUnk_030042B0
	ldr r1, [r2, #8]
	adds r1, r1, r0
	mov sl, r1
_08009A44:
	ldr r3, _08009A50 @ =gUnk_030042B0
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x10
	mov r5, sl
	ldr r0, [r5]
	b _08009A5C
	.align 2, 0
_08009A50: .4byte gUnk_030042B0
_08009A54:
	mov r0, r8
	ldrh r1, [r0, #0x1a]
	lsls r1, r1, #0x10
	ldr r0, [r4]
_08009A5C:
	adds r0, r0, r1
	str r0, [r7, #0xc]
	ldr r1, [sp, #0x24]
	ldrh r0, [r1, #2]
	ldr r2, [sp, #0x5c]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r1, #4]
	ldr r3, [sp, #0x60]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #8
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08009A8C
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08009A8C
	movs r2, #1
	str r2, [sp, #0x1c]
_08009A8C:
	movs r6, #0
	mov sl, r6
	ldr r0, [sp, #0x14]
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	beq _08009ACC
	movs r0, #1
	mov sl, r0
	lsls r3, r4, #0x10
	rsbs r3, r3, #0
	ldr r1, [sp, #0x28]
	ldr r2, [r1]
	adds r2, #4
	mov r1, ip
	lsls r0, r1, #2
	adds r2, r2, r0
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	ldrb r0, [r2]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _08009BA8 @ =gUnk_08B71474
	adds r1, r1, r2
	ldrb r0, [r1]
	ldr r1, [sp, #0x1c]
	lsls r0, r1
	asrs r3, r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
_08009ACC:
	movs r0, #4
	ldr r2, [sp, #0x14]
	ands r0, r2
	cmp r0, #0
	beq _08009B06
	movs r6, #1
	lsls r3, r5, #0x10
	rsbs r3, r3, #0
	ldr r5, [sp, #0x28]
	ldr r2, [r5]
	adds r2, #4
	mov r1, ip
	lsls r0, r1, #2
	adds r2, r2, r0
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	ldrb r0, [r2]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _08009BAC @ =gUnk_08B71468
	adds r1, r1, r2
	ldrb r0, [r1]
	ldr r5, [sp, #0x1c]
	lsls r0, r5
	asrs r3, r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
_08009B06:
	movs r0, #0x80
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08009B18
	movs r0, #1
	mov r2, sl
	eors r2, r0
	mov sl, r2
_08009B18:
	movs r1, #0x40
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08009B26
	movs r0, #1
	eors r6, r0
_08009B26:
	ldr r0, [sp, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08009B7C
	mov r0, sb
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	bne _08009B7C
	ldr r0, [sp, #0x28]
	ldr r2, [r0]
	adds r0, r2, #4
	mov r1, ip
	lsls r3, r1, #2
	adds r0, r0, r3
	ldrb r1, [r0, #1]
	lsrs r1, r1, #6
	ldrb r0, [r0]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _08009BAC @ =gUnk_08B71468
	adds r1, r1, r0
	ldrb r0, [r1]
	lsrs r0, r0, #1
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #4
	adds r2, r2, r3
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	ldrb r0, [r2]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _08009BA8 @ =gUnk_08B71474
	adds r1, r1, r2
	ldrb r0, [r1]
	lsrs r0, r0, #1
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08009B7C:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	ldrh r3, [r3, #0x14]
	adds r1, r1, r3
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r5, r8
	ldrh r5, [r5, #0x16]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _08009BB4
	cmp r1, #0xef
	bgt _08009BD0
	ldr r0, _08009BB0 @ =0x000001FF
	b _08009BC6
	.align 2, 0
_08009BA8: .4byte gUnk_08B71474
_08009BAC: .4byte gUnk_08B71468
_08009BB0: .4byte 0x000001FF
_08009BB4:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08009BD0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r5, _08009BCC @ =0x000001FF
	adds r1, r5, #0
_08009BC6:
	ands r0, r1
	strh r0, [r7, #4]
	b _08009BD2
	.align 2, 0
_08009BCC: .4byte 0x000001FF
_08009BD0:
	movs r2, #1
_08009BD2:
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08009BE6
	cmp r3, #0x9f
	bgt _08009BFC
	movs r0, #0xff
	ands r0, r3
	strh r0, [r7, #6]
	b _08009BFE
_08009BE6:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r3, r0
	ble _08009BFC
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r7, #6]
	b _08009BFE
_08009BFC:
	movs r2, #1
_08009BFE:
	cmp r2, #1
	bne _08009C24
	movs r0, #0xf0
	strh r0, [r7, #4]
	movs r0, #0xa0
	strh r0, [r7, #6]
	movs r0, #0x20
	mov r2, sb
	ands r2, r0
	cmp r2, #0
	beq _08009C1A
	ldr r3, [sp, #0x20]
	adds r3, #6
	str r3, [sp, #0x20]
_08009C1A:
	ldr r5, [sp, #4]
	ldr r0, [sp, #0x20]
	adds r5, r5, r0
	str r5, [sp, #4]
	b _08009ED4
_08009C24:
	mov r1, sl
	cmp r1, #1
	beq _08009C2E
	cmp r6, #1
	bne _08009C64
_08009C2E:
	mov r2, sl
	cmp r2, #0
	bne _08009C3E
	ldrb r1, [r7]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7]
	b _08009C4A
_08009C3E:
	ldrb r0, [r7]
	movs r1, #0xfe
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r7]
_08009C4A:
	cmp r6, #0
	bne _08009C58
	ldrb r1, [r7]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r7]
	b _08009C64
_08009C58:
	ldrb r0, [r7]
	movs r1, #0xfe
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r7]
_08009C64:
	movs r0, #0x20
	mov r3, sb
	ands r0, r3
	mov r5, r8
	ldrh r2, [r5, #0x26]
	cmp r0, #0
	bne _08009C78
	cmp r2, #0
	bne _08009C78
	b _08009E60
_08009C78:
	movs r3, #0
	ldr r1, [sp, #0x24]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _08009CAA
	mov r3, sl
	cmp r3, #0
	bne _08009C90
	cmp r6, #0
	bne _08009C90
	adds r3, r0, #0
	b _08009CAA
_08009C90:
	mov r5, sl
	cmp r5, #1
	bne _08009CA0
	cmp r6, #1
	bne _08009CA0
	ldr r0, [sp, #0x24]
	ldrh r3, [r0, #6]
	b _08009CAA
_08009CA0:
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #6]
	movs r0, #0xb4
	lsls r0, r0, #1
	subs r3, r0, r1
_08009CAA:
	cmp r2, #0
	beq _08009CDE
	mov r5, sl
	cmp r5, #0
	bne _08009CC0
	cmp r6, #0
	bne _08009CC0
	mov r1, r8
	ldrh r0, [r1, #0x26]
	adds r3, r3, r0
	b _08009CDE
_08009CC0:
	mov r2, sl
	cmp r2, #1
	bne _08009CD2
	cmp r6, #1
	bne _08009CD2
	mov r5, r8
	ldrh r0, [r5, #0x26]
	adds r3, r3, r0
	b _08009CDE
_08009CD2:
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r3, r0
	mov r2, r8
	ldrh r0, [r2, #0x26]
	subs r3, r1, r0
_08009CDE:
	ldr r5, [sp, #0x24]
	ldrh r4, [r5, #8]
	ldrh r2, [r5, #0xa]
	ldr r0, [sp, #0x20]
	adds r0, #6
	str r0, [sp, #0x20]
	cmp r6, #1
	bne _08009CF4
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_08009CF4:
	mov r1, sl
	cmp r1, #1
	bne _08009D00
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x10
_08009D00:
	ldr r0, _08009D40 @ =gUnk_03003CB0
	ldrb r1, [r0, #2]
	cmp r1, #0x1f
	bls _08009D0A
	b _08009E60
_08009D0A:
	adds r5, r0, #0
	ldrb r5, [r5, #2]
	str r5, [sp, #0x30]
	ldr r0, _08009D44 @ =0x00000167
	lsls r4, r4, #0x10
	mov ip, r4
	lsls r2, r2, #0x10
	str r2, [sp, #0x34]
	ldr r1, _08009D48 @ =gUnk_08B6D24C
	cmp r3, r0
	ble _08009D56
	adds r2, r3, #0
	movs r5, #0xb4
	lsls r5, r5, #1
	movs r4, #1
	cmp r3, #0
	bgt _08009D30
	subs r4, #2
	rsbs r2, r3, #0
_08009D30:
	cmp r2, r5
	blt _08009D52
	adds r0, r5, #0
_08009D36:
	cmp r2, r0
	blt _08009D4C
	lsls r0, r0, #1
	b _08009D36
	.align 2, 0
_08009D40: .4byte gUnk_03003CB0
_08009D44: .4byte 0x00000167
_08009D48: .4byte gUnk_08B6D24C
_08009D4C:
	asrs r0, r0, #1
	subs r2, r2, r0
	b _08009D30
_08009D52:
	adds r3, r2, #0
	muls r3, r4, r3
_08009D56:
	adds r0, r3, #0
	adds r0, #0x5a
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r0, ip
	asrs r4, r0, #0x10
	movs r6, #0
	movs r0, #1
	cmp r4, #0
	bgt _08009D7A
	subs r0, #2
	rsbs r4, r4, #0
_08009D7A:
	adds r3, r0, #0
	ldr r0, [sp, #0x30]
	lsls r0, r0, #3
	mov sl, r0
	lsls r5, r5, #0x10
	lsls r1, r1, #0x10
	str r1, [sp, #0x38]
_08009D88:
	cmp r2, r4
	blt _08009DA4
	movs r0, #1
	adds r1, r4, #0
_08009D90:
	cmp r2, r1
	blt _08009D9A
	lsls r1, r1, #1
	lsls r0, r0, #1
	b _08009D90
_08009D9A:
	asrs r0, r0, #1
	adds r6, r6, r0
	asrs r0, r1, #1
	subs r2, r2, r0
	b _08009D88
_08009DA4:
	muls r6, r3, r6
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	ldr r1, [sp, #0x34]
	asrs r2, r1, #0x10
	movs r6, #0
	movs r0, #1
	cmp r2, #0
	bgt _08009DBE
	subs r0, #2
	rsbs r2, r2, #0
_08009DBE:
	lsls r4, r4, #0x10
	mov ip, r4
	adds r4, r0, #0
_08009DC4:
	cmp r3, r2
	blt _08009DE0
	movs r0, #1
	adds r1, r2, #0
_08009DCC:
	cmp r3, r1
	blt _08009DD6
	lsls r1, r1, #1
	lsls r0, r0, #1
	b _08009DCC
_08009DD6:
	asrs r0, r0, #1
	adds r6, r6, r0
	asrs r0, r1, #1
	subs r3, r3, r0
	b _08009DC4
_08009DE0:
	muls r6, r4, r6
	ldr r3, _08009E30 @ =gUnk_030037B0
	add r3, sl
	asrs r5, r5, #0x10
	mov r2, ip
	asrs r4, r2, #0x10
	adds r0, r5, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r3]
	ldr r0, [sp, #0x38]
	asrs r2, r0, #0x10
	rsbs r0, r2, #0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #2]
	adds r0, r2, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r3, #4]
	adds r0, r5, #0
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #6]
	ldr r1, _08009E34 @ =gUnk_03003CB0
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r1, #0
	ldr r2, _08009E34 @ =gUnk_03003CB0
	strb r0, [r2, #2]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x1c]
	cmp r3, #1
	bne _08009E38
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	b _08009E3E
	.align 2, 0
_08009E30: .4byte gUnk_030037B0
_08009E34: .4byte gUnk_03003CB0
_08009E38:
	ldrb r1, [r7]
	movs r0, #0xfd
	ands r0, r1
_08009E3E:
	strb r0, [r7]
	cmp r2, #0xff
	beq _08009E54
	ldrb r0, [r7]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r7]
	strb r2, [r7, #3]
	b _08009E60
_08009E54:
	ldrb r0, [r7]
	movs r1, #0xfe
	ands r1, r0
	movs r0, #0
	strb r1, [r7]
	strb r0, [r7, #3]
_08009E60:
	mov r5, r8
	ldrb r0, [r5, #0xd]
	movs r1, #0
	strb r0, [r7, #1]
	movs r0, #0x10
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _08009E76
	movs r0, #1
	strb r0, [r7, #1]
_08009E76:
	movs r0, #6
	mov r3, sb
	ands r3, r0
	lsrs r0, r3, #1
	mov r5, r8
	ldrb r5, [r5, #0xe]
	adds r0, r0, r5
	strb r0, [r7, #2]
	mov r2, r8
	ldrb r0, [r2, #0x18]
	strb r0, [r7, #8]
	ldrb r0, [r2, #0x19]
	strb r0, [r7, #9]
	movs r0, #0x80
	ldr r3, [sp, #0x14]
	ands r0, r3
	cmp r0, #0
	beq _08009EA2
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
_08009EA2:
	ldr r5, _08009F00 @ =gUnk_03003CB0
	ldrb r2, [r5]
	lsls r0, r2, #3
	ldr r1, _08009F04 @ =gUnk_03003CC0
	adds r3, r0, r1
	cmp r2, #0x80
	beq _08009EEE
	str r7, [r3]
	ldr r1, _08009F08 @ =gUnk_030037A0
	ldrb r0, [r7, #8]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #4]
	ldrb r0, [r7, #8]
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r2, [r0]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r2, r2, r3
	str r2, [sp, #4]
_08009ED4:
	ldr r5, [sp, #8]
	subs r5, #1
	str r5, [sp, #8]
	cmp r5, #0
	blt _08009EEE
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r1, [sp]
	ldr r0, [r1]
	adds r3, r0, #0
	cmp r3, #0x5f
	bgt _08009EEE
	b _080098D8
_08009EEE:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009F00: .4byte gUnk_03003CB0
_08009F04: .4byte gUnk_03003CC0
_08009F08: .4byte gUnk_030037A0

	thumb_func_start sub_08009F0C
sub_08009F0C: @ 0x08009F0C
	adds r3, r0, #0
	movs r1, #0
	strb r1, [r3]
	movs r0, #0xff
	strb r0, [r3, #1]
	strb r1, [r3, #2]
	strb r1, [r3, #3]
	strb r1, [r3, #4]
	strb r1, [r3, #5]
	movs r2, #0
	strh r1, [r3, #6]
	strh r1, [r3, #8]
	strh r1, [r3, #0xa]
	strb r2, [r3, #0xc]
	strb r2, [r3, #0xd]
	strb r2, [r3, #0xe]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x16]
	strb r2, [r3, #0x19]
	strb r2, [r3, #0x18]
	str r1, [r3, #0x1c]
	adds r0, r3, #0
	adds r0, #0x24
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r1, [r3, #0x26]
	strh r1, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0xf]
	str r1, [r3, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_08009F50
sub_08009F50: @ 0x08009F50
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	mov ip, r5
	ldr r3, _08009F98 @ =gUnk_030042C0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r6, #0
	strb r7, [r4]
	strb r2, [r4, #1]
	strb r5, [r4, #2]
	ldrb r0, [r1]
	strb r0, [r4, #3]
	cmp r5, #2
	beq _08009FAA
	cmp r5, #2
	ble _08009F9C
	cmp r5, #3
	beq _08009FB4
	b _08009FB8
	.align 2, 0
_08009F98: .4byte gUnk_030042C0
_08009F9C:
	mov r0, ip
	cmp r0, #0
	blt _08009FB8
	strb r6, [r4, #4]
	movs r0, #1
	strb r0, [r4, #5]
	b _08009FB8
_08009FAA:
	subs r0, #1
	strb r0, [r4, #4]
	movs r0, #0xff
	strb r0, [r4, #5]
	b _08009FB8
_08009FB4:
	strb r6, [r4, #4]
	strb r6, [r4, #5]
_08009FB8:
	ldrb r0, [r4, #4]
	lsls r0, r0, #3
	adds r0, #2
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	movs r1, #0
	strh r0, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _08009FE0
	ldrb r1, [r4, #0xc]
	movs r0, #2
	orrs r0, r1
	strb r0, [r4, #0xc]
	b _08009FF0
_08009FE0:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	bl sub_08009388
	strh r0, [r4, #0x1a]
_08009FF0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009FF8
sub_08009FF8: @ 0x08009FF8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r6, #1
	ldr r2, _0800A01C @ =gUnk_030042C0
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r5, [r0]
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0800A0E4
	ldrh r4, [r3, #6]
	b _0800A07C
	.align 2, 0
_0800A01C: .4byte gUnk_030042C0
_0800A020:
	ldrb r1, [r3, #2]
	cmp r1, #1
	beq _0800A052
	cmp r1, #1
	bgt _0800A030
	cmp r1, #0
	beq _0800A036
	b _0800A060
_0800A030:
	cmp r1, #2
	beq _0800A046
	b _0800A060
_0800A036:
	strb r1, [r3, #4]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrh r2, [r3, #6]
	adds r0, r0, r2
	strh r0, [r3, #6]
	strh r1, [r3, #0xa]
	b _0800A060
_0800A046:
	movs r0, #0
	strb r0, [r3, #4]
	strb r0, [r3, #5]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	b _0800A060
_0800A052:
	ldrb r0, [r3, #3]
	subs r0, #1
	movs r1, #0
	strb r0, [r3, #4]
	strb r1, [r3, #5]
	strh r1, [r3, #6]
	strh r1, [r3, #8]
_0800A060:
	cmp r6, #0
	beq _0800A06E
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	strh r0, [r3, #6]
	movs r6, #0
_0800A06E:
	movs r7, #6
	ldrsh r0, [r3, r7]
	ldrh r4, [r3, #6]
	cmp r0, #0
	beq _0800A0D6
	cmp r0, #0
	bge _0800A0D6
_0800A07C:
	lsls r0, r4, #0x10
	cmp r0, #0
	bgt _0800A060
	ldr r0, [r3, #0x1c]
	cmp r0, #0
	beq _0800A090
	ldrb r1, [r3, #0xc]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3, #0xc]
_0800A090:
	ldrb r0, [r3, #1]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r5, r0
	movs r0, #5
	ldrsb r0, [r3, r0]
	ldrb r1, [r3, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _0800A020
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	ldrb r7, [r3, #3]
	cmp r0, r7
	bhs _0800A020
	strb r1, [r3, #4]
	ldrb r0, [r3, #4]
	lsls r0, r0, #3
	adds r0, #2
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	adds r0, r4, r0
	strh r0, [r3, #6]
	movs r0, #8
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800A060
_0800A0D6:
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0800A0E4
	ldrh r0, [r3, #0xa]
	adds r0, #1
	strh r0, [r3, #0xa]
_0800A0E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A0EC
sub_0800A0EC: @ 0x0800A0EC
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r3, [r1]
	ldr r2, _0800A14C @ =gUnk_030042C0
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r1, [r0]
	lsls r3, r3, #1
	adds r3, r3, r1
	ldrh r0, [r3]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrb r5, [r2]
	adds r2, #2
	movs r6, #0
	movs r1, #0
	cmp r6, r5
	bge _0800A152
	movs r7, #0x20
_0800A124:
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	cmp r3, ip
	beq _0800A150
	movs r4, #6
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800A13A
	movs r4, #0xc
_0800A13A:
	adds r2, r2, r4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	blt _0800A124
	b _0800A152
	.align 2, 0
_0800A14C: .4byte gUnk_030042C0
_0800A150:
	ldrb r6, [r2, #1]
_0800A152:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800A15C
sub_0800A15C: @ 0x0800A15C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r2
	mov r8, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r3, [r1]
	ldr r2, _0800A1C8 @ =gUnk_030042C0
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r6, [r0]
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrh r0, [r3]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r6, r0
	ldrb r5, [r2]
	adds r2, #2
	movs r1, #0
	cmp r1, r5
	bge _0800A1F4
	movs r7, #0
	movs r0, #1
	mov sb, r0
_0800A1A2:
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	cmp r3, sl
	beq _0800A1CC
	movs r4, #6
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800A1B8
	movs r4, #0xc
_0800A1B8:
	adds r2, r2, r4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	blt _0800A1A2
	b _0800A1F4
	.align 2, 0
_0800A1C8: .4byte gUnk_030042C0
_0800A1CC:
	mov r1, r8
	strh r7, [r1]
	mov r0, ip
	strh r7, [r0]
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800A1E4
	mov r0, sb
	mov r1, ip
	strh r0, [r1]
_0800A1E4:
	ldrh r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800A1F4
	mov r0, sb
	mov r1, r8
	strh r0, [r1]
_0800A1F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A204
sub_0800A204: @ 0x0800A204
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r5, r2, #0
	adds r7, r3, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	adds r0, #0x24
	ldrb r3, [r0]
	ldr r2, _0800A270 @ =gUnk_030042C0
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r1, [r0]
	lsls r3, r3, #1
	adds r3, r3, r1
	ldrh r0, [r3]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r3, r1, r0
	ldrb r0, [r3]
	mov ip, r0
	adds r3, #2
	movs r1, #0
	cmp r1, ip
	bge _0800A2B6
	movs r6, #1
_0800A248:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, sb
	beq _0800A274
	movs r4, #6
	ldrb r1, [r3]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800A25E
	movs r4, #0xc
_0800A25E:
	adds r3, r3, r4
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, ip
	blt _0800A248
	b _0800A2B6
	.align 2, 0
_0800A270: .4byte gUnk_030042C0
_0800A274:
	movs r0, #0
	strh r0, [r7]
	strh r0, [r5]
	mov r0, r8
	ldrb r1, [r0, #0xc]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A288
	strh r6, [r5]
_0800A288:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800A292
	strh r6, [r7]
_0800A292:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800A2A4
	ldrh r0, [r5]
	eors r0, r6
	ands r0, r6
	strh r0, [r5]
_0800A2A4:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800A2B6
	ldrh r0, [r7]
	eors r0, r6
	ands r0, r6
	strh r0, [r7]
_0800A2B6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A2C4
sub_0800A2C4: @ 0x0800A2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r3, _0800A35C @ =gUnk_030042C0
	ldrb r0, [r6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r4, [r0]
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrb r0, [r6, #4]
	lsls r0, r0, #3
	adds r0, #2
	adds r4, r4, r0
	ldrb r2, [r4, #1]
	movs r0, #2
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrb r7, [r4]
	adds r4, #2
	movs r1, #0
	cmp r1, r7
	bge _0800A3DA
_0800A336:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, sl
	beq _0800A360
	movs r3, #6
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800A34C
	movs r3, #0xc
_0800A34C:
	adds r4, r4, r3
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _0800A336
	b _0800A3DA
	.align 2, 0
_0800A35C: .4byte gUnk_030042C0
_0800A360:
	movs r1, #1
	ldrsb r1, [r4, r1]
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1]
	movs r1, #2
	ldrsb r1, [r4, r1]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r1, [r6, #0xc]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A3AA
	movs r1, #0
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5]
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0800A3E8 @ =gUnk_030042C0
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r4, #1]
	bl sub_08009584
	ldrh r1, [r5]
	subs r1, r1, r0
	strh r1, [r5]
_0800A3AA:
	ldrb r1, [r6, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800A3DA
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r2, _0800A3E8 @ =gUnk_030042C0
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r4, #1]
	bl sub_08009538
	mov r2, r8
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r2]
_0800A3DA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A3E8: .4byte gUnk_030042C0

	thumb_func_start sub_0800A3EC
sub_0800A3EC: @ 0x0800A3EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	adds r0, #0x24
	ldrb r3, [r0]
	ldr r2, _0800A458 @ =gUnk_030042C0
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0xc
	adds r0, r0, r2
	ldr r4, [r0]
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrh r0, [r3]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r5, [r2]
	adds r2, #2
	movs r0, #0
	mov ip, r0
	movs r1, #0
	cmp ip, r5
	bge _0800A4C2
	movs r0, #0x20
	mov r8, r0
	movs r6, #1
_0800A430:
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	cmp r3, sb
	beq _0800A45C
	movs r4, #6
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0800A446
	movs r4, #0xc
_0800A446:
	adds r2, r2, r4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	blt _0800A430
	b _0800A4C2
	.align 2, 0
_0800A458: .4byte gUnk_030042C0
_0800A45C:
	adds r4, r2, #0
	ldrb r1, [r7, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r3, r0, #0x1f
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	ldrb r5, [r4]
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0800A486
	eors r3, r6
	ands r3, r6
_0800A486:
	ldrh r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800A494
	eors r2, r6
	ands r2, r6
_0800A494:
	mov r0, r8
	ands r0, r5
	cmp r0, #0
	beq _0800A4C2
	cmp r3, #0
	bne _0800A4A4
	cmp r2, #0
	beq _0800A4AC
_0800A4A4:
	cmp r3, #1
	bne _0800A4B2
	cmp r2, #1
	bne _0800A4B2
_0800A4AC:
	ldrh r4, [r4, #6]
	mov ip, r4
	b _0800A4C2
_0800A4B2:
	ldrh r1, [r4, #6]
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
_0800A4C2:
	mov r0, ip
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A4D0
sub_0800A4D0: @ 0x0800A4D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #1
	mov sb, r0
	movs r1, #0
	mov r8, r1
	mov ip, r1
	ldr r2, _0800A518 @ =gUnk_030042C0
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r5, [r0]
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrb r0, [r2, #3]
	lsls r1, r0, #8
	ldrh r2, [r4, #8]
	mov sl, r2
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0800A5A6
_0800A514:
	movs r6, #1
	b _0800A520
	.align 2, 0
_0800A518: .4byte gUnk_030042C0
_0800A51C:
	cmp r0, #0
	bge _0800A590
_0800A520:
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	bgt _0800A572
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r2, r5, r0
	movs r1, #5
	ldrsb r1, [r4, r1]
	mov r7, ip
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov ip, r1
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0800A56C
	mov r7, ip
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	ldrb r7, [r4, #3]
	cmp r0, r7
	bhs _0800A56C
	lsls r0, r1, #3
	adds r0, #2
	adds r2, r2, r0
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0800A572
_0800A56C:
	movs r1, #0
	mov sl, r1
	mov sb, r1
_0800A572:
	cmp r6, #0
	beq _0800A588
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r6, #0
_0800A588:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0800A51C
_0800A590:
	mov r7, sb
	cmp r7, #0
	beq _0800A5A6
	mov r2, r8
	lsls r0, r2, #0x10
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r0, r7
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0800A514
_0800A5A6:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800A5BC
sub_0800A5BC: @ 0x0800A5BC
	push {lr}
	bl sub_0800A5E8
	ldr r1, _0800A5DC @ =gUnk_03005164
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	ldr r1, _0800A5E0 @ =gUnk_03004B40
	str r0, [r1]
	ldr r2, _0800A5E4 @ =gUnk_03004FE0
	movs r0, #0x1f
	movs r1, #0
	bl sub_08009364
	pop {r0}
	bx r0
	.align 2, 0
_0800A5DC: .4byte gUnk_03005164
_0800A5E0: .4byte gUnk_03004B40
_0800A5E4: .4byte gUnk_03004FE0

	thumb_func_start sub_0800A5E8
sub_0800A5E8: @ 0x0800A5E8
	ldr r1, _0800A5F0 @ =gUnk_03005164
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0800A5F0: .4byte gUnk_03005164

	thumb_func_start sub_0800A5F4
sub_0800A5F4: @ 0x0800A5F4
	push {lr}
	adds r3, r1, #0
	ldr r1, _0800A614 @ =gUnk_03004FD0
	str r0, [r1]
	cmp r0, #1
	bne _0800A620
	ldr r0, _0800A618 @ =gUnk_03004B40
	str r3, [r0]
	ldr r0, _0800A61C @ =sub_0800A8A4
	movs r2, #0xda
	lsls r2, r2, #1
	adds r1, r3, #0
	bl CpuFastSet
	b _0800A626
	.align 2, 0
_0800A614: .4byte gUnk_03004FD0
_0800A618: .4byte gUnk_03004B40
_0800A61C: .4byte sub_0800A8A4
_0800A620:
	ldr r1, _0800A62C @ =gUnk_03004B40
	movs r0, #0
	str r0, [r1]
_0800A626:
	pop {r0}
	bx r0
	.align 2, 0
_0800A62C: .4byte gUnk_03004B40

	thumb_func_start sub_0800A630
sub_0800A630: @ 0x0800A630
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r6, sp
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _0800A674 @ =gUnk_030042C0
	adds r4, r4, r0
	adds r0, r2, #0
	mov r1, sp
	bl sub_08001D98
	strb r5, [r4]
	ldrh r0, [r6]
	strb r0, [r4, #1]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	ldrh r0, [r6, #4]
	strh r0, [r4, #4]
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x10]
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A674: .4byte gUnk_030042C0

	thumb_func_start sub_0800A678
sub_0800A678: @ 0x0800A678
	strh r1, [r0, #0x14]
	strh r2, [r0, #0x16]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A680
sub_0800A680: @ 0x0800A680
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r1, #2
	beq _0800A6A4
	cmp r1, #1
	bne _0800A69C
	ldrb r1, [r3, #0xc]
	movs r0, #8
	orrs r0, r1
	b _0800A6A2
_0800A69C:
	ldrb r1, [r3, #0xc]
	movs r0, #0xf7
	ands r0, r1
_0800A6A2:
	strb r0, [r3, #0xc]
_0800A6A4:
	cmp r2, #2
	beq _0800A6BC
	cmp r2, #1
	bne _0800A6B4
	ldrb r1, [r3, #0xc]
	movs r0, #4
	orrs r0, r1
	b _0800A6BA
_0800A6B4:
	ldrb r1, [r3, #0xc]
	movs r0, #0xfb
	ands r0, r1
_0800A6BA:
	strb r0, [r3, #0xc]
_0800A6BC:
	pop {r0}
	bx r0

	thumb_func_start sub_0800A6C0
sub_0800A6C0: @ 0x0800A6C0
	strb r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_0800A6C4
sub_0800A6C4: @ 0x0800A6C4
	strb r1, [r0, #0x18]
	strb r2, [r0, #0x19]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A6CC
sub_0800A6CC: @ 0x0800A6CC
	strh r1, [r0, #8]
	bx lr

	thumb_func_start sub_0800A6D0
sub_0800A6D0: @ 0x0800A6D0
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r2, #3]
	cmp r1, r0
	bhs _0800A6E2
	strb r1, [r2, #4]
	b _0800A6E6
_0800A6E2:
	subs r0, #1
	strb r0, [r2, #4]
_0800A6E6:
	adds r0, r2, #0
	bl sub_0800A7B8
	pop {r0}
	bx r0

	thumb_func_start sub_0800A6F0
sub_0800A6F0: @ 0x0800A6F0
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r1, #1
	bne _0800A71C
	str r2, [r4, #0x1c]
	strh r3, [r4, #0x22]
	ldrb r0, [r4, #0xc]
	movs r1, #2
	orrs r1, r0
	strb r1, [r4, #0xc]
	ldr r1, _0800A718 @ =0xF9FF0000
	adds r0, r2, r1
	lsrs r0, r0, #5
	strh r0, [r4, #0x1a]
	b _0800A720
	.align 2, 0
_0800A718: .4byte 0xF9FF0000
_0800A71C:
	movs r0, #0
	str r0, [r4, #0x1c]
_0800A720:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A728
sub_0800A728: @ 0x0800A728
	strb r1, [r0, #0xd]
	bx lr

	thumb_func_start sub_0800A72C
sub_0800A72C: @ 0x0800A72C
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bne _0800A740
	ldrb r1, [r2, #0xc]
	movs r0, #0x80
	orrs r0, r1
	b _0800A746
_0800A740:
	ldrb r1, [r2, #0xc]
	movs r0, #0x7f
	ands r0, r1
_0800A746:
	strb r0, [r2, #0xc]
	pop {r0}
	bx r0

	thumb_func_start sub_0800A74C
sub_0800A74C: @ 0x0800A74C
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	strh r1, [r3, #0x26]
	cmp r2, #1
	bne _0800A762
	ldrb r1, [r3, #0xc]
	movs r0, #0x40
	orrs r0, r1
	b _0800A768
_0800A762:
	ldrb r1, [r3, #0xc]
	movs r0, #0xbf
	ands r0, r1
_0800A768:
	strb r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A770
sub_0800A770: @ 0x0800A770
	strb r1, [r0, #0xf]
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A778
sub_0800A778: @ 0x0800A778
	push {lr}
	adds r3, r0, #0
	ldr r2, _0800A798 @ =gUnk_03005164
	ldrb r0, [r2]
	cmp r0, #0x1f
	bhi _0800A794
	ldr r0, _0800A79C @ =gUnk_03004F50
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r0
	str r3, [r1]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0800A794:
	pop {r0}
	bx r0
	.align 2, 0
_0800A798: .4byte gUnk_03005164
_0800A79C: .4byte gUnk_03004F50

	thumb_func_start sub_0800A7A0
sub_0800A7A0: @ 0x0800A7A0
	push {lr}
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800A7B0
	movs r0, #1
	b _0800A7B2
_0800A7B0:
	movs r0, #0
_0800A7B2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800A7B8
sub_0800A7B8: @ 0x0800A7B8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	beq _0800A7CA
	ldrb r1, [r2, #0xc]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #0xc]
_0800A7CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A7D0
sub_0800A7D0: @ 0x0800A7D0
	ldrh r3, [r0, #0x14]
	strh r3, [r1]
	ldrh r0, [r0, #0x16]
	strh r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A7DC
sub_0800A7DC: @ 0x0800A7DC
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0800A7F2
	movs r0, #1
_0800A7F2:
	strh r0, [r3]
	ldrb r1, [r4, #0xc]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0800A804
	movs r0, #1
_0800A804:
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A80C
sub_0800A80C: @ 0x0800A80C
	ldrb r0, [r0, #4]
	bx lr

	thumb_func_start sub_0800A810
sub_0800A810: @ 0x0800A810
	ldrh r0, [r0, #0x26]
	bx lr

	thumb_func_start sub_0800A814
sub_0800A814: @ 0x0800A814
	adds r0, #0x25
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A81C
sub_0800A81C: @ 0x0800A81C
	adds r0, #0x24
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A824
sub_0800A824: @ 0x0800A824
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r2, _0800A884 @ =gUnk_030042C0
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r1, [r0]
	ldrb r0, [r3, #1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrb r0, [r3, #4]
	lsls r0, r0, #3
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	strh r0, [r5]
	ldrh r0, [r1, #6]
	strh r0, [r4]
	ldrb r1, [r3, #0xc]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A86C
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4]
_0800A86C:
	ldrb r1, [r3, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800A87E
	movs r1, #0
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5]
_0800A87E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A884: .4byte gUnk_030042C0

	thumb_func_start sub_0800A888
sub_0800A888: @ 0x0800A888
	ldr r2, _0800A898 @ =gUnk_030042C0
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_0800A898: .4byte gUnk_030042C0

	thumb_func_start sub_0800A89C
sub_0800A89C: @ 0x0800A89C
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A8A4
sub_0800A8A4: @ 0x0800A8A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r8, r3
	ldr r1, _0800A8F4 @ =gUnk_03004FE0
	ldrh r0, [r1]
	str r0, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	ldrb r3, [r3, #0xc]
	str r3, [sp, #0x14]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0800A900
	ldr r2, _0800A8F8 @ =gUnk_030042C0
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0]
	ldr r0, _0800A8FC @ =gUnk_030040C0
	lsls r1, r4, #4
	adds r0, #0xc
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r1, #0x24]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0x18]
	b _0800A914
	.align 2, 0
_0800A8F4: .4byte gUnk_03004FE0
_0800A8F8: .4byte gUnk_030042C0
_0800A8FC: .4byte gUnk_030040C0
_0800A900:
	ldr r2, _0800AA28 @ =gUnk_030042C0
	mov r3, r8
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0]
	movs r0, #0
	str r0, [sp, #0x18]
_0800A914:
	subs r5, #1
	str r5, [sp, #8]
	cmp r5, #0
	bge _0800A91E
	b _0800AF58
_0800A91E:
	movs r1, #0
	str r1, [sp, #0x1c]
	ldr r2, [sp]
	ldr r3, [r2]
	cmp r3, #0x5f
	ble _0800A92C
	b _0800AF58
_0800A92C:
	ldr r2, _0800AA2C @ =gUnk_030040C0
	lsls r1, r4, #4
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x28]
	adds r1, r1, r2
	str r1, [sp, #0x2c]
_0800A93C:
	lsls r1, r3, #4
	ldr r0, _0800AA30 @ =gUnk_03004540
	adds r7, r1, r0
	adds r0, r3, #1
	ldr r3, [sp]
	str r0, [r3]
	ldr r5, [sp, #4]
	str r5, [sp, #0x24]
	movs r0, #6
	str r0, [sp, #0x20]
	ldrb r1, [r5]
	mov sb, r1
	ldr r3, _0800AA34 @ =0x0000FFFF
	ldrb r2, [r5, #1]
	movs r1, #1
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #8
	orrs r2, r0
	mov ip, r2
	mov r5, r8
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800AA28 @ =gUnk_030042C0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r6, r2, #2
	adds r4, r4, r6
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _0800A982
	b _0800AAB4
_0800A982:
	ldr r1, _0800AA38 @ =gUnk_03004FE0
	ldm r1!, {r0}
	lsls r0, r0, #2
	adds r0, r0, r1
	mov sl, r0
	ldr r1, _0800AA3C @ =gUnk_03004B50
	lsls r0, r2, #1
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r1, r3, #0
	cmp r0, r3
	beq _0800A99C
	adds r3, r0, #0
_0800A99C:
	cmp r3, r1
	bne _0800AA94
	ldr r1, [r4]
	ldr r0, _0800AA40 @ =0xF000FFFF
	ands r1, r0
	mov r3, r8
	ldrh r0, [r3, #0x20]
	lsrs r0, r0, #5
	ldrh r5, [r3, #0x1a]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	orrs r1, r0
	mov r0, sl
	str r1, [r0]
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r2]
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r3, _0800AA38 @ =gUnk_03004FE0
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, #4
	ldr r5, _0800AA44 @ =gUnk_030042B0
	ldr r1, [r5, #8]
	adds r1, r1, r0
	mov sl, r1
	adds r2, #1
	str r2, [r3]
	ldr r1, [sp, #0x28]
	ldr r0, [r1]
	adds r0, #4
	adds r0, r0, r6
	ldrb r1, [r0]
	lsrs r1, r1, #6
	ldrb r0, [r0, #1]
	lsrs r0, r0, #6
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _0800AA48 @ =gUnk_08B7148C
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r3, _0800AA4C @ =gUnk_08B71480
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r6, r1, #0
	muls r6, r0, r6
	ldr r5, [sp, #0x2c]
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800AA0E
	lsrs r6, r6, #1
_0800AA0E:
	movs r0, #2
	ldr r1, [sp, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0800AA7C
	mov r2, r8
	ldrb r2, [r2, #0xf]
	cmp ip, r2
	bne _0800AA50
	mov r3, r8
	ldr r5, [r3, #0x10]
	b _0800AA5C
	.align 2, 0
_0800AA28: .4byte gUnk_030042C0
_0800AA2C: .4byte gUnk_030040C0
_0800AA30: .4byte gUnk_03004540
_0800AA34: .4byte 0x0000FFFF
_0800AA38: .4byte gUnk_03004FE0
_0800AA3C: .4byte gUnk_03004B50
_0800AA40: .4byte 0xF000FFFF
_0800AA44: .4byte gUnk_030042B0
_0800AA48: .4byte gUnk_08B7148C
_0800AA4C: .4byte gUnk_08B71480
_0800AA50:
	ldrh r1, [r4, #2]
	ldr r0, _0800AA88 @ =0x00000FFF
	ands r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x18]
	adds r5, r1, r0
_0800AA5C:
	mov r2, r8
	ldrh r0, [r2, #0x20]
	ldr r3, [r2, #0x1c]
	adds r3, r3, r0
	ldr r4, _0800AA8C @ =gUnk_03003180
	ldr r2, [r4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0800AA90 @ =gUnk_03002DC0
	adds r0, r0, r1
	str r5, [r0]
	str r3, [r0, #4]
	str r6, [r0, #8]
	adds r2, #1
	str r2, [r4]
_0800AA7C:
	mov r3, r8
	ldrh r0, [r3, #0x20]
	adds r0, r0, r6
	strh r0, [r3, #0x20]
	b _0800AAA4
	.align 2, 0
_0800AA88: .4byte 0x00000FFF
_0800AA8C: .4byte gUnk_03003180
_0800AA90: .4byte gUnk_03002DC0
_0800AA94:
	ldr r5, [sp, #0xc]
	adds r0, r5, r3
	lsls r0, r0, #2
	adds r0, #4
	ldr r2, _0800AAB0 @ =gUnk_030042B0
	ldr r1, [r2, #8]
	adds r1, r1, r0
	mov sl, r1
_0800AAA4:
	ldr r3, _0800AAB0 @ =gUnk_030042B0
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x10
	mov r5, sl
	ldr r0, [r5]
	b _0800AABC
	.align 2, 0
_0800AAB0: .4byte gUnk_030042B0
_0800AAB4:
	mov r0, r8
	ldrh r1, [r0, #0x1a]
	lsls r1, r1, #0x10
	ldr r0, [r4]
_0800AABC:
	adds r0, r0, r1
	str r0, [r7, #0xc]
	ldr r1, [sp, #0x24]
	ldrh r0, [r1, #2]
	ldr r2, [sp, #0x60]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r1, #4]
	ldr r3, [sp, #0x64]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #8
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0800AAEC
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800AAEC
	movs r2, #1
	str r2, [sp, #0x1c]
_0800AAEC:
	movs r6, #0
	mov sl, r6
	ldr r0, [sp, #0x14]
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	beq _0800AB2C
	movs r0, #1
	mov sl, r0
	lsls r3, r4, #0x10
	rsbs r3, r3, #0
	ldr r1, [sp, #0x28]
	ldr r2, [r1]
	adds r2, #4
	mov r1, ip
	lsls r0, r1, #2
	adds r2, r2, r0
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	ldrb r0, [r2]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _0800AC08 @ =gUnk_08B7148C
	adds r1, r1, r2
	ldrb r0, [r1]
	ldr r1, [sp, #0x1c]
	lsls r0, r1
	asrs r3, r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
_0800AB2C:
	movs r0, #4
	ldr r2, [sp, #0x14]
	ands r0, r2
	cmp r0, #0
	beq _0800AB66
	movs r6, #1
	lsls r3, r5, #0x10
	rsbs r3, r3, #0
	ldr r5, [sp, #0x28]
	ldr r2, [r5]
	adds r2, #4
	mov r1, ip
	lsls r0, r1, #2
	adds r2, r2, r0
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	ldrb r0, [r2]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _0800AC0C @ =gUnk_08B71480
	adds r1, r1, r2
	ldrb r0, [r1]
	ldr r5, [sp, #0x1c]
	lsls r0, r5
	asrs r3, r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
_0800AB66:
	movs r0, #0x80
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0800AB78
	movs r0, #1
	mov r2, sl
	eors r2, r0
	mov sl, r2
_0800AB78:
	movs r1, #0x40
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800AB86
	movs r0, #1
	eors r6, r0
_0800AB86:
	ldr r0, [sp, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0800ABDC
	mov r0, sb
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	bne _0800ABDC
	ldr r0, [sp, #0x28]
	ldr r2, [r0]
	adds r0, r2, #4
	mov r1, ip
	lsls r3, r1, #2
	adds r0, r0, r3
	ldrb r1, [r0, #1]
	lsrs r1, r1, #6
	ldrb r0, [r0]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, _0800AC0C @ =gUnk_08B71480
	adds r1, r1, r0
	ldrb r0, [r1]
	lsrs r0, r0, #1
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #4
	adds r2, r2, r3
	ldrb r1, [r2, #1]
	lsrs r1, r1, #6
	ldrb r0, [r2]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r2, _0800AC08 @ =gUnk_08B7148C
	adds r1, r1, r2
	ldrb r0, [r1]
	lsrs r0, r0, #1
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0800ABDC:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	ldrh r3, [r3, #0x14]
	adds r1, r1, r3
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r5, r8
	ldrh r5, [r5, #0x16]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _0800AC14
	cmp r1, #0xef
	bgt _0800AC30
	ldr r0, _0800AC10 @ =0x000001FF
	b _0800AC26
	.align 2, 0
_0800AC08: .4byte gUnk_08B7148C
_0800AC0C: .4byte gUnk_08B71480
_0800AC10: .4byte 0x000001FF
_0800AC14:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0800AC30
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r5, _0800AC2C @ =0x000001FF
	adds r1, r5, #0
_0800AC26:
	ands r0, r1
	strh r0, [r7, #4]
	b _0800AC32
	.align 2, 0
_0800AC2C: .4byte 0x000001FF
_0800AC30:
	movs r2, #1
_0800AC32:
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _0800AC46
	cmp r3, #0x9f
	bgt _0800AC5C
	movs r0, #0xff
	ands r0, r3
	strh r0, [r7, #6]
	b _0800AC5E
_0800AC46:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r3, r0
	ble _0800AC5C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r7, #6]
	b _0800AC5E
_0800AC5C:
	movs r2, #1
_0800AC5E:
	cmp r2, #1
	bne _0800AC8A
	movs r0, #0xf0
	strh r0, [r7, #4]
	movs r0, #0xa0
	strh r0, [r7, #6]
	movs r0, #0x20
	mov r2, sb
	ands r2, r0
	cmp r2, #0
	beq _0800AC7A
	ldr r3, [sp, #0x20]
	adds r3, #6
	str r3, [sp, #0x20]
_0800AC7A:
	ldr r5, [sp, #4]
	ldr r0, [sp, #0x20]
	adds r5, r5, r0
	str r5, [sp, #4]
	ldr r1, [sp, #8]
	subs r1, #1
	str r1, [sp, #0x3c]
	b _0800AF40
_0800AC8A:
	mov r2, sl
	cmp r2, #1
	beq _0800AC94
	cmp r6, #1
	bne _0800ACCA
_0800AC94:
	mov r3, sl
	cmp r3, #0
	bne _0800ACA4
	ldrb r1, [r7]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7]
	b _0800ACB0
_0800ACA4:
	ldrb r0, [r7]
	movs r1, #0xfe
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r7]
_0800ACB0:
	cmp r6, #0
	bne _0800ACBE
	ldrb r1, [r7]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r7]
	b _0800ACCA
_0800ACBE:
	ldrb r0, [r7]
	movs r1, #0xfe
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r7]
_0800ACCA:
	movs r0, #0x20
	mov r5, sb
	ands r0, r5
	mov r1, r8
	ldrh r2, [r1, #0x26]
	cmp r0, #0
	bne _0800ACE4
	ldr r3, [sp, #8]
	subs r3, #1
	str r3, [sp, #0x3c]
	cmp r2, #0
	bne _0800ACE4
	b _0800AED0
_0800ACE4:
	movs r1, #0
	ldr r5, [sp, #0x24]
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _0800AD16
	mov r0, sl
	cmp r0, #0
	bne _0800ACFC
	cmp r6, #0
	bne _0800ACFC
	ldrh r1, [r5, #6]
	b _0800AD16
_0800ACFC:
	mov r1, sl
	cmp r1, #1
	bne _0800AD0C
	cmp r6, #1
	bne _0800AD0C
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #6]
	b _0800AD16
_0800AD0C:
	ldr r5, [sp, #0x24]
	ldrh r1, [r5, #6]
	movs r0, #0xb4
	lsls r0, r0, #1
	subs r1, r0, r1
_0800AD16:
	cmp r2, #0
	beq _0800AD4A
	mov r0, sl
	cmp r0, #0
	bne _0800AD2C
	cmp r6, #0
	bne _0800AD2C
	mov r2, r8
	ldrh r0, [r2, #0x26]
	adds r1, r1, r0
	b _0800AD4A
_0800AD2C:
	mov r3, sl
	cmp r3, #1
	bne _0800AD3E
	cmp r6, #1
	bne _0800AD3E
	mov r5, r8
	ldrh r0, [r5, #0x26]
	adds r1, r1, r0
	b _0800AD4A
_0800AD3E:
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2, #0x26]
	subs r1, r1, r0
_0800AD4A:
	ldr r3, [sp, #0x24]
	ldrh r4, [r3, #8]
	ldrh r2, [r3, #0xa]
	ldr r5, [sp, #0x20]
	adds r5, #6
	str r5, [sp, #0x20]
	cmp r6, #1
	bne _0800AD60
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
_0800AD60:
	mov r0, sl
	cmp r0, #1
	bne _0800AD6C
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x10
_0800AD6C:
	ldr r3, _0800ADB0 @ =gUnk_03003CB0
	ldrb r0, [r3, #2]
	ldr r5, [sp, #8]
	subs r5, #1
	str r5, [sp, #0x3c]
	cmp r0, #0x1f
	bls _0800AD7C
	b _0800AED0
_0800AD7C:
	ldrb r3, [r3, #2]
	str r3, [sp, #0x30]
	ldr r0, _0800ADB4 @ =0x00000167
	lsls r4, r4, #0x10
	mov ip, r4
	lsls r2, r2, #0x10
	str r2, [sp, #0x34]
	ldr r6, _0800ADB8 @ =gUnk_08B6D24C
	cmp r1, r0
	ble _0800ADC6
	adds r2, r1, #0
	movs r5, #0xb4
	lsls r5, r5, #1
	movs r4, #1
	cmp r1, #0
	bgt _0800ADA0
	subs r4, #2
	rsbs r2, r1, #0
_0800ADA0:
	cmp r2, r5
	blt _0800ADC2
	adds r0, r5, #0
_0800ADA6:
	cmp r2, r0
	blt _0800ADBC
	lsls r0, r0, #1
	b _0800ADA6
	.align 2, 0
_0800ADB0: .4byte gUnk_03003CB0
_0800ADB4: .4byte 0x00000167
_0800ADB8: .4byte gUnk_08B6D24C
_0800ADBC:
	asrs r0, r0, #1
	subs r2, r2, r0
	b _0800ADA0
_0800ADC2:
	adds r1, r2, #0
	muls r1, r4, r1
_0800ADC6:
	adds r0, r1, #0
	adds r0, #0x5a
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r5, [r0]
	lsls r0, r1, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r0, ip
	asrs r4, r0, #0x10
	movs r6, #0
	movs r0, #1
	cmp r4, #0
	bgt _0800ADEA
	subs r0, #2
	rsbs r4, r4, #0
_0800ADEA:
	adds r3, r0, #0
	ldr r0, [sp, #0x30]
	lsls r0, r0, #3
	mov sl, r0
	lsls r5, r5, #0x10
	lsls r1, r1, #0x10
	str r1, [sp, #0x38]
_0800ADF8:
	cmp r2, r4
	blt _0800AE14
	movs r0, #1
	adds r1, r4, #0
_0800AE00:
	cmp r2, r1
	blt _0800AE0A
	lsls r1, r1, #1
	lsls r0, r0, #1
	b _0800AE00
_0800AE0A:
	asrs r0, r0, #1
	adds r6, r6, r0
	asrs r0, r1, #1
	subs r2, r2, r0
	b _0800ADF8
_0800AE14:
	muls r6, r3, r6
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	ldr r1, [sp, #0x34]
	asrs r2, r1, #0x10
	movs r6, #0
	movs r0, #1
	cmp r2, #0
	bgt _0800AE2E
	subs r0, #2
	rsbs r2, r2, #0
_0800AE2E:
	lsls r4, r4, #0x10
	mov ip, r4
	adds r4, r0, #0
_0800AE34:
	cmp r3, r2
	blt _0800AE50
	movs r0, #1
	adds r1, r2, #0
_0800AE3C:
	cmp r3, r1
	blt _0800AE46
	lsls r1, r1, #1
	lsls r0, r0, #1
	b _0800AE3C
_0800AE46:
	asrs r0, r0, #1
	adds r6, r6, r0
	asrs r0, r1, #1
	subs r3, r3, r0
	b _0800AE34
_0800AE50:
	muls r6, r4, r6
	ldr r3, _0800AEA0 @ =gUnk_030037B0
	add r3, sl
	asrs r5, r5, #0x10
	mov r2, ip
	asrs r4, r2, #0x10
	adds r0, r5, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r3]
	ldr r0, [sp, #0x38]
	asrs r2, r0, #0x10
	rsbs r0, r2, #0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #2]
	adds r0, r2, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r3, #4]
	adds r0, r5, #0
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3, #6]
	ldr r1, _0800AEA4 @ =gUnk_03003CB0
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r1, #0
	ldr r2, _0800AEA4 @ =gUnk_03003CB0
	strb r0, [r2, #2]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x1c]
	cmp r3, #1
	bne _0800AEA8
	ldrb r0, [r7]
	movs r1, #2
	orrs r0, r1
	b _0800AEAE
	.align 2, 0
_0800AEA0: .4byte gUnk_030037B0
_0800AEA4: .4byte gUnk_03003CB0
_0800AEA8:
	ldrb r1, [r7]
	movs r0, #0xfd
	ands r0, r1
_0800AEAE:
	strb r0, [r7]
	cmp r2, #0xff
	beq _0800AEC4
	ldrb r0, [r7]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r7]
	strb r2, [r7, #3]
	b _0800AED0
_0800AEC4:
	ldrb r0, [r7]
	movs r1, #0xfe
	ands r1, r0
	movs r0, #0
	strb r1, [r7]
	strb r0, [r7, #3]
_0800AED0:
	mov r5, r8
	ldrb r0, [r5, #0xd]
	movs r1, #0
	strb r0, [r7, #1]
	movs r0, #0x10
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _0800AEE6
	movs r0, #1
	strb r0, [r7, #1]
_0800AEE6:
	movs r0, #6
	mov r3, sb
	ands r3, r0
	lsrs r0, r3, #1
	mov r5, r8
	ldrb r5, [r5, #0xe]
	adds r0, r0, r5
	strb r0, [r7, #2]
	mov r2, r8
	ldrb r0, [r2, #0x18]
	strb r0, [r7, #8]
	ldrb r0, [r2, #0x19]
	strb r0, [r7, #9]
	movs r0, #0x80
	ldr r3, [sp, #0x14]
	ands r0, r3
	cmp r0, #0
	beq _0800AF12
	ldrb r0, [r7]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r7]
_0800AF12:
	ldr r5, _0800AF68 @ =gUnk_03003CB0
	ldrb r2, [r5]
	lsls r1, r2, #3
	ldr r0, _0800AF6C @ =gUnk_03003CC0
	adds r1, r1, r0
	str r7, [r1]
	ldrb r0, [r7, #8]
	lsls r0, r0, #1
	ldr r3, _0800AF70 @ =gUnk_030037A0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldrb r0, [r7, #8]
	lsls r0, r0, #1
	adds r0, r0, r3
	strh r2, [r0]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r5, [sp, #4]
	ldr r0, [sp, #0x20]
	adds r5, r5, r0
	str r5, [sp, #4]
_0800AF40:
	ldr r1, [sp, #0x3c]
	str r1, [sp, #8]
	cmp r1, #0
	blt _0800AF58
	movs r2, #0
	str r2, [sp, #0x1c]
	ldr r3, [sp]
	ldr r0, [r3]
	adds r3, r0, #0
	cmp r3, #0x5f
	bgt _0800AF58
	b _0800A93C
_0800AF58:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF68: .4byte gUnk_03003CB0
_0800AF6C: .4byte gUnk_03003CC0
_0800AF70: .4byte gUnk_030037A0

	thumb_func_start sub_0800AF74
sub_0800AF74: @ 0x0800AF74
	push {r4, r5, r6, lr}
	sub sp, #0x30
	ldr r6, _0800B0B4 @ =gUnk_03005180
	movs r5, #0
	str r5, [sp]
	ldr r2, _0800B0B8 @ =0x050000F4
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	str r5, [sp, #4]
	add r0, sp, #4
	ldr r1, _0800B0BC @ =gUnk_03005640
	ldr r2, _0800B0C0 @ =0x0500001D
	bl CpuSet
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r1, _0800B0C4 @ =gUnk_030056C0
	ldr r2, _0800B0C8 @ =0x05000067
	bl CpuSet
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _0800B0CC @ =gUnk_030058D0
	ldr r4, _0800B0D0 @ =0x05000012
	adds r2, r4, #0
	bl CpuSet
	str r5, [sp, #0x10]
	add r0, sp, #0x10
	ldr r1, _0800B0D4 @ =gUnk_03005580
	adds r2, r4, #0
	bl CpuSet
	str r5, [sp, #0x14]
	add r0, sp, #0x14
	ldr r1, _0800B0D8 @ =gUnk_03005560
	ldr r2, _0800B0DC @ =0x05000004
	bl CpuSet
	str r5, [sp, #0x18]
	add r0, sp, #0x18
	ldr r1, _0800B0E0 @ =gUnk_03005860
	ldr r2, _0800B0E4 @ =0x05000009
	bl CpuSet
	ldr r0, _0800B0E8 @ =gUnk_03005554
	ldr r1, _0800B0EC @ =gUnk_02002000
	str r1, [r0]
	str r5, [sp, #0x1c]
	add r0, sp, #0x1c
	ldr r2, _0800B0F0 @ =0x050001FC
	bl CpuSet
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_08012F60
	cmp r0, #1
	beq _0800AFFA
	movs r0, #0xe1
	lsls r0, r0, #1
	movs r1, #4
	bl sub_08012F0C
_0800AFFA:
	bl sub_0800C2C4
	ldr r0, _0800B0F4 @ =gUnk_030056B4
	movs r1, #0
	strh r5, [r0]
	movs r2, #0xe8
	lsls r2, r2, #2
	adds r0, r6, r2
	str r5, [r0]
	adds r2, #4
	adds r0, r6, r2
	str r5, [r0]
	adds r2, #4
	adds r0, r6, r2
	str r5, [r0]
	adds r2, #4
	adds r0, r6, r2
	str r5, [r0]
	ldr r0, _0800B0F8 @ =gUnk_03005578
	strh r5, [r0]
	ldr r0, _0800B0FC @ =gUnk_0300588C
	strb r1, [r0]
	ldr r0, _0800B100 @ =gUnk_03005574
	strb r1, [r0]
	ldr r0, _0800B104 @ =gUnk_03005550
	strb r1, [r0]
	ldr r0, _0800B108 @ =gUnk_03005898
	strb r1, [r0]
	ldr r0, _0800B10C @ =gUnk_03005890
	strb r1, [r0]
	ldr r0, _0800B110 @ =gUnk_03005888
	strh r5, [r0]
	ldr r0, _0800B114 @ =gUnk_030056B8
	strh r5, [r0]
	ldr r0, _0800B118 @ =gUnk_0300589C
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_08012F60
	cmp r0, #1
	bne _0800B0AC
	ldr r4, _0800B11C @ =0x0000C083
	bl sub_08018408
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800E77C
	ldr r4, _0800B120 @ =0x0000C183
	bl sub_08018908
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800E77C
	ldr r4, _0800B124 @ =0x0000C283
	bl sub_08018414
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800E77C
	ldr r4, _0800B128 @ =0x0000C683
	movs r0, #0xd
	bl sub_08012F60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08018FA0
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800E77C
	movs r0, #0xfa
	lsls r0, r0, #1
	bl sub_08012F60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r4, sp, #0x20
	movs r1, #0
	adds r2, r4, #0
	bl sub_0800D204
	ldr r0, _0800B12C @ =0x0000C783
	adds r1, r4, #0
	bl sub_0800E77C
_0800B0AC:
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B0B4: .4byte gUnk_03005180
_0800B0B8: .4byte 0x050000F4
_0800B0BC: .4byte gUnk_03005640
_0800B0C0: .4byte 0x0500001D
_0800B0C4: .4byte gUnk_030056C0
_0800B0C8: .4byte 0x05000067
_0800B0CC: .4byte gUnk_030058D0
_0800B0D0: .4byte 0x05000012
_0800B0D4: .4byte gUnk_03005580
_0800B0D8: .4byte gUnk_03005560
_0800B0DC: .4byte 0x05000004
_0800B0E0: .4byte gUnk_03005860
_0800B0E4: .4byte 0x05000009
_0800B0E8: .4byte gUnk_03005554
_0800B0EC: .4byte gUnk_02002000
_0800B0F0: .4byte 0x050001FC
_0800B0F4: .4byte gUnk_030056B4
_0800B0F8: .4byte gUnk_03005578
_0800B0FC: .4byte gUnk_0300588C
_0800B100: .4byte gUnk_03005574
_0800B104: .4byte gUnk_03005550
_0800B108: .4byte gUnk_03005898
_0800B10C: .4byte gUnk_03005890
_0800B110: .4byte gUnk_03005888
_0800B114: .4byte gUnk_030056B8
_0800B118: .4byte gUnk_0300589C
_0800B11C: .4byte 0x0000C083
_0800B120: .4byte 0x0000C183
_0800B124: .4byte 0x0000C283
_0800B128: .4byte 0x0000C683
_0800B12C: .4byte 0x0000C783

	thumb_func_start sub_0800B130
sub_0800B130: @ 0x0800B130
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r1, _0800B150 @ =0x0000F0FF
	mov r8, r1
	ldr r7, _0800B154 @ =0x0000C083
	mov ip, r7
	ldr r1, _0800B158 @ =gUnk_03005580
	mov sb, r1
	adds r4, r0, #0
	movs r6, #0xf0
	lsls r6, r6, #4
	ldr r5, _0800B15C @ =0x00007087
	b _0800B164
	.align 2, 0
_0800B150: .4byte 0x0000F0FF
_0800B154: .4byte 0x0000C083
_0800B158: .4byte gUnk_03005580
_0800B15C: .4byte 0x00007087
_0800B160:
	adds r3, #1
_0800B162:
	adds r4, #2
_0800B164:
	ldrh r1, [r4]
	adds r2, r1, #0
	adds r0, r1, #0
	mov r7, r8
	ands r0, r7
	cmp r0, ip
	bne _0800B192
	ands r1, r6
	lsrs r1, r1, #8
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sb
	ldrh r2, [r0]
	cmp r2, #0
	beq _0800B162
	adds r0, #2
_0800B186:
	adds r3, #1
	ldrh r2, [r0]
	adds r0, #2
	cmp r2, #0
	bne _0800B186
	b _0800B162
_0800B192:
	cmp r0, r5
	beq _0800B162
	cmp r2, #0
	bne _0800B160
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800B1AC
sub_0800B1AC: @ 0x0800B1AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	mov r8, r2
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x40]
	ldr r4, [sp, #0x44]
	ldr r5, [sp, #0x48]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x14]
	ldr r0, _0800B1F0 @ =gUnk_03005180
	mov sb, r0
	movs r6, #0
	b _0800B206
	.align 2, 0
_0800B1F0: .4byte gUnk_03005180
_0800B1F4:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x13
	bhi _0800B20C
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	add r0, sb
_0800B206:
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800B1F4
_0800B20C:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800B21A
	ldr r0, _0800B29C @ =gUnk_08B71498
	ldr r0, [r0]
	mov r8, r0
_0800B21A:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r7]
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	mov r1, sb
	adds r5, r1, r0
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	movs r2, #0xea
	lsls r2, r2, #2
	add r2, sb
	mov sl, r2
	movs r4, #0xec
	lsls r4, r4, #2
	add r4, sb
	ldr r1, [r4]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	adds r2, r5, #0
	adds r2, #0x10
	ldr r1, [sp, #0x3c]
	str r1, [sp]
	mov r1, r8
	bl sub_08001F14
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _0800B2A0 @ =gUnk_030056B4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0800B280
	ldr r1, [r4]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	mov r2, sl
	ldr r0, [r2]
	adds r0, r0, r1
	mov r1, r8
	bl sub_080022B4
_0800B280:
	strb r7, [r5, #2]
	movs r0, #0
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	mov r1, sp
	ldrb r1, [r1, #0x14]
	strb r1, [r5, #0xc]
	ldr r2, [sp, #0x14]
	cmp r2, #0
	beq _0800B2A4
	adds r0, r2, #0
	subs r0, #1
	b _0800B2A6
	.align 2, 0
_0800B29C: .4byte gUnk_08B71498
_0800B2A0: .4byte gUnk_030056B4
_0800B2A4:
	movs r0, #0
_0800B2A6:
	strb r0, [r5, #0xd]
	movs r1, #0
	mov r8, r1
	movs r4, #1
	strb r4, [r5, #0xe]
	movs r0, #2
	strb r0, [r5]
	mov r2, r8
	strb r2, [r5, #1]
	mov r0, sp
	ldrb r0, [r0, #8]
	strb r0, [r5, #5]
	mov r1, sp
	ldrb r1, [r1, #0xc]
	strb r1, [r5, #6]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r5, #7]
	mov r0, sp
	ldrb r0, [r0, #0x10]
	strb r0, [r5, #9]
	mov r1, sp
	ldrb r1, [r1, #0x10]
	strb r1, [r5, #8]
	mov r2, r8
	strb r2, [r5, #0x18]
	adds r0, r6, #0
	bl sub_0800CC28
	movs r2, #0xec
	lsls r2, r2, #2
	add r2, sb
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	adds r0, r7, #0
	ands r0, r4
	cmp r0, #0
	beq _0800B300
	adds r0, r1, #0
	adds r0, #0x20
	str r0, [r2]
_0800B300:
	ldr r0, _0800B318 @ =gUnk_030056B4
	mov r1, r8
	strh r1, [r0]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B318: .4byte gUnk_030056B4

	thumb_func_start sub_0800B31C
sub_0800B31C: @ 0x0800B31C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r7, _0800B350 @ =gUnk_030053B0
	movs r2, #0
	mov r8, r2
	ldrb r2, [r0]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r3, _0800B354 @ =0xFFFFFDD0
	adds r2, r7, r3
	adds r5, r0, r2
	movs r6, #0
	strb r6, [r5, #1]
	strb r1, [r5, #9]
	strb r1, [r5, #8]
	strb r6, [r5, #3]
	strb r6, [r5, #4]
	strb r6, [r5, #0x18]
	movs r0, #2
	strb r0, [r5]
	b _0800B360
	.align 2, 0
_0800B350: .4byte gUnk_030053B0
_0800B354: .4byte 0xFFFFFDD0
_0800B358:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0800B360
	b _0800B464
_0800B360:
	cmp r6, #7
	bls _0800B366
	b _0800B45C
_0800B366:
	lsls r0, r6, #2
	ldr r1, _0800B370 @ =_0800B374
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B370: .4byte _0800B374
_0800B374: @ jump table
	.4byte _0800B394 @ case 0
	.4byte _0800B3A8 @ case 1
	.4byte _0800B3A8 @ case 2
	.4byte _0800B3A8 @ case 3
	.4byte _0800B45C @ case 4
	.4byte _0800B43C @ case 5
	.4byte _0800B43C @ case 6
	.4byte _0800B43C @ case 7
_0800B394:
	movs r1, #0
	strb r1, [r5, #3]
	strb r1, [r5, #4]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #8]
	strb r0, [r5, #9]
	strb r1, [r5, #0x18]
	adds r0, r6, #1
	b _0800B458
_0800B3A8:
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r1, [r1]
	lsrs r0, r1, #8
	ldrb r2, [r5, #4]
	cmp r0, r2
	bne _0800B3C4
	strb r1, [r5, #9]
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
_0800B3C4:
	subs r0, r6, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x10
	ldr r2, _0800B438 @ =gUnk_03005180
	ldrb r0, [r5, #7]
	lsls r0, r0, #2
	movs r3, #0xef
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #5
	ldrsb r2, [r5, r2]
	adds r1, r1, r2
	ldrb r4, [r5, #3]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #6
	ldrsb r2, [r5, r2]
	ldrb r3, [r5, #0xb]
	lsls r3, r3, #3
	adds r3, r3, r7
	lsls r4, r4, #1
	ldrh r3, [r3, #2]
	adds r4, r4, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp]
	ldrb r3, [r5, #9]
	str r3, [sp, #4]
	movs r3, #1
	bl sub_08003840
	movs r2, #0
	strb r2, [r5, #0xd]
	ldrb r1, [r5, #3]
	adds r1, #1
	strb r1, [r5, #3]
	ldrb r0, [r5, #4]
	adds r0, #1
	strb r0, [r5, #4]
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	adds r0, r0, r7
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0800B45C
	adds r0, r6, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strb r2, [r5, #3]
	b _0800B45C
	.align 2, 0
_0800B438: .4byte gUnk_03005180
_0800B43C:
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r1, [r0, #4]
	ldr r0, _0800B450 @ =0x0000FFFF
	cmp r1, r0
	bne _0800B454
	movs r0, #1
	strb r0, [r5]
	b _0800B45C
	.align 2, 0
_0800B450: .4byte 0x0000FFFF
_0800B454:
	strb r1, [r5, #0xb]
	subs r0, r6, #3
_0800B458:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800B45C:
	mov r0, r8
	cmp r0, #0
	bne _0800B464
	b _0800B358
_0800B464:
	strb r6, [r5, #1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B474
sub_0800B474: @ 0x0800B474
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r5, _0800B4DC @ =gUnk_03005180
	adds r6, r0, r5
	ldrb r0, [r6, #7]
	lsls r0, r0, #2
	movs r2, #0xef
	lsls r2, r2, #2
	adds r1, r5, r2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #5
	ldrsb r1, [r6, r1]
	movs r2, #6
	ldrsb r2, [r6, r2]
	ldrb r4, [r6, #2]
	lsls r3, r4, #1
	lsrs r4, r4, #1
	subs r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r7, #0xf3
	lsls r7, r7, #2
	adds r4, r5, r7
	ldrh r4, [r4]
	str r4, [sp]
	ldr r4, _0800B4E0 @ =0x000003CE
	adds r5, r5, r4
	ldrh r4, [r5]
	str r4, [sp, #4]
	bl sub_0800393C
	movs r1, #0
	movs r0, #2
	strb r0, [r6]
	strb r1, [r6, #1]
	strb r1, [r6, #3]
	strb r1, [r6, #4]
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _0800B4D0
	subs r0, #1
_0800B4D0:
	strb r0, [r6, #0xd]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B4DC: .4byte gUnk_03005180
_0800B4E0: .4byte 0x000003CE

	thumb_func_start sub_0800B4E4
sub_0800B4E4: @ 0x0800B4E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r7, _0800B570 @ =gUnk_030053B0
	ldrb r1, [r0]
	lsls r5, r1, #3
	subs r5, r5, r1
	lsls r5, r5, #2
	ldr r2, _0800B574 @ =0xFFFFFDD0
	adds r1, r7, r2
	adds r5, r5, r1
	movs r1, #0
	strb r1, [r5]
	movs r6, #0
	mov r8, r6
	strh r1, [r0]
	ldrb r0, [r5, #7]
	lsls r0, r0, #2
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #5
	ldrsb r1, [r5, r1]
	movs r2, #6
	ldrsb r2, [r5, r2]
	ldrb r4, [r5, #2]
	lsls r3, r4, #1
	lsrs r4, r4, #1
	subs r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r6, #0xce
	lsls r6, r6, #1
	adds r4, r7, r6
	ldrh r4, [r4]
	str r4, [sp]
	adds r6, #2
	adds r4, r7, r6
	ldrh r4, [r4]
	str r4, [sp, #4]
	bl sub_0800393C
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #4]
	ldr r1, _0800B578 @ =0x0000FFFF
	cmp r0, r1
	beq _0800B564
	movs r2, #0
_0800B558:
	lsls r0, r0, #3
	adds r0, r0, r7
	strb r2, [r0]
	ldrh r0, [r0, #4]
	cmp r0, r1
	bne _0800B558
_0800B564:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B570: .4byte gUnk_030053B0
_0800B574: .4byte 0xFFFFFDD0
_0800B578: .4byte 0x0000FFFF

	thumb_func_start sub_0800B57C
sub_0800B57C: @ 0x0800B57C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r7, _0800B60C @ =gUnk_030053B0
	ldrb r3, [r0]
	lsls r5, r3, #3
	subs r5, r5, r3
	lsls r5, r5, #2
	ldr r4, _0800B610 @ =0xFFFFFDD0
	adds r3, r7, r4
	adds r5, r5, r3
	movs r3, #0
	strb r3, [r5]
	movs r4, #0
	mov sb, r4
	strh r3, [r0]
	ldrb r0, [r5, #7]
	lsls r0, r0, #2
	movs r4, #0xc6
	lsls r4, r4, #1
	adds r3, r7, r4
	adds r0, r0, r3
	ldr r0, [r0]
	movs r6, #5
	ldrsb r6, [r5, r6]
	movs r3, #6
	ldrsb r3, [r5, r3]
	mov r8, r3
	ldrb r4, [r5, #2]
	lsls r3, r4, #1
	lsrs r4, r4, #1
	subs r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r6, #0
	mov r2, r8
	bl sub_0800393C
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r7
	mov r4, sb
	strb r4, [r0]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #4]
	ldr r1, _0800B614 @ =0x0000FFFF
	cmp r0, r1
	beq _0800B5FE
	movs r2, #0
_0800B5F2:
	lsls r0, r0, #3
	adds r0, r0, r7
	strb r2, [r0]
	ldrh r0, [r0, #4]
	cmp r0, r1
	bne _0800B5F2
_0800B5FE:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B60C: .4byte gUnk_030053B0
_0800B610: .4byte 0xFFFFFDD0
_0800B614: .4byte 0x0000FFFF

	thumb_func_start sub_0800B618
sub_0800B618: @ 0x0800B618
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r3, [sp, #4]
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r3, [sp, #0x38]
	ldr r6, [sp, #0x3c]
	mov sl, r6
	ldr r6, [sp, #0x40]
	ldr r7, [sp, #0x44]
	mov ip, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r7, _0800B6C4 @ =gUnk_03005640
	movs r2, #0
	mov r8, r2
	movs r2, #2
	strb r2, [r7, #2]
	mov r2, r8
	strb r2, [r7, #3]
	strb r4, [r7, #6]
	strb r5, [r7, #7]
	strb r0, [r7, #8]
	strb r3, [r7, #9]
	movs r2, #0x40
	adds r2, r2, r7
	mov sb, r2
	strb r3, [r2]
	adds r2, r7, #0
	adds r2, #0x41
	strb r3, [r2]
	adds r2, #1
	strb r3, [r2]
	ldr r3, [sp, #0x34]
	str r3, [r7, #0x10]
	mov r2, sl
	strb r2, [r7, #0xa]
	strb r6, [r7, #0xb]
	mov r3, ip
	strb r3, [r7, #0xc]
	movs r2, #0
	mov r3, r8
	strh r3, [r7]
	adds r3, r7, #0
	adds r3, #0x4c
	strb r4, [r3]
	strb r5, [r3, #1]
	strb r0, [r3, #6]
	strb r1, [r3, #7]
	strb r2, [r3, #0x11]
	strb r2, [r3, #0x12]
	movs r0, #1
	strh r0, [r3, #2]
	mov r0, r8
	strh r0, [r3, #4]
	strb r6, [r3, #0xb]
	strb r2, [r3, #0xd]
	movs r0, #0x6a
	strb r0, [r3, #0xc]
	adds r0, r7, #0
	adds r0, #0x14
	str r0, [r3, #0x14]
	mov r2, sb
	str r2, [r3, #0x18]
	ldrb r0, [r7, #4]
	cmp r0, #3
	bhi _0800B6C8
	strb r0, [r3, #0xa]
	movs r0, #0xc0
	b _0800B6CE
	.align 2, 0
_0800B6C4: .4byte gUnk_03005640
_0800B6C8:
	movs r0, #3
	strb r0, [r3, #0xa]
	movs r0, #0xc5
_0800B6CE:
	strh r0, [r3, #8]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0800B6DE
	ldrh r1, [r3, #8]
	movs r0, #8
	orrs r0, r1
	strh r0, [r3, #8]
_0800B6DE:
	movs r1, #0
	movs r0, #0xdc
	strb r0, [r3, #0xe]
	mov r6, sp
	ldrb r6, [r6]
	strb r6, [r3, #0xf]
	ldr r0, [sp, #4]
	str r0, [r3, #0x20]
	ldr r0, [sp, #0x28]
	str r0, [r3, #0x1c]
	str r1, [r3, #0x24]
	strb r1, [r3, #0x10]
	adds r1, r7, #0
	adds r1, #0x4c
	adds r0, r7, #0
	bl sub_080072F8
	ldrb r1, [r7, #0xc]
	adds r0, r7, #0
	bl sub_08008F18
	adds r0, r7, #0
	movs r1, #0
	bl sub_08008E34
	adds r0, r7, #0
	movs r1, #0
	bl sub_08008E64
	adds r0, r7, #0
	movs r1, #0
	bl sub_08008E7C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B730
sub_0800B730: @ 0x0800B730
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800B8A0 @ =gUnk_03005180
	mov sb, r2
	movs r2, #0xce
	lsls r2, r2, #1
	muls r2, r0, r2
	ldr r0, _0800B8A4 @ =gUnk_030056C0
	adds r6, r2, r0
	movs r0, #1
	strb r0, [r6, #9]
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r6, r4
	str r1, [r0]
	movs r5, #0xea
	lsls r5, r5, #2
	add r5, sb
	movs r4, #0xec
	lsls r4, r4, #2
	add r4, sb
	ldr r2, [r4]
	lsrs r2, r2, #2
	lsls r2, r2, #2
	ldr r0, [r5]
	adds r0, r0, r2
	movs r2, #0
	bl sub_080036F8
	strb r0, [r6, #2]
	ldr r1, [r4]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r0, r0, r1
	movs r5, #0xca
	lsls r5, r5, #1
	adds r1, r6, r5
	ldr r1, [r1]
	ldrb r2, [r6, #2]
	lsls r2, r2, #7
	bl sub_08006BA4
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r6, r4
	ldrb r1, [r6, #2]
	str r1, [r0]
	movs r7, #0
	cmp r7, r1
	bhs _0800B7DE
	movs r0, #0
	mov sl, r0
	movs r1, #0xba
	lsls r1, r1, #1
	adds r3, r6, r1
	adds r2, r6, #0
	subs r5, #0x1f
	mov r8, r5
	movs r0, #0x40
	mov ip, r0
_0800B7B4:
	lsls r1, r7, #2
	mov r5, sl
	strb r5, [r3]
	mov r5, r8
	adds r0, r2, r5
	mov r5, ip
	strb r5, [r0]
	ldrb r0, [r6, #0xc]
	lsls r0, r0, #0xc
	orrs r0, r1
	movs r5, #0xbb
	lsls r5, r5, #1
	adds r1, r2, r5
	strh r0, [r1]
	adds r3, #4
	adds r2, #4
	adds r7, #1
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r7, r0
	blo _0800B7B4
_0800B7DE:
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r3, #0
	str r3, [r1]
	movs r4, #0xac
	lsls r4, r4, #1
	adds r2, r6, r4
	ldrb r0, [r6, #2]
	lsls r0, r0, #7
	str r0, [r2]
	movs r5, #0xae
	lsls r5, r5, #1
	adds r0, r6, r5
	strh r3, [r0]
	ldrb r0, [r6, #2]
	lsls r0, r0, #2
	adds r4, #6
	adds r2, r6, r4
	strh r0, [r2]
	ldrb r0, [r6, #2]
	lsls r0, r0, #2
	adds r5, #4
	adds r2, r6, r5
	strh r0, [r2]
	movs r2, #0xb1
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #6
	adds r2, r6, r4
	adds r5, #0x34
	adds r4, r6, r5
	ldr r0, [r4]
	str r0, [r2]
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r0, r6, r2
	str r3, [r0]
	subs r5, #0x28
	adds r0, r6, r5
	adds r2, #8
	adds r5, r6, r2
	str r5, [r0]
	movs r3, #0xec
	lsls r3, r3, #2
	add r3, sb
	ldrb r2, [r6, #2]
	lsls r2, r2, #7
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r3]
	ldrb r0, [r6, #0xd]
	ldr r2, [r4]
	movs r3, #0
	bl sub_08009334
	movs r0, #3
	movs r1, #7
	bl sub_08001D3C
	ldrb r1, [r6, #0xf]
	bl sub_08001D78
	adds r2, r0, #0
	ldrb r0, [r6, #0xe]
	ldrb r1, [r6, #0xd]
	bl sub_0800A630
	movs r7, #0
	ldr r0, [r5]
	cmp r7, r0
	bhs _0800B8DC
	adds r4, r6, #0
	adds r4, #0x14
_0800B874:
	adds r0, r4, #0
	bl sub_08009F0C
	ldrb r1, [r6, #0xe]
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r6, #0x10]
	adds r0, r4, #0
	bl sub_08009F50
	cmp r7, #0
	beq _0800B8A8
	ldrh r1, [r6, #4]
	subs r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r5, #6
	ldrsh r2, [r6, r5]
	adds r0, r4, #0
	bl sub_0800A678
	b _0800B8B8
	.align 2, 0
_0800B8A0: .4byte gUnk_03005180
_0800B8A4: .4byte gUnk_030056C0
_0800B8A8:
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r5, #6
	ldrsh r2, [r6, r5]
	adds r0, r6, #0
	adds r0, #0x14
	bl sub_0800A678
_0800B8B8:
	ldrb r1, [r6, #0xc]
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800A6C0
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800A6CC
	adds r4, #0x28
	adds r7, #1
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r7, r0
	blo _0800B874
_0800B8DC:
	movs r1, #0
	movs r0, #2
	strb r0, [r6]
	strb r1, [r6, #1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B8F4
sub_0800B8F4: @ 0x0800B8F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r7, _0800B918 @ =gUnk_030058D0
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0x1a
	bls _0800B90E
	bl _0800C2AA
_0800B90E:
	lsls r0, r0, #2
	ldr r1, _0800B91C @ =_0800B920
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B918: .4byte gUnk_030058D0
_0800B91C: .4byte _0800B920
_0800B920: @ jump table
	.4byte _0800B98C @ case 0
	.4byte _0800BADE @ case 1
	.4byte _0800BB00 @ case 2
	.4byte _0800C2AA @ case 3
	.4byte _0800BB80 @ case 4
	.4byte _0800BB80 @ case 5
	.4byte _0800BB80 @ case 6
	.4byte _0800BB80 @ case 7
	.4byte _0800BB80 @ case 8
	.4byte _0800BB80 @ case 9
	.4byte _0800BB80 @ case 10
	.4byte _0800BB80 @ case 11
	.4byte _0800BD1E @ case 12
	.4byte _0800BDA8 @ case 13
	.4byte _0800BE88 @ case 14
	.4byte _0800C1AA @ case 15
	.4byte _0800C1CC @ case 16
	.4byte _0800C1CC @ case 17
	.4byte _0800C1CC @ case 18
	.4byte _0800C1CC @ case 19
	.4byte _0800C1CC @ case 20
	.4byte _0800C1CC @ case 21
	.4byte _0800C1CC @ case 22
	.4byte _0800C1CC @ case 23
	.4byte _0800C204 @ case 24
	.4byte _0800C28E @ case 25
	.4byte _0800C29A @ case 26
_0800B98C:
	adds r2, r7, #0
	adds r2, #0x23
	movs r6, #0
	strb r6, [r2]
	movs r4, #0
	ldrh r1, [r7, #0x2c]
	movs r0, #8
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0800B9AE
	ldr r0, [r7, #0x30]
	bl sub_0800B130
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r4, [r5]
_0800B9AE:
	strb r4, [r7, #0x16]
	strb r6, [r7, #0x17]
	movs r4, #0
	ldr r0, [r7, #0x34]
	ldr r0, [r0]
	adds r6, r7, #0
	adds r6, #0x22
	adds r2, r7, #0
	adds r2, #0x24
	str r2, [sp, #0x28]
	movs r3, #0x25
	adds r3, r3, r7
	mov sl, r3
	movs r1, #0x20
	adds r1, r1, r7
	mov sb, r1
	adds r2, #2
	str r2, [sp, #0x2c]
	adds r3, r7, #0
	adds r3, #0x27
	str r3, [sp, #0x30]
	adds r1, r7, #2
	mov r8, r1
	b _0800B9FC
_0800B9DE:
	bl sub_0800B130
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrb r0, [r5]
	cmp r0, r1
	bhs _0800B9EE
	strb r1, [r5]
_0800B9EE:
	adds r0, r7, r4
	strb r1, [r0, #0x18]
	adds r4, #1
	ldr r1, [r7, #0x34]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
_0800B9FC:
	cmp r0, #0
	bne _0800B9DE
	strb r4, [r6]
	add r3, sp, #0x14
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xb
	asrs r2, r0, #0xc
	adds r0, r2, #3
	strb r0, [r3, #4]
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BA22
	add r1, sp, #0x14
	adds r0, r2, #4
	strb r0, [r1, #4]
_0800BA22:
	add r0, sp, #0x14
	ldrb r0, [r0, #4]
	cmp r0, #6
	bhi _0800BA30
	add r1, sp, #0x14
	movs r0, #7
	strb r0, [r1, #4]
_0800BA30:
	add r1, sp, #0x14
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r2, r0, #2
	strb r2, [r1, #5]
	ldrh r1, [r7, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800BA4A
	add r1, sp, #0x14
	adds r0, r2, #2
	strb r0, [r1, #5]
_0800BA4A:
	ldr r1, _0800BA7C @ =0x0000FFFF
	ldrh r0, [r7, #0x24]
	cmp r0, r1
	bne _0800BA80
	add r3, sp, #0x14
	adds r0, r3, #0
	ldrb r1, [r0, #4]
	lsrs r1, r1, #1
	movs r0, #0xf
	subs r0, r0, r1
	ldr r4, [sp, #0x28]
	strb r0, [r4]
	movs r2, #0xff
	ands r0, r2
	strb r0, [r3, #2]
	adds r0, r3, #0
	ldrb r1, [r0, #5]
	lsrs r1, r1, #1
	movs r0, #0xa
	subs r0, r0, r1
	mov r5, sl
	strb r0, [r5]
	ands r0, r2
	strb r0, [r3, #3]
	b _0800BA8E
	.align 2, 0
_0800BA7C: .4byte 0x0000FFFF
_0800BA80:
	add r1, sp, #0x14
	ldr r2, [sp, #0x28]
	ldrb r0, [r2]
	strb r0, [r1, #2]
	mov r3, sl
	ldrb r0, [r3]
	strb r0, [r1, #3]
_0800BA8E:
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1, #1]
	mov r4, sb
	ldrb r0, [r4]
	strb r0, [r1, #6]
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	strb r0, [r1]
	ldr r2, [sp, #0x30]
	ldrb r0, [r2]
	strb r0, [r1, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	beq _0800BAB0
	add r1, sp, #0x14
_0800BAB0:
	movs r0, #6
	strb r0, [r1, #8]
	add r1, sp, #0x14
	movs r0, #0
	strb r0, [r1, #9]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	adds r0, r1, #0
	ldrb r0, [r0, #7]
	cmp r0, #9
	beq _0800BACE
	movs r0, #0x6a
	movs r1, #0
	bl sub_080147B8
_0800BACE:
	mov r0, r8
	add r1, sp, #0x14
	bl sub_08019944
	ldrh r0, [r7]
	adds r0, #1
	bl _0800C2A8
_0800BADE:
	adds r4, r7, #2
	adds r0, r4, #0
	bl sub_0801BAD8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	beq _0800BAF2
	bl _0800C2AA
_0800BAF2:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080199C0
	ldrh r0, [r7]
	adds r0, #1
	b _0800C2A8
_0800BB00:
	ldrh r1, [r7, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800BB70
	adds r0, r7, #2
	bl sub_0801BB28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	ldr r3, _0800BB74 @ =0xFFFFD000
	adds r0, r0, r3
	ldrb r2, [r7, #0x16]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #0xb
	subs r0, r0, r1
	lsrs r0, r0, #0xd
	adds r5, r7, #4
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r1, [r1]
	ldr r2, [r7, #0x30]
	adds r3, r7, #0
	adds r3, #0x24
	ldrb r3, [r3]
	adds r3, #2
	adds r3, r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	adds r0, #1
	str r0, [sp]
	ldr r0, _0800BB78 @ =0x44444444
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r0, r5, #0
	bl sub_0800B1AC
	ldrb r1, [r7, #4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800BB7C @ =gUnk_03005180
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _0800BB70
	movs r0, #3
	strb r0, [r1]
_0800BB70:
	movs r0, #4
	b _0800C2A8
	.align 2, 0
_0800BB74: .4byte 0xFFFFD000
_0800BB78: .4byte 0x44444444
_0800BB7C: .4byte gUnk_03005180
_0800BB80:
	ldrh r1, [r7, #0x2c]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r5, r0, #0x1f
	movs r0, #2
	ands r5, r0
	adds r0, r7, #2
	bl sub_0801BB28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	ldr r4, _0800BBC4 @ =0xFFFFD000
	adds r3, r0, r4
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r2, r0, #4
	mov r8, r2
	adds r0, r7, r0
	ldrb r1, [r0, #0x14]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #0xb
	ldrh r1, [r7, #0x2c]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800BBC8
	subs r0, r3, r2
	lsrs r4, r0, #0xd
	b _0800BBCA
	.align 2, 0
_0800BBC4: .4byte 0xFFFFD000
_0800BBC8:
	movs r4, #0
_0800BBCA:
	ldrh r1, [r7, #0x2c]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0
	beq _0800BC2C
	mov r3, r8
	lsls r6, r3, #1
	adds r0, r6, #6
	adds r0, r7, r0
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r1, [r1]
	ldr r2, [r7, #0x34]
	mov sb, r2
	lsls r2, r3, #2
	add r2, sb
	ldr r2, [r2]
	adds r3, r7, #0
	adds r3, #0x24
	ldrb r3, [r3]
	adds r3, #2
	adds r3, r3, r4
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r4, r7, #0
	adds r4, #0x25
	ldrb r4, [r4]
	adds r5, #1
	adds r4, r4, r5
	adds r4, r4, r6
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	ldr r4, _0800BC28 @ =0x44444444
	str r4, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	movs r4, #0
	str r4, [sp, #0x10]
	bl sub_0800B1AC
	b _0800BCDA
	.align 2, 0
_0800BC28: .4byte 0x44444444
_0800BC2C:
	ldr r3, [r7, #0x38]
	mov ip, r3
	cmp r3, #0
	bne _0800BC88
	mov r0, r8
	lsls r6, r0, #1
	adds r0, r6, #6
	adds r0, r7, r0
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r1, [r1]
	ldr r2, [r7, #0x34]
	mov sl, r2
	mov r3, r8
	lsls r2, r3, #2
	add r2, sl
	ldr r2, [r2]
	adds r3, r7, #0
	adds r3, #0x24
	ldrb r3, [r3]
	adds r3, #2
	adds r3, r3, r4
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r4, r7, #0
	adds r4, #0x25
	ldrb r4, [r4]
	adds r5, #1
	adds r4, r4, r5
	adds r4, r4, r6
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	ldr r4, _0800BC84 @ =0x44444444
	str r4, [sp, #4]
	mov r4, sb
	str r4, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	mov r5, sb
	str r5, [sp, #0x10]
	bl sub_0800B1AC
	b _0800BCDA
	.align 2, 0
_0800BC84: .4byte 0x44444444
_0800BC88:
	mov r0, r8
	lsls r6, r0, #1
	adds r0, r6, #6
	adds r0, r7, r0
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r1, [r1]
	ldr r2, [r7, #0x34]
	mov sl, r2
	mov r3, r8
	lsls r2, r3, #2
	add r2, sl
	ldr r2, [r2]
	adds r3, r7, #0
	adds r3, #0x24
	ldrb r3, [r3]
	adds r3, #2
	adds r3, r3, r4
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r4, r7, #0
	adds r4, #0x25
	ldrb r4, [r4]
	adds r5, #1
	adds r4, r4, r5
	adds r4, r4, r6
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	ldr r4, _0800BD0C @ =0x44444444
	str r4, [sp, #4]
	mov r5, ip
	adds r4, r6, r5
	ldrb r4, [r4]
	str r4, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	mov r4, sb
	str r4, [sp, #0x10]
	bl sub_0800B1AC
_0800BCDA:
	adds r0, r6, r7
	ldrb r1, [r0, #6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800BD10 @ =gUnk_03005180
	adds r6, r0, r1
	ldrb r0, [r6]
	cmp r0, #2
	bne _0800BCF2
	movs r0, #3
	strb r0, [r6]
_0800BCF2:
	adds r0, r7, #0
	adds r0, #0x22
	ldrb r0, [r0]
	subs r0, #1
	cmp r8, r0
	blo _0800BD18
	movs r0, #0xc
	strh r0, [r7]
	ldr r0, _0800BD14 @ =gUnk_030058D0
	movs r5, #0
	ldrsh r0, [r0, r5]
	b _0800C2B0
	.align 2, 0
_0800BD0C: .4byte 0x44444444
_0800BD10: .4byte gUnk_03005180
_0800BD14: .4byte gUnk_030058D0
_0800BD18:
	mov r0, r8
	adds r0, #5
	b _0800C2A8
_0800BD1E:
	ldrh r1, [r7, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800BD3E
	ldrb r1, [r7, #4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800BD90 @ =gUnk_03005180
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800BD3E
	movs r0, #2
	strb r0, [r1]
_0800BD3E:
	movs r2, #0
	adds r0, r7, #0
	adds r0, #0x22
	adds r6, r0, #0
	adds r3, r7, #0
	adds r3, #0x28
	ldrb r0, [r6]
	cmp r2, r0
	bhs _0800BD78
	movs r5, #0xff
	ldr r4, _0800BD90 @ =gUnk_03005180
_0800BD54:
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	adds r1, r5, #0
	ands r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800BD70
	movs r0, #2
	strb r0, [r1]
_0800BD70:
	adds r2, #1
	ldrb r1, [r6]
	cmp r2, r1
	blo _0800BD54
_0800BD78:
	ldrh r1, [r7, #0x2c]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BD94
	ldr r0, [r7, #0x44]
	ldrb r1, [r3]
	movs r2, #0
	movs r3, #1
	bl sub_08009F50
	b _0800BDA0
	.align 2, 0
_0800BD90: .4byte gUnk_03005180
_0800BD94:
	ldr r0, [r7, #0x44]
	ldrb r1, [r3]
	movs r2, #1
	movs r3, #0
	bl sub_08009F50
_0800BDA0:
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	b _0800BE60
_0800BDA8:
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	adds r2, r0, #1
	ldrh r1, [r7, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800BDBC
	adds r2, #2
_0800BDBC:
	ldr r0, [r7, #0x44]
	adds r1, r7, #0
	adds r1, #0x24
	ldrb r1, [r1]
	adds r3, r7, #0
	adds r3, #0x29
	lsls r1, r1, #3
	ldrb r3, [r3]
	adds r1, r1, r3
	lsls r2, r2, #3
	adds r3, r7, #0
	adds r3, #0x21
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #4
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_0800A678
	ldrh r1, [r7, #0x2c]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BE20
	ldr r0, [r7, #0x44]
	bl sub_0800A7A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0800BE32
	ldr r0, _0800BE1C @ =gUnk_0300588C
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800BE32
	ldr r0, [r7, #0x44]
	adds r1, r7, #0
	adds r1, #0x28
	ldrb r1, [r1]
	movs r2, #1
	movs r3, #0
	bl sub_08009F50
	b _0800BE2C
	.align 2, 0
_0800BE1C: .4byte gUnk_0300588C
_0800BE20:
	ldr r0, _0800BE50 @ =gUnk_0300588C
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800BE32
_0800BE2C:
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
_0800BE32:
	ldr r0, [r7, #0x44]
	bl sub_08009FF8
	ldr r0, [r7, #0x44]
	bl sub_0800A778
	ldrh r1, [r7, #0x2c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800BE54
	ldr r1, _0800BE50 @ =gUnk_0300588C
	movs r0, #0
	strb r0, [r1]
	b _0800C2AA
	.align 2, 0
_0800BE50: .4byte gUnk_0300588C
_0800BE54:
	ldr r0, _0800BE68 @ =gUnk_03005920
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BE70
_0800BE60:
	ldr r1, _0800BE6C @ =gUnk_0300588C
	movs r0, #0x14
	strb r0, [r1]
	b _0800C2AA
	.align 2, 0
_0800BE68: .4byte gUnk_03005920
_0800BE6C: .4byte gUnk_0300588C
_0800BE70:
	ldr r1, _0800BE84 @ =gUnk_0300588C
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0800BE7E
	b _0800C2AA
_0800BE7E:
	subs r0, r2, #1
	strb r0, [r1]
	b _0800C2AA
	.align 2, 0
_0800BE84: .4byte gUnk_0300588C
_0800BE88:
	ldr r0, _0800BEDC @ =gUnk_03005944
	ldrh r1, [r0]
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0800BEE4
	adds r0, r7, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	lsls r1, r1, #0x18
	adds r4, r0, #0
	cmp r1, #0
	bge _0800BECE
	ldr r0, _0800BEE0 @ =gUnk_03005920
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800BECC
	adds r0, r7, #0
	adds r0, #0x22
	ldrb r0, [r0]
	subs r0, #1
_0800BECC:
	strb r0, [r4]
_0800BECE:
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r2, r0
	bne _0800BED8
	b _0800C0F6
_0800BED8:
	b _0800BF38
	.align 2, 0
_0800BEDC: .4byte gUnk_03005944
_0800BEE0: .4byte gUnk_03005920
_0800BEE4:
	movs r2, #0x80
	mov sb, r2
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0800BF42
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r0, r7, #0
	adds r0, #0x22
	ldrb r0, [r0]
	subs r3, r0, #1
	adds r4, r1, #0
	cmp r2, r3
	ble _0800BF2E
	ldr r0, _0800BF28 @ =gUnk_03005920
	ldrh r1, [r0]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800BF2C
	strb r5, [r4]
	b _0800BF2E
	.align 2, 0
_0800BF28: .4byte gUnk_03005920
_0800BF2C:
	strb r3, [r4]
_0800BF2E:
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r6, r0
	bne _0800BF38
	b _0800C0F6
_0800BF38:
	movs r0, #0x64
	movs r1, #0
	bl sub_080147B8
	b _0800C0F6
_0800BF42:
	ldr r0, _0800BFB0 @ =gUnk_03005920
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800BF52
	b _0800C0D0
_0800BF52:
	ldrh r3, [r7, #0x2c]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	bne _0800BF5E
	b _0800C088
_0800BF5E:
	ldr r2, [r7, #0x3c]
	cmp r2, #0
	bne _0800BFD0
	ldr r0, [r7, #0x44]
	adds r1, r7, #0
	adds r1, #0x28
	ldrb r1, [r1]
	movs r2, #2
	movs r3, #1
	bl sub_08009F50
	ldrh r1, [r7, #0x2c]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800BFB4
	ldr r1, [r7, #0x40]
	cmp r1, #0
	beq _0800BFB4
	adds r4, r7, #0
	adds r4, #0x21
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r6, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #0
	movs r2, #0x14
	movs r3, #0
	bl sub_080147DC
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, [r7, #0x40]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0800C046
	.align 2, 0
_0800BFB0: .4byte gUnk_03005920
_0800BFB4:
	str r6, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x65
	movs r1, #0
	movs r2, #0x14
	movs r3, #0
	bl sub_080147DC
	movs r0, #0x65
	strh r0, [r7, #0x2a]
	adds r4, r7, #0
	adds r4, #0x21
	b _0800C048
_0800BFD0:
	adds r0, r7, #0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #1
	mov r8, r1
	adds r1, r1, r2
	ldrh r5, [r1]
	adds r4, r0, #0
	cmp r5, #2
	bne _0800C050
	ldr r0, [r7, #0x44]
	adds r1, r7, #0
	adds r1, #0x28
	ldrb r1, [r1]
	movs r2, #2
	movs r3, #1
	bl sub_08009F50
	ldrh r1, [r7, #0x2c]
	mov r0, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0800C034
	ldr r1, [r7, #0x40]
	cmp r1, #0
	bne _0800C00E
	str r6, [sp]
	b _0800C036
_0800C00E:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r6, [sp]
	str r5, [sp, #4]
	movs r1, #0
	movs r2, #0x14
	movs r3, #0
	bl sub_080147DC
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, [r7, #0x40]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0800C046
_0800C034:
	str r0, [sp]
_0800C036:
	str r5, [sp, #4]
	movs r0, #0x65
	movs r1, #0
	movs r2, #0x14
	movs r3, #0
	bl sub_080147DC
	movs r0, #0x65
_0800C046:
	strh r0, [r7, #0x2a]
_0800C048:
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	b _0800C0F6
_0800C050:
	mov r0, sb
	ands r0, r3
	cmp r0, #0
	beq _0800C076
	ldr r0, [r7, #0x40]
	cmp r0, #0
	beq _0800C076
	add r0, r8
	ldrh r0, [r0]
	movs r1, #0
	bl sub_080147B8
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, [r7, #0x40]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0800C080
_0800C076:
	movs r0, #0x65
	movs r1, #0
	bl sub_080147B8
	movs r0, #0x65
_0800C080:
	strh r0, [r7, #0x2a]
	movs r0, #0x17
	strh r0, [r7]
	b _0800C0F6
_0800C088:
	mov r0, sb
	ands r0, r3
	cmp r0, #0
	beq _0800C0BA
	ldr r1, [r7, #0x40]
	cmp r1, #0
	beq _0800C0BA
	adds r4, r7, #0
	adds r4, #0x21
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0
	bl sub_080147B8
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, [r7, #0x40]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x2a]
	b _0800C0CA
_0800C0BA:
	movs r0, #0x65
	movs r1, #0
	bl sub_080147B8
	movs r0, #0x65
	strh r0, [r7, #0x2a]
	adds r4, r7, #0
	adds r4, #0x21
_0800C0CA:
	movs r0, #0x18
	strh r0, [r7]
	b _0800C0F6
_0800C0D0:
	movs r0, #2
	ands r0, r1
	adds r4, r7, #0
	adds r4, #0x21
	cmp r0, #0
	beq _0800C0F6
	ldrh r1, [r7, #0x2c]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800C0F6
	movs r0, #0x66
	movs r1, #0
	bl sub_080147B8
	movs r0, #0xff
	strb r0, [r4]
	movs r0, #0x18
	b _0800C2A8
_0800C0F6:
	ldrh r1, [r7, #0x2c]
	movs r0, #0x10
	ands r0, r1
	adds r3, r7, #0
	adds r3, #0x24
	str r3, [sp, #0x28]
	movs r5, #0x25
	adds r5, r5, r7
	mov sl, r5
	adds r1, r7, #0
	adds r1, #0x29
	str r1, [sp, #0x34]
	cmp r0, #0
	beq _0800C176
	movs r2, #0
	mov r8, r2
	adds r0, r7, #0
	adds r0, #0x22
	adds r6, r0, #0
	ldrb r3, [r6]
	cmp r8, r3
	bhs _0800C176
	adds r5, r7, #6
	mov sb, r2
_0800C126:
	ldr r1, [r7, #0x38]
	cmp r1, #0
	bne _0800C148
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r8, r0
	bne _0800C13E
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800B31C
	b _0800C166
_0800C13E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800B31C
	b _0800C166
_0800C148:
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r8, r0
	bne _0800C15E
	mov r2, sb
	adds r0, r2, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_0800B31C
	b _0800C166
_0800C15E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800B31C
_0800C166:
	adds r5, #2
	movs r3, #2
	add sb, r3
	movs r0, #1
	add r8, r0
	ldrb r1, [r6]
	cmp r8, r1
	blo _0800C126
_0800C176:
	mov r2, sl
	ldrb r0, [r2]
	adds r2, r0, #1
	ldrh r1, [r7, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800C188
	adds r2, #2
_0800C188:
	ldr r0, [r7, #0x44]
	ldr r3, [sp, #0x28]
	ldrb r1, [r3]
	lsls r1, r1, #3
	ldr r5, [sp, #0x34]
	ldrb r5, [r5]
	adds r1, r1, r5
	lsls r2, r2, #3
	movs r3, #0
	ldrsb r3, [r4, r3]
	lsls r3, r3, #4
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_0800A678
	b _0800C1BE
_0800C1AA:
	ldr r0, [r7, #0x44]
	bl sub_0800A7A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0800C1BE
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
_0800C1BE:
	ldr r0, [r7, #0x44]
	bl sub_08009FF8
	ldr r0, [r7, #0x44]
	bl sub_0800A778
	b _0800C2AA
_0800C1CC:
	ldr r0, [r7, #0x44]
	bl sub_08009FF8
	ldr r0, [r7, #0x44]
	bl sub_0800A778
	ldrh r1, [r7, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C1FE
	ldrh r0, [r7, #0x2a]
	bl sub_08014970
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080139E8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C2AA
	ldrh r0, [r7]
	adds r0, #1
	b _0800C2A8
_0800C1FE:
	ldrh r0, [r7]
	adds r0, #1
	b _0800C2A8
_0800C204:
	ldrh r1, [r7, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800C214
	adds r0, r7, #4
	bl sub_0800B4E4
_0800C214:
	movs r5, #0
	adds r0, r7, #0
	adds r0, #0x22
	adds r6, r0, #0
	adds r0, #2
	str r0, [sp, #0x28]
	movs r1, #0x25
	adds r1, r1, r7
	mov sl, r1
	movs r2, #0x20
	adds r2, r2, r7
	mov sb, r2
	adds r3, r7, #2
	mov r8, r3
	ldrb r4, [r6]
	cmp r5, r4
	bhs _0800C248
	adds r4, r7, #6
_0800C238:
	adds r0, r4, #0
	bl sub_0800B4E4
	adds r4, #2
	adds r5, #1
	ldrb r0, [r6]
	cmp r5, r0
	blo _0800C238
_0800C248:
	mov r0, r8
	bl sub_0801BB28
	adds r4, r0, #0
	subs r4, #2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	bl sub_0801BB3C
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sb
	ldrb r3, [r1]
	ldr r2, [sp, #0x28]
	ldrb r1, [r2]
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r5, sl
	ldrb r2, [r5]
	adds r2, #1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	adds r0, r3, #0
	adds r3, r4, #0
	bl sub_0801BBB8
	ldrh r0, [r7]
	adds r0, #1
	b _0800C2A8
_0800C28E:
	adds r0, r7, #2
	bl sub_0801BA7C
	ldrh r0, [r7]
	adds r0, #1
	b _0800C2A8
_0800C29A:
	adds r0, r7, #2
	bl sub_0801BAD8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0800C2AA
_0800C2A8:
	strh r0, [r7]
_0800C2AA:
	ldr r0, _0800C2C0 @ =gUnk_030058D0
	movs r1, #0
	ldrsh r0, [r0, r1]
_0800C2B0:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C2C0: .4byte gUnk_030058D0

	thumb_func_start sub_0800C2C4
sub_0800C2C4: @ 0x0800C2C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0800C388 @ =gUnk_03005554
	ldr r1, [r2]
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r2]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r5, #0
	mov r8, r2
	mov r7, r8
	movs r6, #0
	movs r0, #0xd0
	lsls r0, r0, #2
	mov ip, r0
_0800C2E6:
	ldr r0, [r7]
	lsls r2, r5, #2
	adds r1, r0, #0
	adds r1, #0x3c
	adds r1, r1, r2
	mov r3, ip
	adds r2, r0, r3
	str r2, [r1]
	adds r0, #0xb8
	adds r0, r0, r5
	strb r6, [r0]
	adds r3, #0x28
	adds r4, r5, #1
	ldr r0, [r7]
	lsls r2, r4, #2
	adds r1, r0, #0
	adds r1, #0x3c
	adds r1, r1, r2
	adds r3, r0, r3
	str r3, [r1]
	adds r0, #0xb8
	adds r0, r0, r4
	strb r6, [r0]
	mov r3, ip
	adds r3, #0x50
	adds r4, r5, #2
	ldr r0, [r7]
	lsls r2, r4, #2
	adds r1, r0, #0
	adds r1, #0x3c
	adds r1, r1, r2
	adds r3, r0, r3
	str r3, [r1]
	adds r0, #0xb8
	adds r0, r0, r4
	strb r6, [r0]
	mov r3, ip
	adds r3, #0x78
	adds r4, r5, #3
	ldr r0, [r7]
	lsls r2, r4, #2
	adds r1, r0, #0
	adds r1, #0x3c
	adds r1, r1, r2
	adds r3, r0, r3
	str r3, [r1]
	adds r0, #0xb8
	adds r0, r0, r4
	strb r6, [r0]
	mov r3, ip
	adds r3, #0xa0
	adds r4, r5, #4
	ldr r0, [r7]
	lsls r2, r4, #2
	adds r1, r0, #0
	adds r1, #0x3c
	adds r1, r1, r2
	adds r3, r0, r3
	str r3, [r1]
	adds r0, #0xb8
	adds r0, r0, r4
	strb r6, [r0]
	movs r0, #0xc8
	add ip, r0
	adds r5, #5
	cmp r5, #0x1d
	bls _0800C2E6
	movs r0, #0
	mov r2, r8
	ldr r1, [r2]
	adds r2, r1, #0
	adds r2, #0xb4
	str r0, [r2]
	adds r1, #0xd6
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C388: .4byte gUnk_03005554

	thumb_func_start sub_0800C38C
sub_0800C38C: @ 0x0800C38C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	movs r6, #0
	ldr r0, _0800C4D0 @ =gUnk_03005554
	ldr r3, [r0]
	ldrh r1, [r3, #2]
	mov r8, r0
	cmp r1, #0x1e
	beq _0800C3AA
	b _0800C554
_0800C3AA:
	ldrh r0, [r3, #4]
	adds r4, r0, #1
	cmp r4, #0x1e
	bne _0800C3B4
	movs r4, #0
_0800C3B4:
	movs r5, #0
	mov sl, r5
	movs r0, #1
	mov sb, r0
	cmp r4, #0x1d
	bhi _0800C47C
	mov r7, r8
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r2, r0, #3
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r0, r0, r2
	mov ip, r0
	subs r1, r1, r4
	movs r0, #3
	ands r1, r0
	cmp r4, #0x1e
	bge _0800C410
	cmp r1, #0
	beq _0800C42A
	cmp r1, #1
	ble _0800C410
	cmp r1, #2
	ble _0800C3F8
	mov r1, ip
	adds r0, r3, r1
	str r0, [r3, #0x3c]
	movs r5, #1
	movs r3, #0xda
	lsls r3, r3, #2
	adds r3, r3, r2
	mov ip, r3
	adds r4, #1
_0800C3F8:
	mov r1, r8
	ldr r0, [r1]
	lsls r2, r5, #2
	adds r1, r0, #0
	adds r1, #0x3c
	adds r1, r1, r2
	add r0, ip
	str r0, [r1]
	adds r5, #1
	movs r2, #0x28
	add ip, r2
	adds r4, #1
_0800C410:
	ldr r0, [r7]
	lsls r2, r5, #2
	adds r1, r0, #0
	adds r1, #0x3c
	adds r1, r1, r2
	add r0, ip
	str r0, [r1]
	adds r5, #1
	movs r3, #0x28
	add ip, r3
	adds r4, #1
	cmp r4, #0x1d
	bhi _0800C47C
_0800C42A:
	ldr r1, [r7]
	lsls r2, r5, #2
	adds r0, r1, #0
	adds r0, #0x3c
	adds r0, r0, r2
	add r1, ip
	str r1, [r0]
	adds r2, r5, #1
	mov r3, ip
	adds r3, #0x28
	ldr r1, [r7]
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r0, #0x3c
	adds r0, r0, r2
	adds r1, r1, r3
	str r1, [r0]
	adds r2, r5, #2
	adds r3, #0x28
	ldr r1, [r7]
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r0, #0x3c
	adds r0, r0, r2
	adds r1, r1, r3
	str r1, [r0]
	adds r2, r5, #3
	adds r3, #0x28
	ldr r1, [r7]
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r0, #0x3c
	adds r0, r0, r2
	adds r1, r1, r3
	str r1, [r0]
	adds r5, #4
	movs r0, #0xa0
	add ip, r0
	adds r4, #4
	cmp r4, #0x1d
	bls _0800C42A
_0800C47C:
	mov r1, r8
	ldr r0, [r1]
	ldrh r0, [r0, #4]
	cmp r0, #0x1d
	beq _0800C4AC
	movs r4, #0
	cmp r4, r0
	bhi _0800C4AC
	mov r7, r8
	movs r3, #0xd0
	lsls r3, r3, #2
_0800C492:
	ldr r2, [r7]
	lsls r1, r5, #2
	adds r0, r2, #0
	adds r0, #0x3c
	adds r0, r0, r1
	adds r1, r2, r3
	str r1, [r0]
	adds r5, #1
	adds r3, #0x28
	adds r4, #1
	ldrh r2, [r2, #4]
	cmp r4, r2
	bls _0800C492
_0800C4AC:
	mov r3, r8
	ldr r2, [r3]
	ldrh r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd0
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r2, r0
	ldr r4, [sp]
	movs r0, #0xf0
	lsls r0, r0, #4
	mov ip, r0
	ldr r7, _0800C4D4 @ =gUnk_03005580
	ldr r5, _0800C4D8 @ =0x00007087
	b _0800C4E6
	.align 2, 0
_0800C4D0: .4byte gUnk_03005554
_0800C4D4: .4byte gUnk_03005580
_0800C4D8: .4byte 0x00007087
_0800C4DC:
	adds r4, #2
	lsls r1, r6, #1
	mov sl, r1
	adds r3, r6, #1
	mov sb, r3
_0800C4E6:
	ldrh r3, [r4]
	adds r0, r3, #0
	ldr r1, _0800C520 @ =0x0000F0FF
	ands r0, r1
	ldr r1, _0800C524 @ =0x0000C083
	cmp r0, r1
	bne _0800C528
	mov r0, ip
	ands r3, r0
	lsrs r1, r3, #8
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r3, [r0]
	cmp r3, #0
	beq _0800C4DC
	adds r1, r0, #2
	lsls r0, r6, #1
	adds r0, r0, r2
_0800C50E:
	strh r3, [r0]
	adds r0, #2
	adds r6, #1
	ldrh r3, [r1]
	adds r1, #2
	cmp r3, #0
	bne _0800C50E
	b _0800C4DC
	.align 2, 0
_0800C520: .4byte 0x0000F0FF
_0800C524: .4byte 0x0000C083
_0800C528:
	cmp r0, r5
	beq _0800C4DC
	mov r1, sl
	adds r0, r1, r2
	strh r3, [r0]
	mov r6, sb
	cmp r3, #0
	bne _0800C4DC
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bne _0800C54C
	strh r3, [r1, #4]
_0800C54C:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xb4
	b _0800C602
_0800C554:
	ldrh r0, [r3, #2]
	lsls r1, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #3
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r3, r0
	adds r0, r3, #0
	adds r0, #0x3c
	adds r0, r0, r1
	str r2, [r0]
	ldr r3, _0800C584 @ =0x0000C083
	mov ip, r3
	ldr r5, [sp]
	adds r4, r2, #0
	movs r0, #0xf0
	lsls r0, r0, #4
	mov sl, r0
	ldr r1, _0800C588 @ =gUnk_03005580
	mov sb, r1
	ldr r7, _0800C58C @ =0x00007087
	b _0800C592
	.align 2, 0
_0800C584: .4byte 0x0000C083
_0800C588: .4byte gUnk_03005580
_0800C58C: .4byte 0x00007087
_0800C590:
	adds r5, #2
_0800C592:
	ldrh r3, [r5]
	adds r0, r3, #0
	ldr r1, _0800C5CC @ =0x0000F0FF
	ands r0, r1
	cmp r0, ip
	bne _0800C5D0
	mov r0, sl
	ands r3, r0
	lsrs r1, r3, #8
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sb
	ldrh r3, [r0]
	cmp r3, #0
	beq _0800C590
	adds r1, r0, #2
	lsls r0, r6, #1
	adds r0, r0, r2
_0800C5B8:
	strh r3, [r0]
	adds r0, #2
	adds r4, #2
	adds r6, #1
	ldrh r3, [r1]
	adds r1, #2
	cmp r3, #0
	bne _0800C5B8
	b _0800C590
	.align 2, 0
_0800C5CC: .4byte 0x0000F0FF
_0800C5D0:
	cmp r0, r7
	beq _0800C590
	strh r3, [r4]
	adds r4, #2
	adds r6, #1
	cmp r3, #0
	bne _0800C590
	mov r2, r8
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bne _0800C5F6
	movs r0, #0
	strh r0, [r1, #4]
_0800C5F6:
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	lsls r1, r1, #2
	adds r0, #0x3c
	adds r0, r0, r1
_0800C602:
	str r3, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C614
sub_0800C614: @ 0x0800C614
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, _0800C63C @ =gUnk_03005554
	ldr r6, [r0]
	ldrb r0, [r6]
	cmp r0, #4
	bls _0800C630
	b _0800CA10
_0800C630:
	lsls r0, r0, #2
	ldr r1, _0800C640 @ =_0800C644
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C63C: .4byte gUnk_03005554
_0800C640: .4byte _0800C644
_0800C644: @ jump table
	.4byte _0800C658 @ case 0
	.4byte _0800C81C @ case 1
	.4byte _0800C830 @ case 2
	.4byte _0800C8A4 @ case 3
	.4byte _0800C9EC @ case 4
_0800C658:
	ldr r0, _0800C6E4 @ =gUnk_03005638
	ldrb r0, [r0]
	adds r2, r0, #0
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0800C66E
	ldr r0, _0800C6E8 @ =gUnk_03006AC8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #4]
_0800C66E:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0800C67E
	ldr r0, _0800C6E8 @ =gUnk_03006AC8
	ldr r1, [r0, #4]
	movs r0, #0
	strh r0, [r1, #4]
_0800C67E:
	ldr r4, _0800C6EC @ =gUnk_03006AA4
	adds r0, r4, #0
	bl sub_0801BB00
	strb r0, [r6, #8]
	adds r0, r4, #0
	bl sub_0801BB64
	strb r0, [r6, #0xa]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0801BAAC
	adds r0, r4, #0
	bl sub_0801A3C4
	ldrb r0, [r6, #1]
	cmp r0, #2
	beq _0800C6F4
	ldr r2, _0800C6F0 @ =gUnk_03005640
	ldrb r0, [r2, #4]
	strb r0, [r6, #9]
	movs r1, #0
	movs r0, #0x3c
	adds r0, r0, r6
	mov sb, r0
	movs r0, #0xb8
	adds r0, r0, r6
	mov r8, r0
	movs r0, #0xd8
	adds r0, r0, r6
	mov sl, r0
	adds r7, r6, #0
	adds r7, #0xe
	ldrb r0, [r6, #9]
	cmp r1, r0
	bhs _0800C716
	adds r3, r2, #0
	adds r3, #0x14
	adds r2, r6, #0
	adds r2, #0x10
_0800C6D0:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r0, [r0]
	stm r2!, {r0}
	adds r1, #1
	ldrb r0, [r6, #9]
	cmp r1, r0
	blo _0800C6D0
	b _0800C716
	.align 2, 0
_0800C6E4: .4byte gUnk_03005638
_0800C6E8: .4byte gUnk_03006AC8
_0800C6EC: .4byte gUnk_03006AA4
_0800C6F0: .4byte gUnk_03005640
_0800C6F4:
	ldr r0, _0800C724 @ =gUnk_030056C0
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6, #0x10]
	movs r0, #0x3c
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0xb8
	adds r1, r1, r6
	mov r8, r1
	movs r0, #0xd8
	adds r0, r0, r6
	mov sl, r0
	adds r7, r6, #0
	adds r7, #0xe
_0800C716:
	ldrb r5, [r6, #1]
	cmp r5, #0
	bne _0800C728
	movs r0, #1
	strb r0, [r6, #0xb]
	b _0800C73E
	.align 2, 0
_0800C724: .4byte gUnk_030056C0
_0800C728:
	cmp r5, #1
	bne _0800C76C
	movs r5, #0
	movs r0, #3
	strb r0, [r6, #0xb]
	ldr r0, _0800C764 @ =gUnk_030058D0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r6, #0xc]
_0800C73E:
	ldr r4, _0800C768 @ =gUnk_03005640
	adds r0, r4, #0
	bl sub_08008C14
	strb r5, [r4, #2]
	strb r5, [r4, #3]
	strb r5, [r4, #5]
	strb r5, [r4, #4]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	str r5, [r4, #0x1c]
	str r5, [r4, #0x20]
	str r5, [r4, #0x24]
	str r5, [r4, #0x28]
	str r5, [r4, #0x2c]
	str r5, [r4, #0x30]
	str r5, [r4, #0x34]
	str r5, [r4, #0x38]
	b _0800C776
	.align 2, 0
_0800C764: .4byte gUnk_030058D0
_0800C768: .4byte gUnk_03005640
_0800C76C:
	cmp r5, #2
	bne _0800C776
	ldr r1, _0800C7DC @ =gUnk_030056C0
	movs r0, #0
	strb r0, [r1, #9]
_0800C776:
	movs r0, #0
	bl sub_08011104
	ldr r1, _0800C7E0 @ =0xFFFEFFF0
	movs r0, #0
	movs r2, #0
	movs r3, #2
	bl sub_0801015C
	movs r0, #0
	movs r1, #1
	bl sub_08011144
	movs r0, #0
	movs r1, #1
	bl sub_08011174
	movs r1, #0
	movs r0, #0
	strh r0, [r6, #0xe]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r2, r6, r0
	movs r0, #1
	strb r0, [r2]
	movs r0, #0xd
	strb r0, [r2, #1]
	strb r1, [r2, #6]
	movs r0, #2
	strb r0, [r2, #7]
	strb r1, [r2, #0x11]
	strb r1, [r2, #0x12]
	ldrh r0, [r6, #2]
	subs r0, #2
	strh r0, [r2, #2]
	ldrh r0, [r6, #2]
	subs r0, #3
	strh r0, [r2, #4]
	strb r1, [r2, #0xd]
	movs r0, #0x6a
	strb r0, [r2, #0xc]
	mov r1, sb
	str r1, [r2, #0x14]
	mov r0, r8
	str r0, [r2, #0x18]
	ldrh r0, [r6, #2]
	cmp r0, #3
	bhi _0800C7E4
	strb r0, [r2, #0xa]
	movs r0, #0xc0
	b _0800C7EA
	.align 2, 0
_0800C7DC: .4byte gUnk_030056C0
_0800C7E0: .4byte 0xFFFEFFF0
_0800C7E4:
	movs r0, #3
	strb r0, [r2, #0xa]
	movs r0, #0xc4
_0800C7EA:
	strh r0, [r2, #8]
	movs r1, #0
	movs r0, #0xdc
	strb r0, [r2, #0xe]
	movs r0, #8
	strb r0, [r2, #0xf]
	mov r0, sl
	str r0, [r2, #0x20]
	ldr r0, _0800C818 @ =0x06010000
	str r0, [r2, #0x1c]
	str r1, [r2, #0x24]
	strb r1, [r2, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r7, #0
	bl sub_080072F8
	adds r0, r7, #0
	movs r1, #0
	bl sub_08008E34
	b _0800C9DE
	.align 2, 0
_0800C818: .4byte 0x06010000
_0800C81C:
	adds r0, r6, #0
	adds r0, #0xe
	bl sub_08008D18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	beq _0800C82E
	b _0800CA10
_0800C82E:
	b _0800C9DE
_0800C830:
	adds r4, r6, #0
	adds r4, #0xe
	adds r0, r4, #0
	bl sub_08008D30
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, r4, #0
	cmp r2, #1
	bne _0800C850
	ldr r0, _0800C86C @ =gUnk_03005944
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800C864
_0800C850:
	ldrh r0, [r6, #2]
	subs r0, #2
	cmp r2, r0
	bne _0800C870
	ldr r0, _0800C86C @ =gUnk_03005944
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C87A
_0800C864:
	adds r0, r7, #0
	bl sub_080079E0
	b _0800C87A
	.align 2, 0
_0800C86C: .4byte gUnk_03005944
_0800C870:
	cmp r2, #1
	beq _0800C87A
	adds r0, r7, #0
	bl sub_080079E0
_0800C87A:
	ldr r0, _0800C8A0 @ =gUnk_03005920
	ldrh r1, [r0]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	bne _0800C888
	b _0800CA10
_0800C888:
	adds r0, r7, #0
	bl sub_08008D18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	beq _0800C898
	b _0800CA10
_0800C898:
	adds r0, r7, #0
	bl sub_08008C14
	b _0800C9DE
	.align 2, 0
_0800C8A0: .4byte gUnk_03005920
_0800C8A4:
	adds r0, r6, #0
	adds r0, #0xe
	bl sub_08008D18
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800C8B4
	b _0800CA10
_0800C8B4:
	movs r0, #0
	bl sub_08011104
	ldr r0, _0800C938 @ =gUnk_03005638
	ldrb r0, [r0]
	adds r2, r0, #0
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0800C8D0
	ldr r0, _0800C93C @ =gUnk_03006AC8
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #4]
_0800C8D0:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0800C8E0
	ldr r0, _0800C93C @ =gUnk_03006AC8
	ldr r1, [r0, #4]
	movs r0, #1
	strh r0, [r1, #4]
_0800C8E0:
	ldr r4, _0800C940 @ =gUnk_03006AA4
	ldrb r1, [r6, #8]
	adds r0, r4, #0
	bl sub_0801BAAC
	adds r0, r4, #0
	bl sub_0801A3C4
	ldrb r0, [r6, #1]
	cmp r0, #2
	beq _0800C948
	movs r3, #0
	ldrb r1, [r6, #9]
	cmp r3, r1
	bhs _0800C950
	ldr r2, _0800C944 @ =gUnk_03005640
	adds r5, r2, #0
	adds r5, #0x14
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x10
_0800C90A:
	ldm r7!, {r1}
	ldrb r0, [r2, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	str r1, [r0]
	ldrb r0, [r2, #4]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r4, [r0]
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r1, [r2, #4]
	adds r0, r0, r1
	strb r4, [r0]
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	adds r3, #1
	ldrb r0, [r6, #9]
	cmp r3, r0
	blo _0800C90A
	b _0800C950
	.align 2, 0
_0800C938: .4byte gUnk_03005638
_0800C93C: .4byte gUnk_03006AC8
_0800C940: .4byte gUnk_03006AA4
_0800C944: .4byte gUnk_03005640
_0800C948:
	ldr r1, [r6, #0x10]
	movs r0, #0
	bl sub_0800B730
_0800C950:
	ldr r0, _0800C988 @ =gUnk_030058D0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strb r0, [r6, #0xc]
	ldrb r2, [r6, #1]
	cmp r2, #0
	bne _0800C998
	ldr r0, _0800C98C @ =gUnk_03005554
	ldr r3, [r0]
	adds r3, #0xd8
	ldr r0, _0800C990 @ =0x06010000
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0xd
	str r0, [sp, #8]
	ldr r0, _0800C994 @ =0x44444444
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	movs r0, #0
	b _0800C9BE
	.align 2, 0
_0800C988: .4byte gUnk_030058D0
_0800C98C: .4byte gUnk_03005554
_0800C990: .4byte 0x06010000
_0800C994: .4byte 0x44444444
_0800C998:
	cmp r2, #1
	bne _0800C9D4
	ldr r0, _0800C9C8 @ =gUnk_03005554
	ldr r3, [r0]
	adds r3, #0xd8
	ldr r0, _0800C9CC @ =0x06010000
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0xd
	str r0, [sp, #8]
	ldr r0, _0800C9D0 @ =0x44444444
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	str r2, [sp, #0x1c]
_0800C9BE:
	movs r1, #2
	movs r2, #8
	bl sub_0800B618
	b _0800C9DE
	.align 2, 0
_0800C9C8: .4byte gUnk_03005554
_0800C9CC: .4byte 0x06010000
_0800C9D0: .4byte 0x44444444
_0800C9D4:
	cmp r2, #2
	bne _0800C9DE
	movs r1, #1
	ldr r0, _0800C9E8 @ =gUnk_030056C0
	strb r1, [r0, #9]
_0800C9DE:
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _0800CA10
	.align 2, 0
_0800C9E8: .4byte gUnk_030056C0
_0800C9EC:
	ldr r0, _0800CA24 @ =gUnk_03005640
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _0800C9FA
	ldrb r0, [r6, #1]
	cmp r0, #2
	bne _0800CA10
_0800C9FA:
	ldrb r0, [r6, #0xa]
	cmp r0, #0xff
	beq _0800CA08
	ldr r0, _0800CA28 @ =gUnk_03006AA4
	ldrb r1, [r6, #0xa]
	bl sub_080199C0
_0800CA08:
	movs r0, #0
	strb r0, [r6]
	movs r1, #0
	str r1, [sp, #0x20]
_0800CA10:
	ldr r0, [sp, #0x20]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800CA24: .4byte gUnk_03005640
_0800CA28: .4byte gUnk_03006AA4

	thumb_func_start sub_0800CA2C
sub_0800CA2C: @ 0x0800CA2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	bl sub_0800ED78
	bl sub_0800CB94
	movs r5, #0x13
	ldr r0, _0800CB8C @ =gUnk_03005180
	movs r1, #0x85
	lsls r1, r1, #2
	adds r4, r0, r1
	add r6, sp, #8
	movs r2, #2
	add r2, sp
	mov r8, r2
	add r0, sp, #4
	mov sb, r0
	movs r1, #6
	add r1, sp
	mov sl, r1
_0800CA5C:
	ldrb r0, [r4]
	cmp r0, #2
	bne _0800CA68
	adds r0, r4, #0
	bl sub_0800CD74
_0800CA68:
	subs r4, #0x1c
	lsls r0, r5, #0x10
	ldr r2, _0800CB90 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _0800CA5C
	ldr r4, _0800CB8C @ =gUnk_03005180
	movs r0, #0xec
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r5, [r0]
	movs r2, #0xee
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r7, [r0]
	movs r0, #0
	mov r1, sp
	adds r2, r6, #0
	bl sub_08004684
	movs r0, #1
	mov r1, r8
	adds r2, r6, #0
	bl sub_08004684
	movs r0, #2
	mov r1, sb
	adds r2, r6, #0
	bl sub_08004684
	movs r0, #3
	mov r1, sl
	adds r2, r6, #0
	bl sub_08004684
	movs r1, #0xff
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0800CAE8
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800CAE8
	movs r1, #0xef
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	mov r1, sp
	ldrh r1, [r1]
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08006BA4
_0800CAE8:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0800CB1A
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800CB1A
	ldr r0, _0800CB8C @ =gUnk_03005180
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	ldrh r1, [r1, #2]
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08006BA4
_0800CB1A:
	movs r1, #0xff
	lsls r1, r1, #0x10
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0800CB4C
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0800CB4C
	ldr r0, _0800CB8C @ =gUnk_03005180
	movs r1, #0xf1
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	ldrh r1, [r1, #4]
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08006BA4
_0800CB4C:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r5, r0
	cmp r5, #0
	beq _0800CB7A
	ands r7, r0
	cmp r7, #0
	beq _0800CB7A
	ldr r0, _0800CB8C @ =gUnk_03005180
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	ldrh r1, [r1, #6]
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08006BA4
_0800CB7A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB8C: .4byte gUnk_03005180
_0800CB90: .4byte 0xFFFF0000

	thumb_func_start sub_0800CB94
sub_0800CB94: @ 0x0800CB94
	push {r4, lr}
	ldr r4, _0800CBA8 @ =gUnk_03005640
	ldrb r0, [r4, #2]
	cmp r0, #4
	bhi _0800CC20
	lsls r0, r0, #2
	ldr r1, _0800CBAC @ =_0800CBB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CBA8: .4byte gUnk_03005640
_0800CBAC: .4byte _0800CBB0
_0800CBB0: @ jump table
	.4byte _0800CC20 @ case 0
	.4byte _0800CBCA @ case 1
	.4byte _0800CBC4 @ case 2
	.4byte _0800CC20 @ case 3
	.4byte _0800CBCA @ case 4
_0800CBC4:
	bl sub_0800CEFC
	b _0800CC20
_0800CBCA:
	adds r0, r4, #0
	bl sub_08008D30
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #1
	bne _0800CBE4
	ldr r0, _0800CBFC @ =gUnk_03005944
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800CC04
_0800CBE4:
	ldrb r0, [r4, #4]
	subs r0, #2
	cmp r2, r0
	bne _0800CC00
	ldr r0, _0800CBFC @ =gUnk_03005944
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800CC0E
	b _0800CC04
	.align 2, 0
_0800CBFC: .4byte gUnk_03005944
_0800CC00:
	cmp r2, #1
	beq _0800CC0E
_0800CC04:
	adds r0, r4, #0
	bl sub_080079E0
	movs r0, #4
	strb r0, [r4, #2]
_0800CC0E:
	adds r0, r4, #0
	bl sub_08008D18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bne _0800CC20
	movs r0, #1
	strb r0, [r4, #2]
_0800CC20:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CC28
sub_0800CC28: @ 0x0800CC28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800CCD8 @ =gUnk_030053B0
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r3, _0800CCDC @ =0xFFFFFDD0
	adds r0, r2, r3
	adds r1, r1, r0
	str r1, [sp, #4]
	adds r3, r2, #0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r3, r2
	adds r2, #8
	adds r0, r3, r2
	ldr r0, [r0]
	lsrs r0, r0, #2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r0, [r0]
	mov r8, r0
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, [sp, #4]
	ldrb r6, [r0, #2]
	movs r7, #0
	movs r1, #0xfa
	lsls r1, r1, #0x18
	add r1, r8
	mov sb, r1
_0800CC80:
	lsls r0, r7, #3
	adds r5, r0, r3
	ldrb r1, [r5]
	str r0, [sp, #0x10]
	cmp r1, #0
	bne _0800CD52
	ldr r2, [sp, #4]
	ldrb r0, [r2, #7]
	mov r4, sp
	adds r4, #2
	mov r1, sp
	adds r2, r4, #0
	str r3, [sp, #0x14]
	bl sub_08004684
	movs r0, #1
	strb r0, [r5]
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800CCE4
	ldr r1, [sp, #4]
	strb r7, [r1, #0xa]
	ldrh r0, [r4]
	lsls r0, r0, #0xe
	mov r2, sb
	subs r0, r2, r0
	lsrs r0, r0, #5
	strh r0, [r5, #2]
	str r7, [sp, #0xc]
	lsls r0, r6, #0x10
	ldr r1, _0800CCE0 @ =0xFFF80000
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	mov r0, sl
	mov r1, r8
	movs r2, #0xc0
	lsls r2, r2, #2
	str r3, [sp, #0x14]
	bl sub_08006BA4
	movs r2, #1
	str r2, [sp, #8]
	b _0800CD10
	.align 2, 0
_0800CCD8: .4byte gUnk_030053B0
_0800CCDC: .4byte 0xFFFFFDD0
_0800CCE0: .4byte 0xFFF80000
_0800CCE4:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #3
	adds r0, r0, r3
	strh r7, [r0, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0xe
	mov r2, sb
	subs r0, r2, r0
	lsrs r0, r0, #5
	strh r0, [r5, #2]
	str r7, [sp, #0xc]
	lsls r0, r6, #0x10
	ldr r1, _0800CD3C @ =0xFFF80000
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	mov r0, sl
	mov r1, r8
	movs r2, #0xc0
	lsls r2, r2, #2
	str r3, [sp, #0x14]
	bl sub_08006BA4
_0800CD10:
	ldr r3, [sp, #0x14]
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bgt _0800CD44
	ldr r1, [sp, #0xc]
	lsls r0, r1, #3
	adds r0, r0, r3
	ldr r1, _0800CD40 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r0, [sp, #0x10]
	adds r3, r0, r3
	adds r0, r2, #0
	adds r0, #8
	lsls r2, r0, #1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r2, r2, r0
	strb r2, [r3, #1]
	b _0800CD64
	.align 2, 0
_0800CD3C: .4byte 0xFFF80000
_0800CD40: .4byte 0x0000FFFF
_0800CD44:
	ldr r2, [sp, #0x10]
	adds r1, r2, r3
	movs r0, #0xc
	strb r0, [r1, #1]
	movs r0, #0xc0
	lsls r0, r0, #2
	add sl, r0
_0800CD52:
	movs r1, #0xc0
	lsls r1, r1, #2
	add sb, r1
	add r8, r1
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x2d
	bls _0800CC80
_0800CD64:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CD74
sub_0800CD74: @ 0x0800CD74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0800CD90 @ =gUnk_030053B0
	mov r8, r0
	movs r2, #0
	mov sb, r2
	ldrb r7, [r5, #1]
	b _0800CD9C
	.align 2, 0
_0800CD90: .4byte gUnk_030053B0
_0800CD94:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0800CD9C
	b _0800CEE8
_0800CD9C:
	cmp r7, #7
	bls _0800CDA2
	b _0800CEE0
_0800CDA2:
	lsls r0, r7, #2
	ldr r1, _0800CDAC @ =_0800CDB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CDAC: .4byte _0800CDB0
_0800CDB0: @ jump table
	.4byte _0800CDD0 @ case 0
	.4byte _0800CDE4 @ case 1
	.4byte _0800CDE4 @ case 2
	.4byte _0800CDE4 @ case 3
	.4byte _0800CEE0 @ case 4
	.4byte _0800CEC0 @ case 5
	.4byte _0800CEC0 @ case 6
	.4byte _0800CEC0 @ case 7
_0800CDD0:
	movs r1, #0
	strb r1, [r5, #3]
	strb r1, [r5, #4]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #8]
	strb r0, [r5, #9]
	strb r1, [r5, #0x18]
	adds r0, r7, #1
	b _0800CEDC
_0800CDE4:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0800CDF0
	subs r0, #1
	strb r0, [r5, #0xd]
	b _0800CEE8
_0800CDF0:
	ldrh r1, [r5, #0x10]
	ldr r0, _0800CE34 @ =0x0000FFFF
	cmp r1, r0
	beq _0800CE14
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldrh r1, [r1]
	lsrs r0, r1, #8
	ldrb r3, [r5, #4]
	cmp r0, r3
	bne _0800CE14
	strb r1, [r5, #9]
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
_0800CE14:
	ldrb r2, [r5, #3]
	ldrb r3, [r5, #0xe]
	adds r6, r2, r3
	ldrb r1, [r5, #0xb]
	lsls r0, r1, #3
	add r0, r8
	ldrb r0, [r0, #1]
	mov ip, r2
	adds r4, r1, #0
	cmp r6, r0
	bls _0800CE38
	subs r0, r6, r0
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0800CE3A
	.align 2, 0
_0800CE34: .4byte 0x0000FFFF
_0800CE38:
	adds r6, r3, #0
_0800CE3A:
	subs r0, r7, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x10
	ldr r2, _0800CEBC @ =gUnk_03005180
	ldrb r0, [r5, #7]
	lsls r0, r0, #2
	movs r3, #0xef
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r2, #5
	ldrsb r2, [r5, r2]
	adds r1, r1, r2
	add r1, ip
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #6
	ldrsb r2, [r5, r2]
	str r2, [sp, #8]
	lsls r4, r4, #3
	add r4, r8
	mov sl, r4
	mov r4, ip
	lsls r3, r4, #1
	mov r2, sl
	ldrh r2, [r2, #2]
	adds r3, r3, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	ldrb r3, [r5, #9]
	str r3, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r6, #0
	bl sub_08003840
	ldrb r0, [r5, #0xc]
	movs r2, #0
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0xe]
	ldrb r3, [r5, #3]
	adds r1, r1, r3
	strb r1, [r5, #3]
	ldrb r0, [r5, #4]
	adds r0, #1
	strb r0, [r5, #4]
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	add r0, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0, #1]
	cmp r1, r0
	blo _0800CEB4
	adds r0, r7, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	strb r2, [r5, #3]
_0800CEB4:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _0800CEE0
	b _0800CEE8
	.align 2, 0
_0800CEBC: .4byte gUnk_03005180
_0800CEC0:
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	add r0, r8
	ldrh r1, [r0, #4]
	ldr r0, _0800CED4 @ =0x0000FFFF
	cmp r1, r0
	bne _0800CED8
	movs r0, #1
	strb r0, [r5]
	b _0800CEE0
	.align 2, 0
_0800CED4: .4byte 0x0000FFFF
_0800CED8:
	strb r1, [r5, #0xb]
	subs r0, r7, #3
_0800CEDC:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0800CEE0:
	mov r4, sb
	cmp r4, #0
	bne _0800CEE8
	b _0800CD94
_0800CEE8:
	strb r7, [r5, #1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CEFC
sub_0800CEFC: @ 0x0800CEFC
	push {r4, r5, r6, r7, lr}
	ldr r6, _0800CF0C @ =gUnk_03005640
	ldrb r7, [r6, #3]
	cmp r7, #0
	beq _0800CF10
	cmp r7, #1
	beq _0800CF46
	b _0800CF7E
	.align 2, 0
_0800CF0C: .4byte gUnk_03005640
_0800CF10:
	adds r0, r6, #0
	bl sub_08008D18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bne _0800CF7E
	adds r0, r6, #0
	bl sub_08008D30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #2
	ldrb r1, [r6, #4]
	cmp r0, r1
	beq _0800CF34
	cmp r1, #3
	bhi _0800CF3C
_0800CF34:
	ldrb r0, [r6, #3]
	adds r0, #1
	strb r0, [r6, #3]
	b _0800CF7E
_0800CF3C:
	adds r0, r6, #0
	movs r1, #0x80
	bl sub_08008CB4
	b _0800CF7E
_0800CF46:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08008E64
	adds r0, r6, #0
	movs r1, #1
	bl sub_08008E7C
	adds r0, r6, #0
	bl sub_08008D6C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r5, #0
	strb r5, [r6, #0xb]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08008DB8
	movs r0, #0x7e
	ands r4, r0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08008D84
	strb r7, [r6, #2]
	strb r5, [r6, #3]
_0800CF7E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CF84
sub_0800CF84: @ 0x0800CF84
	push {r4, r5, r6, r7, lr}
	movs r2, #0
_0800CF88:
	movs r0, #0xce
	lsls r0, r0, #1
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0800CFCC @ =gUnk_030056C0
	adds r5, r1, r0
	movs r6, #0
	adds r7, r2, #1
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _0800CFB8
	adds r4, r5, #0
	adds r4, #0x14
_0800CFA2:
	adds r0, r4, #0
	bl sub_08009FF8
	adds r0, r4, #0
	bl sub_0800A778
	adds r4, #0x28
	adds r6, #1
	ldrb r2, [r5, #1]
	cmp r6, r2
	blo _0800CFA2
_0800CFB8:
	ldrb r1, [r5, #1]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r1, r0
	bne _0800CFD0
	movs r0, #1
	strb r0, [r5]
	b _0800CFEA
	.align 2, 0
_0800CFCC: .4byte gUnk_030056C0
_0800CFD0:
	ldrb r1, [r5, #8]
	cmp r1, #0
	beq _0800CFE8
	ldrb r0, [r5, #3]
	subs r0, #1
	strb r0, [r5, #3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800CFEA
	strb r1, [r5, #3]
	ldrb r0, [r5, #1]
	adds r0, #1
_0800CFE8:
	strb r0, [r5, #1]
_0800CFEA:
	adds r2, r7, #0
	cmp r2, #0
	beq _0800CF88
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CFF8
sub_0800CFF8: @ 0x0800CFF8
	push {r4, r5, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012EC4
	movs r5, #0
	ldr r3, _0800D07C @ =gUnk_03005580
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r4, r1
	lsrs r4, r4, #8
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #1
	movs r2, #0
	adds r1, r1, r3
	adds r3, r1, #0
	strh r5, [r1]
	adds r1, #2
	strh r2, [r1]
	strh r2, [r3, #4]
	strh r2, [r3, #6]
	strh r2, [r3, #8]
	strh r2, [r3, #0xa]
	strh r2, [r3, #0xc]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x10]
	adds r1, r0, #0
_0800D036:
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800D062
	adds r5, #1
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0800D062
	adds r5, #1
	ldrh r0, [r1, #4]
	strh r0, [r3, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0800D062
	adds r1, #6
	adds r3, #6
	adds r5, #1
	cmp r5, #8
	bls _0800D036
_0800D062:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D062
	ldr r0, _0800D080 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800D07C: .4byte gUnk_03005580
_0800D080: .4byte gUnk_03006578

	thumb_func_start sub_0800D084
sub_0800D084: @ 0x0800D084
	push {r4, lr}
	bl sub_08012EC4
	ldr r3, _0800D0D4 @ =gUnk_03005640
	ldrb r1, [r3, #4]
	lsls r1, r1, #2
	adds r2, r3, #0
	adds r2, #0x14
	adds r1, r1, r2
	str r0, [r1]
	ldrb r1, [r3, #4]
	adds r1, #1
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r2, #0
	str r2, [r1]
	adds r1, r3, #0
	adds r1, #0x40
	ldrb r4, [r3, #4]
	adds r1, r1, r4
	strb r2, [r1]
	ldrb r1, [r3, #4]
	adds r1, #1
	strb r1, [r3, #4]
	bl sub_0800C38C
_0800D0B8:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D0B8
	ldr r0, _0800D0D8 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800D0D4: .4byte gUnk_03005640
_0800D0D8: .4byte gUnk_03006578

	thumb_func_start sub_0800D0DC
sub_0800D0DC: @ 0x0800D0DC
	push {r4, lr}
	movs r4, #0
	ldr r0, _0800D144 @ =gUnk_03006AD0
	ldr r2, [r0]
	movs r1, #3
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800D100
	movs r4, #1
	adds r0, r2, #0
	bl sub_080607AC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D100
	movs r4, #0x11
_0800D100:
	ldr r0, _0800D144 @ =gUnk_03006AD0
	ldr r0, [r0, #4]
	movs r1, #3
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800D114
	movs r0, #2
	orrs r4, r0
_0800D114:
	ldr r1, _0800D148 @ =gUnk_03006AC8
	ldr r0, [r1]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #1
	bne _0800D128
	movs r0, #4
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
_0800D128:
	ldr r0, [r1, #4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0800D13A
	movs r0, #8
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
_0800D13A:
	ldr r0, _0800D14C @ =gUnk_03005638
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D144: .4byte gUnk_03006AD0
_0800D148: .4byte gUnk_03006AC8
_0800D14C: .4byte gUnk_03005638

	thumb_func_start sub_0800D150
sub_0800D150: @ 0x0800D150
	push {lr}
	ldr r0, _0800D1A4 @ =gUnk_03005638
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800D16E
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0800D16E
	ldr r0, _0800D1A8 @ =gUnk_03006AD0
	ldr r1, [r0]
	movs r0, #0xff
	strb r0, [r1, #3]
_0800D16E:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0800D17E
	ldr r0, _0800D1A8 @ =gUnk_03006AD0
	ldr r1, [r0, #4]
	movs r0, #0xff
	strb r0, [r1, #3]
_0800D17E:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0800D18E
	ldr r0, _0800D1AC @ =gUnk_03006AC8
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #4]
_0800D18E:
	movs r0, #8
	ands r2, r0
	cmp r2, #0
	beq _0800D19E
	ldr r0, _0800D1AC @ =gUnk_03006AC8
	ldr r1, [r0, #4]
	movs r0, #0
	strh r0, [r1, #4]
_0800D19E:
	pop {r0}
	bx r0
	.align 2, 0
_0800D1A4: .4byte gUnk_03005638
_0800D1A8: .4byte gUnk_03006AD0
_0800D1AC: .4byte gUnk_03006AC8

	thumb_func_start sub_0800D1B0
sub_0800D1B0: @ 0x0800D1B0
	push {lr}
	ldr r0, _0800D1F8 @ =gUnk_03005638
	ldrb r1, [r0]
	adds r2, r1, #0
	movs r3, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0800D1C8
	ldr r0, _0800D1FC @ =gUnk_03006AD0
	ldr r0, [r0]
	strb r3, [r0, #3]
_0800D1C8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800D1D6
	ldr r0, _0800D1FC @ =gUnk_03006AD0
	ldr r0, [r0, #4]
	strb r3, [r0, #3]
_0800D1D6:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0800D1E4
	ldr r0, _0800D200 @ =gUnk_03006AC8
	ldr r0, [r0]
	strh r3, [r0, #4]
_0800D1E4:
	movs r0, #8
	ands r2, r0
	cmp r2, #0
	beq _0800D1F2
	ldr r0, _0800D200 @ =gUnk_03006AC8
	ldr r0, [r0, #4]
	strh r3, [r0, #4]
_0800D1F2:
	pop {r0}
	bx r0
	.align 2, 0
_0800D1F8: .4byte gUnk_03005638
_0800D1FC: .4byte gUnk_03006AD0
_0800D200: .4byte gUnk_03006AC8

	thumb_func_start sub_0800D204
sub_0800D204: @ 0x0800D204
	push {r4, r5, r6, r7, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0
	movs r6, #0
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0800D22C
	cmp r1, #1
	bne _0800D23A
	movs r5, #1
	ldr r1, _0800D228 @ =0x00007B81
	adds r0, r1, #0
	strh r0, [r4]
	b _0800D23A
	.align 2, 0
_0800D228: .4byte 0x00007B81
_0800D22C:
	movs r5, #1
	ldr r3, _0800D254 @ =0x00007C81
	adds r0, r3, #0
	strh r0, [r4]
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0800D23A:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r7, r0, #0
	cmp r2, #0
	bne _0800D25C
	lsls r0, r5, #1
	adds r0, r0, r4
	ldr r3, _0800D258 @ =0x00004F82
	adds r1, r3, #0
	strh r1, [r0]
	strh r2, [r0, #2]
	b _0800D35E
	.align 2, 0
_0800D254: .4byte 0x00007C81
_0800D258: .4byte 0x00004F82
_0800D25C:
	ldr r1, _0800D364 @ =0x00002710
	adds r0, r2, #0
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0800D27A
	cmp r6, #0
	beq _0800D290
_0800D27A:
	movs r6, #1
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r0, r0, #1
	adds r0, r0, r4
	lsls r1, r2, #8
	ldr r2, _0800D368 @ =0x00004F82
	adds r1, r1, r2
	strh r1, [r0]
_0800D290:
	asrs r0, r7, #0x10
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0800D2B0
	cmp r6, #0
	beq _0800D2C6
_0800D2B0:
	movs r6, #1
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r0, r0, #1
	adds r0, r0, r4
	lsls r1, r2, #8
	ldr r3, _0800D368 @ =0x00004F82
	adds r1, r1, r3
	strh r1, [r0]
_0800D2C6:
	asrs r0, r7, #0x10
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0800D2E4
	cmp r6, #0
	beq _0800D2FA
_0800D2E4:
	movs r6, #1
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r0, r0, #1
	adds r0, r0, r4
	lsls r1, r2, #8
	ldr r2, _0800D368 @ =0x00004F82
	adds r1, r1, r2
	strh r1, [r0]
_0800D2FA:
	asrs r0, r7, #0x10
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0800D318
	cmp r6, #0
	beq _0800D32E
_0800D318:
	movs r6, #1
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r0, r0, #1
	adds r0, r0, r4
	lsls r1, r2, #8
	ldr r3, _0800D368 @ =0x00004F82
	adds r1, r1, r3
	strh r1, [r0]
_0800D32E:
	asrs r0, r7, #0x10
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0800D342
	cmp r6, #0
	beq _0800D356
_0800D342:
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r0, r0, #1
	adds r0, r0, r4
	lsls r1, r2, #8
	ldr r2, _0800D368 @ =0x00004F82
	adds r1, r1, r2
	strh r1, [r0]
_0800D356:
	lsls r0, r5, #1
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0]
_0800D35E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D364: .4byte 0x00002710
_0800D368: .4byte 0x00004F82

	thumb_func_start sub_0800D36C
sub_0800D36C: @ 0x0800D36C
	push {r4, r5, lr}
	sub sp, #0x20
	ldr r5, _0800D384 @ =gUnk_03005578
	ldrh r4, [r5]
	cmp r4, #1
	bne _0800D37A
	b _0800D4A8
_0800D37A:
	cmp r4, #1
	bgt _0800D388
	cmp r4, #0
	beq _0800D396
	b _0800D5BE
	.align 2, 0
_0800D384: .4byte gUnk_03005578
_0800D388:
	cmp r4, #2
	bne _0800D38E
	b _0800D4FC
_0800D38E:
	cmp r4, #3
	bne _0800D394
	b _0800D5B0
_0800D394:
	b _0800D5BE
_0800D396:
	ldr r0, _0800D3DC @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	beq _0800D3B0
	ldr r0, _0800D3E0 @ =0x000001C3
	bl sub_08012F60
	cmp r0, #1
	bne _0800D3F0
_0800D3B0:
	ldr r0, _0800D3E4 @ =gUnk_03005554
	ldr r3, [r0]
	adds r3, #0xd8
	ldr r0, _0800D3E8 @ =0x06010000
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0xd
	str r0, [sp, #8]
	ldr r0, _0800D3EC @ =0x44444444
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	str r1, [sp, #0x1c]
	movs r0, #0
	movs r1, #2
	movs r2, #8
	bl sub_0800B618
	b _0800D432
	.align 2, 0
_0800D3DC: .4byte gUnk_0300594C
_0800D3E0: .4byte 0x000001C3
_0800D3E4: .4byte gUnk_03005554
_0800D3E8: .4byte 0x06010000
_0800D3EC: .4byte 0x44444444
_0800D3F0:
	movs r0, #0xe1
	lsls r0, r0, #1
	bl sub_08012F60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800D484 @ =gUnk_03005554
	ldr r3, [r1]
	adds r3, #0xd8
	ldr r1, _0800D488 @ =0x06010000
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0xd
	str r1, [sp, #8]
	ldr r1, _0800D48C @ =0x44444444
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	ldr r1, _0800D490 @ =gUnk_08B714A4
	adds r1, r0, r1
	ldrb r1, [r1]
	str r1, [sp, #0x18]
	ldr r1, _0800D494 @ =gUnk_08B7149C
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	movs r0, #0
	movs r1, #2
	movs r2, #8
	bl sub_0800B618
_0800D432:
	ldr r4, _0800D498 @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009F0C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl sub_08009F50
	adds r0, r4, #0
	movs r1, #0xdc
	movs r2, #0x8a
	bl sub_0800A678
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800A6C0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800A6C4
	ldr r0, _0800D49C @ =0x000001C3
	movs r1, #0
	bl sub_08012F0C
	movs r3, #0x45
	ldr r0, _0800D4A0 @ =gUnk_03005180
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	strh r3, [r1]
	ldr r1, _0800D4A4 @ =0x000003CE
	adds r0, r0, r1
	strh r2, [r0]
	b _0800D4E0
	.align 2, 0
_0800D484: .4byte gUnk_03005554
_0800D488: .4byte 0x06010000
_0800D48C: .4byte 0x44444444
_0800D490: .4byte gUnk_08B714A4
_0800D494: .4byte gUnk_08B7149C
_0800D498: .4byte gUnk_03005610
_0800D49C: .4byte 0x000001C3
_0800D4A0: .4byte gUnk_03005180
_0800D4A4: .4byte 0x000003CE
_0800D4A8:
	ldr r0, _0800D4EC @ =gUnk_03005920
	ldrh r1, [r0]
	ands r4, r1
	cmp r4, #0
	bne _0800D4CA
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800D4CA
	ldr r0, _0800D4F0 @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800D4D4
_0800D4CA:
	ldr r0, _0800D4F4 @ =gUnk_03005640
	movs r1, #0
	strb r1, [r0, #0xb]
	bl sub_08008DB8
_0800D4D4:
	ldr r0, _0800D4F4 @ =gUnk_03005640
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0800D5BE
	bl sub_0800D0DC
_0800D4E0:
	ldr r1, _0800D4F8 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0800D5BE
	.align 2, 0
_0800D4EC: .4byte gUnk_03005920
_0800D4F0: .4byte gUnk_0300594C
_0800D4F4: .4byte gUnk_03005640
_0800D4F8: .4byte gUnk_03005578
_0800D4FC:
	movs r0, #0
	movs r1, #1
	bl sub_0800471C
	bl sub_0800D1B0
	ldr r0, _0800D524 @ =gUnk_0300594C
	ldrh r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800D528
	movs r0, #0
	movs r1, #0
	bl sub_0800471C
	bl sub_0800D150
	b _0800D5BE
	.align 2, 0
_0800D524: .4byte gUnk_0300594C
_0800D528:
	ldr r0, _0800D544 @ =gUnk_03005920
	ldrh r3, [r0]
	movs r2, #1
	ands r2, r3
	cmp r2, #0
	bne _0800D548
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, r1
	bne _0800D584
	b _0800D550
	.align 2, 0
_0800D544: .4byte gUnk_03005920
_0800D548:
	movs r0, #0x64
	movs r1, #0
	bl sub_080147B8
_0800D550:
	ldr r4, _0800D57C @ =gUnk_03005640
	adds r0, r4, #0
	bl sub_08008C14
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #5]
	strb r0, [r4, #4]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldr r1, _0800D580 @ =gUnk_03005578
	strh r0, [r1]
	b _0800D5BE
	.align 2, 0
_0800D57C: .4byte gUnk_03005640
_0800D580: .4byte gUnk_03005578
_0800D584:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0800D59C
	ldr r0, _0800D598 @ =gUnk_03005554
	ldr r0, [r0]
	strb r2, [r0, #1]
	ldrh r0, [r5]
	adds r0, #1
	b _0800D5BC
	.align 2, 0
_0800D598: .4byte gUnk_03005554
_0800D59C:
	ldr r4, _0800D5AC @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009FF8
	adds r0, r4, #0
	bl sub_0800A778
	b _0800D5BE
	.align 2, 0
_0800D5AC: .4byte gUnk_03005610
_0800D5B0:
	bl sub_0800C614
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D5BE
	movs r0, #2
_0800D5BC:
	strh r0, [r5]
_0800D5BE:
	ldr r0, _0800D5CC @ =gUnk_03005578
	movs r2, #0
	ldrsh r0, [r0, r2]
	add sp, #0x20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800D5CC: .4byte gUnk_03005578

	thumb_func_start sub_0800D5D0
sub_0800D5D0: @ 0x0800D5D0
	push {r4, r5, r6, lr}
	sub sp, #0x30
	ldr r0, _0800D5FC @ =gUnk_080BAB08
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr r0, _0800D600 @ =gUnk_080BAB10
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	ldr r0, _0800D604 @ =gUnk_03005578
	ldrh r5, [r0]
	cmp r5, #1
	bne _0800D5F2
	b _0800D73C
_0800D5F2:
	cmp r5, #1
	bgt _0800D608
	cmp r5, #0
	beq _0800D610
	b _0800D806
	.align 2, 0
_0800D5FC: .4byte gUnk_080BAB08
_0800D600: .4byte gUnk_080BAB10
_0800D604: .4byte gUnk_03005578
_0800D608:
	cmp r5, #2
	bne _0800D60E
	b _0800D78C
_0800D60E:
	b _0800D806
_0800D610:
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0800D66C @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	beq _0800D63A
	ldr r0, _0800D670 @ =0x000001C3
	bl sub_08012F60
	cmp r0, #1
	bne _0800D67C
_0800D63A:
	ldr r0, _0800D674 @ =gUnk_03005554
	ldr r3, [r0]
	adds r3, #0xd8
	ldr r0, _0800D678 @ =0x06010000
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	str r6, [sp, #8]
	lsls r4, r4, #2
	adds r0, r4, #0
	add r0, sp
	adds r0, #0x20
	ldr r0, [r0]
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	str r1, [sp, #0x1c]
	movs r0, #0
	movs r1, #2
	movs r2, #8
	bl sub_0800B618
	b _0800D6C4
	.align 2, 0
_0800D66C: .4byte gUnk_0300594C
_0800D670: .4byte 0x000001C3
_0800D674: .4byte gUnk_03005554
_0800D678: .4byte 0x06010000
_0800D67C:
	movs r0, #0xe1
	lsls r0, r0, #1
	bl sub_08012F60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800D71C @ =gUnk_03005554
	ldr r3, [r1]
	adds r3, #0xd8
	ldr r1, _0800D720 @ =0x06010000
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	str r6, [sp, #8]
	lsls r4, r4, #2
	adds r1, r4, #0
	add r1, sp
	adds r1, #0x20
	ldr r1, [r1]
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	ldr r1, _0800D724 @ =gUnk_08B714A4
	adds r1, r0, r1
	ldrb r1, [r1]
	str r1, [sp, #0x18]
	ldr r1, _0800D728 @ =gUnk_08B7149C
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	movs r0, #0
	movs r1, #2
	movs r2, #8
	bl sub_0800B618
_0800D6C4:
	adds r5, r4, #0
	ldr r4, _0800D72C @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009F0C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl sub_08009F50
	adds r0, r4, #0
	movs r1, #0xdc
	movs r2, #0x8a
	bl sub_0800A678
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800A6C0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800A6C4
	add r0, sp, #0x28
	adds r0, r5, r0
	ldr r1, [r0]
	adds r1, #0x40
	ldr r0, _0800D730 @ =gUnk_03005180
	movs r3, #0xf3
	lsls r3, r3, #2
	adds r2, r0, r3
	movs r3, #0
	strh r1, [r2]
	ldr r1, _0800D734 @ =0x000003CE
	adds r0, r0, r1
	strh r3, [r0]
	ldr r0, _0800D738 @ =0x000001C3
	movs r1, #0
	bl sub_08012F0C
	b _0800D770
	.align 2, 0
_0800D71C: .4byte gUnk_03005554
_0800D720: .4byte 0x06010000
_0800D724: .4byte gUnk_08B714A4
_0800D728: .4byte gUnk_08B7149C
_0800D72C: .4byte gUnk_03005610
_0800D730: .4byte gUnk_03005180
_0800D734: .4byte 0x000003CE
_0800D738: .4byte 0x000001C3
_0800D73C:
	ldr r0, _0800D77C @ =gUnk_03005920
	ldrh r1, [r0]
	ands r5, r1
	cmp r5, #0
	bne _0800D75E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800D75E
	ldr r0, _0800D780 @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800D768
_0800D75E:
	ldr r0, _0800D784 @ =gUnk_03005640
	movs r1, #0
	strb r1, [r0, #0xb]
	bl sub_08008DB8
_0800D768:
	ldr r0, _0800D784 @ =gUnk_03005640
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0800D806
_0800D770:
	ldr r1, _0800D788 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0800D806
	.align 2, 0
_0800D77C: .4byte gUnk_03005920
_0800D780: .4byte gUnk_0300594C
_0800D784: .4byte gUnk_03005640
_0800D788: .4byte gUnk_03005578
_0800D78C:
	movs r0, #0
	movs r1, #1
	bl sub_0800471C
	ldr r0, _0800D7B4 @ =gUnk_03005920
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800D7BC
	ldr r0, _0800D7B8 @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800D7F8
	b _0800D7C4
	.align 2, 0
_0800D7B4: .4byte gUnk_03005920
_0800D7B8: .4byte gUnk_0300594C
_0800D7BC:
	movs r0, #0x64
	movs r1, #0
	bl sub_080147B8
_0800D7C4:
	ldr r4, _0800D7F0 @ =gUnk_03005640
	adds r0, r4, #0
	bl sub_08008C14
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #5]
	strb r0, [r4, #4]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldr r1, _0800D7F4 @ =gUnk_03005578
	strh r0, [r1]
	b _0800D806
	.align 2, 0
_0800D7F0: .4byte gUnk_03005640
_0800D7F4: .4byte gUnk_03005578
_0800D7F8:
	ldr r4, _0800D814 @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009FF8
	adds r0, r4, #0
	bl sub_0800A778
_0800D806:
	ldr r0, _0800D818 @ =gUnk_03005578
	movs r3, #0
	ldrsh r0, [r0, r3]
	add sp, #0x30
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800D814: .4byte gUnk_03005610
_0800D818: .4byte gUnk_03005578

	thumb_func_start sub_0800D81C
sub_0800D81C: @ 0x0800D81C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
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
	mov sb, r0
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800D8F8 @ =0x06010000
	ldr r5, _0800D8FC @ =gUnk_030056C0
	movs r3, #0xca
	lsls r3, r3, #1
	adds r1, r5, r3
	str r2, [r1]
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r2, #0
	strh r1, [r5, #4]
	strh r6, [r5, #6]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	strb r4, [r5, #8]
	strb r4, [r5, #3]
	strb r2, [r5, #0xa]
	strb r2, [r5, #0xb]
	movs r1, #1
	mov r3, sb
	strb r3, [r5, #0xf]
	strb r1, [r5, #0x10]
	strb r2, [r5, #0xc]
	movs r1, #0x10
	bl sub_080036C4
	movs r0, #8
	strb r0, [r5, #0xd]
	movs r0, #6
	strb r0, [r5, #0xe]
	bl sub_08012EC4
	adds r1, r0, #0
	movs r0, #0
	bl sub_0800B730
	bl sub_08012EC4
	bl sub_0800C38C
_0800D8AE:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D8AE
	ldr r4, _0800D900 @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009F0C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl sub_08009F50
	adds r0, r4, #0
	movs r1, #0xdc
	movs r2, #0x8a
	bl sub_0800A678
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800A6C0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800A6C4
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800D8F8: .4byte 0x06010000
_0800D8FC: .4byte gUnk_030056C0
_0800D900: .4byte gUnk_03005610

	thumb_func_start sub_0800D904
sub_0800D904: @ 0x0800D904
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #1
	ldr r4, _0800D91C @ =gUnk_03005578
	ldrh r0, [r4]
	cmp r0, #1
	beq _0800D934
	cmp r0, #1
	bgt _0800D920
	cmp r0, #0
	beq _0800D928
	b _0800DA9C
	.align 2, 0
_0800D91C: .4byte gUnk_03005578
_0800D920:
	cmp r0, #2
	bne _0800D926
	b _0800DA90
_0800D926:
	b _0800DA9C
_0800D928:
	bl sub_0800D0DC
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	b _0800DA9C
_0800D934:
	movs r0, #0
	movs r1, #1
	bl sub_0800471C
	ldr r4, _0800D9A0 @ =gUnk_030056C0
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, #0x14
	adds r0, r0, r4
	bl sub_0800A7A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _0800D95E
	b _0800DA9C
_0800D95E:
	ldrb r0, [r4]
	cmp r0, #1
	beq _0800D966
	b _0800DA9C
_0800D966:
	movs r0, #0
	movs r1, #1
	bl sub_0800471C
	strb r5, [r4, #9]
	bl sub_0800D1B0
	ldr r0, _0800D9A4 @ =gUnk_0300594C
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800D9AC
	ldr r0, _0800D9A8 @ =gUnk_03006AA4
	bl sub_0801BAD8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800D9AC
	movs r0, #0
	movs r1, #0
	bl sub_0800471C
	movs r0, #0
	strb r0, [r4, #9]
	bl sub_0800D150
	b _0800DA9C
	.align 2, 0
_0800D9A0: .4byte gUnk_030056C0
_0800D9A4: .4byte gUnk_0300594C
_0800D9A8: .4byte gUnk_03006AA4
_0800D9AC:
	ldr r0, _0800D9CC @ =gUnk_03005920
	ldrh r3, [r0]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _0800D9D4
	ldr r0, _0800D9D0 @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800DA48
	b _0800D9DC
	.align 2, 0
_0800D9CC: .4byte gUnk_03005920
_0800D9D0: .4byte gUnk_0300594C
_0800D9D4:
	movs r0, #0x64
	movs r1, #0
	bl sub_080147B8
_0800D9DC:
	ldr r5, _0800DA3C @ =gUnk_030056C0
	movs r4, #0
	str r4, [sp]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _0800DA40 @ =0x05000067
	bl CpuSet
	adds r0, r5, #0
	adds r0, #0x14
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x3c
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x64
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0xb4
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0xdc
	bl sub_08009F0C
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08009F0C
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08009F0C
	strb r4, [r5]
	strb r4, [r5, #1]
	movs r5, #0
	ldr r0, _0800DA44 @ =gUnk_03005578
	strh r5, [r0]
	b _0800DA9C
	.align 2, 0
_0800DA3C: .4byte gUnk_030056C0
_0800DA40: .4byte 0x05000067
_0800DA44: .4byte gUnk_03005578
_0800DA48:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0800DA7C
	ldr r0, _0800DA70 @ =gUnk_03006AA4
	bl sub_0801BAD8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800DA7C
	movs r1, #2
	ldr r0, _0800DA74 @ =gUnk_03005554
	ldr r0, [r0]
	strb r1, [r0, #1]
	ldr r1, _0800DA78 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0800DA9C
	.align 2, 0
_0800DA70: .4byte gUnk_03006AA4
_0800DA74: .4byte gUnk_03005554
_0800DA78: .4byte gUnk_03005578
_0800DA7C:
	ldr r4, _0800DA8C @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009FF8
	adds r0, r4, #0
	bl sub_0800A778
	b _0800DA9C
	.align 2, 0
_0800DA8C: .4byte gUnk_03005610
_0800DA90:
	bl sub_0800C614
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DA9C
	strh r5, [r4]
_0800DA9C:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800DAA8
sub_0800DAA8: @ 0x0800DAA8
	push {r4, r5, r6, lr}
	bl sub_08012EE0
	ldr r2, _0800DB0C @ =gUnk_03005560
	ldr r4, _0800DB10 @ =gUnk_03005574
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r6, #0
	movs r5, #0
	strh r0, [r1]
	bl sub_08012EC4
	ldr r3, _0800DB14 @ =gUnk_03005640
	ldrb r1, [r3, #4]
	lsls r1, r1, #2
	adds r2, r3, #0
	adds r2, #0x14
	adds r1, r1, r2
	str r0, [r1]
	ldrb r0, [r3, #4]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	str r5, [r0]
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r1, [r3, #4]
	adds r0, r0, r1
	strb r6, [r0]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0800DAF0:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800DAF0
	ldr r0, _0800DB18 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800DB0C: .4byte gUnk_03005560
_0800DB10: .4byte gUnk_03005574
_0800DB14: .4byte gUnk_03005640
_0800DB18: .4byte gUnk_03006578

	thumb_func_start sub_0800DB1C
sub_0800DB1C: @ 0x0800DB1C
	push {r4, r5, lr}
	sub sp, #0x20
	ldr r0, _0800DB34 @ =gUnk_03005578
	ldrh r0, [r0]
	cmp r0, #0x1e
	bls _0800DB2A
	b _0800DFAC
_0800DB2A:
	lsls r0, r0, #2
	ldr r1, _0800DB38 @ =_0800DB3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DB34: .4byte gUnk_03005578
_0800DB38: .4byte _0800DB3C
_0800DB3C: @ jump table
	.4byte _0800DBB8 @ case 0
	.4byte _0800DC7C @ case 1
	.4byte _0800DC9C @ case 2
	.4byte _0800DD6C @ case 3
	.4byte _0800DF34 @ case 4
	.4byte _0800DFAC @ case 5
	.4byte _0800DFAC @ case 6
	.4byte _0800DFAC @ case 7
	.4byte _0800DF84 @ case 8
	.4byte _0800DFAC @ case 9
	.4byte _0800DFAC @ case 10
	.4byte _0800DFAC @ case 11
	.4byte _0800DFAC @ case 12
	.4byte _0800DFAC @ case 13
	.4byte _0800DFAC @ case 14
	.4byte _0800DFAC @ case 15
	.4byte _0800DFAC @ case 16
	.4byte _0800DFAC @ case 17
	.4byte _0800DFAC @ case 18
	.4byte _0800DFAC @ case 19
	.4byte _0800DFAC @ case 20
	.4byte _0800DFAC @ case 21
	.4byte _0800DFAC @ case 22
	.4byte _0800DFAC @ case 23
	.4byte _0800DFAC @ case 24
	.4byte _0800DFAC @ case 25
	.4byte _0800DFAC @ case 26
	.4byte _0800DFAC @ case 27
	.4byte _0800DFAC @ case 28
	.4byte _0800DFAC @ case 29
	.4byte _0800DFAC @ case 30
_0800DBB8:
	ldr r4, _0800DC60 @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009F0C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_08009F50
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0x7a
	bl sub_0800A678
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800A6C0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800A6C4
	ldr r5, _0800DC64 @ =gUnk_03005550
	movs r0, #0
	strb r0, [r5]
	ldr r1, _0800DC68 @ =gUnk_0300588C
	movs r0, #0x14
	strb r0, [r1]
	movs r0, #0xe1
	lsls r0, r0, #1
	bl sub_08012F60
	ldr r0, _0800DC6C @ =gUnk_03005554
	ldr r3, [r0]
	adds r3, #0xd8
	ldr r0, _0800DC70 @ =0x06010000
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0xd
	str r0, [sp, #8]
	ldr r0, _0800DC74 @ =0x44444444
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	movs r1, #2
	movs r2, #8
	bl sub_0800B618
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r2, r2, #0x14
	movs r0, #0xd0
	lsls r0, r0, #0xf
	adds r2, r2, r0
	asrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #8
	bl sub_0800A678
	adds r0, r4, #0
	bl sub_08009FF8
	adds r0, r4, #0
	bl sub_0800A778
	movs r0, #0x69
	movs r1, #0
	bl sub_080147B8
	ldr r1, _0800DC78 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0800E022
	.align 2, 0
_0800DC60: .4byte gUnk_03005610
_0800DC64: .4byte gUnk_03005550
_0800DC68: .4byte gUnk_0300588C
_0800DC6C: .4byte gUnk_03005554
_0800DC70: .4byte 0x06010000
_0800DC74: .4byte 0x44444444
_0800DC78: .4byte gUnk_03005578
_0800DC7C:
	ldr r0, _0800DC90 @ =gUnk_03005640
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0800DC8C
	ldr r1, _0800DC94 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0800DC8C:
	ldr r4, _0800DC98 @ =gUnk_03005610
	b _0800DF52
	.align 2, 0
_0800DC90: .4byte gUnk_03005640
_0800DC94: .4byte gUnk_03005578
_0800DC98: .4byte gUnk_03005610
_0800DC9C:
	ldr r0, _0800DCC8 @ =gUnk_03005920
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r2, _0800DCCC @ =gUnk_0300588C
	cmp r0, #0
	beq _0800DCB6
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0800DCD0
	movs r0, #0x14
	strb r0, [r2]
_0800DCB6:
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0800DCD0
	subs r0, r1, #1
	strb r0, [r2]
	b _0800DD3A
	.align 2, 0
_0800DCC8: .4byte gUnk_03005920
_0800DCCC: .4byte gUnk_0300588C
_0800DCD0:
	ldr r0, _0800DD00 @ =gUnk_03005610
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0800DD3A
	movs r5, #0
	ldr r0, _0800DD04 @ =gUnk_03005574
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0800DD2E
	movs r4, #0
_0800DCE4:
	ldr r0, _0800DD08 @ =gUnk_03005550
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _0800DD10
	lsrs r1, r4, #0x18
	ldr r0, _0800DD0C @ =gUnk_03005640
	bl sub_08008EB4
	movs r1, #0
	bl sub_0800B31C
	b _0800DD1E
	.align 2, 0
_0800DD00: .4byte gUnk_03005610
_0800DD04: .4byte gUnk_03005574
_0800DD08: .4byte gUnk_03005550
_0800DD0C: .4byte gUnk_03005640
_0800DD10:
	lsrs r1, r4, #0x18
	ldr r0, _0800DD5C @ =gUnk_03005640
	bl sub_08008EB4
	movs r1, #1
	bl sub_0800B31C
_0800DD1E:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	adds r5, #1
	ldr r0, _0800DD60 @ =gUnk_03005574
	ldrb r0, [r0]
	cmp r5, r0
	blo _0800DCE4
_0800DD2E:
	bl sub_0800D0DC
	ldr r1, _0800DD64 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0800DD3A:
	ldr r4, _0800DD68 @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_0800A7A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _0800DD4C
	b _0800DF52
_0800DD4C:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0
	bl sub_08009F50
	b _0800DF52
	.align 2, 0
_0800DD5C: .4byte gUnk_03005640
_0800DD60: .4byte gUnk_03005574
_0800DD64: .4byte gUnk_03005578
_0800DD68: .4byte gUnk_03005610
_0800DD6C:
	movs r0, #0
	movs r1, #1
	bl sub_0800471C
	bl sub_0800D1B0
	ldr r0, _0800DD98 @ =gUnk_0300594C
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0800DD9C
	movs r0, #0
	movs r1, #0
	bl sub_0800471C
	bl sub_0800D150
	b _0800E022
	.align 2, 0
_0800DD98: .4byte gUnk_0300594C
_0800DD9C:
	ldr r0, _0800DDFC @ =gUnk_03005944
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800DE34
	ldr r1, _0800DE00 @ =gUnk_03005550
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0800DDC0
	strb r3, [r1]
_0800DDC0:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	beq _0800DDD0
	movs r0, #0x64
	movs r1, #0
	bl sub_080147B8
_0800DDD0:
	movs r5, #0
	ldr r0, _0800DE04 @ =gUnk_03005574
	ldrb r0, [r0]
	cmp r5, r0
	blo _0800DDDC
	b _0800DF16
_0800DDDC:
	movs r4, #0
_0800DDDE:
	ldr r0, _0800DE00 @ =gUnk_03005550
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _0800DE0C
	lsrs r1, r4, #0x18
	ldr r0, _0800DE08 @ =gUnk_03005640
	bl sub_08008EB4
	movs r1, #0
	bl sub_0800B31C
	b _0800DE1A
	.align 2, 0
_0800DDFC: .4byte gUnk_03005944
_0800DE00: .4byte gUnk_03005550
_0800DE04: .4byte gUnk_03005574
_0800DE08: .4byte gUnk_03005640
_0800DE0C:
	lsrs r1, r4, #0x18
	ldr r0, _0800DE2C @ =gUnk_03005640
	bl sub_08008EB4
	movs r1, #1
	bl sub_0800B31C
_0800DE1A:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	adds r5, #1
	ldr r0, _0800DE30 @ =gUnk_03005574
	ldrb r0, [r0]
	cmp r5, r0
	blo _0800DDDE
	b _0800DF16
	.align 2, 0
_0800DE2C: .4byte gUnk_03005640
_0800DE30: .4byte gUnk_03005574
_0800DE34:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800DEC8
	ldr r2, _0800DE94 @ =gUnk_03005550
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldr r4, _0800DE98 @ =gUnk_03005574
	ldrb r1, [r4]
	cmp r0, r1
	blt _0800DE5C
	subs r0, r1, #1
	strb r0, [r2]
_0800DE5C:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r3, r0
	beq _0800DE6C
	movs r0, #0x64
	movs r1, #0
	bl sub_080147B8
_0800DE6C:
	movs r5, #0
	ldrb r4, [r4]
	cmp r5, r4
	bhs _0800DF16
	movs r4, #0
_0800DE76:
	ldr r0, _0800DE94 @ =gUnk_03005550
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _0800DEA0
	lsrs r1, r4, #0x18
	ldr r0, _0800DE9C @ =gUnk_03005640
	bl sub_08008EB4
	movs r1, #0
	bl sub_0800B31C
	b _0800DEAE
	.align 2, 0
_0800DE94: .4byte gUnk_03005550
_0800DE98: .4byte gUnk_03005574
_0800DE9C: .4byte gUnk_03005640
_0800DEA0:
	lsrs r1, r4, #0x18
	ldr r0, _0800DEC0 @ =gUnk_03005640
	bl sub_08008EB4
	movs r1, #1
	bl sub_0800B31C
_0800DEAE:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r4, r4, r1
	adds r5, #1
	ldr r0, _0800DEC4 @ =gUnk_03005574
	ldrb r0, [r0]
	cmp r5, r0
	blo _0800DE76
	b _0800DF16
	.align 2, 0
_0800DEC0: .4byte gUnk_03005640
_0800DEC4: .4byte gUnk_03005574
_0800DEC8:
	ldr r2, _0800DEEC @ =gUnk_03005920
	ldrh r1, [r2]
	movs r4, #8
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800DEF8
	ldr r0, _0800DEF0 @ =gUnk_03005554
	ldr r3, [r0]
	ldrh r0, [r3, #2]
	cmp r0, #0
	beq _0800DEF8
	movs r0, #1
	strb r0, [r3, #1]
	ldr r0, _0800DEF4 @ =gUnk_03005578
	strh r4, [r0]
	b _0800DF16
	.align 2, 0
_0800DEEC: .4byte gUnk_03005920
_0800DEF0: .4byte gUnk_03005554
_0800DEF4: .4byte gUnk_03005578
_0800DEF8:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DF16
	ldr r0, _0800DF28 @ =gUnk_03005610
	movs r1, #2
	movs r2, #2
	movs r3, #1
	bl sub_08009F50
	ldr r1, _0800DF2C @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0800DF16:
	ldr r4, _0800DF28 @ =gUnk_03005610
	ldr r0, _0800DF30 @ =gUnk_03005550
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x14
	movs r0, #0xd0
	lsls r0, r0, #0xf
	adds r2, r2, r0
	b _0800DF60
	.align 2, 0
_0800DF28: .4byte gUnk_03005610
_0800DF2C: .4byte gUnk_03005578
_0800DF30: .4byte gUnk_03005550
_0800DF34:
	ldr r4, _0800DF78 @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_0800A7A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0800DF52
	movs r0, #0x65
	movs r1, #0
	bl sub_080147B8
	ldr r1, _0800DF7C @ =gUnk_03005578
	movs r0, #0x1e
	strh r0, [r1]
_0800DF52:
	ldr r0, _0800DF80 @ =gUnk_03005550
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x14
	movs r1, #0xd0
	lsls r1, r1, #0xf
	adds r2, r2, r1
_0800DF60:
	asrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #8
	bl sub_0800A678
	adds r0, r4, #0
	bl sub_08009FF8
	adds r0, r4, #0
	bl sub_0800A778
	b _0800E022
	.align 2, 0
_0800DF78: .4byte gUnk_03005610
_0800DF7C: .4byte gUnk_03005578
_0800DF80: .4byte gUnk_03005550
_0800DF84:
	bl sub_0800C614
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E022
	ldr r0, _0800DFA4 @ =gUnk_03005610
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_08009F50
	ldr r1, _0800DFA8 @ =gUnk_03005578
	movs r0, #1
	strh r0, [r1]
	b _0800E022
	.align 2, 0
_0800DFA4: .4byte gUnk_03005610
_0800DFA8: .4byte gUnk_03005578
_0800DFAC:
	ldr r5, _0800E030 @ =gUnk_03005578
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x23
	bne _0800DFFC
	ldr r4, _0800E034 @ =gUnk_03005640
	adds r0, r4, #0
	bl sub_08008C14
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #5]
	strb r0, [r4, #4]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldr r1, _0800E038 @ =gUnk_03005574
	strb r0, [r1]
	strh r0, [r5]
	ldr r1, _0800E03C @ =gUnk_03005560
	ldr r0, _0800E040 @ =gUnk_03005550
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08012EA0
_0800DFFC:
	ldr r4, _0800E044 @ =gUnk_03005610
	ldr r0, _0800E040 @ =gUnk_03005550
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x14
	movs r0, #0xd0
	lsls r0, r0, #0xf
	adds r2, r2, r0
	asrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #8
	bl sub_0800A678
	adds r0, r4, #0
	bl sub_08009FF8
	adds r0, r4, #0
	bl sub_0800A778
_0800E022:
	ldr r0, _0800E030 @ =gUnk_03005578
	movs r1, #0
	ldrsh r0, [r0, r1]
	add sp, #0x20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800E030: .4byte gUnk_03005578
_0800E034: .4byte gUnk_03005640
_0800E038: .4byte gUnk_03005574
_0800E03C: .4byte gUnk_03005560
_0800E040: .4byte gUnk_03005550
_0800E044: .4byte gUnk_03005610

	thumb_func_start sub_0800E048
sub_0800E048: @ 0x0800E048
	push {r4, r5, lr}
	bl sub_08012EE0
	ldr r2, _0800E094 @ =gUnk_03005560
	ldr r4, _0800E098 @ =gUnk_03005898
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	strh r0, [r1]
	bl sub_08012EC4
	ldr r2, _0800E09C @ =gUnk_03005860
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	str r5, [r0]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0800E07A:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E07A
	ldr r0, _0800E0A0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800E094: .4byte gUnk_03005560
_0800E098: .4byte gUnk_03005898
_0800E09C: .4byte gUnk_03005860
_0800E0A0: .4byte gUnk_03006578

	thumb_func_start sub_0800E0A4
sub_0800E0A4: @ 0x0800E0A4
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _0800E0BC @ =gUnk_03005578
	ldrh r6, [r4]
	cmp r6, #1
	bne _0800E0B2
	b _0800E1C8
_0800E0B2:
	cmp r6, #1
	bgt _0800E0C0
	cmp r6, #0
	beq _0800E0C8
	b _0800E21A
	.align 2, 0
_0800E0BC: .4byte gUnk_03005578
_0800E0C0:
	cmp r6, #2
	bne _0800E0C6
	b _0800E1DA
_0800E0C6:
	b _0800E21A
_0800E0C8:
	str r6, [sp]
	ldr r5, _0800E110 @ =gUnk_030058D0
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _0800E114 @ =0x05000012
	bl CpuSet
	str r6, [r5, #0x30]
	str r6, [r5, #0x34]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
	ldr r4, _0800E118 @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009F0C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	movs r3, #1
	bl sub_08009F50
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800A6C4
	ldr r0, _0800E11C @ =gUnk_03005178
	ldr r0, [r0]
	cmp r0, #0
	bne _0800E124
	ldr r0, _0800E120 @ =gUnk_03005890
	ldrb r2, [r0]
	movs r0, #0x32
	b _0800E12A
	.align 2, 0
_0800E110: .4byte gUnk_030058D0
_0800E114: .4byte 0x05000012
_0800E118: .4byte gUnk_03005610
_0800E11C: .4byte gUnk_03005178
_0800E120: .4byte gUnk_03005890
_0800E124:
	ldr r0, _0800E1B0 @ =gUnk_03005890
	ldrb r2, [r0]
	movs r0, #0x3a
_0800E12A:
	orrs r2, r0
	movs r3, #0xff
	movs r4, #2
	movs r1, #0
	strh r6, [r5]
	strh r6, [r5, #2]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #3
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	strh r2, [r5, #0x2c]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r1, #2
	ldr r0, _0800E1B4 @ =gUnk_03005610
	ldr r4, _0800E1B8 @ =gUnk_030058D0
	adds r6, r4, #0
	adds r6, #0x28
	movs r5, #0
	strb r1, [r6]
	str r0, [r4, #0x44]
	bl sub_08009F0C
	ldr r0, [r4, #0x44]
	movs r1, #0
	movs r2, #1
	bl sub_0800A6C0
	ldr r0, [r4, #0x44]
	ldrb r1, [r6]
	movs r2, #0
	movs r3, #1
	bl sub_08009F50
	ldr r0, [r4, #0x44]
	movs r1, #0
	movs r2, #0
	bl sub_0800A678
	ldr r0, _0800E1BC @ =gUnk_03005178
	ldr r1, [r0]
	ldr r0, _0800E1C0 @ =gUnk_03005860
	str r0, [r4, #0x34]
	str r1, [r4, #0x30]
	str r5, [r4, #0x38]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4, #0x14]
	ldr r1, _0800E1C4 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0800E21A
	.align 2, 0
_0800E1B0: .4byte gUnk_03005890
_0800E1B4: .4byte gUnk_03005610
_0800E1B8: .4byte gUnk_030058D0
_0800E1BC: .4byte gUnk_03005178
_0800E1C0: .4byte gUnk_03005860
_0800E1C4: .4byte gUnk_03005578
_0800E1C8:
	bl sub_0800B8F4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E21A
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	b _0800E21A
_0800E1DA:
	ldr r0, _0800E1F4 @ =gUnk_030058D0
	adds r0, #0x21
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800E1FC
	ldr r0, _0800E1F8 @ =gUnk_03005560
	ldrh r0, [r0, #0x10]
	bl sub_08012EA0
	b _0800E208
	.align 2, 0
_0800E1F4: .4byte gUnk_030058D0
_0800E1F8: .4byte gUnk_03005560
_0800E1FC:
	ldr r0, _0800E228 @ =gUnk_03005560
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_08012EA0
_0800E208:
	ldr r0, _0800E22C @ =gUnk_03005178
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800E230 @ =gUnk_03005898
	strb r1, [r0]
	ldr r0, _0800E234 @ =gUnk_03005890
	strb r1, [r0]
	ldr r0, _0800E238 @ =gUnk_03005578
	strh r1, [r0]
_0800E21A:
	ldr r0, _0800E238 @ =gUnk_03005578
	movs r1, #0
	ldrsh r0, [r0, r1]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800E228: .4byte gUnk_03005560
_0800E22C: .4byte gUnk_03005178
_0800E230: .4byte gUnk_03005898
_0800E234: .4byte gUnk_03005890
_0800E238: .4byte gUnk_03005578

	thumb_func_start sub_0800E23C
sub_0800E23C: @ 0x0800E23C
	push {r4, lr}
	sub sp, #0x28
	ldr r0, _0800E254 @ =gUnk_03005578
	ldrh r0, [r0]
	cmp r0, #6
	bls _0800E24A
	b _0800E3F6
_0800E24A:
	lsls r0, r0, #2
	ldr r1, _0800E258 @ =_0800E25C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E254: .4byte gUnk_03005578
_0800E258: .4byte _0800E25C
_0800E25C: @ jump table
	.4byte _0800E278 @ case 0
	.4byte _0800E314 @ case 1
	.4byte _0800E334 @ case 2
	.4byte _0800E37C @ case 3
	.4byte _0800E3A4 @ case 4
	.4byte _0800E3C0 @ case 5
	.4byte _0800E3E4 @ case 6
_0800E278:
	ldr r0, _0800E300 @ =gUnk_03005170
	ldr r0, [r0]
	bl sub_0800B130
	ldr r1, _0800E304 @ =gUnk_03005894
	strh r0, [r1]
	add r2, sp, #0x14
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xb
	asrs r0, r0, #0xc
	adds r0, #3
	movs r3, #0
	strb r0, [r2, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bhi _0800E2A4
	add r1, sp, #0x14
	movs r0, #0xb
	strb r0, [r1, #4]
_0800E2A4:
	add r1, sp, #0x14
	movs r0, #4
	strb r0, [r1, #5]
	adds r2, r1, #0
	adds r0, r1, #0
	ldrb r1, [r0, #4]
	lsrs r1, r1, #1
	movs r0, #0xf
	subs r0, r0, r1
	strb r0, [r2, #2]
	adds r0, r2, #0
	ldrb r1, [r0, #5]
	lsrs r1, r1, #1
	movs r0, #0xa
	subs r0, r0, r1
	strb r0, [r2, #3]
	ldr r1, _0800E308 @ =gUnk_030058C8
	adds r0, r2, #0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
	ldr r1, _0800E30C @ =gUnk_03005884
	adds r0, r2, #0
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
	adds r0, r2, #0
	strb r3, [r0, #1]
	strb r3, [r0, #6]
	strb r3, [r0]
	strb r3, [r0, #7]
	adds r1, r0, #0
	movs r0, #5
	strb r0, [r1, #8]
	str r3, [sp, #0x20]
	str r3, [sp, #0x24]
	ldr r0, _0800E310 @ =gUnk_030056B8
	bl sub_08019944
	movs r0, #0x6a
	movs r1, #0
	bl sub_080147B8
	b _0800E3CC
	.align 2, 0
_0800E300: .4byte gUnk_03005170
_0800E304: .4byte gUnk_03005894
_0800E308: .4byte gUnk_030058C8
_0800E30C: .4byte gUnk_03005884
_0800E310: .4byte gUnk_030056B8
_0800E314:
	ldr r4, _0800E330 @ =gUnk_030056B8
	adds r0, r4, #0
	bl sub_0801BAD8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0800E3F6
	adds r0, r4, #0
	movs r1, #1
	bl sub_080199C0
	b _0800E3CC
	.align 2, 0
_0800E330: .4byte gUnk_030056B8
_0800E334:
	ldr r0, _0800E368 @ =gUnk_03005888
	ldr r1, _0800E36C @ =gUnk_03005170
	ldr r2, [r1]
	ldr r1, _0800E370 @ =gUnk_030058C8
	ldrh r3, [r1]
	adds r3, #1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r1, _0800E374 @ =gUnk_03005884
	ldrh r1, [r1]
	adds r1, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp]
	ldr r1, _0800E378 @ =0x44444444
	str r1, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #0
	bl sub_0800B1AC
	b _0800E3CC
	.align 2, 0
_0800E368: .4byte gUnk_03005888
_0800E36C: .4byte gUnk_03005170
_0800E370: .4byte gUnk_030058C8
_0800E374: .4byte gUnk_03005884
_0800E378: .4byte 0x44444444
_0800E37C:
	ldr r2, _0800E394 @ =gUnk_03005888
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800E398 @ =gUnk_03005180
	adds r1, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	bne _0800E39C
	movs r0, #0
	b _0800E39E
	.align 2, 0
_0800E394: .4byte gUnk_03005888
_0800E398: .4byte gUnk_03005180
_0800E39C:
	ldrb r0, [r1]
_0800E39E:
	cmp r0, #1
	bne _0800E3F6
	b _0800E3CC
_0800E3A4:
	ldr r0, _0800E3BC @ =gUnk_03005920
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800E3CC
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0800E3F6
	b _0800E3CC
	.align 2, 0
_0800E3BC: .4byte gUnk_03005920
_0800E3C0:
	ldr r0, _0800E3D8 @ =gUnk_03005888
	bl sub_0800B4E4
	ldr r0, _0800E3DC @ =gUnk_030056B8
	bl sub_0801BA7C
_0800E3CC:
	ldr r1, _0800E3E0 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0800E3F6
	.align 2, 0
_0800E3D8: .4byte gUnk_03005888
_0800E3DC: .4byte gUnk_030056B8
_0800E3E0: .4byte gUnk_03005578
_0800E3E4:
	ldr r0, _0800E404 @ =gUnk_030056B8
	bl sub_0801BAD8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0800E3F6
	ldr r0, _0800E408 @ =gUnk_03005578
	strh r1, [r0]
_0800E3F6:
	ldr r0, _0800E408 @ =gUnk_03005578
	movs r1, #0
	ldrsh r0, [r0, r1]
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E404: .4byte gUnk_030056B8
_0800E408: .4byte gUnk_03005578

	thumb_func_start sub_0800E40C
sub_0800E40C: @ 0x0800E40C
	push {r4, r5, lr}
	sub sp, #0x20
	ldr r5, _0800E424 @ =gUnk_03005578
	ldrh r4, [r5]
	cmp r4, #1
	bne _0800E41A
	b _0800E530
_0800E41A:
	cmp r4, #1
	bgt _0800E428
	cmp r4, #0
	beq _0800E436
	b _0800E67E
	.align 2, 0
_0800E424: .4byte gUnk_03005578
_0800E428:
	cmp r4, #2
	bne _0800E42E
	b _0800E5C4
_0800E42E:
	cmp r4, #3
	bne _0800E434
	b _0800E670
_0800E434:
	b _0800E67E
_0800E436:
	ldr r0, _0800E47C @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	beq _0800E450
	ldr r0, _0800E480 @ =0x000001C3
	bl sub_08012F60
	cmp r0, #1
	bne _0800E490
_0800E450:
	ldr r0, _0800E484 @ =gUnk_03005554
	ldr r3, [r0]
	adds r3, #0xd8
	ldr r0, _0800E488 @ =0x06010000
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0xd
	str r0, [sp, #8]
	ldr r0, _0800E48C @ =0x44444444
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	str r1, [sp, #0x1c]
	movs r0, #0
	movs r1, #2
	movs r2, #8
	bl sub_0800B618
	b _0800E4D8
	.align 2, 0
_0800E47C: .4byte gUnk_0300594C
_0800E480: .4byte 0x000001C3
_0800E484: .4byte gUnk_03005554
_0800E488: .4byte 0x06010000
_0800E48C: .4byte 0x44444444
_0800E490:
	movs r0, #0xe1
	lsls r0, r0, #1
	bl sub_08012F60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800E514 @ =gUnk_03005554
	ldr r3, [r1]
	adds r3, #0xd8
	ldr r1, _0800E518 @ =0x06010000
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0xd
	str r1, [sp, #8]
	ldr r1, _0800E51C @ =0x44444444
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #2
	str r1, [sp, #0x14]
	ldr r1, _0800E520 @ =gUnk_08B714A4
	adds r1, r0, r1
	ldrb r1, [r1]
	str r1, [sp, #0x18]
	ldr r1, _0800E524 @ =gUnk_08B7149C
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	movs r0, #0
	movs r1, #2
	movs r2, #8
	bl sub_0800B618
	movs r0, #0
	bl sub_08013630
_0800E4D8:
	ldr r4, _0800E528 @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009F0C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl sub_08009F50
	adds r0, r4, #0
	movs r1, #0xdc
	movs r2, #0x8a
	bl sub_0800A678
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800A6C0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800A6C4
	ldr r0, _0800E52C @ =0x000001C3
	movs r1, #0
	bl sub_08012F0C
	b _0800E5AA
	.align 2, 0
_0800E514: .4byte gUnk_03005554
_0800E518: .4byte 0x06010000
_0800E51C: .4byte 0x44444444
_0800E520: .4byte gUnk_08B714A4
_0800E524: .4byte gUnk_08B7149C
_0800E528: .4byte gUnk_03005610
_0800E52C: .4byte 0x000001C3
_0800E530:
	ldr r0, _0800E5B4 @ =gUnk_03005920
	ldrh r1, [r0]
	ands r4, r1
	cmp r4, #0
	bne _0800E552
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800E552
	ldr r0, _0800E5B8 @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800E55C
_0800E552:
	ldr r0, _0800E5BC @ =gUnk_03005640
	movs r1, #0
	strb r1, [r0, #0xb]
	bl sub_08008DB8
_0800E55C:
	ldr r0, _0800E5BC @ =gUnk_03005640
	ldrb r1, [r0, #2]
	cmp r1, #1
	bne _0800E58A
	ldr r0, _0800E5B4 @ =gUnk_03005920
	ldrh r2, [r0]
	ands r1, r2
	cmp r1, #0
	bne _0800E586
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0800E586
	ldr r0, _0800E5B8 @ =gUnk_0300594C
	ldrh r2, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800E58A
_0800E586:
	bl sub_0801369C
_0800E58A:
	ldr r0, _0800E5BC @ =gUnk_03005640
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _0800E594
	b _0800E67E
_0800E594:
	bl sub_080136BC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0800E5AA
	bl sub_080136BC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E67E
_0800E5AA:
	ldr r1, _0800E5C0 @ =gUnk_03005578
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0800E67E
	.align 2, 0
_0800E5B4: .4byte gUnk_03005920
_0800E5B8: .4byte gUnk_0300594C
_0800E5BC: .4byte gUnk_03005640
_0800E5C0: .4byte gUnk_03005578
_0800E5C4:
	movs r0, #0
	movs r1, #1
	bl sub_0800471C
	ldr r0, _0800E5E4 @ =gUnk_0300594C
	ldrh r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800E5E8
	movs r0, #0
	movs r1, #0
	bl sub_0800471C
	b _0800E67E
	.align 2, 0
_0800E5E4: .4byte gUnk_0300594C
_0800E5E8:
	ldr r0, _0800E604 @ =gUnk_03005920
	ldrh r3, [r0]
	movs r2, #1
	ands r2, r3
	cmp r2, #0
	bne _0800E608
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, r1
	bne _0800E644
	b _0800E610
	.align 2, 0
_0800E604: .4byte gUnk_03005920
_0800E608:
	movs r0, #0x64
	movs r1, #0
	bl sub_080147B8
_0800E610:
	ldr r4, _0800E63C @ =gUnk_03005640
	adds r0, r4, #0
	bl sub_08008C14
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #5]
	strb r0, [r4, #4]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	ldr r1, _0800E640 @ =gUnk_03005578
	strh r0, [r1]
	b _0800E67E
	.align 2, 0
_0800E63C: .4byte gUnk_03005640
_0800E640: .4byte gUnk_03005578
_0800E644:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0800E65C
	ldr r0, _0800E658 @ =gUnk_03005554
	ldr r0, [r0]
	strb r2, [r0, #1]
	ldrh r0, [r5]
	adds r0, #1
	b _0800E67C
	.align 2, 0
_0800E658: .4byte gUnk_03005554
_0800E65C:
	ldr r4, _0800E66C @ =gUnk_03005610
	adds r0, r4, #0
	bl sub_08009FF8
	adds r0, r4, #0
	bl sub_0800A778
	b _0800E67E
	.align 2, 0
_0800E66C: .4byte gUnk_03005610
_0800E670:
	bl sub_0800C614
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E67E
	movs r0, #2
_0800E67C:
	strh r0, [r5]
_0800E67E:
	ldr r0, _0800E68C @ =gUnk_03005578
	movs r1, #0
	ldrsh r0, [r0, r1]
	add sp, #0x20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800E68C: .4byte gUnk_03005578

	thumb_func_start sub_0800E690
sub_0800E690: @ 0x0800E690
	push {r4, lr}
	ldr r3, _0800E6AC @ =gUnk_030053B0
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r2, r3, r4
	str r0, [r2]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r3, r2
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6AC: .4byte gUnk_030053B0

	thumb_func_start sub_0800E6B0
sub_0800E6B0: @ 0x0800E6B0
	push {r4, lr}
	ldr r3, _0800E6CC @ =gUnk_03005180
	movs r4, #0xea
	lsls r4, r4, #2
	adds r2, r3, r4
	str r0, [r2]
	movs r2, #0xeb
	lsls r2, r2, #2
	adds r0, r3, r2
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6CC: .4byte gUnk_03005180

	thumb_func_start sub_0800E6D0
sub_0800E6D0: @ 0x0800E6D0
	push {r4, lr}
	ldr r2, _0800E6E8 @ =gUnk_03005180
	movs r4, #0xf3
	lsls r4, r4, #2
	adds r3, r2, r4
	strh r0, [r3]
	ldr r0, _0800E6EC @ =0x000003CE
	adds r2, r2, r0
	strh r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6E8: .4byte gUnk_03005180
_0800E6EC: .4byte 0x000003CE

	thumb_func_start sub_0800E6F0
sub_0800E6F0: @ 0x0800E6F0
	ldr r2, _0800E710 @ =gUnk_03005180
	mov ip, r2
	lsls r2, r0, #2
	movs r3, #0xef
	lsls r3, r3, #2
	add r3, ip
	adds r2, r2, r3
	str r1, [r2]
	movs r1, #0xed
	lsls r1, r1, #2
	add r1, ip
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E710: .4byte gUnk_03005180

	thumb_func_start sub_0800E714
sub_0800E714: @ 0x0800E714
	ldr r1, _0800E724 @ =gUnk_03005180
	lsls r0, r0, #2
	movs r2, #0xef
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800E724: .4byte gUnk_03005180

	thumb_func_start sub_0800E728
sub_0800E728: @ 0x0800E728
	push {r4, lr}
	ldr r3, _0800E748 @ =gUnk_03005180
	lsls r1, r0, #2
	movs r4, #0xef
	lsls r4, r4, #2
	adds r2, r3, r4
	adds r1, r1, r2
	movs r2, #0
	str r2, [r1]
	subs r4, #8
	adds r1, r3, r4
	adds r0, r0, r1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E748: .4byte gUnk_03005180

	thumb_func_start sub_0800E74C
sub_0800E74C: @ 0x0800E74C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800E760 @ =gUnk_03005180
	movs r2, #0xee
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E760: .4byte gUnk_03005180

	thumb_func_start sub_0800E764
sub_0800E764: @ 0x0800E764
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800E778 @ =gUnk_03005180
	movs r2, #0xee
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E778: .4byte gUnk_03005180

	thumb_func_start sub_0800E77C
sub_0800E77C: @ 0x0800E77C
	push {r4, lr}
	lsls r0, r0, #0x10
	movs r4, #0
	ldr r3, _0800E7DC @ =gUnk_03005580
	movs r2, #0xf0
	lsls r2, r2, #0x14
	ands r2, r0
	lsrs r2, r2, #0x18
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r2, #0
	adds r0, r0, r3
	adds r3, r0, #0
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	strh r2, [r3, #4]
	strh r2, [r3, #6]
	strh r2, [r3, #8]
	strh r2, [r3, #0xa]
	strh r2, [r3, #0xc]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x10]
_0800E7AC:
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800E7D4
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0800E7D4
	ldrh r0, [r1, #4]
	strh r0, [r3, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0800E7D4
	adds r1, #6
	adds r3, #6
	adds r2, #3
	cmp r2, #8
	bls _0800E7AC
_0800E7D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7DC: .4byte gUnk_03005580

	thumb_func_start sub_0800E7E0
sub_0800E7E0: @ 0x0800E7E0
	push {lr}
	ldrb r2, [r0]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r2, _0800E7F8 @ =gUnk_03005180
	adds r1, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800E7FC
	ldrb r0, [r1]
	b _0800E7FE
	.align 2, 0
_0800E7F8: .4byte gUnk_03005180
_0800E7FC:
	movs r0, #0
_0800E7FE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800E804
sub_0800E804: @ 0x0800E804
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800E814 @ =gUnk_03005180
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	bx lr
	.align 2, 0
_0800E814: .4byte gUnk_03005180

	thumb_func_start sub_0800E818
sub_0800E818: @ 0x0800E818
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800E828 @ =gUnk_03005180
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	bx lr
	.align 2, 0
_0800E828: .4byte gUnk_03005180

	thumb_func_start sub_0800E82C
sub_0800E82C: @ 0x0800E82C
	ldrb r3, [r0]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #2
	ldr r3, _0800E840 @ =gUnk_03005180
	adds r0, r0, r3
	strb r1, [r0, #5]
	strb r2, [r0, #6]
	bx lr
	.align 2, 0
_0800E840: .4byte gUnk_03005180

	thumb_func_start sub_0800E844
sub_0800E844: @ 0x0800E844
	ldrb r2, [r0]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _0800E854 @ =gUnk_03005180
	adds r0, r0, r2
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0
_0800E854: .4byte gUnk_03005180

	thumb_func_start sub_0800E858
sub_0800E858: @ 0x0800E858
	push {lr}
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800E874 @ =gUnk_03005180
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _0800E870
	movs r0, #3
	strb r0, [r1]
_0800E870:
	pop {r0}
	bx r0
	.align 2, 0
_0800E874: .4byte gUnk_03005180

	thumb_func_start sub_0800E878
sub_0800E878: @ 0x0800E878
	push {lr}
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800E894 @ =gUnk_03005180
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800E890
	movs r0, #2
	strb r0, [r1]
_0800E890:
	pop {r0}
	bx r0
	.align 2, 0
_0800E894: .4byte gUnk_03005180

	thumb_func_start sub_0800E898
sub_0800E898: @ 0x0800E898
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r0]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _0800E8B0 @ =gUnk_03005180
	adds r0, r0, r2
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0
_0800E8B0: .4byte gUnk_03005180

	thumb_func_start sub_0800E8B4
sub_0800E8B4: @ 0x0800E8B4
	push {r4, r5, r6, lr}
	sub sp, #8
	ldrb r0, [r0]
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	ldr r5, _0800E904 @ =gUnk_03005180
	adds r3, r3, r5
	ldrb r0, [r3, #7]
	lsls r0, r0, #2
	movs r2, #0xef
	lsls r2, r2, #2
	adds r1, r5, r2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #5
	ldrsb r1, [r3, r1]
	movs r2, #6
	ldrsb r2, [r3, r2]
	ldrb r4, [r3, #2]
	lsls r3, r4, #1
	lsrs r4, r4, #1
	subs r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r6, #0xf3
	lsls r6, r6, #2
	adds r4, r5, r6
	ldrh r4, [r4]
	str r4, [sp]
	ldr r4, _0800E908 @ =0x000003CE
	adds r5, r5, r4
	ldrh r4, [r5]
	str r4, [sp, #4]
	bl sub_0800393C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E904: .4byte gUnk_03005180
_0800E908: .4byte 0x000003CE

	thumb_func_start sub_0800E90C
sub_0800E90C: @ 0x0800E90C
	ldr r0, _0800E914 @ =gUnk_03005640
	ldrb r0, [r0, #2]
	bx lr
	.align 2, 0
_0800E914: .4byte gUnk_03005640

	thumb_func_start sub_0800E918
sub_0800E918: @ 0x0800E918
	ldr r3, _0800E944 @ =gUnk_03005640
	ldrb r1, [r3, #4]
	lsls r1, r1, #2
	adds r2, r3, #0
	adds r2, #0x14
	adds r1, r1, r2
	str r0, [r1]
	ldrb r0, [r3, #4]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r2, [r3, #4]
	adds r0, r0, r2
	strb r1, [r0]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	bx lr
	.align 2, 0
_0800E944: .4byte gUnk_03005640

	thumb_func_start sub_0800E948
sub_0800E948: @ 0x0800E948
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0800E95C @ =gUnk_03005640
	strb r1, [r0, #0xb]
	bl sub_08008DB8
	pop {r0}
	bx r0
	.align 2, 0
_0800E95C: .4byte gUnk_03005640

	thumb_func_start sub_0800E960
sub_0800E960: @ 0x0800E960
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0800E984 @ =gUnk_03005640
	adds r1, r2, #0
	bl sub_08008EB4
	adds r1, r4, #0
	bl sub_0800B31C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E984: .4byte gUnk_03005640

	thumb_func_start sub_0800E988
sub_0800E988: @ 0x0800E988
	push {r4, lr}
	ldr r4, _0800E9B8 @ =gUnk_03005640
	adds r0, r4, #0
	bl sub_08008C14
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #5]
	strb r0, [r4, #4]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9B8: .4byte gUnk_03005640

	thumb_func_start sub_0800E9BC
sub_0800E9BC: @ 0x0800E9BC
	lsls r0, r0, #0x18
	ldr r1, _0800E9CC @ =gUnk_03005640
	lsrs r0, r0, #0x16
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800E9CC: .4byte gUnk_03005640

	thumb_func_start sub_0800E9D0
sub_0800E9D0: @ 0x0800E9D0
	ldr r0, _0800E9D8 @ =gUnk_03005640
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_0800E9D8: .4byte gUnk_03005640

	thumb_func_start sub_0800E9DC
sub_0800E9DC: @ 0x0800E9DC
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xce
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0800EA4C @ =gUnk_030056C0
	adds r5, r1, r0
	movs r4, #0
	str r4, [sp]
	ldr r2, _0800EA50 @ =0x05000067
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	adds r0, r5, #0
	adds r0, #0x14
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x3c
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x64
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0xb4
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0xdc
	bl sub_08009F0C
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08009F0C
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08009F0C
	strb r4, [r5]
	strb r4, [r5, #1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA4C: .4byte gUnk_030056C0
_0800EA50: .4byte 0x05000067

	thumb_func_start sub_0800EA54
sub_0800EA54: @ 0x0800EA54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xce
	lsls r2, r2, #1
	muls r0, r2, r0
	ldr r2, _0800EA6C @ =gUnk_030056C0
	adds r0, r0, r2
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0800EA6C: .4byte gUnk_030056C0

	thumb_func_start sub_0800EA70
sub_0800EA70: @ 0x0800EA70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0xce
	lsls r3, r3, #1
	muls r0, r3, r0
	ldr r3, _0800EA8C @ =gUnk_030056C0
	adds r0, r0, r3
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0800EA8C: .4byte gUnk_030056C0

	thumb_func_start sub_0800EA90
sub_0800EA90: @ 0x0800EA90
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xce
	lsls r2, r2, #1
	muls r0, r2, r0
	ldr r2, _0800EAA8 @ =gUnk_030056C0
	adds r0, r0, r2
	strb r1, [r0, #8]
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
_0800EAA8: .4byte gUnk_030056C0

	thumb_func_start sub_0800EAAC
sub_0800EAAC: @ 0x0800EAAC
	push {lr}
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xce
	lsls r2, r2, #1
	muls r0, r2, r0
	ldr r2, _0800EAD8 @ =gUnk_030056C0
	adds r0, r0, r2
	strb r1, [r0, #0xc]
	adds r1, #0x10
	adds r0, r3, #0
	bl sub_080036C4
	pop {r0}
	bx r0
	.align 2, 0
_0800EAD8: .4byte gUnk_030056C0

	thumb_func_start sub_0800EADC
sub_0800EADC: @ 0x0800EADC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0xce
	lsls r3, r3, #1
	muls r0, r3, r0
	ldr r3, _0800EAF0 @ =gUnk_030056C0
	adds r0, r0, r3
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	bx lr
	.align 2, 0
_0800EAF0: .4byte gUnk_030056C0

	thumb_func_start sub_0800EAF4
sub_0800EAF4: @ 0x0800EAF4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xce
	lsls r2, r2, #1
	muls r0, r2, r0
	ldr r2, _0800EB08 @ =gUnk_030056C0
	adds r0, r0, r2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0
_0800EB08: .4byte gUnk_030056C0

	thumb_func_start sub_0800EB0C
sub_0800EB0C: @ 0x0800EB0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xce
	lsls r2, r2, #1
	muls r0, r2, r0
	ldr r2, _0800EB20 @ =gUnk_030056C0
	adds r0, r0, r2
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0
_0800EB20: .4byte gUnk_030056C0

	thumb_func_start sub_0800EB24
sub_0800EB24: @ 0x0800EB24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xce
	lsls r2, r2, #1
	muls r0, r2, r0
	ldr r2, _0800EB38 @ =gUnk_030056C0
	adds r0, r0, r2
	strb r1, [r0, #9]
	bx lr
	.align 2, 0
_0800EB38: .4byte gUnk_030056C0

	thumb_func_start sub_0800EB3C
sub_0800EB3C: @ 0x0800EB3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0xce
	lsls r3, r3, #1
	muls r0, r3, r0
	ldr r3, _0800EB50 @ =gUnk_030056C0
	adds r0, r0, r3
	strb r1, [r0, #0xf]
	strb r2, [r0, #0x10]
	bx lr
	.align 2, 0
_0800EB50: .4byte gUnk_030056C0

	thumb_func_start sub_0800EB54
sub_0800EB54: @ 0x0800EB54
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xce
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0800EB84 @ =gUnk_030056C0
	adds r0, r0, r1
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	subs r1, #0x14
	adds r0, r0, r1
	bl sub_0800A7A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0800EB84: .4byte gUnk_030056C0

	thumb_func_start sub_0800EB88
sub_0800EB88: @ 0x0800EB88
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xce
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0800EBF8 @ =gUnk_030056C0
	adds r5, r1, r0
	movs r4, #0
	str r4, [sp]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _0800EBFC @ =0x05000067
	bl CpuSet
	adds r0, r5, #0
	adds r0, #0x14
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x3c
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x64
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0x8c
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0xb4
	bl sub_08009F0C
	adds r0, r5, #0
	adds r0, #0xdc
	bl sub_08009F0C
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08009F0C
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_08009F0C
	strb r4, [r5]
	strb r4, [r5, #1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EBF8: .4byte gUnk_030056C0
_0800EBFC: .4byte 0x05000067

	thumb_func_start sub_0800EC00
sub_0800EC00: @ 0x0800EC00
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xce
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0800EC14 @ =gUnk_030056C0
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0800EC14: .4byte gUnk_030056C0

	thumb_func_start sub_0800EC18
sub_0800EC18: @ 0x0800EC18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xce
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0800EC30 @ =gUnk_030056C0
	adds r0, r0, r1
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800EC30: .4byte gUnk_030056C0

	thumb_func_start sub_0800EC34
sub_0800EC34: @ 0x0800EC34
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	ldr r5, _0800EC5C @ =gUnk_030058D0
	ldr r2, _0800EC60 @ =0x05000012
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	str r4, [r5, #0x30]
	str r4, [r5, #0x34]
	str r4, [r5, #0x38]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC5C: .4byte gUnk_030058D0
_0800EC60: .4byte 0x05000012

	thumb_func_start sub_0800EC64
sub_0800EC64: @ 0x0800EC64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	mov r8, r4
	ldr r7, _0800ECA8 @ =gUnk_030058D0
	mov ip, r7
	movs r5, #0
	movs r4, #0
	strh r4, [r7]
	strh r4, [r7, #2]
	mov r4, ip
	adds r4, #0x20
	strb r0, [r4]
	mov r0, ip
	adds r0, #0x21
	strb r5, [r0]
	adds r0, #3
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r3, [r7, #0x2c]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	mov r1, r8
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECA8: .4byte gUnk_030058D0

	thumb_func_start sub_0800ECAC
sub_0800ECAC: @ 0x0800ECAC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800ECEC @ =gUnk_030058D0
	adds r6, r5, #0
	adds r6, #0x28
	strb r0, [r6]
	str r2, [r5, #0x44]
	adds r0, r2, #0
	bl sub_08009F0C
	ldr r0, [r5, #0x44]
	adds r1, r4, #0
	movs r2, #1
	bl sub_0800A6C0
	ldr r0, [r5, #0x44]
	ldrb r1, [r6]
	movs r2, #0
	movs r3, #1
	bl sub_08009F50
	ldr r0, [r5, #0x44]
	movs r1, #0
	movs r2, #0
	bl sub_0800A678
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECEC: .4byte gUnk_030058D0

	thumb_func_start sub_0800ECF0
sub_0800ECF0: @ 0x0800ECF0
	ldr r1, _0800ECF8 @ =gUnk_030058D0
	adds r1, #0x29
	strb r0, [r1]
	bx lr
	.align 2, 0
_0800ECF8: .4byte gUnk_030058D0

	thumb_func_start sub_0800ECFC
sub_0800ECFC: @ 0x0800ECFC
	ldr r1, _0800ED04 @ =gUnk_030058D0
	str r0, [r1, #0x3c]
	bx lr
	.align 2, 0
_0800ED04: .4byte gUnk_030058D0

	thumb_func_start sub_0800ED08
sub_0800ED08: @ 0x0800ED08
	ldr r1, _0800ED10 @ =gUnk_030058D0
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0
_0800ED10: .4byte gUnk_030058D0

	thumb_func_start sub_0800ED14
sub_0800ED14: @ 0x0800ED14
	ldr r3, _0800ED34 @ =gUnk_030058D0
	str r1, [r3, #0x34]
	str r0, [r3, #0x30]
	str r2, [r3, #0x38]
	movs r0, #0
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	strh r0, [r3, #0xa]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	strh r0, [r3, #0x12]
	strh r0, [r3, #0x14]
	bx lr
	.align 2, 0
_0800ED34: .4byte gUnk_030058D0

	thumb_func_start sub_0800ED38
sub_0800ED38: @ 0x0800ED38
	ldr r0, _0800ED44 @ =gUnk_030058D0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0800ED44: .4byte gUnk_030058D0

	thumb_func_start sub_0800ED48
sub_0800ED48: @ 0x0800ED48
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0800ED5C @ =gUnk_030058D0
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _0800ED60
	adds r1, #0x21
	movs r0, #0
	strb r0, [r1]
	b _0800ED66
	.align 2, 0
_0800ED5C: .4byte gUnk_030058D0
_0800ED60:
	adds r0, r1, #0
	adds r0, #0x21
	strb r2, [r0]
_0800ED66:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800ED6C
sub_0800ED6C: @ 0x0800ED6C
	ldr r1, _0800ED74 @ =gUnk_03005554
	ldr r1, [r1]
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_0800ED74: .4byte gUnk_03005554

	thumb_func_start sub_0800ED78
sub_0800ED78: @ 0x0800ED78
	push {r4, r5, r6, r7, lr}
	movs r2, #0
_0800ED7C:
	movs r0, #0xce
	lsls r0, r0, #1
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0800EDA0 @ =gUnk_030056C0
	adds r5, r1, r0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0800EDA4
	adds r7, r2, #1
	cmp r0, #1
	ble _0800EDDC
	cmp r0, #2
	bne _0800EDDC
	adds r0, r5, #0
	bl sub_0800CF84
	b _0800EDDC
	.align 2, 0
_0800EDA0: .4byte gUnk_030056C0
_0800EDA4:
	movs r6, #0
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r7, r2, #1
	cmp r6, r0
	bhs _0800EDDC
	adds r4, r5, #0
	adds r4, #0x14
_0800EDB8:
	adds r0, r4, #0
	bl sub_08009FF8
	movs r0, #9
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _0800EDCC
	adds r0, r4, #0
	bl sub_0800A778
_0800EDCC:
	adds r4, #0x28
	adds r6, #1
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r6, r0
	blo _0800EDB8
_0800EDDC:
	adds r2, r7, #0
	cmp r2, #0
	beq _0800ED7C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800EDE8
sub_0800EDE8: @ 0x0800EDE8
	push {lr}
	bl sub_08012EC4
	ldr r1, _0800EE0C @ =gUnk_03005178
	str r0, [r1]
_0800EDF2:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EDF2
	ldr r0, _0800EE10 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800EE0C: .4byte gUnk_03005178
_0800EE10: .4byte gUnk_03006578

	thumb_func_start sub_0800EE14
sub_0800EE14: @ 0x0800EE14
	ldr r1, _0800EE28 @ =gUnk_03005178
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800EE2C @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	bx lr
	.align 2, 0
_0800EE28: .4byte gUnk_03005178
_0800EE2C: .4byte gUnk_03006578

	thumb_func_start sub_0800EE30
sub_0800EE30: @ 0x0800EE30
	push {lr}
	bl sub_08012EE0
	ldr r1, _0800EE50 @ =gUnk_03005560
	strh r0, [r1, #0x10]
	ldr r1, _0800EE54 @ =gUnk_03005890
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0800EE58 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800EE50: .4byte gUnk_03005560
_0800EE54: .4byte gUnk_03005890
_0800EE58: .4byte gUnk_03006578

	thumb_func_start sub_0800EE5C
sub_0800EE5C: @ 0x0800EE5C
	ldr r1, _0800EE74 @ =gUnk_03005578
	movs r2, #0
	strh r2, [r1]
	ldr r1, _0800EE78 @ =gUnk_030056B8
	strh r2, [r1]
	ldr r1, _0800EE7C @ =gUnk_03005888
	strh r2, [r1]
	ldr r1, _0800EE80 @ =gUnk_03005170
	str r0, [r1]
	ldr r0, _0800EE84 @ =gUnk_03005894
	strh r2, [r0]
	bx lr
	.align 2, 0
_0800EE74: .4byte gUnk_03005578
_0800EE78: .4byte gUnk_030056B8
_0800EE7C: .4byte gUnk_03005888
_0800EE80: .4byte gUnk_03005170
_0800EE84: .4byte gUnk_03005894

	thumb_func_start sub_0800EE88
sub_0800EE88: @ 0x0800EE88
	push {lr}
	bl sub_08012EC4
	ldr r1, _0800EEBC @ =gUnk_03005578
	movs r2, #0
	strh r2, [r1]
	ldr r1, _0800EEC0 @ =gUnk_030056B8
	strh r2, [r1]
	ldr r1, _0800EEC4 @ =gUnk_03005888
	strh r2, [r1]
	ldr r1, _0800EEC8 @ =gUnk_03005170
	str r0, [r1]
	ldr r0, _0800EECC @ =gUnk_03005894
	strh r2, [r0]
_0800EEA4:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EEA4
	ldr r0, _0800EED0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800EEBC: .4byte gUnk_03005578
_0800EEC0: .4byte gUnk_030056B8
_0800EEC4: .4byte gUnk_03005888
_0800EEC8: .4byte gUnk_03005170
_0800EECC: .4byte gUnk_03005894
_0800EED0: .4byte gUnk_03006578

	thumb_func_start sub_0800EED4
sub_0800EED4: @ 0x0800EED4
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
	ldr r0, _0800EF04 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800EF04: .4byte gUnk_03006578

	thumb_func_start sub_0800EF08
sub_0800EF08: @ 0x0800EF08
	push {r4, r5, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08012EC4
	adds r4, r0, #0
_0800EF18:
	bl sub_08012EE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EF18
	adds r0, r4, #0
	bl sub_0800B130
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08012F0C
	ldr r0, _0800EF44 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800EF44: .4byte gUnk_03006578

	thumb_func_start sub_0800EF48
sub_0800EF48: @ 0x0800EF48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0800EFB8 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _0800EFBC @ =0x000003FF
	adds r0, r2, #0
	adds r2, r0, #0
	eors r2, r1
	mov ip, r2
	ldr r2, _0800EFC0 @ =gUnk_03005920
	ldr r3, _0800EFC4 @ =gUnk_0300594C
	ldrh r1, [r3]
	mov r0, ip
	bics r0, r1
	strh r0, [r2]
	ldr r0, _0800EFC8 @ =gUnk_03005948
	mov r2, ip
	bics r1, r2
	strh r1, [r0]
	movs r4, #0
	mov sb, r3
	movs r0, #1
	mov r8, r0
	ldr r7, _0800EFCC @ =gUnk_03005930
	ldr r5, _0800EFD0 @ =gUnk_03005944
	movs r6, #1
_0800EF80:
	mov r0, ip
	asrs r0, r4
	mov r1, r8
	ands r0, r1
	mov r1, sb
	ldrh r2, [r1]
	asrs r2, r4
	mov r1, r8
	ands r2, r1
	cmp r0, #0
	beq _0800EFE4
	cmp r2, #0
	beq _0800EFF4
	lsls r0, r4, #1
	adds r2, r0, r7
	ldrh r3, [r2]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0x13
	ble _0800EFD4
	adds r0, r6, #0
	lsls r0, r4
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	subs r0, r3, #4
	strh r0, [r2]
	b _0800F018
	.align 2, 0
_0800EFB8: .4byte 0x04000130
_0800EFBC: .4byte 0x000003FF
_0800EFC0: .4byte gUnk_03005920
_0800EFC4: .4byte gUnk_0300594C
_0800EFC8: .4byte gUnk_03005948
_0800EFCC: .4byte gUnk_03005930
_0800EFD0: .4byte gUnk_03005944
_0800EFD4:
	adds r0, r6, #0
	lsls r0, r4
	ldrh r1, [r5]
	bics r1, r0
	strh r1, [r5]
	adds r0, r3, #1
	strh r0, [r2]
	b _0800F018
_0800EFE4:
	cmp r2, #0
	bne _0800F006
	adds r0, r6, #0
	lsls r0, r4
	ldrh r1, [r5]
	bics r1, r0
	strh r1, [r5]
	b _0800EFFE
_0800EFF4:
	adds r0, r6, #0
	lsls r0, r4
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
_0800EFFE:
	lsls r0, r4, #1
	adds r0, r0, r7
	strh r2, [r0]
	b _0800F018
_0800F006:
	adds r1, r6, #0
	lsls r1, r4
	ldrh r0, [r5]
	bics r0, r1
	strh r0, [r5]
	lsls r0, r4, #1
	adds r0, r0, r7
	movs r1, #0
	strh r1, [r0]
_0800F018:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #9
	bls _0800EF80
	mov r0, ip
	mov r2, sb
	strh r0, [r2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F034
sub_0800F034: @ 0x0800F034
	ldr r0, _0800F050 @ =gUnk_0300594C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800F054 @ =gUnk_03005920
	strh r1, [r0]
	ldr r0, _0800F058 @ =gUnk_03005944
	strh r1, [r0]
	ldr r0, _0800F05C @ =gUnk_03005948
	strh r1, [r0]
	ldr r1, _0800F060 @ =gUnk_03005930
	movs r0, #0
	strh r0, [r1, #0x14]
	bx lr
	.align 2, 0
_0800F050: .4byte gUnk_0300594C
_0800F054: .4byte gUnk_03005920
_0800F058: .4byte gUnk_03005944
_0800F05C: .4byte gUnk_03005948
_0800F060: .4byte gUnk_03005930

	thumb_func_start sub_0800F064
sub_0800F064: @ 0x0800F064
	ldr r0, _0800F080 @ =gUnk_0300594C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800F084 @ =gUnk_03005920
	strh r1, [r0]
	ldr r0, _0800F088 @ =gUnk_03005944
	strh r1, [r0]
	ldr r0, _0800F08C @ =gUnk_03005948
	strh r1, [r0]
	ldr r1, _0800F090 @ =gUnk_03005930
	movs r0, #0
	strh r0, [r1, #0x14]
	bx lr
	.align 2, 0
_0800F080: .4byte gUnk_0300594C
_0800F084: .4byte gUnk_03005920
_0800F088: .4byte gUnk_03005944
_0800F08C: .4byte gUnk_03005948
_0800F090: .4byte gUnk_03005930

	thumb_func_start sub_0800F094
sub_0800F094: @ 0x0800F094
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _0800F138 @ =gUnk_03005960
	movs r0, #0
	str r0, [sp]
	ldr r2, _0800F13C @ =0x050002A9
	mov r0, sp
	bl CpuSet
	movs r0, #0xc0
	lsls r0, r0, #1
	bl sub_08012F60
	cmp r0, #1
	beq _0800F144
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_08010ED0
	bl sub_08010F14
	adds r5, r0, #0
	lsrs r5, r5, #0x10
	bl sub_08010F14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x84
	adds r1, r5, #0
	bl sub_08012F0C
	movs r0, #0x83
	adds r1, r4, #0
	bl sub_08012F0C
	bl sub_08010F38
	adds r5, r0, #0
	lsrs r5, r5, #0x10
	bl sub_08010F38
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x86
	adds r1, r5, #0
	bl sub_08012F0C
	movs r0, #0x85
	adds r1, r4, #0
	bl sub_08012F0C
	bl sub_08010F5C
	adds r5, r0, #0
	lsrs r5, r5, #0x10
	bl sub_08010F5C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x88
	adds r1, r5, #0
	bl sub_08012F0C
	movs r0, #0x87
	adds r1, r4, #0
	bl sub_08012F0C
	movs r0, #0
	bl sub_08010F80
	ldr r0, _0800F140 @ =0x000001C1
	movs r1, #0
	bl sub_08012F0C
	b _0800F1AC
	.align 2, 0
_0800F138: .4byte gUnk_03005960
_0800F13C: .4byte 0x050002A9
_0800F140: .4byte 0x000001C1
_0800F144:
	movs r0, #0x84
	bl sub_08012F60
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0x83
	bl sub_08012F60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r6, r6, #0x10
	orrs r6, r0
	movs r0, #0x86
	bl sub_08012F60
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x85
	bl sub_08012F60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r5, r5, #0x10
	orrs r5, r0
	movs r0, #0x88
	bl sub_08012F60
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x87
	bl sub_08012F60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	orrs r4, r0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08010ED0
	ldr r0, _0800F1F4 @ =0x000001C1
	bl sub_08012F60
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_08010F80
_0800F1AC:
	movs r0, #0
	bl sub_08010D0C
	movs r0, #0
	bl sub_08010D2C
	ldr r0, _0800F1F8 @ =gUnk_03005950
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800F1FC @ =gUnk_030064B4
	strh r1, [r0]
	ldr r0, _0800F200 @ =gUnk_03005958
	strh r1, [r0]
	ldr r0, _0800F204 @ =sub_08011F54
	ldr r5, _0800F208 @ =gUnk_03006410
	ldr r2, _0800F20C @ =0x04000029
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _0800F210 @ =sub_08011FF8
	ldr r4, _0800F214 @ =gUnk_030064C0
	ldr r2, _0800F218 @ =0x0400002A
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0800F21C @ =gUnk_03005954
	ldr r1, _0800F220 @ =gUnk_03006568
	adds r5, #1
	str r5, [r0]
	adds r4, #1
	str r4, [r1]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1F4: .4byte 0x000001C1
_0800F1F8: .4byte gUnk_03005950
_0800F1FC: .4byte gUnk_030064B4
_0800F200: .4byte gUnk_03005958
_0800F204: .4byte sub_08011F54
_0800F208: .4byte gUnk_03006410
_0800F20C: .4byte 0x04000029
_0800F210: .4byte sub_08011FF8
_0800F214: .4byte gUnk_030064C0
_0800F218: .4byte 0x0400002A
_0800F21C: .4byte gUnk_03005954
_0800F220: .4byte gUnk_03006568

	thumb_func_start sub_0800F224
sub_0800F224: @ 0x0800F224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r5, _0800F288 @ =gUnk_03005960
	ldr r2, _0800F28C @ =0x00000AA1
	adds r1, r5, r2
	ldrb r1, [r1]
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	ldr r4, _0800F290 @ =0x00000A94
	adds r1, r5, r4
	adds r1, r3, r1
	ldr r1, [r1]
	ldr r7, _0800F294 @ =0x00000A98
	adds r2, r5, r7
	adds r2, r3, r2
	ldr r2, [r2]
	adds r7, #4
	adds r4, r5, r7
	adds r3, r3, r4
	ldr r3, [r3]
	adds r7, #4
	adds r4, r5, r7
	ldrb r4, [r4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, _0800F298 @ =0x00000AA2
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800F29C
	adds r0, r1, #0
	bl sub_080118BC
	b _0800F2AE
	.align 2, 0
_0800F288: .4byte gUnk_03005960
_0800F28C: .4byte 0x00000AA1
_0800F290: .4byte 0x00000A94
_0800F294: .4byte 0x00000A98
_0800F298: .4byte 0x00000AA2
_0800F29C:
	cmp r0, #2
	bne _0800F2B2
	adds r0, r1, #0
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
_0800F2AE:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0800F2B2:
	mov r4, r8
	lsls r0, r4, #4
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r0, r5
	strh r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F2CC
sub_0800F2CC: @ 0x0800F2CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	ldr r2, _0800F4AC @ =gUnk_03005960
	ldr r1, _0800F4B0 @ =0x00000AA1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _0800F4B4 @ =0x00000A94
	adds r0, r2, r4
	adds r0, r1, r0
	ldr r0, [r0]
	mov r8, r0
	adds r4, #4
	adds r0, r2, r4
	adds r0, r1, r0
	ldr r7, [r0]
	adds r4, #4
	adds r0, r2, r4
	adds r1, r1, r0
	ldr r6, [r1]
	ldr r1, _0800F4B8 @ =0x00000AA2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F31A
	b _0800F4BC
_0800F31A:
	ldr r4, [sp, #4]
	mov sl, r4
	ldr r0, [sp, #8]
	add r0, sl
	cmp sl, r0
	blo _0800F328
	b _0800F96A
_0800F328:
	movs r0, #0xaa
	lsls r0, r0, #4
	adds r0, r0, r2
	mov sb, r0
	adds r5, r3, #0
	lsls r0, r4, #5
	adds r4, r0, r2
_0800F336:
	ldrh r0, [r5]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4]
	ldrh r0, [r5, #2]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #6]
	ldrh r0, [r5, #8]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #8]
	ldrh r0, [r5, #0xa]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0xc]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #0xe]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0xe]
	ldrh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0x12]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x16]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x18]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0x1a]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x1a]
	ldrh r0, [r5, #0x1c]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x1c]
	ldrh r0, [r5, #0x1e]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x1e]
	adds r4, #0x20
	movs r0, #1
	add sl, r0
	adds r5, #0x20
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r1, r2
	cmp sl, r0
	bhs _0800F4AA
	b _0800F336
_0800F4AA:
	b _0800F96A
	.align 2, 0
_0800F4AC: .4byte gUnk_03005960
_0800F4B0: .4byte 0x00000AA1
_0800F4B4: .4byte 0x00000A94
_0800F4B8: .4byte 0x00000AA2
_0800F4BC:
	cmp r0, #1
	beq _0800F4C2
	b _0800F6D4
_0800F4C2:
	ldr r4, [sp, #4]
	mov sl, r4
	ldr r0, [sp, #8]
	add r0, sl
	cmp sl, r0
	blo _0800F4D0
	b _0800F96A
_0800F4D0:
	movs r0, #0xaa
	lsls r0, r0, #4
	adds r0, r0, r2
	mov sb, r0
	adds r5, r3, #0
	lsls r0, r4, #5
	adds r4, r0, r2
_0800F4DE:
	ldrh r0, [r5]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4]
	ldrh r0, [r5, #2]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #6]
	ldrh r0, [r5, #8]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #8]
	ldrh r0, [r5, #0xa]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0xc]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #0xe]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0xe]
	ldrh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0x12]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x16]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x18]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0x1a]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x1a]
	ldrh r0, [r5, #0x1c]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x1c]
	ldrh r0, [r5, #0x1e]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x1e]
	adds r4, #0x20
	movs r0, #1
	add sl, r0
	adds r5, #0x20
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r1, r2
	cmp sl, r0
	bhs _0800F6D2
	b _0800F4DE
_0800F6D2:
	b _0800F96A
_0800F6D4:
	cmp r0, #2
	beq _0800F6DA
	b _0800F96A
_0800F6DA:
	ldr r4, [sp, #4]
	mov sl, r4
	ldr r0, [sp, #8]
	add r0, sl
	cmp sl, r0
	blo _0800F6E8
	b _0800F96A
_0800F6E8:
	movs r0, #0xaa
	lsls r0, r0, #4
	adds r0, r0, r2
	mov sb, r0
	adds r5, r3, #0
	lsls r0, r4, #5
	adds r4, r0, r2
_0800F6F6:
	ldrh r0, [r5]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4]
	ldrh r0, [r5, #2]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #6]
	ldrh r0, [r5, #8]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #8]
	ldrh r0, [r5, #0xa]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0xc]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #0xe]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0xe]
	ldrh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0x12]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x16]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x18]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0x1a]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x1a]
	ldrh r0, [r5, #0x1c]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x1c]
	ldrh r0, [r5, #0x1e]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x1e]
	adds r4, #0x20
	movs r0, #1
	add sl, r0
	adds r5, #0x20
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r1, r2
	cmp sl, r0
	bhs _0800F96A
	b _0800F6F6
_0800F96A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F97C
sub_0800F97C: @ 0x0800F97C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	ldr r2, _0800FB64 @ =gUnk_03005960
	ldr r1, _0800FB68 @ =0x00000AA1
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r4, _0800FB6C @ =0x00000A94
	adds r0, r2, r4
	adds r0, r1, r0
	ldr r0, [r0]
	mov r8, r0
	adds r4, #4
	adds r0, r2, r4
	adds r0, r1, r0
	ldr r7, [r0]
	adds r4, #4
	adds r0, r2, r4
	adds r1, r1, r0
	ldr r6, [r1]
	ldr r1, _0800FB70 @ =0x00000AA2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F9CA
	b _0800FB74
_0800F9CA:
	ldr r4, [sp, #4]
	mov sl, r4
	ldr r0, [sp, #8]
	add r0, sl
	cmp sl, r0
	blo _0800F9D8
	b _0801002E
_0800F9D8:
	movs r0, #0xaa
	lsls r0, r0, #4
	adds r0, r0, r2
	mov sb, r0
	adds r5, r3, #0
	lsls r0, r4, #5
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r0, r2
_0800F9EC:
	ldrh r0, [r5]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4]
	ldrh r0, [r5, #2]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #6]
	ldrh r0, [r5, #8]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #8]
	ldrh r0, [r5, #0xa]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0xc]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #0xe]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0xe]
	ldrh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0x12]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x16]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x18]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0x1a]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x1a]
	ldrh r0, [r5, #0x1c]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x1c]
	ldrh r0, [r5, #0x1e]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	strh r0, [r4, #0x1e]
	adds r4, #0x20
	movs r0, #1
	add sl, r0
	adds r5, #0x20
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r1, r2
	cmp sl, r0
	bhs _0800FB60
	b _0800F9EC
_0800FB60:
	b _0801002E
	.align 2, 0
_0800FB64: .4byte gUnk_03005960
_0800FB68: .4byte 0x00000AA1
_0800FB6C: .4byte 0x00000A94
_0800FB70: .4byte 0x00000AA2
_0800FB74:
	cmp r0, #1
	beq _0800FB7A
	b _0800FD92
_0800FB7A:
	ldr r4, [sp, #4]
	mov sl, r4
	ldr r0, [sp, #8]
	add r0, sl
	cmp sl, r0
	blo _0800FB88
	b _0801002E
_0800FB88:
	movs r0, #0xaa
	lsls r0, r0, #4
	adds r0, r0, r2
	mov sb, r0
	adds r5, r3, #0
	lsls r0, r4, #5
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r0, r2
_0800FB9C:
	ldrh r0, [r5]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4]
	ldrh r0, [r5, #2]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #6]
	ldrh r0, [r5, #8]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #8]
	ldrh r0, [r5, #0xa]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0xc]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #0xe]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0xe]
	ldrh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0x12]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x16]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x18]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0x1a]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x1a]
	ldrh r0, [r5, #0x1c]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x1c]
	ldrh r0, [r5, #0x1e]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	strh r0, [r4, #0x1e]
	adds r4, #0x20
	movs r0, #1
	add sl, r0
	adds r5, #0x20
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r1, r2
	cmp sl, r0
	bhs _0800FD90
	b _0800FB9C
_0800FD90:
	b _0801002E
_0800FD92:
	cmp r0, #2
	beq _0800FD98
	b _0801002E
_0800FD98:
	ldr r4, [sp, #4]
	mov sl, r4
	ldr r0, [sp, #8]
	add r0, sl
	cmp sl, r0
	blo _0800FDA6
	b _0801002E
_0800FDA6:
	movs r0, #0xaa
	lsls r0, r0, #4
	adds r0, r0, r2
	mov sb, r0
	adds r5, r3, #0
	lsls r0, r4, #5
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r0, r2
_0800FDBA:
	ldrh r0, [r5]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4]
	ldrh r0, [r5, #2]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #2]
	ldrh r0, [r5, #4]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #4]
	ldrh r0, [r5, #6]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #6]
	ldrh r0, [r5, #8]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #8]
	ldrh r0, [r5, #0xa]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0xa]
	ldrh r0, [r5, #0xc]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0xc]
	ldrh r0, [r5, #0xe]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0xe]
	ldrh r0, [r5, #0x10]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0x12]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x14]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x16]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x18]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #0x1a]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x1a]
	ldrh r0, [r5, #0x1c]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x1c]
	ldrh r0, [r5, #0x1e]
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	str r1, [sp]
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_08011894
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
	strh r0, [r4, #0x1e]
	adds r4, #0x20
	movs r0, #1
	add sl, r0
	adds r5, #0x20
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r1, r2
	cmp sl, r0
	bhs _0801002E
	b _0800FDBA
_0801002E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010040
sub_08010040: @ 0x08010040
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrb r1, [r3, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08010084 @ =gUnk_03006394
	adds r4, r0, r1
	ldrb r0, [r3, #3]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #3]
	ldrb r1, [r3, #4]
	ldr r2, [r4, #0x10]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bne _080100BA
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _08010088
	strb r5, [r3, #3]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	ldrb r1, [r3, #4]
	ldr r0, [r4]
	cmp r1, r0
	bne _080100A2
	strb r5, [r3, #4]
	b _080100A2
	.align 2, 0
_08010084: .4byte gUnk_03006394
_08010088:
	cmp r0, #1
	bne _080100A2
	strb r5, [r3, #3]
	ldrb r0, [r3, #4]
	subs r0, #1
	strb r0, [r3, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080100A2
	ldr r0, [r4]
	subs r0, #1
	strb r0, [r3, #4]
_080100A2:
	ldrb r0, [r3, #4]
	ldr r1, [r4, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	ldrb r1, [r3, #1]
	movs r2, #1
	bl sub_0800F2CC
_080100BA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080100C0
sub_080100C0: @ 0x080100C0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, _08010110 @ =gUnk_03005960
	ldrh r0, [r3, #8]
	adds r0, #1
	strh r0, [r3, #8]
	ldrh r1, [r3, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08010156
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _08010114
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r5, [r0]
	subs r2, r1, #1
	ldrb r0, [r3, #3]
	cmp r2, r0
	blt _08010108
_080100F2:
	ldrb r0, [r3, #2]
	lsls r0, r0, #4
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	strh r1, [r0, #2]
	subs r2, #1
	ldrb r1, [r3, #3]
	cmp r2, r1
	bge _080100F2
_08010108:
	ldrb r0, [r3, #2]
	lsls r0, r0, #4
	ldrb r1, [r3, #3]
	b _0801014A
	.align 2, 0
_08010110: .4byte gUnk_03005960
_08010114:
	cmp r0, #1
	bne _08010152
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r5, [r0]
	adds r2, r1, #0
	ldrb r0, [r3, #4]
	cmp r2, r0
	bge _08010144
_0801012E:
	ldrb r0, [r3, #2]
	lsls r0, r0, #4
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #2]
	strh r1, [r0]
	adds r2, #1
	ldrb r1, [r3, #4]
	cmp r2, r1
	blt _0801012E
_08010144:
	ldrb r0, [r3, #2]
	lsls r0, r0, #4
	ldrb r1, [r3, #4]
_0801014A:
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r5, [r0]
_08010152:
	movs r0, #0
	strh r0, [r3, #8]
_08010156:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801015C
sub_0801015C: @ 0x0801015C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r5, _080101D4 @ =gUnk_03005960
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, r2
	adds r4, r1, r0
	strh r3, [r4, #4]
	ldr r0, _080101D8 @ =0x0000FFFF
	cmp r6, r0
	bne _08010188
	ldr r6, _080101DC @ =0x00007FFF
_08010188:
	ldr r7, _080101E0 @ =0x00000AA1
	adds r0, r5, r7
	ldrb r0, [r0]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r1, _080101E4 @ =0x00000A94
	adds r0, r5, r1
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r2, _080101E8 @ =0x00000A98
	adds r0, r5, r2
	adds r0, r3, r0
	ldr r2, [r0]
	subs r7, #5
	adds r0, r5, r7
	adds r3, r3, r0
	ldr r3, [r3]
	adds r7, #4
	adds r0, r5, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r6, #0
	bl sub_08011894
	strh r0, [r4, #0xc]
	ldr r1, _080101EC @ =0x00000AA2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080101F0
	ldrh r0, [r4, #0xc]
	bl sub_080118BC
	b _08010202
	.align 2, 0
_080101D4: .4byte gUnk_03005960
_080101D8: .4byte 0x0000FFFF
_080101DC: .4byte 0x00007FFF
_080101E0: .4byte 0x00000AA1
_080101E4: .4byte 0x00000A94
_080101E8: .4byte 0x00000A98
_080101EC: .4byte 0x00000AA2
_080101F0:
	cmp r0, #2
	bne _08010204
	ldrh r0, [r4, #0xc]
	bl sub_080118BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080118F0
_08010202:
	strh r0, [r4, #0xc]
_08010204:
	mov r2, r8
	str r2, [r4, #0x20]
	movs r0, #1
	strh r0, [r4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010218
sub_08010218: @ 0x08010218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r4, _080102F8 @ =gUnk_03005960
	ldrh r0, [r5]
	cmp r0, #2
	bne _08010232
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
_08010232:
	ldrh r0, [r5, #8]
	lsls r0, r0, #0xc
	ldrh r1, [r5, #4]
	bl __udivsi3
	adds r6, r0, #0
	str r6, [r5, #0x14]
	ldr r0, [r5, #0x20]
	mov r8, r0
	ldrh r7, [r5, #0xc]
	movs r1, #0x1f
	mov sb, r1
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _08010300
	movs r3, #0xfc
	lsls r3, r3, #3
	adds r3, r3, r4
	mov sl, r3
_08010258:
	movs r0, #1
	mov r1, sb
	lsls r0, r1
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08010276
	ldr r0, _080102FC @ =gUnk_03005954
	ldr r4, [r0]
	mov r0, sl
	mov r1, sl
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
_08010276:
	mov r2, sl
	subs r2, #0x20
	mov r1, sb
	subs r1, #1
	movs r0, #1
	lsls r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0801029A
	ldr r0, _080102FC @ =gUnk_03005954
	ldr r4, [r0]
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
_0801029A:
	mov r2, sl
	subs r2, #0x40
	mov r1, sb
	subs r1, #2
	movs r0, #1
	lsls r0, r1
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _080102BE
	ldr r0, _080102FC @ =gUnk_03005954
	ldr r4, [r0]
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
_080102BE:
	mov r2, sl
	subs r2, #0x60
	mov r1, sb
	subs r1, #3
	movs r0, #1
	lsls r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080102E2
	ldr r0, _080102FC @ =gUnk_03005954
	ldr r4, [r0]
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
_080102E2:
	movs r3, #0x80
	rsbs r3, r3, #0
	add sl, r3
	movs r0, #4
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bge _08010258
	b _080103AA
	.align 2, 0
_080102F8: .4byte gUnk_03005960
_080102FC: .4byte gUnk_03005954
_08010300:
	mov r3, sb
	lsls r0, r3, #5
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r4, r0
	mov sl, r4
_0801030E:
	movs r0, #1
	mov r3, sb
	lsls r0, r3
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0801032C
	ldr r0, _08010400 @ =gUnk_03006568
	ldr r4, [r0]
	mov r0, sl
	mov r1, sl
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
_0801032C:
	mov r2, sl
	subs r2, #0x20
	mov r1, sb
	subs r1, #1
	movs r0, #1
	lsls r0, r1
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08010350
	ldr r0, _08010400 @ =gUnk_03006568
	ldr r4, [r0]
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
_08010350:
	mov r2, sl
	subs r2, #0x40
	mov r1, sb
	subs r1, #2
	movs r0, #1
	lsls r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08010374
	ldr r0, _08010400 @ =gUnk_03006568
	ldr r4, [r0]
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
_08010374:
	mov r2, sl
	subs r2, #0x60
	mov r1, sb
	subs r1, #3
	movs r0, #1
	lsls r0, r1
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08010398
	ldr r0, _08010400 @ =gUnk_03006568
	ldr r4, [r0]
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
_08010398:
	movs r0, #0x80
	rsbs r0, r0, #0
	add sl, r0
	movs r1, #4
	rsbs r1, r1, #0
	add sb, r1
	mov r3, sb
	cmp r3, #0
	bge _0801030E
_080103AA:
	ldrh r0, [r5, #8]
	adds r3, r0, #0
	ldrh r0, [r5, #6]
	cmp r3, r0
	bne _080103B8
	movs r0, #3
	strh r0, [r5]
_080103B8:
	ldrh r0, [r5]
	cmp r0, #4
	bne _080103CE
	ldrh r0, [r5, #0xa]
	subs r0, #1
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080103CE
	movs r0, #2
	strh r0, [r5]
_080103CE:
	ldrb r2, [r5, #3]
	adds r1, r2, #0
	cmp r1, #5
	bne _08010432
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _08010404
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #4]
	ldr r3, [r5, #0x1c]
	adds r0, r1, #0
	muls r0, r3, r0
	lsrs r0, r0, #0xc
	cmp r2, r0
	blo _08010474
	movs r0, #1
	strb r0, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	subs r0, r0, r3
	muls r0, r1, r0
	lsrs r0, r0, #0xc
	strh r0, [r5, #8]
	ldrh r0, [r5, #0x10]
	b _08010426
	.align 2, 0
_08010400: .4byte gUnk_03006568
_08010404:
	ldrh r2, [r5, #8]
	ldrh r1, [r5, #4]
	ldr r3, [r5, #0x18]
	adds r0, r1, #0
	muls r0, r3, r0
	lsrs r0, r0, #0xc
	cmp r2, r0
	blo _08010474
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	subs r0, r0, r3
	muls r0, r1, r0
	lsrs r0, r0, #0xc
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xe]
_08010426:
	cmp r0, #0
	beq _08010474
	strh r0, [r5, #0xa]
	movs r0, #4
	strh r0, [r5]
	b _08010474
_08010432:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r5, #4]
	cmp r0, r3
	bne _08010474
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801044C
	movs r0, #1
	strh r0, [r5]
	b _08010474
_0801044C:
	cmp r1, #3
	bne _0801045E
	movs r0, #0
	strh r0, [r5, #8]
	movs r0, #1
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #3]
	b _08010474
_0801045E:
	cmp r1, #4
	bne _08010474
	movs r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _08010470
	movs r0, #1
	b _08010472
_08010470:
	movs r0, #0
_08010472:
	strb r0, [r5, #2]
_08010474:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010484
sub_08010484: @ 0x08010484
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _08010530 @ =gUnk_03005960
	mov r8, r0
	ldrh r0, [r7]
	cmp r0, #2
	bne _0801049E
	ldrh r0, [r7, #8]
	adds r0, #1
	strh r0, [r7, #8]
_0801049E:
	ldrh r0, [r7, #8]
	lsls r0, r0, #0xc
	ldrh r1, [r7, #4]
	bl __udivsi3
	adds r4, r0, #0
	str r4, [r7, #0x14]
	ldr r5, [r7, #0x20]
	movs r6, #0x1f
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _08010534
	movs r1, #0xfc
	lsls r1, r1, #3
	add r8, r1
_080104BC:
	movs r0, #1
	mov sb, r0
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _080104D2
	mov r0, r8
	mov r1, r8
	adds r2, r4, #0
	bl sub_08012150
_080104D2:
	mov r2, r8
	subs r2, #0x20
	subs r1, r6, #1
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _080104EC
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08012150
_080104EC:
	mov r2, r8
	subs r2, #0x40
	subs r1, r6, #2
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08010506
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08012150
_08010506:
	mov r2, r8
	subs r2, #0x60
	subs r1, r6, #3
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08010520
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08012150
_08010520:
	movs r1, #0x80
	rsbs r1, r1, #0
	add r8, r1
	subs r6, #4
	cmp r6, #0
	bge _080104BC
	b _080105AE
	.align 2, 0
_08010530: .4byte gUnk_03005960
_08010534:
	lsls r0, r6, #5
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	add r8, r0
_0801053E:
	movs r0, #1
	mov sb, r0
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _08010554
	mov r0, r8
	mov r1, r8
	adds r2, r4, #0
	bl sub_0801220C
_08010554:
	mov r2, r8
	subs r2, #0x20
	subs r1, r6, #1
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0801056E
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_0801220C
_0801056E:
	mov r2, r8
	subs r2, #0x40
	subs r1, r6, #2
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08010588
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_0801220C
_08010588:
	mov r2, r8
	subs r2, #0x60
	subs r1, r6, #3
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _080105A2
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_0801220C
_080105A2:
	movs r1, #0x80
	rsbs r1, r1, #0
	add r8, r1
	subs r6, #4
	cmp r6, #0
	bge _0801053E
_080105AE:
	ldrh r1, [r7, #8]
	ldrh r0, [r7, #6]
	cmp r1, r0
	bne _080105BA
	movs r0, #3
	strh r0, [r7]
_080105BA:
	ldrh r0, [r7, #4]
	cmp r1, r0
	bne _080105FE
	ldrb r1, [r7, #3]
	subs r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080105D2
	movs r0, #1
	strh r0, [r7]
	b _080105FE
_080105D2:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _080105E8
	movs r0, #0
	strh r0, [r7, #8]
	movs r0, #1
	strb r0, [r7, #2]
	movs r0, #7
	strb r0, [r7, #3]
	b _080105FE
_080105E8:
	cmp r0, #9
	bne _080105FE
	movs r0, #0
	strh r0, [r7, #8]
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _080105FA
	movs r0, #1
	b _080105FC
_080105FA:
	movs r0, #0
_080105FC:
	strb r0, [r7, #2]
_080105FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801060C
sub_0801060C: @ 0x0801060C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _080106B8 @ =gUnk_03005960
	mov r8, r0
	ldrh r0, [r7]
	cmp r0, #2
	bne _08010626
	ldrh r0, [r7, #8]
	adds r0, #1
	strh r0, [r7, #8]
_08010626:
	ldrh r0, [r7, #8]
	lsls r0, r0, #0xc
	ldrh r1, [r7, #4]
	bl __udivsi3
	adds r4, r0, #0
	str r4, [r7, #0x14]
	ldr r5, [r7, #0x20]
	movs r6, #0x1f
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _080106BC
	movs r1, #0xfc
	lsls r1, r1, #3
	add r8, r1
_08010644:
	movs r0, #1
	mov sb, r0
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _0801065A
	mov r0, r8
	mov r1, r8
	adds r2, r4, #0
	bl sub_08010794
_0801065A:
	mov r2, r8
	subs r2, #0x20
	subs r1, r6, #1
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08010674
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08010794
_08010674:
	mov r2, r8
	subs r2, #0x40
	subs r1, r6, #2
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0801068E
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08010794
_0801068E:
	mov r2, r8
	subs r2, #0x60
	subs r1, r6, #3
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _080106A8
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08010794
_080106A8:
	movs r1, #0x80
	rsbs r1, r1, #0
	add r8, r1
	subs r6, #4
	cmp r6, #0
	bge _08010644
	b _08010736
	.align 2, 0
_080106B8: .4byte gUnk_03005960
_080106BC:
	lsls r0, r6, #5
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	add r8, r0
_080106C6:
	movs r0, #1
	mov sb, r0
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _080106DC
	mov r0, r8
	mov r1, r8
	adds r2, r4, #0
	bl sub_08010890
_080106DC:
	mov r2, r8
	subs r2, #0x20
	subs r1, r6, #1
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _080106F6
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08010890
_080106F6:
	mov r2, r8
	subs r2, #0x40
	subs r1, r6, #2
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08010710
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08010890
_08010710:
	mov r2, r8
	subs r2, #0x60
	subs r1, r6, #3
	mov r0, sb
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0801072A
	adds r0, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	bl sub_08010890
_0801072A:
	movs r1, #0x80
	rsbs r1, r1, #0
	add r8, r1
	subs r6, #4
	cmp r6, #0
	bge _080106C6
_08010736:
	ldrh r1, [r7, #8]
	ldrh r0, [r7, #6]
	cmp r1, r0
	bne _08010742
	movs r0, #3
	strh r0, [r7]
_08010742:
	ldrh r0, [r7, #4]
	cmp r1, r0
	bne _08010788
	ldrb r1, [r7, #3]
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801075C
	movs r0, #1
	strh r0, [r7]
	b _08010788
_0801075C:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08010772
	movs r0, #0
	strh r0, [r7, #8]
	movs r0, #1
	strb r0, [r7, #2]
	movs r0, #0xb
	strb r0, [r7, #3]
	b _08010788
_08010772:
	cmp r0, #0xd
	bne _08010788
	movs r0, #0
	strh r0, [r7, #8]
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _08010784
	movs r0, #1
	b _08010786
_08010784:
	movs r0, #0
_08010786:
	strb r0, [r7, #2]
_08010788:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010794
sub_08010794: @ 0x08010794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r6, r2, #0
	movs r5, #0x1f
	movs r0, #8
	mov r8, r0
	adds r1, #0x20
	str r1, [sp]
_080107AE:
	ldr r1, [sp]
	subs r1, #4
	str r1, [sp]
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r3, r8
	lsls r3, r3, #2
	mov sb, r3
	ldr r0, [r1]
	bl sub_08011928
	adds r4, r0, #0
	ldr r7, [sp]
	ldr r3, [r7]
	adds r1, r3, #0
	ands r1, r5
	ands r0, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _080107DE
	ldr r2, _0801088C @ =0x00000FFF
	adds r0, r0, r2
_080107DE:
	asrs r0, r0, #0xc
	adds r2, r1, r0
	lsrs r1, r3, #5
	ands r1, r5
	lsrs r0, r4, #5
	ands r0, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _080107F6
	ldr r7, _0801088C @ =0x00000FFF
	adds r0, r0, r7
_080107F6:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #5
	orrs r2, r0
	lsrs r1, r3, #0xa
	ands r1, r5
	lsrs r0, r4, #0xa
	ands r0, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _08010812
	ldr r7, _0801088C @ =0x00000FFF
	adds r0, r0, r7
_08010812:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	lsrs r1, r3, #0x10
	ands r1, r5
	lsrs r0, r4, #0x10
	ands r0, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _0801082E
	ldr r7, _0801088C @ =0x00000FFF
	adds r0, r0, r7
_0801082E:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0x10
	orrs r2, r0
	lsrs r1, r3, #0x15
	ands r1, r5
	lsrs r0, r4, #0x15
	ands r0, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _0801084A
	ldr r7, _0801088C @ =0x00000FFF
	adds r0, r0, r7
_0801084A:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0x15
	orrs r2, r0
	lsrs r1, r3, #0x1a
	ands r1, r5
	lsrs r0, r4, #0x1a
	ands r0, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _08010866
	ldr r3, _0801088C @ =0x00000FFF
	adds r0, r0, r3
_08010866:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0x1a
	orrs r2, r0
	mov r0, sb
	add r0, sl
	str r2, [r0]
	mov r7, r8
	cmp r7, #0
	bne _080107AE
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801088C: .4byte 0x00000FFF

	thumb_func_start sub_08010890
sub_08010890: @ 0x08010890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r6, r2, #0
	movs r5, #0x1f
	movs r0, #8
	mov r8, r0
	adds r1, #0x20
	str r1, [sp]
_080108AA:
	ldr r1, [sp]
	subs r1, #4
	str r1, [sp]
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r3, r8
	lsls r3, r3, #2
	mov sb, r3
	ldr r0, [r1]
	bl sub_08011928
	adds r4, r0, #0
	ldr r7, [sp]
	ldr r3, [r7]
	adds r0, r3, #0
	ands r0, r5
	adds r1, r4, #0
	ands r1, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _080108DC
	ldr r2, _08010988 @ =0x00000FFF
	adds r0, r0, r2
_080108DC:
	asrs r0, r0, #0xc
	adds r2, r1, r0
	lsrs r0, r3, #5
	ands r0, r5
	lsrs r1, r4, #5
	ands r1, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _080108F4
	ldr r7, _08010988 @ =0x00000FFF
	adds r0, r0, r7
_080108F4:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #5
	orrs r2, r0
	lsrs r0, r3, #0xa
	ands r0, r5
	lsrs r1, r4, #0xa
	ands r1, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _08010910
	ldr r7, _08010988 @ =0x00000FFF
	adds r0, r0, r7
_08010910:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	lsrs r0, r3, #0x10
	ands r0, r5
	lsrs r1, r4, #0x10
	ands r1, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _0801092C
	ldr r7, _08010988 @ =0x00000FFF
	adds r0, r0, r7
_0801092C:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0x10
	orrs r2, r0
	lsrs r0, r3, #0x15
	ands r0, r5
	lsrs r1, r4, #0x15
	ands r1, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _08010948
	ldr r7, _08010988 @ =0x00000FFF
	adds r0, r0, r7
_08010948:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0x15
	orrs r2, r0
	lsrs r0, r3, #0x1a
	ands r0, r5
	lsrs r1, r4, #0x1a
	ands r1, r5
	subs r0, r0, r1
	muls r0, r6, r0
	cmp r0, #0
	bge _08010964
	ldr r3, _08010988 @ =0x00000FFF
	adds r0, r0, r3
_08010964:
	asrs r0, r0, #0xc
	adds r0, r1, r0
	lsls r0, r0, #0x1a
	orrs r2, r0
	mov r0, sb
	add r0, sl
	str r2, [r0]
	mov r7, r8
	cmp r7, #0
	bne _080108AA
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010988: .4byte 0x00000FFF

	thumb_func_start sub_0801098C
sub_0801098C: @ 0x0801098C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r4, _08010AD4 @ =gUnk_03005960
	ldrh r0, [r5, #6]
	lsls r0, r0, #0xc
	ldrh r1, [r5, #4]
	bl __udivsi3
	mov sl, r0
	str r0, [r5, #8]
	ldr r7, [r5, #0xc]
	movs r6, #0x1f
	movs r0, #0xf8
	lsls r0, r0, #2
	adds r0, r0, r4
	mov r8, r0
_080109B6:
	lsls r0, r6, #5
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	ldrh r0, [r5, #2]
	lsls r0, r0, #5
	subs r2, r1, r0
	movs r1, #1
	mov sb, r1
	mov r0, sb
	lsls r0, r6
	ands r0, r7
	cmp r0, #0
	beq _080109E6
	mov r0, sp
	mov r1, r8
	mov r3, sl
	bl sub_080120A0
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	movs r2, #1
	bl sub_0800F97C
_080109E6:
	mov r3, r8
	subs r3, #0x20
	subs r4, r6, #1
	lsls r0, r4, #5
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	ldrh r0, [r5, #2]
	lsls r0, r0, #5
	subs r2, r1, r0
	mov r0, sb
	lsls r0, r4
	ands r0, r7
	cmp r0, #0
	beq _08010A18
	mov r0, sp
	adds r1, r3, #0
	mov r3, sl
	bl sub_080120A0
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	movs r2, #1
	bl sub_0800F97C
_08010A18:
	movs r0, #0x40
	rsbs r0, r0, #0
	add r8, r0
	subs r6, #2
	cmp r6, #0
	bge _080109B6
	ldrh r0, [r5, #6]
	ldrh r1, [r5, #4]
	cmp r0, r1
	bne _08010AB6
	movs r6, #0x1f
_08010A2E:
	movs r4, #1
	adds r0, r4, #0
	lsls r0, r6
	ands r0, r7
	cmp r0, #0
	beq _08010A4E
	ldrh r0, [r5, #2]
	subs r0, r6, r0
	lsls r0, r0, #5
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	bl sub_0800F2CC
_08010A4E:
	subs r2, r6, #1
	adds r0, r4, #0
	lsls r0, r2
	ands r0, r7
	cmp r0, #0
	beq _08010A6E
	ldrh r0, [r5, #2]
	subs r0, r2, r0
	lsls r0, r0, #5
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	bl sub_0800F2CC
_08010A6E:
	subs r2, r6, #2
	adds r0, r4, #0
	lsls r0, r2
	ands r0, r7
	cmp r0, #0
	beq _08010A8E
	ldrh r0, [r5, #2]
	subs r0, r2, r0
	lsls r0, r0, #5
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	bl sub_0800F2CC
_08010A8E:
	subs r2, r6, #3
	adds r0, r4, #0
	lsls r0, r2
	ands r0, r7
	cmp r0, #0
	beq _08010AAE
	ldrh r0, [r5, #2]
	subs r0, r2, r0
	lsls r0, r0, #5
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	bl sub_0800F2CC
_08010AAE:
	subs r6, #4
	cmp r6, #0
	bge _08010A2E
	strh r4, [r5]
_08010AB6:
	ldrh r0, [r5]
	cmp r0, #2
	bne _08010AC2
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
_08010AC2:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010AD4: .4byte gUnk_03005960

	thumb_func_start sub_08010AD8
sub_08010AD8: @ 0x08010AD8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r2, r0, #0x10
	adds r5, r2, #0
	movs r4, #0
	lsrs r6, r1, #0x18
	asrs r3, r1, #0x18
	cmp r3, #0
	bne _08010AF0
	adds r0, r2, #0
	b _08010BAA
_08010AF0:
	movs r0, #0x1f
	ands r2, r0
	ldr r1, _08010B1C @ =gUnk_08B714B4
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	muls r2, r0, r2
	adds r0, r2, #0
	adds r7, r1, #0
	asrs r1, r0, #0xc
	rsbs r0, r3, #0
	cmp r0, #0
	bge _08010B10
	adds r0, #7
_08010B10:
	asrs r0, r0, #3
	adds r2, r1, r0
	cmp r2, #0x1f
	ble _08010B20
	movs r2, #0x1f
	b _08010B26
	.align 2, 0
_08010B1C: .4byte gUnk_08B714B4
_08010B20:
	cmp r2, #0
	bge _08010B26
	movs r2, #0
_08010B26:
	orrs r4, r2
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r5
	asrs r2, r0, #5
	lsls r1, r6, #0x18
	asrs r3, r1, #0x18
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	muls r2, r0, r2
	adds r0, r2, #0
	adds r6, r1, #0
	asrs r1, r0, #0xc
	rsbs r0, r3, #0
	cmp r0, #0
	bge _08010B52
	adds r0, #7
_08010B52:
	asrs r0, r0, #3
	adds r2, r1, r0
	cmp r2, #0x1f
	ble _08010B5E
	movs r2, #0x1f
	b _08010B64
_08010B5E:
	cmp r2, #0
	bge _08010B64
	movs r2, #0
_08010B64:
	lsls r0, r2, #5
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r5, r0
	asrs r2, r5, #0xa
	asrs r3, r6, #0x18
	adds r0, r3, #0
	adds r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r1, r0, #0xc
	rsbs r0, r3, #0
	cmp r0, #0
	bge _08010B8E
	adds r0, #7
_08010B8E:
	asrs r0, r0, #3
	adds r2, r1, r0
	cmp r2, #0x1f
	ble _08010B9A
	movs r2, #0x1f
	b _08010BA0
_08010B9A:
	cmp r2, #0
	bge _08010BA0
	movs r2, #0
_08010BA0:
	lsls r0, r2, #0xa
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
_08010BAA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08010BB0
sub_08010BB0: @ 0x08010BB0
	push {r4, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08010BE4 @ =gUnk_03006160
	adds r1, r0, r1
	movs r0, #0
	strb r2, [r1, #3]
	strh r0, [r1, #8]
	cmp r2, #2
	beq _08010BE0
	cmp r2, #7
	beq _08010BE0
	cmp r2, #0xb
	bne _08010BE8
_08010BE0:
	movs r0, #1
	b _08010BEA
	.align 2, 0
_08010BE4: .4byte gUnk_03006160
_08010BE8:
	movs r0, #0
_08010BEA:
	strb r0, [r1, #2]
	movs r0, #2
	strh r0, [r1]
	ldr r0, _08010C00 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08010C00: .4byte gUnk_03006578

	thumb_func_start sub_08010C04
sub_08010C04: @ 0x08010C04
	push {r4, r5, lr}
	bl sub_08012578
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	bl sub_08012578
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08010C3C
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08010C38 @ =gUnk_03006160
	adds r1, r0, r1
	ldrh r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08010C54
	movs r0, #3
	b _08010C52
	.align 2, 0
_08010C38: .4byte gUnk_03006160
_08010C3C:
	cmp r0, #0
	bne _08010C54
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08010C64 @ =gUnk_03006160
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #3
	bne _08010C54
	movs r0, #2
_08010C52:
	strh r0, [r1]
_08010C54:
	ldr r0, _08010C68 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08010C64: .4byte gUnk_03006160
_08010C68: .4byte gUnk_03006578

	thumb_func_start sub_08010C6C
sub_08010C6C: @ 0x08010C6C
	push {r4, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08010C9C @ =gUnk_03006160
	adds r1, r0, r1
	strb r2, [r1, #3]
	cmp r2, #1
	beq _08010C94
	cmp r2, #6
	bne _08010CA0
_08010C94:
	movs r0, #0
	strb r0, [r1, #2]
	b _08010CC0
	.align 2, 0
_08010C9C: .4byte gUnk_03006160
_08010CA0:
	cmp r2, #2
	beq _08010CA8
	cmp r2, #7
	bne _08010CAE
_08010CA8:
	movs r0, #1
	strb r0, [r1, #2]
	b _08010CC0
_08010CAE:
	cmp r2, #3
	beq _08010CB6
	cmp r2, #8
	bne _08010CC0
_08010CB6:
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08010CC0
	subs r0, r2, #1
	strb r0, [r1, #3]
_08010CC0:
	ldr r0, _08010CD0 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08010CD0: .4byte gUnk_03006578

	thumb_func_start sub_08010CD4
sub_08010CD4: @ 0x08010CD4
	push {r4, r5, r6, lr}
	ldr r4, _08010D08 @ =gUnk_03005960
	bl sub_08011AA8
	bl sub_08011970
	movs r6, #0x80
	lsls r6, r6, #3
	adds r5, r4, r6
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl CpuFastSet
	bl sub_080119D0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08006BA4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010D08: .4byte gUnk_03005960

	thumb_func_start sub_08010D0C
sub_08010D0C: @ 0x08010D0C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08010D24 @ =gUnk_03005960
	cmp r1, #0
	beq _08010D1A
	movs r1, #0
_08010D1A:
	ldr r2, _08010D28 @ =0x00000AA1
	adds r0, r0, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08010D24: .4byte gUnk_03005960
_08010D28: .4byte 0x00000AA1

	thumb_func_start sub_08010D2C
sub_08010D2C: @ 0x08010D2C
	ldr r1, _08010D38 @ =gUnk_03005960
	ldr r2, _08010D3C @ =0x00000AA2
	adds r1, r1, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08010D38: .4byte gUnk_03005960
_08010D3C: .4byte 0x00000AA2

	thumb_func_start sub_08010D40
sub_08010D40: @ 0x08010D40
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_0800F2CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010D54
sub_08010D54: @ 0x08010D54
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_0800F97C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010D68
sub_08010D68: @ 0x08010D68
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r6, _08010DF0 @ =gUnk_030062EC
	movs r4, #0
	strh r4, [r6]
	strh r3, [r6, #4]
	strh r4, [r6, #6]
	str r4, [r6, #8]
	str r0, [r6, #0x10]
	str r4, [r6, #0xc]
	strh r1, [r6, #2]
	adds r3, r1, #0
	adds r0, r3, r2
	cmp r3, r0
	bhs _08010DE8
	movs r4, #1
	adds r5, r0, #0
	movs r2, #0
	subs r1, r5, r3
	movs r0, #3
	ands r1, r0
	cmp r3, r5
	bge _08010DB6
	cmp r1, #0
	beq _08010DC2
	cmp r1, #1
	ble _08010DB6
	cmp r1, #2
	ble _08010DAE
	adds r2, r4, #0
	lsls r2, r3
	adds r3, #1
_08010DAE:
	adds r0, r4, #0
	lsls r0, r3
	orrs r2, r0
	adds r3, #1
_08010DB6:
	adds r0, r4, #0
	lsls r0, r3
	orrs r2, r0
	adds r3, #1
	cmp r3, r5
	bhs _08010DE6
_08010DC2:
	adds r0, r4, #0
	lsls r0, r3
	orrs r2, r0
	adds r1, r3, #1
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r1, r3, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r1, r3, #3
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r3, #4
	cmp r3, r5
	blo _08010DC2
_08010DE6:
	str r2, [r6, #0xc]
_08010DE8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010DF0: .4byte gUnk_030062EC

	thumb_func_start sub_08010DF4
sub_08010DF4: @ 0x08010DF4
	ldr r1, _08010DFC @ =gUnk_030062EC
	movs r0, #2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08010DFC: .4byte gUnk_030062EC

	thumb_func_start sub_08010E00
sub_08010E00: @ 0x08010E00
	push {lr}
	ldr r0, _08010E14 @ =gUnk_030062EC
	movs r1, #0
	ldrh r0, [r0]
	cmp r0, #1
	beq _08010E0E
	ldr r1, _08010E18 @ =0x0000FFFF
_08010E0E:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08010E14: .4byte gUnk_030062EC
_08010E18: .4byte 0x0000FFFF

	thumb_func_start sub_08010E1C
sub_08010E1C: @ 0x08010E1C
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r6, _08010EA4 @ =gUnk_03006300
	movs r4, #0
	strh r4, [r6]
	strh r3, [r6, #4]
	strh r4, [r6, #6]
	str r4, [r6, #8]
	str r0, [r6, #0x10]
	str r4, [r6, #0xc]
	strh r1, [r6, #2]
	adds r3, r1, #0
	adds r0, r3, r2
	cmp r3, r0
	bhs _08010E9C
	movs r4, #1
	adds r5, r0, #0
	movs r2, #0
	subs r1, r5, r3
	movs r0, #3
	ands r1, r0
	cmp r3, r5
	bge _08010E6A
	cmp r1, #0
	beq _08010E76
	cmp r1, #1
	ble _08010E6A
	cmp r1, #2
	ble _08010E62
	adds r2, r4, #0
	lsls r2, r3
	adds r3, #1
_08010E62:
	adds r0, r4, #0
	lsls r0, r3
	orrs r2, r0
	adds r3, #1
_08010E6A:
	adds r0, r4, #0
	lsls r0, r3
	orrs r2, r0
	adds r3, #1
	cmp r3, r5
	bhs _08010E9A
_08010E76:
	adds r0, r4, #0
	lsls r0, r3
	orrs r2, r0
	adds r1, r3, #1
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r1, r3, #2
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r1, r3, #3
	adds r0, r4, #0
	lsls r0, r1
	orrs r2, r0
	adds r3, #4
	cmp r3, r5
	blo _08010E76
_08010E9A:
	str r2, [r6, #0xc]
_08010E9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010EA4: .4byte gUnk_03006300

	thumb_func_start sub_08010EA8
sub_08010EA8: @ 0x08010EA8
	ldr r1, _08010EB0 @ =gUnk_03006300
	movs r0, #2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08010EB0: .4byte gUnk_03006300

	thumb_func_start sub_08010EB4
sub_08010EB4: @ 0x08010EB4
	push {lr}
	ldr r0, _08010EC8 @ =gUnk_03006300
	movs r1, #0
	ldrh r0, [r0]
	cmp r0, #1
	beq _08010EC2
	ldr r1, _08010ECC @ =0x0000FFFF
_08010EC2:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08010EC8: .4byte gUnk_03006300
_08010ECC: .4byte 0x0000FFFF

	thumb_func_start sub_08010ED0
sub_08010ED0: @ 0x08010ED0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08010F08 @ =gUnk_03005960
	cmp r0, #0
	beq _08010EE2
	movs r0, #0
_08010EE2:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r6, _08010F0C @ =0x00000A94
	adds r0, r2, r6
	adds r0, r1, r0
	str r4, [r0]
	ldr r4, _08010F10 @ =0x00000A98
	adds r0, r2, r4
	adds r0, r1, r0
	str r5, [r0]
	adds r6, #8
	adds r0, r2, r6
	adds r1, r1, r0
	str r3, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010F08: .4byte gUnk_03005960
_08010F0C: .4byte 0x00000A94
_08010F10: .4byte 0x00000A98

	thumb_func_start sub_08010F14
sub_08010F14: @ 0x08010F14
	ldr r2, _08010F2C @ =gUnk_03005960
	ldr r1, _08010F30 @ =0x00000AA1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08010F34 @ =0x00000A94
	adds r2, r2, r1
	adds r0, r0, r2
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08010F2C: .4byte gUnk_03005960
_08010F30: .4byte 0x00000AA1
_08010F34: .4byte 0x00000A94

	thumb_func_start sub_08010F38
sub_08010F38: @ 0x08010F38
	ldr r2, _08010F50 @ =gUnk_03005960
	ldr r1, _08010F54 @ =0x00000AA1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08010F58 @ =0x00000A98
	adds r2, r2, r1
	adds r0, r0, r2
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08010F50: .4byte gUnk_03005960
_08010F54: .4byte 0x00000AA1
_08010F58: .4byte 0x00000A98

	thumb_func_start sub_08010F5C
sub_08010F5C: @ 0x08010F5C
	ldr r2, _08010F74 @ =gUnk_03005960
	ldr r1, _08010F78 @ =0x00000AA1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08010F7C @ =0x00000A9C
	adds r2, r2, r1
	adds r0, r0, r2
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08010F74: .4byte gUnk_03005960
_08010F78: .4byte 0x00000AA1
_08010F7C: .4byte 0x00000A9C

	thumb_func_start sub_08010F80
sub_08010F80: @ 0x08010F80
	ldr r1, _08010F8C @ =gUnk_03005960
	movs r2, #0xaa
	lsls r2, r2, #4
	adds r1, r1, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08010F8C: .4byte gUnk_03005960

	thumb_func_start sub_08010F90
sub_08010F90: @ 0x08010F90
	ldr r0, _08010FA0 @ =gUnk_03005960
	movs r1, #0xaa
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08010FA0: .4byte gUnk_03005960

	thumb_func_start sub_08010FA4
sub_08010FA4: @ 0x08010FA4
	ldr r1, _08010FB0 @ =gUnk_03005960
	movs r2, #0xaa
	lsls r2, r2, #4
	adds r1, r1, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08010FB0: .4byte gUnk_03005960

	thumb_func_start sub_08010FB4
sub_08010FB4: @ 0x08010FB4
	ldr r0, _08010FC4 @ =gUnk_03005960
	movs r1, #0xaa
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08010FC4: .4byte gUnk_03005960

	thumb_func_start sub_08010FC8
sub_08010FC8: @ 0x08010FC8
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08010FF4 @ =gUnk_03006314
	adds r4, r4, r0
	movs r5, #0
	str r5, [sp]
	ldr r2, _08010FF8 @ =0x05000003
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strb r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010FF4: .4byte gUnk_03006314
_08010FF8: .4byte 0x05000003

	thumb_func_start sub_08010FFC
sub_08010FFC: @ 0x08010FFC
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08011020 @ =gUnk_03006314
	adds r4, r4, r0
	strh r5, [r4, #6]
	strb r1, [r4, #2]
	strb r2, [r4, #3]
	strb r3, [r4, #4]
	movs r0, #3
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011020: .4byte gUnk_03006314

	thumb_func_start sub_08011024
sub_08011024: @ 0x08011024
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	ldr r0, _0801103C @ =gUnk_03006314
	adds r2, r2, r0
	strb r1, [r2, #1]
	movs r0, #1
	strb r0, [r2]
	bx lr
	.align 2, 0
_0801103C: .4byte gUnk_03006314

	thumb_func_start sub_08011040
sub_08011040: @ 0x08011040
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08011060 @ =gUnk_03006314
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801105A
	movs r0, #2
	strb r0, [r1]
_0801105A:
	pop {r0}
	bx r0
	.align 2, 0
_08011060: .4byte gUnk_03006314

	thumb_func_start sub_08011064
sub_08011064: @ 0x08011064
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08011084 @ =gUnk_03006314
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #2
	bne _0801107E
	movs r0, #1
	strb r0, [r1]
_0801107E:
	pop {r0}
	bx r0
	.align 2, 0
_08011084: .4byte gUnk_03006314

	thumb_func_start sub_08011088
sub_08011088: @ 0x08011088
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	ldr r0, _0801109C @ =gUnk_03006314
	adds r2, r2, r0
	strb r1, [r2, #1]
	bx lr
	.align 2, 0
_0801109C: .4byte gUnk_03006314

	thumb_func_start sub_080110A0
sub_080110A0: @ 0x080110A0
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _080110CC @ =gUnk_03006314
	adds r4, r4, r0
	movs r5, #0
	str r5, [sp]
	ldr r2, _080110D0 @ =0x05000003
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strb r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080110CC: .4byte gUnk_03006314
_080110D0: .4byte 0x05000003

	thumb_func_start sub_080110D4
sub_080110D4: @ 0x080110D4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080110E8 @ =gUnk_03006314
	adds r1, r1, r0
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_080110E8: .4byte gUnk_03006314

	thumb_func_start sub_080110EC
sub_080110EC: @ 0x080110EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08011100 @ =gUnk_03006314
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	bx lr
	.align 2, 0
_08011100: .4byte gUnk_03006314

	thumb_func_start sub_08011104
sub_08011104: @ 0x08011104
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #2
	ldr r0, _0801113C @ =gUnk_03006160
	adds r4, r4, r0
	movs r6, #0
	str r6, [sp]
	ldr r2, _08011140 @ =0x05000009
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strh r6, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x64
	bl sub_080112A8
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801113C: .4byte gUnk_03006160
_08011140: .4byte 0x05000009

	thumb_func_start sub_08011144
sub_08011144: @ 0x08011144
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #2
	ldr r0, _08011158 @ =gUnk_03006160
	adds r2, r2, r0
	strh r1, [r2, #6]
	bx lr
	.align 2, 0
_08011158: .4byte gUnk_03006160

	thumb_func_start sub_0801115C
sub_0801115C: @ 0x0801115C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r0, #3
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _08011170 @ =gUnk_03006160
	adds r3, r3, r0
	strh r1, [r3, #0xe]
	strh r2, [r3, #0x10]
	bx lr
	.align 2, 0
_08011170: .4byte gUnk_03006160

	thumb_func_start sub_08011174
sub_08011174: @ 0x08011174
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080111A0 @ =gUnk_03006160
	adds r1, r1, r0
	movs r0, #0
	strb r2, [r1, #3]
	strh r0, [r1, #8]
	cmp r2, #2
	beq _0801119A
	cmp r2, #7
	beq _0801119A
	cmp r2, #0xb
	bne _080111A4
_0801119A:
	movs r0, #1
	b _080111A6
	.align 2, 0
_080111A0: .4byte gUnk_03006160
_080111A4:
	movs r0, #0
_080111A6:
	strb r0, [r1, #2]
	movs r0, #2
	strh r0, [r1]
	pop {r0}
	bx r0

	thumb_func_start sub_080111B0
sub_080111B0: @ 0x080111B0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080111D4 @ =gUnk_03006160
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080111D0
	movs r0, #3
	strh r0, [r1]
_080111D0:
	pop {r0}
	bx r0
	.align 2, 0
_080111D4: .4byte gUnk_03006160

	thumb_func_start sub_080111D8
sub_080111D8: @ 0x080111D8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080111F8 @ =gUnk_03006160
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #3
	bne _080111F2
	movs r0, #2
	strh r0, [r1]
_080111F2:
	pop {r0}
	bx r0
	.align 2, 0
_080111F8: .4byte gUnk_03006160

	thumb_func_start sub_080111FC
sub_080111FC: @ 0x080111FC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08011220 @ =gUnk_03006160
	adds r1, r1, r0
	strb r2, [r1, #3]
	cmp r2, #1
	beq _0801121A
	cmp r2, #6
	bne _08011224
_0801121A:
	movs r0, #0
	strb r0, [r1, #2]
	b _08011244
	.align 2, 0
_08011220: .4byte gUnk_03006160
_08011224:
	cmp r2, #2
	beq _0801122C
	cmp r2, #7
	bne _08011232
_0801122C:
	movs r0, #1
	strb r0, [r1, #2]
	b _08011244
_08011232:
	cmp r2, #3
	beq _0801123A
	cmp r2, #8
	bne _08011244
_0801123A:
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08011244
	subs r0, r2, #1
	strb r0, [r1, #3]
_08011244:
	pop {r0}
	bx r0

	thumb_func_start sub_08011248
sub_08011248: @ 0x08011248
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #2
	ldr r0, _0801125C @ =gUnk_03006160
	adds r2, r2, r0
	strh r1, [r2, #4]
	bx lr
	.align 2, 0
_0801125C: .4byte gUnk_03006160

	thumb_func_start sub_08011260
sub_08011260: @ 0x08011260
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #2
	ldr r0, _08011274 @ =gUnk_03006160
	adds r2, r2, r0
	strh r1, [r2, #8]
	bx lr
	.align 2, 0
_08011274: .4byte gUnk_03006160

	thumb_func_start sub_08011278
sub_08011278: @ 0x08011278
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _080112A4 @ =gUnk_03006160
	adds r4, r4, r0
	lsrs r1, r1, #0xc
	adds r0, r1, #0
	movs r1, #0x64
	bl __udivsi3
	str r0, [r4, #0x14]
	ldrh r1, [r4, #4]
	muls r0, r1, r0
	lsrs r0, r0, #0xc
	strh r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080112A4: .4byte gUnk_03006160

	thumb_func_start sub_080112A8
sub_080112A8: @ 0x080112A8
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _080112E4 @ =gUnk_03006160
	adds r4, r4, r0
	movs r0, #0x64
	subs r0, r0, r1
	lsls r0, r0, #0xc
	movs r1, #0x64
	bl __udivsi3
	str r0, [r4, #0x18]
	lsls r5, r5, #0xc
	adds r0, r5, #0
	movs r1, #0x64
	bl __udivsi3
	str r0, [r4, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080112E4: .4byte gUnk_03006160

	thumb_func_start sub_080112E8
sub_080112E8: @ 0x080112E8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #2
	ldr r0, _08011320 @ =gUnk_03006160
	adds r4, r4, r0
	movs r6, #0
	str r6, [sp]
	ldr r2, _08011324 @ =0x05000009
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strh r6, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x64
	bl sub_080112A8
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011320: .4byte gUnk_03006160
_08011324: .4byte 0x05000009

	thumb_func_start sub_08011328
sub_08011328: @ 0x08011328
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0801133C @ =gUnk_03006160
	adds r1, r1, r0
	ldrh r0, [r1]
	bx lr
	.align 2, 0
_0801133C: .4byte gUnk_03006160

	thumb_func_start sub_08011340
sub_08011340: @ 0x08011340
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08011354 @ =gUnk_03006160
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	bx lr
	.align 2, 0
_08011354: .4byte gUnk_03006160

	thumb_func_start sub_08011358
sub_08011358: @ 0x08011358
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0801136C @ =gUnk_03006160
	adds r1, r1, r0
	ldrb r0, [r1, #3]
	bx lr
	.align 2, 0
_0801136C: .4byte gUnk_03006160

	thumb_func_start sub_08011370
sub_08011370: @ 0x08011370
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xd
	ldr r0, _08011398 @ =gUnk_03006374
	adds r4, r4, r0
	movs r5, #0
	str r5, [sp]
	ldr r2, _0801139C @ =0x05000002
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strb r5, [r4]
	strb r5, [r4, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011398: .4byte gUnk_03006374
_0801139C: .4byte 0x05000002

	thumb_func_start sub_080113A0
sub_080113A0: @ 0x080113A0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0xd
	ldr r4, _080113D0 @ =gUnk_03006374
	adds r0, r0, r4
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #3
	adds r4, r4, r3
	movs r3, #0
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #4]
	ldr r1, [r4, #0x30]
	ldrb r1, [r1]
	strb r1, [r0, #5]
	movs r1, #2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080113D0: .4byte gUnk_03006374

	thumb_func_start sub_080113D4
sub_080113D4: @ 0x080113D4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	ldr r2, _080113E0 @ =gUnk_03006374
	adds r0, r0, r2
	strb r1, [r0, #6]
	bx lr
	.align 2, 0
_080113E0: .4byte gUnk_03006374

	thumb_func_start sub_080113E4
sub_080113E4: @ 0x080113E4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xd
	ldr r2, _08011420 @ =gUnk_03006374
	adds r4, r4, r2
	ldrb r0, [r4, #2]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, #0x20
	adds r1, r1, r2
	ldrb r0, [r4, #4]
	ldr r2, [r1, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	lsls r0, r0, #5
	ldr r1, [r1, #0x14]
	adds r0, r0, r1
	movs r5, #1
	ldrb r1, [r4, #1]
	movs r2, #1
	bl sub_0800F2CC
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011420: .4byte gUnk_03006374

	thumb_func_start sub_08011424
sub_08011424: @ 0x08011424
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	ldr r1, _0801143C @ =gUnk_03006374
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #1
	bne _08011438
	movs r0, #2
	strb r0, [r1]
_08011438:
	pop {r0}
	bx r0
	.align 2, 0
_0801143C: .4byte gUnk_03006374

	thumb_func_start sub_08011440
sub_08011440: @ 0x08011440
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	ldr r1, _08011458 @ =gUnk_03006374
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _08011454
	movs r0, #1
	strb r0, [r1]
_08011454:
	pop {r0}
	bx r0
	.align 2, 0
_08011458: .4byte gUnk_03006374

	thumb_func_start sub_0801145C
sub_0801145C: @ 0x0801145C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xd
	ldr r0, _08011484 @ =gUnk_03006374
	adds r4, r4, r0
	movs r5, #0
	str r5, [sp]
	ldr r2, _08011488 @ =0x05000002
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strb r5, [r4]
	strb r5, [r4, #6]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011484: .4byte gUnk_03006374
_08011488: .4byte 0x05000002

	thumb_func_start sub_0801148C
sub_0801148C: @ 0x0801148C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	ldr r1, _08011498 @ =gUnk_03006374
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	bx lr
	.align 2, 0
_08011498: .4byte gUnk_03006374

	thumb_func_start sub_0801149C
sub_0801149C: @ 0x0801149C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	ldr r1, _080114A8 @ =gUnk_03006374
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080114A8: .4byte gUnk_03006374

	thumb_func_start sub_080114AC
sub_080114AC: @ 0x080114AC
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080114D0 @ =gUnk_03006394
	adds r1, r1, r0
	movs r0, #0
	str r0, [sp]
	ldr r2, _080114D4 @ =0x05000006
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080114D0: .4byte gUnk_03006394
_080114D4: .4byte 0x05000006

	thumb_func_start sub_080114D8
sub_080114D8: @ 0x080114D8
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _0801150C @ =gUnk_03006394
	adds r3, r0, r1
	ldrb r0, [r2]
	adds r2, #0x10
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r2, #4]
	str r0, [r3, #4]
	ldr r0, [r2, #8]
	str r0, [r3, #8]
	ldr r1, [r2, #0xc]
	str r1, [r3, #0xc]
	subs r2, #0x10
	adds r0, r2, r0
	str r0, [r3, #0x10]
	adds r1, r2, r1
	str r1, [r3, #0x14]
	pop {r0}
	bx r0
	.align 2, 0
_0801150C: .4byte gUnk_03006394

	thumb_func_start sub_08011510
sub_08011510: @ 0x08011510
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08012578
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #2
	ldr r0, _08011554 @ =gUnk_03006160
	adds r4, r4, r0
	movs r6, #0
	str r6, [sp]
	ldr r2, _08011558 @ =0x05000009
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strh r6, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x64
	bl sub_080112A8
	ldr r0, _0801155C @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08011554: .4byte gUnk_03006160
_08011558: .4byte 0x05000009
_0801155C: .4byte gUnk_03006578

	thumb_func_start sub_08011560
sub_08011560: @ 0x08011560
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_08012578
	mov r8, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl sub_08012578
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_08012578
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	orrs r4, r6
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801015C
	ldr r0, _080115BC @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080115BC: .4byte gUnk_03006578

	thumb_func_start sub_080115C0
sub_080115C0: @ 0x080115C0
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08012578
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #2
	ldr r0, _08011604 @ =gUnk_03006160
	adds r4, r4, r0
	movs r6, #0
	str r6, [sp]
	ldr r2, _08011608 @ =0x05000009
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strh r6, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x64
	bl sub_080112A8
	ldr r0, _0801160C @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08011604: .4byte gUnk_03006160
_08011608: .4byte 0x05000009
_0801160C: .4byte gUnk_03006578

	thumb_func_start sub_08011610
sub_08011610: @ 0x08011610
	push {r4, r5, lr}
	ldr r0, _08011624 @ =gUnk_03005950
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _08011628
	cmp r1, #1
	beq _08011636
	b _0801165A
	.align 2, 0
_08011624: .4byte gUnk_03005950
_08011628:
	ldr r4, _08011664 @ =gUnk_030064B4
	bl sub_08012578
	strh r0, [r4]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_08011636:
	ldr r2, _08011664 @ =gUnk_030064B4
	ldrh r1, [r2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08011668 @ =gUnk_03006160
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r5, _0801166C @ =gUnk_03005950
	cmp r0, #1
	bhi _0801165A
	movs r0, #0
	strh r0, [r2]
	strh r0, [r5]
	ldr r0, _08011670 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
_0801165A:
	movs r1, #0
	ldrsh r0, [r5, r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08011664: .4byte gUnk_030064B4
_08011668: .4byte gUnk_03006160
_0801166C: .4byte gUnk_03005950
_08011670: .4byte gUnk_03006578

	thumb_func_start sub_08011674
sub_08011674: @ 0x08011674
	push {r4, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, _080116A0 @ =gUnk_03006160
	adds r1, r1, r2
	strh r0, [r1, #6]
	ldr r0, _080116A4 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080116A0: .4byte gUnk_03006160
_080116A4: .4byte gUnk_03006578

	thumb_func_start sub_080116A8
sub_080116A8: @ 0x080116A8
	push {r4, r5, lr}
	bl sub_08012578
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08012578
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	bl sub_08012578
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, _080116E4 @ =gUnk_03006160
	adds r1, r1, r2
	strh r5, [r1, #0xe]
	strh r0, [r1, #0x10]
	ldr r0, _080116E8 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080116E4: .4byte gUnk_03006160
_080116E8: .4byte gUnk_03006578

	thumb_func_start sub_080116EC
sub_080116EC: @ 0x080116EC
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08012578
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl sub_08012578
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	bl sub_08012578
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r6, #3
	adds r4, r4, r6
	lsls r4, r4, #2
	ldr r0, _08011748 @ =gUnk_03006160
	adds r4, r4, r0
	movs r0, #0x64
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	movs r1, #0x64
	bl __udivsi3
	str r0, [r4, #0x18]
	lsls r5, r5, #0xc
	adds r0, r5, #0
	movs r1, #0x64
	bl __udivsi3
	str r0, [r4, #0x1c]
	ldr r0, _0801174C @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08011748: .4byte gUnk_03006160
_0801174C: .4byte gUnk_03006578

	thumb_func_start sub_08011750
sub_08011750: @ 0x08011750
	push {r4, r5, lr}
	bl sub_08012578
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_08012578
	lsls r0, r0, #0x18
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #2
	ldr r1, _08011790 @ =gUnk_03006160
	adds r4, r4, r1
	lsrs r0, r0, #0xc
	movs r1, #0x64
	bl __udivsi3
	str r0, [r4, #0x14]
	ldrh r1, [r4, #4]
	muls r0, r1, r0
	lsrs r0, r0, #0xc
	strh r0, [r4, #8]
	ldr r0, _08011794 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08011790: .4byte gUnk_03006160
_08011794: .4byte gUnk_03006578

	thumb_func_start sub_08011798
sub_08011798: @ 0x08011798
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	adds r3, r0, #0
	movs r1, #0x1f
	ands r0, r1
	muls r0, r4, r0
	lsrs r0, r0, #0xc
	cmp r0, #0x1f
	bls _080117B2
	movs r0, #0x1f
	b _080117B4
_080117B2:
	ands r0, r1
_080117B4:
	adds r2, r0, #0
	lsls r1, r1, #5
	adds r0, r3, #0
	ands r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #0xc
	cmp r0, r1
	bls _080117C8
	adds r0, r1, #0
	b _080117CA
_080117C8:
	ands r0, r1
_080117CA:
	orrs r2, r0
	lsls r1, r1, #5
	adds r0, r3, #0
	ands r0, r1
	muls r0, r6, r0
	lsrs r0, r0, #0xc
	cmp r0, r1
	bls _080117DE
	adds r0, r1, #0
	b _080117E0
_080117DE:
	ands r0, r1
_080117E0:
	orrs r2, r0
	lsls r1, r1, #6
	adds r0, r3, #0
	ands r0, r1
	muls r0, r4, r0
	lsrs r0, r0, #0xc
	cmp r0, r1
	bls _080117F4
	adds r0, r1, #0
	b _080117F6
_080117F4:
	ands r0, r1
_080117F6:
	orrs r2, r0
	lsls r1, r1, #5
	adds r0, r3, #0
	ands r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #0xc
	cmp r0, r1
	bls _0801180A
	adds r0, r1, #0
	b _0801180C
_0801180A:
	ands r0, r1
_0801180C:
	orrs r2, r0
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	lsrs r0, r0, #0xc
	cmp r0, r1
	bls _08011820
	adds r0, r1, #0
	b _08011822
_08011820:
	ands r0, r1
_08011822:
	orrs r2, r0
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0801182C
sub_0801182C: @ 0x0801182C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r1, #0
	bne _0801183E
	adds r0, r2, #0
	b _0801188E
_0801183E:
	movs r4, #0x1f
	ands r4, r2
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r2
	lsrs r3, r0, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r2, r0
	lsrs r2, r2, #0xa
	adds r4, r4, r1
	adds r3, r3, r1
	adds r2, r2, r1
	cmp r4, #0x1f
	ble _08011860
	movs r4, #0x1f
	b _08011866
_08011860:
	cmp r4, #0
	bge _08011866
	movs r4, #0
_08011866:
	cmp r3, #0x1f
	ble _0801186E
	movs r3, #0x1f
	b _08011874
_0801186E:
	cmp r3, #0
	bge _08011874
	movs r3, #0
_08011874:
	cmp r2, #0x1f
	ble _0801187C
	movs r2, #0x1f
	b _08011882
_0801187C:
	cmp r2, #0
	bge _08011882
	movs r2, #0
_08011882:
	lsls r0, r3, #5
	orrs r4, r0
	lsls r0, r2, #0xa
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
_0801188E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08011894
sub_08011894: @ 0x08011894
	push {r4, lr}
	ldr r4, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_08012394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r1, r4, #0
	bl sub_0801182C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080118BC
sub_080118BC: @ 0x080118BC
	lsls r0, r0, #0x10
	movs r1, #0x1f
	lsrs r2, r0, #0x10
	ands r2, r1
	lsrs r3, r0, #0x15
	ands r3, r1
	lsrs r0, r0, #0x1a
	ands r0, r1
	movs r1, #0x4c
	muls r2, r1, r2
	movs r1, #0x96
	muls r1, r3, r1
	adds r2, r2, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r2, r2, r1
	lsrs r2, r2, #8
	lsls r0, r2, #5
	orrs r0, r2
	lsls r2, r2, #0xa
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_080118F0
sub_080118F0: @ 0x080118F0
	lsls r0, r0, #0x10
	movs r1, #0x1f
	lsrs r2, r0, #0x10
	ands r2, r1
	lsrs r3, r0, #0x15
	ands r3, r1
	lsrs r0, r0, #0x1a
	ands r0, r1
	lsls r2, r2, #7
	lsls r3, r3, #7
	lsls r0, r0, #7
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	lsrs r2, r1, #0xc
	movs r1, #0x1a
	muls r1, r3, r1
	lsrs r3, r1, #0xc
	lsls r1, r0, #2
	adds r1, r1, r0
	lsrs r1, r1, #0xa
	lsls r0, r3, #5
	orrs r2, r0
	lsls r0, r1, #0xa
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08011928
sub_08011928: @ 0x08011928
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r3, #0x1f
	adds r6, r2, #0
	ands r6, r3
	lsrs r4, r2, #5
	ands r4, r3
	lsrs r5, r2, #0xa
	ands r5, r3
	movs r1, #0xff
	subs r6, r1, r6
	subs r4, r1, r4
	subs r5, r1, r5
	lsls r0, r4, #5
	orrs r6, r0
	lsls r0, r5, #0xa
	orrs r0, r6
	lsrs r6, r2, #0x10
	ands r6, r3
	lsrs r4, r2, #0x15
	ands r4, r3
	lsrs r5, r2, #0x1a
	ands r5, r3
	subs r6, r1, r6
	subs r4, r1, r4
	subs r5, r1, r5
	lsls r1, r6, #0x10
	lsls r2, r4, #0x15
	orrs r1, r2
	lsls r2, r5, #0x1a
	orrs r1, r2
	orrs r0, r1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08011970
sub_08011970: @ 0x08011970
	push {r4, r5, r6, lr}
	movs r6, #7
	movs r4, #0x54
	ldr r5, _080119CC @ =gUnk_03006314
_08011978:
	adds r1, r4, r5
	ldrb r0, [r1]
	cmp r0, #1
	bne _08011986
	adds r0, r1, #0
	bl sub_080100C0
_08011986:
	adds r0, r4, #0
	subs r0, #0xc
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #1
	bne _08011998
	adds r0, r1, #0
	bl sub_080100C0
_08011998:
	adds r0, r4, #0
	subs r0, #0x18
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #1
	bne _080119AA
	adds r0, r1, #0
	bl sub_080100C0
_080119AA:
	adds r0, r4, #0
	subs r0, #0x24
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #1
	bne _080119BC
	adds r0, r1, #0
	bl sub_080100C0
_080119BC:
	subs r4, #0x30
	subs r6, #4
	cmp r6, #0
	bge _08011978
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080119CC: .4byte gUnk_03006314

	thumb_func_start sub_080119D0
sub_080119D0: @ 0x080119D0
	push {r4, r5, lr}
	movs r5, #0xa
	movs r4, #0xb4
	lsls r4, r4, #1
	ldr r0, _080119F8 @ =gUnk_03006160
	adds r0, r0, r4
	ldrh r1, [r0]
	cmp r1, #0
	beq _08011A0A
	cmp r1, #0
	blt _08011A0A
	cmp r1, #4
	bgt _08011A0A
	ldrb r2, [r0, #3]
	cmp r2, #5
	bhi _080119FC
	bl sub_08010218
	b _08011A0A
	.align 2, 0
_080119F8: .4byte gUnk_03006160
_080119FC:
	cmp r2, #9
	bhi _08011A06
	bl sub_08010484
	b _08011A0A
_08011A06:
	bl sub_0801060C
_08011A0A:
	subs r4, #0x24
	subs r5, #1
	cmp r5, #0
	blt _08011A7E
_08011A12:
	ldr r0, _08011A30 @ =gUnk_03006160
	adds r0, r4, r0
	ldrh r1, [r0]
	cmp r1, #0
	beq _08011A42
	cmp r1, #0
	blt _08011A42
	cmp r1, #4
	bgt _08011A42
	ldrb r2, [r0, #3]
	cmp r2, #5
	bhi _08011A34
	bl sub_08010218
	b _08011A42
	.align 2, 0
_08011A30: .4byte gUnk_03006160
_08011A34:
	cmp r2, #9
	bhi _08011A3E
	bl sub_08010484
	b _08011A42
_08011A3E:
	bl sub_0801060C
_08011A42:
	adds r1, r4, #0
	subs r1, #0x24
	ldr r0, _08011A64 @ =gUnk_03006160
	adds r0, r1, r0
	ldrh r2, [r0]
	cmp r2, #0
	beq _08011A76
	cmp r2, #0
	blt _08011A76
	cmp r2, #4
	bgt _08011A76
	ldrb r2, [r0, #3]
	cmp r2, #5
	bhi _08011A68
	bl sub_08010218
	b _08011A76
	.align 2, 0
_08011A64: .4byte gUnk_03006160
_08011A68:
	cmp r2, #9
	bhi _08011A72
	bl sub_08010484
	b _08011A76
_08011A72:
	bl sub_0801060C
_08011A76:
	subs r4, #0x48
	subs r5, #2
	cmp r5, #0
	bge _08011A12
_08011A7E:
	ldr r4, _08011AA4 @ =gUnk_030062EC
	adds r1, r4, #0
	adds r1, #0x14
	ldrh r0, [r4, #0x14]
	cmp r0, #2
	bne _08011A90
	adds r0, r1, #0
	bl sub_0801098C
_08011A90:
	ldrh r0, [r4]
	cmp r0, #2
	bne _08011A9C
	adds r0, r4, #0
	bl sub_0801098C
_08011A9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011AA4: .4byte gUnk_030062EC

	thumb_func_start sub_08011AA8
sub_08011AA8: @ 0x08011AA8
	push {r4, lr}
	ldr r4, _08011AF0 @ =gUnk_03006374
	adds r1, r4, #0
	adds r1, #0x18
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08011ABC
	adds r0, r1, #0
	bl sub_08010040
_08011ABC:
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _08011ACC
	adds r0, r1, #0
	bl sub_08010040
_08011ACC:
	adds r1, r4, #0
	adds r1, #8
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _08011ADC
	adds r0, r1, #0
	bl sub_08010040
_08011ADC:
	adds r1, r4, #0
	ldrb r0, [r1]
	cmp r0, #1
	bne _08011AEA
	adds r0, r1, #0
	bl sub_08010040
_08011AEA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011AF0: .4byte gUnk_03006374

	thumb_func_start sub_08011AF4
sub_08011AF4: @ 0x08011AF4
	push {lr}
	bl sub_08012578
	ldr r1, _08011B10 @ =gUnk_03005960
	ldr r2, _08011B14 @ =0x00000AA2
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, _08011B18 @ =gUnk_03006578
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08011B10: .4byte gUnk_03005960
_08011B14: .4byte 0x00000AA2
_08011B18: .4byte gUnk_03006578

	thumb_func_start sub_08011B1C
sub_08011B1C: @ 0x08011B1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r0, _08011E50 @ =gUnk_03005960
	mov sb, r0
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #2
	bne _08011B3A
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
_08011B3A:
	mov r2, r8
	ldrh r0, [r2, #8]
	lsls r0, r0, #0xc
	ldrh r1, [r2, #4]
	bl __udivsi3
	adds r6, r0, #0
	mov r3, r8
	str r6, [r3, #0x14]
	ldr r4, [r3, #0x20]
	ldrh r7, [r3, #0xc]
	ldr r1, _08011E54 @ =gUnk_08B714AC
	ldrb r0, [r3, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r5, #1
	movs r1, #0xfc
	lsls r1, r1, #3
	add r1, sb
	cmp r4, #0
	bge _08011B70
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011B70:
	movs r1, #0xf8
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r4
	beq _08011B88
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011B88:
	movs r1, #0xf4
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r4
	beq _08011BA0
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011BA0:
	movs r1, #0xf0
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r4
	beq _08011BB8
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011BB8:
	movs r1, #0xec
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r4
	beq _08011BD0
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011BD0:
	movs r1, #0xe8
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r4
	beq _08011BE8
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011BE8:
	movs r1, #0xe4
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r4
	beq _08011C00
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011C00:
	movs r1, #0xe0
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r4
	beq _08011C18
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011C18:
	movs r1, #0xdc
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r4
	beq _08011C30
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011C30:
	movs r1, #0xd8
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r4
	beq _08011C48
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011C48:
	movs r1, #0xd4
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r4
	beq _08011C60
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011C60:
	movs r1, #0xd0
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r4
	beq _08011C78
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011C78:
	movs r1, #0xcc
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r4
	beq _08011C90
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011C90:
	movs r1, #0xc8
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	beq _08011CA8
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011CA8:
	movs r1, #0xc4
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	beq _08011CC0
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011CC0:
	movs r1, #0xc0
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r4
	beq _08011CD8
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011CD8:
	movs r1, #0xbc
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	beq _08011CF0
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011CF0:
	movs r1, #0xb8
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	beq _08011D08
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011D08:
	movs r1, #0xb4
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	beq _08011D20
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011D20:
	movs r1, #0xb0
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r4
	beq _08011D38
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011D38:
	movs r1, #0xac
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	beq _08011D50
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011D50:
	movs r1, #0xa8
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	beq _08011D68
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011D68:
	movs r1, #0xa4
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	beq _08011D80
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011D80:
	movs r1, #0xa0
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	beq _08011D98
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011D98:
	movs r1, #0x9c
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x80
	ands r0, r4
	beq _08011DAE
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011DAE:
	movs r1, #0x98
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x40
	ands r0, r4
	beq _08011DC4
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011DC4:
	movs r1, #0x94
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x20
	ands r0, r4
	beq _08011DDA
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011DDA:
	movs r1, #0x90
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0x10
	ands r0, r4
	beq _08011DF0
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011DF0:
	movs r1, #0x8c
	lsls r1, r1, #3
	add r1, sb
	movs r0, #8
	ands r0, r4
	beq _08011E06
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011E06:
	movs r1, #0x88
	lsls r1, r1, #3
	add r1, sb
	movs r0, #4
	ands r0, r4
	beq _08011E1C
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011E1C:
	movs r1, #0x84
	lsls r1, r1, #3
	add r1, sb
	movs r0, #2
	mov sl, r0
	adds r0, r4, #0
	mov r2, sl
	ands r0, r2
	beq _08011E38
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
_08011E38:
	movs r1, #0x80
	lsls r1, r1, #3
	add r1, sb
	movs r0, #1
	ands r4, r0
	beq _08011E58
	adds r0, r1, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r5
	b _08011E58
	.align 2, 0
_08011E50: .4byte gUnk_03005960
_08011E54: .4byte gUnk_08B714AC
_08011E58:
	mov r3, r8
	ldrh r0, [r3, #8]
	adds r3, r0, #0
	mov r4, r8
	ldrh r4, [r4, #6]
	cmp r3, r4
	bne _08011E6C
	movs r0, #3
	mov r1, r8
	strh r0, [r1]
_08011E6C:
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #4
	bne _08011E82
	ldrh r0, [r2, #0xa]
	subs r0, #1
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	bne _08011E82
	mov r4, sl
	strh r4, [r2]
_08011E82:
	mov r0, r8
	ldrb r2, [r0, #3]
	adds r1, r2, #0
	cmp r1, #5
	bne _08011EF6
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08011EC4
	mov r1, r8
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #4]
	mov r4, r8
	ldr r3, [r4, #0x1c]
	adds r0, r1, #0
	muls r0, r3, r0
	lsrs r0, r0, #0xc
	cmp r2, r0
	blo _08011F44
	movs r0, #1
	strb r0, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	subs r0, r0, r3
	muls r0, r1, r0
	lsrs r0, r0, #0xc
	strh r0, [r4, #8]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _08011F44
	strh r0, [r4, #0xa]
	movs r0, #4
	strh r0, [r4]
	b _08011F44
_08011EC4:
	mov r0, r8
	ldrh r2, [r0, #8]
	ldrh r1, [r0, #4]
	ldr r3, [r0, #0x18]
	adds r0, r1, #0
	muls r0, r3, r0
	lsrs r0, r0, #0xc
	cmp r2, r0
	blo _08011F44
	movs r0, #0
	mov r2, r8
	strb r0, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	subs r0, r0, r3
	muls r0, r1, r0
	lsrs r0, r0, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xe]
	cmp r0, #0
	beq _08011F44
	strh r0, [r2, #0xa]
	movs r0, #4
	strh r0, [r2]
	b _08011F44
_08011EF6:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	mov r3, r8
	ldrh r3, [r3, #4]
	cmp r0, r3
	bne _08011F44
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08011F14
	movs r0, #1
	mov r4, r8
	strh r0, [r4]
	b _08011F44
_08011F14:
	cmp r1, #3
	bne _08011F28
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #2]
	movs r0, #2
	strb r0, [r1, #3]
	b _08011F44
_08011F28:
	cmp r1, #4
	bne _08011F44
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #8]
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _08011F3E
	movs r0, #1
	strb r0, [r2, #2]
	b _08011F44
_08011F3E:
	movs r0, #0
	mov r3, r8
	strb r0, [r3, #2]
_08011F44:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
