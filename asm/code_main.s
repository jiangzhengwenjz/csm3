	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08001F14
sub_08001F14: @ 0x08001F14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r1, #0
	mov sb, r1
	ldr r0, [sp]
	b _0800207A
_08001F3A:
	ldr r1, _08001FA8 @ =0x0000F0FF
	adds r0, r1, #0
	adds r1, r3, #0
	ands r1, r0
	ldr r0, _08001FAC @ =0x0000C083
	cmp r1, r0
	bne _08002004
	movs r6, #0
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r3, r0
	lsrs r5, r3, #8
	ldr r1, _08001FB0 @ =gUnk_03005580
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	mov ip, r1
	movs r1, #1
	add r8, r1
	cmp r3, #0
	bne _08001F6A
	b _08002072
_08001F6A:
	ldr r0, _08001FA8 @ =0x0000F0FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	ldr r1, _08001FB4 @ =0x00007087
	cmp r0, r1
	bne _08001FB8
	mov r0, sb
	lsls r2, r0, #1
	ldr r1, [sp, #4]
	adds r2, r2, r1
	lsls r0, r7, #1
	lsrs r1, r7, #1
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r3, r1
	lsrs r1, r3, #8
	orrs r0, r1
	strh r0, [r2]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r6, #1
	b _08001FEC
	.align 2, 0
_08001FA8: .4byte 0x0000F0FF
_08001FAC: .4byte 0x0000C083
_08001FB0: .4byte gUnk_03005580
_08001FB4: .4byte 0x00007087
_08001FB8:
	adds r0, r3, #0
	bl sub_0800348C
	adds r1, r0, #0
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	bne _08001FD6
	adds r0, r1, #0
	adds r1, r4, #0
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_08003BC0
	b _08001FE2
_08001FD6:
	adds r0, r1, #0
	adds r1, r4, #0
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_08003EB8
_08001FE2:
	adds r4, #0x60
	adds r6, #1
	adds r7, #1
	ldr r0, _08002000 @ =gUnk_03005580
	mov ip, r0
_08001FEC:
	lsls r0, r5, #3
	adds r0, r0, r5
	adds r0, r0, r6
	lsls r0, r0, #1
	add r0, ip
	ldrh r3, [r0]
	cmp r3, #0
	bne _08001F6A
	b _08002072
	.align 2, 0
_08002000: .4byte gUnk_03005580
_08002004:
	ldr r0, _0800203C @ =0x00007087
	cmp r1, r0
	bne _08002040
	mov r1, sb
	lsls r2, r1, #1
	ldr r0, [sp, #4]
	adds r2, r2, r0
	lsls r0, r7, #1
	lsrs r1, r7, #1
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r3, r1
	lsrs r1, r3, #8
	orrs r0, r1
	strh r0, [r2]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #1
	add r8, r0
	b _08002072
	.align 2, 0
_0800203C: .4byte 0x00007087
_08002040:
	adds r0, r3, #0
	bl sub_0800348C
	adds r1, r0, #0
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	bne _0800205E
	adds r0, r1, #0
	adds r1, r4, #0
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_08003BC0
	b _0800206A
_0800205E:
	adds r0, r1, #0
	adds r1, r4, #0
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_08003EB8
_0800206A:
	adds r4, #0x60
	movs r1, #1
	add r8, r1
	adds r7, #1
_08002072:
	mov r1, r8
	lsls r0, r1, #1
	ldr r1, [sp]
	adds r0, r0, r1
_0800207A:
	ldrh r3, [r0]
	cmp r3, #0
	beq _08002082
	b _08001F3A
_08002082:
	mov r0, sb
	cmp r0, #0
	bne _08002090
	ldr r1, _080020A4 @ =0x0000FFFF
	adds r0, r1, #0
	ldr r1, [sp, #4]
	strh r0, [r1]
_08002090:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080020A4: .4byte 0x0000FFFF

	thumb_func_start sub_080020A8
sub_080020A8: @ 0x080020A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x74]
	movs r0, #0
	mov sl, r0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #0x78]
	ldr r0, _080020E0 @ =gUnk_03002988
	ldr r7, [r0]
	ldr r3, [sp, #0x9c]
	str r3, [sp, #0x64]
	add r0, sp, #0x64
	ldr r2, _080020E4 @ =0x010001E0
	adds r1, r7, #0
	bl CpuFastSet
	ldr r0, [sp, #0x6c]
	b _08002266
	.align 2, 0
_080020E0: .4byte gUnk_03002988
_080020E4: .4byte 0x010001E0
_080020E8:
	ldr r1, _08002158 @ =0x0000F0FF
	adds r0, r1, #0
	adds r1, r4, #0
	ands r1, r0
	ldr r0, _0800215C @ =0x0000C083
	cmp r1, r0
	bne _080021D8
	movs r3, #0
	mov r8, r3
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r4, r0
	lsrs r6, r4, #8
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #1
	ldr r1, _08002160 @ =gUnk_03005580
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r3, #1
	add sl, r3
	cmp r4, #0
	bne _08002118
	b _0800225E
_08002118:
	ldr r0, _08002158 @ =0x0000F0FF
	adds r1, r0, #0
	adds r0, r4, #0
	ands r0, r1
	ldr r1, _08002164 @ =0x00007087
	cmp r0, r1
	bne _08002168
	ldr r3, [sp, #0x78]
	lsls r2, r3, #1
	ldr r0, [sp, #0x70]
	adds r2, r2, r0
	mov r1, sb
	lsls r0, r1, #1
	lsrs r1, r1, #1
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r4, r3
	lsrs r1, r4, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [sp, #0x78]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x78]
	movs r0, #1
	add r8, r0
	b _080021B2
	.align 2, 0
_08002158: .4byte 0x0000F0FF
_0800215C: .4byte 0x0000C083
_08002160: .4byte gUnk_03005580
_08002164: .4byte 0x00007087
_08002168:
	adds r0, r4, #0
	bl sub_0800348C
	add r1, sp, #4
	ldr r2, [sp, #0x9c]
	bl sub_080041C8
	adds r5, r0, #0
	ldr r0, _080021C8 @ =0x00004081
	cmp r4, r0
	bne _08002180
	ldr r5, _080021CC @ =0x00040004
_08002180:
	lsrs r0, r5, #0x10
	subs r4, r0, #1
	cmp r4, #0
	bge _0800218A
	movs r4, #0
_0800218A:
	lsrs r2, r4, #0x1f
	adds r2, r4, r2
	asrs r2, r2, #1
	ldr r1, [sp, #0x9c]
	str r1, [sp]
	add r0, sp, #4
	adds r1, r7, #0
	ldr r3, [sp, #0x74]
	bl sub_08003A20
	ldr r1, _080021D0 @ =0x0000FFFF
	ands r1, r5
	adds r1, r1, r4
	movs r0, #0xe
	subs r0, r0, r1
	lsrs r0, r0, #1
	adds r7, r7, r0
	movs r3, #1
	add r8, r3
	add sb, r3
_080021B2:
	lsls r0, r6, #3
	adds r0, r0, r6
	add r0, r8
	lsls r0, r0, #1
	ldr r1, _080021D4 @ =gUnk_03005580
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r4, #0
	bne _08002118
	b _0800225E
	.align 2, 0
_080021C8: .4byte 0x00004081
_080021CC: .4byte 0x00040004
_080021D0: .4byte 0x0000FFFF
_080021D4: .4byte gUnk_03005580
_080021D8:
	ldr r0, _08002210 @ =0x00007087
	cmp r1, r0
	bne _08002214
	ldr r3, [sp, #0x78]
	lsls r2, r3, #1
	ldr r0, [sp, #0x70]
	adds r2, r2, r0
	mov r1, sb
	lsls r0, r1, #1
	lsrs r1, r1, #1
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	movs r3, #0xf0
	lsls r3, r3, #4
	ands r4, r3
	lsrs r1, r4, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, [sp, #0x78]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x78]
	movs r0, #1
	add sl, r0
	b _0800225E
	.align 2, 0
_08002210: .4byte 0x00007087
_08002214:
	adds r0, r4, #0
	bl sub_0800348C
	add r1, sp, #4
	ldr r2, [sp, #0x9c]
	bl sub_080041C8
	adds r5, r0, #0
	ldr r0, _080022A4 @ =0x00004081
	cmp r4, r0
	bne _0800222C
	ldr r5, _080022A8 @ =0x00040004
_0800222C:
	lsrs r0, r5, #0x10
	subs r4, r0, #1
	cmp r4, #0
	bge _08002236
	movs r4, #0
_08002236:
	lsrs r2, r4, #0x1f
	adds r2, r4, r2
	asrs r2, r2, #1
	ldr r1, [sp, #0x9c]
	str r1, [sp]
	add r0, sp, #4
	adds r1, r7, #0
	ldr r3, [sp, #0x74]
	bl sub_08003A20
	ldr r1, _080022AC @ =0x0000FFFF
	ands r1, r5
	adds r1, r1, r4
	movs r0, #0xe
	subs r0, r0, r1
	lsrs r0, r0, #1
	adds r7, r7, r0
	movs r3, #1
	add sl, r3
	add sb, r3
_0800225E:
	mov r1, sl
	lsls r0, r1, #1
	ldr r3, [sp, #0x6c]
	adds r0, r0, r3
_08002266:
	ldrh r4, [r0]
	cmp r4, #0
	beq _0800226E
	b _080020E8
_0800226E:
	ldr r0, _080022B0 @ =gUnk_03002988
	ldr r0, [r0]
	subs r1, r7, r0
	lsrs r1, r1, #2
	adds r4, r1, #1
	ldr r1, [sp, #0x68]
	adds r2, r4, #0
	bl sub_080043E4
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _0800228E
	ldr r1, _080022AC @ =0x0000FFFF
	adds r0, r1, #0
	ldr r3, [sp, #0x70]
	strh r0, [r3]
_0800228E:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080022A4: .4byte 0x00004081
_080022A8: .4byte 0x00040004
_080022AC: .4byte 0x0000FFFF
_080022B0: .4byte gUnk_03002988

	thumb_func_start sub_080022B4
sub_080022B4: @ 0x080022B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov sl, r1
	movs r6, #0
	movs r7, #0
	ldrh r1, [r1]
	cmp r1, #0
	beq _08002376
_080022CC:
	adds r2, r1, #0
	ldr r0, _080022FC @ =0x0000F0FF
	ands r2, r0
	ldr r0, _08002300 @ =0x0000C083
	cmp r2, r0
	bne _08002340
	movs r5, #0
	ldr r0, _08002304 @ =gUnk_03005580
	movs r2, #0
	ldrh r1, [r0]
	adds r3, r0, #0
	adds r6, #1
	mov r8, r6
	cmp r1, #0
	beq _08002336
	ldr r0, _08002308 @ =0x00007087
	mov sb, r0
	adds r6, r2, #0
_080022F0:
	ldr r0, _080022FC @ =0x0000F0FF
	ands r1, r0
	cmp r1, sb
	bne _0800230C
	adds r5, #1
	b _0800232A
	.align 2, 0
_080022FC: .4byte 0x0000F0FF
_08002300: .4byte 0x0000C083
_08002304: .4byte gUnk_03005580
_08002308: .4byte 0x00007087
_0800230C:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	bne _0800231C
	adds r0, r4, #0
	bl sub_08003B9C
	b _08002322
_0800231C:
	adds r0, r4, #0
	bl sub_08003BA8
_08002322:
	adds r4, #0x60
	adds r5, #1
	adds r7, #1
	ldr r3, _0800233C @ =gUnk_03005580
_0800232A:
	lsls r0, r5, #1
	adds r0, r0, r6
	adds r0, r0, r3
	ldrh r1, [r0]
	cmp r1, #0
	bne _080022F0
_08002336:
	mov r6, r8
	b _0800236C
	.align 2, 0
_0800233C: .4byte gUnk_03005580
_08002340:
	ldr r0, _0800234C @ =0x00007087
	cmp r2, r0
	bne _08002350
	adds r6, #1
	b _0800236C
	.align 2, 0
_0800234C: .4byte 0x00007087
_08002350:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	bne _08002360
	adds r0, r4, #0
	bl sub_08003B9C
	b _08002366
_08002360:
	adds r0, r4, #0
	bl sub_08003BA8
_08002366:
	adds r4, #0x60
	adds r6, #1
	adds r7, #1
_0800236C:
	lsls r0, r6, #1
	add r0, sl
	ldrh r1, [r0]
	cmp r1, #0
	bne _080022CC
_08002376:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002388
sub_08002388: @ 0x08002388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	str r3, [r5]
	str r3, [r5, #4]
	str r3, [r5, #8]
	str r3, [r5, #0xc]
	str r3, [r5, #0x30]
	str r3, [r5, #0x34]
	str r3, [r5, #0x38]
	str r3, [r5, #0x3c]
	str r3, [r5, #0x40]
	str r3, [r5, #0x44]
	str r3, [r5, #0x48]
	str r3, [r5, #0x4c]
	str r3, [r5, #0x50]
	str r3, [r5, #0x54]
	str r3, [r5, #0x58]
	str r3, [r5, #0x5c]
	str r3, [r5, #0x60]
	str r3, [r5, #0x64]
	str r3, [r5, #0x68]
	str r3, [r5, #0x6c]
	str r3, [r5, #0x70]
	str r3, [r5, #0x74]
	str r3, [r5, #0x78]
	str r3, [r5, #0x7c]
	cmp r3, #0
	beq _080023D0
	b _08002540
_080023D0:
	ldrh r3, [r0]
	movs r1, #1
	ands r1, r3
	lsls r1, r1, #0x1c
	movs r0, #2
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x17
	orrs r1, r0
	movs r0, #4
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x12
	orrs r1, r0
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xd
	orrs r1, r0
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x20
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r1, r0
	lsls r4, r4, #2
	adds r4, r4, r5
	lsls r0, r1, #5
	adds r0, r0, r1
	str r0, [r4]
	adds r7, r1, #0
	movs r5, #0x80
	lsls r5, r5, #5
	adds r2, r3, #0
	ands r2, r5
	movs r0, #0x80
	lsls r0, r0, #6
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x15
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x1f
	orrs r2, r3
	lsls r0, r2, #4
	lsrs r1, r7, #0x1c
	orrs r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	str r0, [r4, #0x40]
	adds r6, r2, #0
	movs r0, #1
	mov r8, r0
	mov sl, r5
	adds r4, #4
	movs r1, #2
	add ip, r1
_08002484:
	mov r0, ip
	ldrh r3, [r0]
	adds r5, r7, #0
	movs r1, #1
	ands r1, r3
	lsls r1, r1, #0x1c
	movs r0, #2
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x17
	orrs r1, r0
	movs r0, #4
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x12
	orrs r1, r0
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xd
	orrs r1, r0
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x20
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r1, r0
	adds r0, r1, #0
	orrs r0, r5
	lsls r0, r0, #5
	adds r0, r0, r1
	str r0, [r4]
	adds r7, r1, #0
	adds r2, r3, #0
	mov r1, sl
	ands r2, r1
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x15
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x1f
	orrs r2, r3
	orrs r6, r2
	lsls r0, r6, #4
	lsrs r1, r5, #0x1c
	orrs r0, r1
	lsrs r1, r7, #0x1c
	orrs r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	str r0, [r4, #0x40]
	adds r6, r2, #0
	adds r4, #4
	movs r0, #2
	add ip, r0
	movs r1, #1
	add r8, r1
	mov r0, r8
	cmp r0, #0xb
	bls _08002484
	b _080026BA
_08002540:
	mov r1, ip
	ldrh r3, [r1]
	movs r2, #1
	ands r2, r3
	lsls r2, r2, #0x1c
	movs r0, #2
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x17
	orrs r2, r0
	movs r0, #4
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xd
	orrs r2, r0
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	orrs r2, r0
	movs r0, #0x20
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r2, r0
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r2, r0
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r5, _080026C8 @ =0x44444444
	subs r0, r5, r2
	lsls r1, r2, #5
	subs r0, r0, r1
	str r0, [r4]
	adds r7, r2, #0
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	adds r2, r3, #0
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x15
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x1f
	orrs r2, r3
	subs r3, r5, r2
	lsls r0, r2, #4
	lsrs r1, r7, #0x1c
	orrs r0, r1
	lsls r0, r0, #1
	subs r3, r3, r0
	str r3, [r4, #0x40]
	adds r6, r2, #0
	movs r1, #1
	mov r8, r1
	mov sb, r5
	adds r4, #4
	movs r0, #2
	add ip, r0
_080025F8:
	mov r1, ip
	ldrh r3, [r1]
	adds r5, r7, #0
	movs r2, #1
	ands r2, r3
	lsls r2, r2, #0x1c
	movs r0, #2
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x17
	orrs r2, r0
	movs r0, #4
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x12
	orrs r2, r0
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xd
	orrs r2, r0
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	orrs r2, r0
	movs r0, #0x20
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #3
	orrs r2, r0
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r2, r0
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r2, r0
	mov r0, sb
	subs r1, r0, r2
	adds r0, r2, #0
	orrs r0, r5
	lsls r0, r0, #5
	subs r1, r1, r0
	str r1, [r4]
	adds r7, r2, #0
	adds r2, r3, #0
	mov r1, sl
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x15
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x1f
	orrs r2, r3
	mov r0, sb
	subs r3, r0, r2
	orrs r6, r2
	lsls r0, r6, #4
	lsrs r1, r5, #0x1c
	orrs r0, r1
	lsrs r1, r7, #0x1c
	orrs r0, r1
	lsls r0, r0, #1
	subs r3, r3, r0
	str r3, [r4, #0x40]
	adds r6, r2, #0
	adds r4, #4
	movs r1, #2
	add ip, r1
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xb
	bls _080025F8
_080026BA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080026C8: .4byte 0x44444444

	thumb_func_start sub_080026CC
sub_080026CC: @ 0x080026CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	subs r7, #0x20
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r7, #2]
	strh r0, [r7, #6]
	strh r0, [r7, #0xa]
	strh r0, [r7, #0xe]
	strh r0, [r7, #0x32]
	strh r0, [r7, #0x36]
	strh r0, [r7, #0x3a]
	strh r0, [r7, #0x3e]
	str r3, [r7, #0x40]
	str r3, [r7, #0x44]
	str r3, [r7, #0x48]
	str r3, [r7, #0x4c]
	str r3, [r7, #0x70]
	str r3, [r7, #0x74]
	str r3, [r7, #0x78]
	str r3, [r7, #0x7c]
	cmp r3, #0
	beq _0800270E
	b _080028A2
_0800270E:
	ldr r0, [sp]
	ldrh r3, [r0]
	movs r4, #0x10
	ands r4, r3
	lsls r4, r4, #8
	movs r0, #0x20
	ands r0, r3
	lsls r0, r0, #3
	orrs r4, r0
	movs r0, #0x40
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	orrs r4, r0
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	lsls r0, r2, #0x15
	lsrs r0, r0, #0x10
	mov ip, r0
	mov r1, sl
	lsls r0, r1, #2
	adds r0, r0, r7
	mov r5, ip
	adds r1, r5, r2
	strh r1, [r0, #2]
	mov ip, r2
	movs r2, #1
	ands r2, r3
	lsls r2, r2, #0xc
	movs r0, #2
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #4
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x13
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xb
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #6
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r3, r3, #1
	orrs r2, r3
	lsls r6, r2, #4
	lsrs r4, r4, #0x1c
	orrs r6, r4
	lsls r6, r6, #1
	mov r1, sl
	lsls r0, r1, #2
	adds r0, r0, r7
	adds r1, r6, r2
	str r1, [r0, #0x40]
	adds r6, r2, #0
	movs r2, #1
	mov sb, r2
_080027C4:
	mov r5, sb
	lsls r0, r5, #1
	ldr r1, [sp]
	adds r0, r0, r1
	ldrh r2, [r0]
	add r5, sl
	str r5, [sp, #4]
	mov r8, ip
	movs r4, #0x10
	ands r4, r2
	lsls r4, r4, #8
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #3
	orrs r4, r0
	movs r0, #0x40
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	orrs r4, r0
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	adds r0, r3, #0
	mov r5, r8
	orrs r0, r5
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r0, r0, r7
	mov r5, ip
	adds r1, r5, r3
	strh r1, [r0, #2]
	mov ip, r3
	movs r1, #1
	ands r1, r2
	lsls r1, r1, #0xc
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x13
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xb
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r2, r2, #1
	orrs r1, r2
	orrs r6, r1
	lsls r6, r6, #4
	mov r2, r8
	lsls r0, r2, #4
	lsrs r0, r0, #0x10
	orrs r6, r0
	lsrs r4, r4, #0x1c
	orrs r6, r4
	lsls r6, r6, #1
	ldr r0, [sp, #4]
	lsls r5, r0, #2
	adds r5, r5, r7
	adds r0, r6, r1
	str r0, [r5, #0x40]
	adds r6, r1, #0
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xc
	bne _080027C4
	b _08002A4A
_080028A2:
	ldr r1, [sp]
	ldrh r2, [r1]
	movs r3, #0x10
	ands r3, r2
	lsls r3, r3, #8
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #3
	orrs r3, r0
	movs r0, #0x40
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	orrs r3, r0
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r3, r0
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	lsls r0, r4, #0x15
	lsrs r0, r0, #0x10
	mov ip, r0
	mov r5, sl
	lsls r1, r5, #2
	adds r1, r1, r7
	ldr r5, _08002A5C @ =0x00004444
	adds r0, r5, #0
	subs r0, r0, r4
	mov r5, ip
	subs r0, r0, r5
	strh r0, [r1, #2]
	mov ip, r4
	movs r1, #1
	ands r1, r2
	lsls r1, r1, #0xc
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x13
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xb
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r2, r2, #1
	orrs r1, r2
	lsls r6, r1, #4
	lsrs r3, r3, #0x1c
	orrs r6, r3
	lsls r6, r6, #1
	mov r0, sl
	lsls r2, r0, #2
	adds r2, r2, r7
	ldr r0, _08002A60 @ =0x44444444
	subs r0, r0, r1
	subs r0, r0, r6
	str r0, [r2, #0x40]
	adds r6, r1, #0
	movs r1, #1
	mov sb, r1
_08002962:
	mov r2, sb
	lsls r0, r2, #1
	ldr r5, [sp]
	adds r0, r0, r5
	ldrh r2, [r0]
	mov r0, sb
	add r0, sl
	str r0, [sp, #4]
	mov r8, ip
	movs r4, #0x10
	ands r4, r2
	lsls r4, r4, #8
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #3
	orrs r4, r0
	movs r0, #0x40
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	orrs r4, r0
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	adds r0, r3, #0
	mov r1, r8
	orrs r0, r1
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r5, [sp, #4]
	lsls r1, r5, #2
	adds r1, r1, r7
	ldr r5, _08002A5C @ =0x00004444
	adds r0, r5, #0
	subs r0, r0, r3
	mov r5, ip
	subs r0, r0, r5
	strh r0, [r1, #2]
	mov ip, r3
	movs r1, #1
	ands r1, r2
	lsls r1, r1, #0xc
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x13
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xb
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r2, r2, #1
	orrs r1, r2
	orrs r6, r1
	lsls r6, r6, #4
	mov r2, r8
	lsls r0, r2, #4
	lsrs r0, r0, #0x10
	orrs r6, r0
	lsrs r4, r4, #0x1c
	orrs r6, r4
	lsls r6, r6, #1
	ldr r0, [sp, #4]
	lsls r5, r0, #2
	adds r5, r5, r7
	ldr r0, _08002A60 @ =0x44444444
	subs r0, r0, r1
	subs r0, r0, r6
	str r0, [r5, #0x40]
	adds r6, r1, #0
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xc
	bne _08002962
_08002A4A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002A5C: .4byte 0x00004444
_08002A60: .4byte 0x44444444

	thumb_func_start sub_08002A64
sub_08002A64: @ 0x08002A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r5, #0
	movs r0, #0xc
	mov r8, r0
	mov sb, r0
	str r5, [sp]
	ldr r2, _08002A9C @ =0x01000018
	mov r0, sp
	bl CpuFastSet
	ldr r1, [sp, #4]
	ldrh r4, [r1]
	ldrb r0, [r1]
	lsls r2, r0, #8
	lsrs r0, r4, #8
	orrs r2, r0
	movs r1, #0x80
	lsls r1, r1, #8
	movs r3, #0
	b _08002AA8
	.align 2, 0
_08002A9C: .4byte 0x01000018
_08002AA0:
	lsrs r1, r1, #1
	adds r3, #1
	cmp r3, #0xb
	bhi _08002AB2
_08002AA8:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08002AA0
	mov r8, r3
_08002AB2:
	movs r1, #0x10
	movs r3, #0
	b _08002AC2
_08002AB8:
	lsls r0, r1, #0x11
	lsrs r1, r0, #0x10
	adds r3, #1
	cmp r3, #0xb
	bhi _08002ACC
_08002AC2:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08002AB8
	mov sb, r3
_08002ACC:
	movs r1, #1
	ands r1, r4
	lsls r1, r1, #0x1c
	movs r0, #2
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x17
	orrs r1, r0
	movs r0, #4
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x12
	orrs r1, r0
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xd
	orrs r1, r0
	movs r0, #0x10
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x40
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r1, r0
	lsls r0, r1, #5
	adds r0, r0, r1
	ldr r2, [sp, #8]
	str r0, [r2]
	mov ip, r1
	movs r2, #0x80
	lsls r2, r2, #5
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x15
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x1f
	orrs r2, r0
	lsls r0, r2, #4
	lsrs r1, r1, #0x1c
	orrs r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldr r3, [sp, #8]
	str r0, [r3, #4]
	adds r5, r2, #0
	movs r3, #1
_08002B6C:
	lsls r0, r3, #1
	ldr r6, [sp, #4]
	adds r0, r0, r6
	str r3, [sp, #0xc]
	ldrh r4, [r0]
	ldrb r0, [r0]
	lsls r2, r0, #8
	lsrs r0, r4, #8
	orrs r2, r0
	movs r1, #0x80
	lsls r1, r1, #8
	movs r3, #0
	adds r0, r2, #0
	ands r0, r1
	mov r6, ip
	lsls r7, r6, #4
	lsls r5, r5, #4
	ldr r6, [sp, #0xc]
	adds r6, #1
	mov sl, r6
	cmp r0, #0
	beq _08002BA0
	mov r0, r8
	cmp r0, #0
	bls _08002BB6
	b _08002BB4
_08002BA0:
	lsrs r1, r1, #1
	adds r3, #1
	cmp r3, #0xb
	bhi _08002BB6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08002BA0
	cmp r8, r3
	bls _08002BB6
_08002BB4:
	mov r8, r3
_08002BB6:
	movs r1, #0x10
	movs r3, #0
	adds r0, r2, #0
	ands r0, r1
	ldr r6, [sp, #0xc]
	lsls r6, r6, #3
	str r6, [sp, #0xc]
	cmp r0, #0
	beq _08002BD0
	mov r0, sb
	cmp r0, #0
	bls _08002BE8
	b _08002BE6
_08002BD0:
	lsls r0, r1, #0x11
	lsrs r1, r0, #0x10
	adds r3, #1
	cmp r3, #0xb
	bhi _08002BE8
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08002BD0
	cmp sb, r3
	bls _08002BE8
_08002BE6:
	mov sb, r3
_08002BE8:
	mov r3, ip
	movs r1, #1
	ands r1, r4
	lsls r1, r1, #0x1c
	movs r0, #2
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x17
	orrs r1, r0
	movs r0, #4
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x12
	orrs r1, r0
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xd
	orrs r1, r0
	movs r0, #0x10
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #3
	orrs r1, r0
	movs r0, #0x40
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r1, r0
	movs r0, #0x80
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x17
	orrs r1, r0
	ldr r6, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r2, r6, r0
	lsls r0, r1, #4
	orrs r7, r0
	lsls r0, r7, #1
	adds r0, r0, r1
	str r0, [r2]
	mov ip, r1
	movs r1, #0x80
	lsls r1, r1, #5
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x15
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1a
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r0, r1, #4
	orrs r5, r0
	lsrs r3, r3, #0x1c
	orrs r5, r3
	mov r3, ip
	lsrs r0, r3, #0x1c
	orrs r5, r0
	lsls r0, r5, #1
	adds r0, r0, r1
	str r0, [r2, #4]
	adds r5, r1, #0
	mov r3, sl
	cmp r3, #0xb
	bhi _08002C9E
	b _08002B6C
_08002C9E:
	mov r6, r8
	lsls r0, r6, #0x10
	add r0, sb
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002CB4
sub_08002CB4: @ 0x08002CB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	mov ip, r1
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	mov r2, ip
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r1, [r2, #0xc]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	str r1, [r2, #0x1c]
	str r1, [r2, #0x20]
	str r1, [r2, #0x24]
	str r1, [r2, #0x28]
	str r1, [r2, #0x2c]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x38]
	str r1, [r2, #0x3c]
	str r1, [r2, #0x40]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r1, [r2, #0x4c]
	str r1, [r2, #0x50]
	str r1, [r2, #0x54]
	str r1, [r2, #0x58]
	str r1, [r2, #0x5c]
	str r1, [r2, #0x60]
	str r1, [r2, #0x64]
	str r1, [r2, #0x68]
	str r1, [r2, #0x6c]
	str r1, [r2, #0x70]
	str r1, [r2, #0x74]
	str r1, [r2, #0x78]
	str r1, [r2, #0x7c]
	movs r0, #2
	mov sb, r0
	movs r2, #8
	add r2, ip
	mov sl, r2
	ldr r0, [sp]
	str r0, [sp, #0xc]
_08002D1A:
	ldr r2, [sp, #0xc]
	ldrh r7, [r2]
	ldr r0, [sp, #4]
	mov r8, r0
	movs r0, #4
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r6, r0, #0x1a
	movs r0, #8
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x15
	orrs r6, r0
	movs r0, #0x10
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	orrs r6, r0
	movs r0, #0x20
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xb
	orrs r6, r0
	movs r0, #0x40
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #6
	orrs r6, r0
	movs r0, #0x80
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #1
	orrs r6, r0
	adds r0, r6, #0
	mov r2, r8
	orrs r0, r2
	lsls r0, r0, #5
	adds r4, r0, r6
	movs r5, #0
	lsls r1, r1, #4
	str r1, [sp, #8]
_08002D78:
	movs r3, #0xf0
	lsls r3, r3, #0x18
	lsrs r3, r5
	adds r2, r4, #0
	ands r2, r3
	cmp r2, #0
	beq _08002DB2
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r2, r0
	bne _08002D94
	orrs r4, r3
	b _08002DB2
_08002D94:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r5
	cmp r2, r0
	beq _08002DA8
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r2, r0
	bne _08002DB2
_08002DA8:
	bics r4, r3
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r5
	orrs r4, r0
_08002DB2:
	adds r3, r5, #4
	movs r1, #0xf0
	lsls r1, r1, #0x18
	lsrs r1, r3
	adds r2, r4, #0
	ands r2, r1
	cmp r2, #0
	beq _08002DEE
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r2, r0
	bne _08002DD0
	orrs r4, r1
	b _08002DEE
_08002DD0:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r3
	cmp r2, r0
	beq _08002DE4
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r2, r0
	bne _08002DEE
_08002DE4:
	bics r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r3
	orrs r4, r0
_08002DEE:
	adds r3, r5, #0
	adds r3, #8
	movs r1, #0xf0
	lsls r1, r1, #0x18
	lsrs r1, r3
	adds r2, r4, #0
	ands r2, r1
	cmp r2, #0
	beq _08002E2C
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r2, r0
	bne _08002E0E
	orrs r4, r1
	b _08002E2C
_08002E0E:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r3
	cmp r2, r0
	beq _08002E22
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r2, r0
	bne _08002E2C
_08002E22:
	bics r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r3
	orrs r4, r0
_08002E2C:
	adds r5, #0xc
	cmp r5, #0x17
	bls _08002D78
	mov r0, sl
	str r4, [r0]
	str r6, [sp, #4]
	movs r0, #1
	ands r0, r7
	lsls r6, r0, #4
	movs r0, #2
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x11
	orrs r6, r0
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	orrs r6, r0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #3
	orrs r6, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r6, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r7, r0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r6, r0
	mov r1, r8
	ldr r2, [sp, #4]
	orrs r1, r2
	lsrs r0, r1, #0x1c
	ldr r1, [sp, #8]
	orrs r0, r1
	lsls r1, r6, #4
	orrs r0, r1
	lsls r0, r0, #1
	adds r4, r0, r6
	movs r5, #8
_08002E9A:
	movs r2, #0xf0
	lsls r2, r2, #0x18
	lsrs r2, r5
	adds r1, r4, #0
	ands r1, r2
	cmp r1, #0
	beq _08002ED4
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r1, r0
	bne _08002EB6
	orrs r4, r2
	b _08002ED4
_08002EB6:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r5
	cmp r1, r0
	beq _08002ECA
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r1, r0
	bne _08002ED4
_08002ECA:
	bics r4, r2
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r5
	orrs r4, r0
_08002ED4:
	adds r2, r5, #4
	movs r3, #0xf0
	lsls r3, r3, #0x18
	lsrs r3, r2
	adds r1, r4, #0
	ands r1, r3
	cmp r1, #0
	beq _08002F10
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r2
	cmp r1, r0
	bne _08002EF2
	orrs r4, r3
	b _08002F10
_08002EF2:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r2
	cmp r1, r0
	beq _08002F06
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r2
	cmp r1, r0
	bne _08002F10
_08002F06:
	bics r4, r3
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r2
	orrs r4, r0
_08002F10:
	adds r2, r5, #0
	adds r2, #8
	movs r3, #0xf0
	lsls r3, r3, #0x18
	lsrs r3, r2
	adds r1, r4, #0
	ands r1, r3
	cmp r1, #0
	beq _08002F4E
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r2
	cmp r1, r0
	bne _08002F30
	orrs r4, r3
	b _08002F4E
_08002F30:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r2
	cmp r1, r0
	beq _08002F44
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r2
	cmp r1, r0
	bne _08002F4E
_08002F44:
	bics r4, r3
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r2
	orrs r4, r0
_08002F4E:
	adds r5, #0xc
	cmp r5, #0x1f
	bls _08002E9A
	mov r2, sl
	str r4, [r2, #0x20]
	adds r1, r6, #0
	movs r0, #4
	add sl, r0
	ldr r2, [sp, #0xc]
	adds r2, #2
	str r2, [sp, #0xc]
	movs r0, #1
	add sb, r0
	mov r2, sb
	cmp r2, #7
	bhi _08002F70
	b _08002D1A
_08002F70:
	movs r0, #8
	mov sb, r0
_08002F74:
	mov r2, sb
	lsls r0, r2, #1
	ldr r2, [sp]
	adds r0, r0, r2
	subs r0, #4
	ldrh r7, [r0]
	movs r0, #8
	add r0, sb
	mov sl, r0
	ldr r2, [sp, #4]
	mov r8, r2
	movs r0, #4
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r6, r0, #0x1a
	movs r0, #8
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x15
	orrs r6, r0
	movs r0, #0x10
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	orrs r6, r0
	movs r0, #0x20
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xb
	orrs r6, r0
	movs r0, #0x40
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #6
	orrs r6, r0
	movs r0, #0x80
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #1
	orrs r6, r0
	adds r0, r6, #0
	orrs r0, r2
	lsls r0, r0, #5
	adds r4, r0, r6
	movs r5, #0
	lsls r1, r1, #4
	str r1, [sp, #8]
	movs r0, #1
	add sb, r0
_08002FE2:
	movs r1, #0xf0
	lsls r1, r1, #0x18
	lsrs r1, r5
	adds r3, r4, #0
	ands r3, r1
	cmp r3, #0
	beq _0800301C
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r3, r0
	bne _08002FFE
	orrs r4, r1
	b _0800301C
_08002FFE:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r5
	cmp r3, r0
	beq _08003012
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r3, r0
	bne _0800301C
_08003012:
	bics r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r5
	orrs r4, r0
_0800301C:
	adds r1, r5, #4
	movs r2, #0xf0
	lsls r2, r2, #0x18
	lsrs r2, r1
	adds r3, r4, #0
	ands r3, r2
	cmp r3, #0
	beq _08003058
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r1
	cmp r3, r0
	bne _0800303A
	orrs r4, r2
	b _08003058
_0800303A:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r1
	cmp r3, r0
	beq _0800304E
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r1
	cmp r3, r0
	bne _08003058
_0800304E:
	bics r4, r2
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r1
	orrs r4, r0
_08003058:
	adds r1, r5, #0
	adds r1, #8
	movs r2, #0xf0
	lsls r2, r2, #0x18
	lsrs r2, r1
	adds r3, r4, #0
	ands r3, r2
	cmp r3, #0
	beq _08003096
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r1
	cmp r3, r0
	bne _08003078
	orrs r4, r2
	b _08003096
_08003078:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r1
	cmp r3, r0
	beq _0800308C
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r1
	cmp r3, r0
	bne _08003096
_0800308C:
	bics r4, r2
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r1
	orrs r4, r0
_08003096:
	adds r5, #0xc
	cmp r5, #0x17
	bls _08002FE2
	mov r1, sl
	lsls r2, r1, #2
	mov r1, ip
	adds r0, r2, r1
	str r4, [r0]
	str r6, [sp, #4]
	movs r0, #1
	ands r0, r7
	lsls r6, r0, #4
	movs r0, #2
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x11
	orrs r6, r0
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #8
	orrs r6, r0
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #3
	orrs r6, r0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r6, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r7, r0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x17
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	orrs r6, r0
	mov r0, r8
	ldr r1, [sp, #4]
	orrs r0, r1
	lsrs r0, r0, #0x1c
	ldr r1, [sp, #8]
	orrs r0, r1
	lsls r1, r6, #4
	orrs r0, r1
	lsls r0, r0, #1
	adds r4, r0, r6
	movs r5, #8
	adds r7, r2, #0
_0800310C:
	movs r3, #0xf0
	lsls r3, r3, #0x18
	lsrs r3, r5
	adds r1, r4, #0
	ands r1, r3
	cmp r1, #0
	beq _08003146
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r1, r0
	bne _08003128
	orrs r4, r3
	b _08003146
_08003128:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r5
	cmp r1, r0
	beq _0800313C
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r1, r0
	bne _08003146
_0800313C:
	bics r4, r3
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r5
	orrs r4, r0
_08003146:
	adds r3, r5, #4
	movs r2, #0xf0
	lsls r2, r2, #0x18
	lsrs r2, r3
	adds r1, r4, #0
	ands r1, r2
	cmp r1, #0
	beq _08003182
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _08003164
	orrs r4, r2
	b _08003182
_08003164:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r3
	cmp r1, r0
	beq _08003178
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _08003182
_08003178:
	bics r4, r2
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r3
	orrs r4, r0
_08003182:
	adds r3, r5, #0
	adds r3, #8
	movs r2, #0xf0
	lsls r2, r2, #0x18
	lsrs r2, r3
	adds r1, r4, #0
	ands r1, r2
	cmp r1, #0
	beq _080031C0
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _080031A2
	orrs r4, r2
	b _080031C0
_080031A2:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r3
	cmp r1, r0
	beq _080031B6
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _080031C0
_080031B6:
	bics r4, r2
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r3
	orrs r4, r0
_080031C0:
	adds r5, #0xc
	cmp r5, #0x1f
	bls _0800310C
	mov r2, ip
	adds r0, r7, r2
	str r4, [r0, #0x20]
	adds r1, r6, #0
	mov r0, sb
	cmp r0, #0xd
	bhi _080031D6
	b _08002F74
_080031D6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080031E8
sub_080031E8: @ 0x080031E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	movs r2, #0
	str r2, [r7]
	str r2, [r7, #4]
	str r2, [r7, #8]
	str r2, [r7, #0xc]
	str r2, [r7, #0x10]
	str r2, [r7, #0x14]
	str r2, [r7, #0x18]
	str r2, [r7, #0x1c]
	str r2, [r7, #0x20]
	str r2, [r7, #0x24]
	str r2, [r7, #0x28]
	str r2, [r7, #0x2c]
	str r2, [r7, #0x30]
	str r2, [r7, #0x34]
	str r2, [r7, #0x38]
	str r2, [r7, #0x3c]
	movs r0, #2
	mov ip, r0
	movs r1, #8
	adds r1, r1, r7
	mov sl, r1
	mov r8, sb
_08003224:
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r6, r0, #0x1a
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x15
	orrs r6, r0
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	orrs r6, r0
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xb
	orrs r6, r0
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #6
	orrs r6, r0
	movs r0, #0x80
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r1, r1, #1
	orrs r6, r1
	orrs r2, r6
	lsls r0, r2, #5
	adds r2, r0, r6
	movs r5, #0
_08003276:
	movs r3, #0xf0
	lsls r3, r3, #0x18
	lsrs r3, r5
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _080032B0
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r1, r0
	bne _08003292
	orrs r2, r3
	b _080032B0
_08003292:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r5
	cmp r1, r0
	beq _080032A6
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r1, r0
	bne _080032B0
_080032A6:
	bics r2, r3
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r5
	orrs r2, r0
_080032B0:
	adds r3, r5, #4
	movs r4, #0xf0
	lsls r4, r4, #0x18
	lsrs r4, r3
	adds r1, r2, #0
	ands r1, r4
	cmp r1, #0
	beq _080032EC
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _080032CE
	orrs r2, r4
	b _080032EC
_080032CE:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r3
	cmp r1, r0
	beq _080032E2
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _080032EC
_080032E2:
	bics r2, r4
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r3
	orrs r2, r0
_080032EC:
	adds r3, r5, #0
	adds r3, #8
	movs r4, #0xf0
	lsls r4, r4, #0x18
	lsrs r4, r3
	adds r1, r2, #0
	ands r1, r4
	cmp r1, #0
	beq _0800332A
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _0800330C
	orrs r2, r4
	b _0800332A
_0800330C:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r3
	cmp r1, r0
	beq _08003320
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _0800332A
_08003320:
	bics r2, r4
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r3
	orrs r2, r0
_0800332A:
	adds r5, #0xc
	cmp r5, #0x17
	bls _08003276
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	stm r1!, {r2}
	adds r2, r6, #0
	movs r0, #2
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, ip
	cmp r0, #7
	bhi _0800334C
	b _08003224
_0800334C:
	movs r1, #8
	mov ip, r1
_08003350:
	mov r1, ip
	lsls r0, r1, #1
	add r0, sb
	subs r0, #4
	ldrh r1, [r0]
	mov r8, ip
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r6, r0, #0x1a
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x15
	orrs r6, r0
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	orrs r6, r0
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0xb
	orrs r6, r0
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #6
	orrs r6, r0
	movs r0, #0x80
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r1, r1, #1
	orrs r6, r1
	orrs r2, r6
	lsls r0, r2, #5
	adds r2, r0, r6
	movs r5, #0
	movs r0, #1
	add r0, r8
	mov ip, r0
_080033B0:
	movs r3, #0xf0
	lsls r3, r3, #0x18
	lsrs r3, r5
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	beq _080033EA
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r1, r0
	bne _080033CC
	orrs r2, r3
	b _080033EA
_080033CC:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r5
	cmp r1, r0
	beq _080033E0
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r5
	cmp r1, r0
	bne _080033EA
_080033E0:
	bics r2, r3
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r5
	orrs r2, r0
_080033EA:
	adds r3, r5, #4
	movs r4, #0xf0
	lsls r4, r4, #0x18
	lsrs r4, r3
	adds r1, r2, #0
	ands r1, r4
	cmp r1, #0
	beq _08003426
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _08003408
	orrs r2, r4
	b _08003426
_08003408:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r3
	cmp r1, r0
	beq _0800341C
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _08003426
_0800341C:
	bics r2, r4
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r3
	orrs r2, r0
_08003426:
	adds r3, r5, #0
	adds r3, #8
	movs r4, #0xf0
	lsls r4, r4, #0x18
	lsrs r4, r3
	adds r1, r2, #0
	ands r1, r4
	cmp r1, #0
	beq _08003464
	movs r0, #0x80
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _08003446
	orrs r2, r4
	b _08003464
_08003446:
	movs r0, #0x80
	lsls r0, r0, #0x15
	asrs r0, r3
	cmp r1, r0
	beq _0800345A
	movs r0, #0xc0
	lsls r0, r0, #0x16
	asrs r0, r3
	cmp r1, r0
	bne _08003464
_0800345A:
	bics r2, r4
	movs r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r0, r3
	orrs r2, r0
_08003464:
	adds r5, #0xc
	cmp r5, #0x17
	bls _080033B0
	mov r1, r8
	lsls r0, r1, #2
	adds r0, r0, r7
	str r2, [r0]
	adds r2, r6, #0
	mov r0, ip
	cmp r0, #0xd
	bhi _0800347C
	b _08003350
_0800347C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800348C
sub_0800348C: @ 0x0800348C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x9f
	bhi _080034BC
	subs r1, #0x81
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #6
	ldr r3, _080034B4 @ =0xFFFFC000
	adds r1, r2, r3
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r1, _080034B8 @ =gUnk_08B6D624
	b _080034CE
	.align 2, 0
_080034B4: .4byte 0xFFFFC000
_080034B8: .4byte gUnk_08B6D624
_080034BC:
	subs r1, #0xe0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #6
	ldr r3, _080034EC @ =0xFFFFC000
	adds r1, r2, r3
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r1, _080034F0 @ =gUnk_08B704A4
_080034CE:
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080034F8
	ldr r0, _080034F4 @ =gUnk_08B6D5D0
	b _08003504
	.align 2, 0
_080034EC: .4byte 0xFFFFC000
_080034F0: .4byte gUnk_08B704A4
_080034F4: .4byte gUnk_08B6D5D0
_080034F8:
	ldr r0, _08003508 @ =gUnk_03002984
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r0, [r0]
	adds r0, r0, r1
_08003504:
	pop {r1}
	bx r1
	.align 2, 0
_08003508: .4byte gUnk_03002984

	thumb_func_start sub_0800350C
sub_0800350C: @ 0x0800350C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	movs r4, #0
	adds r2, r3, #0
	adds r2, #0x78
_08003518:
	ldr r0, [r3]
	str r0, [r1]
	ldr r0, [r2]
	str r0, [r1, #4]
	ldr r0, [r2, #0x78]
	str r0, [r1, #8]
	movs r6, #0xb4
	lsls r6, r6, #1
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0xc]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x10]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x14]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x18]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x1c]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x20]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x24]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x28]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x2c]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x30]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x34]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x38]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x3c]
	adds r4, #1
	cmp r5, r4
	beq _08003618
	ldr r0, [r3, #4]
	str r0, [r1, #0x40]
	ldr r0, [r2, #4]
	str r0, [r1, #0x44]
	ldr r0, [r2, #0x7c]
	str r0, [r1, #0x48]
	movs r6, #0xb6
	lsls r6, r6, #1
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x4c]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x50]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x54]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x58]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x5c]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x60]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x64]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x68]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x6c]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x70]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x74]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x78]
	adds r6, #0x78
	adds r0, r3, r6
	ldr r0, [r0]
	str r0, [r1, #0x7c]
	adds r4, #1
	cmp r5, r4
	beq _08003618
	adds r1, #0x80
	adds r2, #8
	adds r3, #8
	b _08003518
_08003618:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003620
sub_08003620: @ 0x08003620
	push {r4, lr}
	sub sp, #4
	ldr r4, _08003654 @ =gUnk_03002984
	movs r0, #3
	movs r1, #2
	bl sub_08001D3C
	str r0, [r4]
	ldr r0, _08003658 @ =gUnk_03002988
	ldr r1, _0800365C @ =gUnk_02001800
	str r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r2, _08003660 @ =0x05000200
	mov r0, sp
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x1c
	str r0, [r4]
	bl sub_08003664
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003654: .4byte gUnk_03002984
_08003658: .4byte gUnk_03002988
_0800365C: .4byte gUnk_02001800
_08003660: .4byte 0x05000200

	thumb_func_start sub_08003664
sub_08003664: @ 0x08003664
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #0
	ldr r7, _080036C0 @ =gUnk_08B6D5E8
_0800366E:
	lsls r4, r0, #2
	lsls r5, r0, #0x10
	adds r1, r0, #1
	mov r8, r1
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r4, r4, r7
	adds r6, r4, #0
	ldrh r0, [r4]
	lsrs r1, r5, #0x10
	movs r2, #0
	bl sub_0800F224
	ldrh r0, [r4, #2]
	lsrs r1, r5, #0x10
	movs r2, #1
	bl sub_0800F224
	ldrh r0, [r6, #4]
	lsrs r1, r5, #0x10
	movs r2, #2
	bl sub_0800F224
	ldrh r0, [r6, #6]
	lsrs r1, r5, #0x10
	movs r2, #3
	bl sub_0800F224
	ldrh r0, [r6, #8]
	lsrs r1, r5, #0x10
	movs r2, #4
	bl sub_0800F224
	mov r0, r8
	cmp r0, #3
	bls _0800366E
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080036C0: .4byte gUnk_08B6D5E8

	thumb_func_start sub_080036C4
sub_080036C4: @ 0x080036C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r6, _080036F4 @ =gUnk_08B6D610
	lsrs r4, r4, #0xe
	adds r0, r4, r6
	ldrh r0, [r0]
	adds r1, r5, #0
	movs r2, #0xe
	bl sub_0800F224
	adds r4, #2
	adds r4, r4, r6
	ldrh r0, [r4]
	adds r1, r5, #0
	movs r2, #0xf
	bl sub_0800F224
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080036F4: .4byte gUnk_08B6D610

	thumb_func_start sub_080036F8
sub_080036F8: @ 0x080036F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sb, r1
	mov r8, r2
	movs r4, #0
	movs r7, #0
	ldrh r2, [r1]
	cmp r2, #0
	beq _0800378A
	ldr r0, _08003760 @ =gUnk_03005580
	mov sl, r0
_08003716:
	ldr r0, _08003764 @ =0x0000F0FF
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _08003768 @ =0x0000C083
	cmp r0, r1
	bne _0800376C
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r1, #0
	ands r2, r0
	lsrs r1, r2, #8
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
	ldrh r2, [r0]
	adds r6, r4, #1
	cmp r2, #0
	beq _0800375A
	adds r4, r0, #0
_08003740:
	adds r0, r2, #0
	bl sub_0800348C
	adds r1, r5, #0
	mov r2, r8
	bl sub_08002CB4
	adds r5, #0x80
	adds r4, #2
	adds r7, #1
	ldrh r2, [r4]
	cmp r2, #0
	bne _08003740
_0800375A:
	adds r4, r6, #0
	b _08003780
	.align 2, 0
_08003760: .4byte gUnk_03005580
_08003764: .4byte 0x0000F0FF
_08003768: .4byte 0x0000C083
_0800376C:
	adds r0, r2, #0
	bl sub_0800348C
	adds r1, r5, #0
	mov r2, r8
	bl sub_08002CB4
	adds r5, #0x80
	adds r4, #1
	adds r7, #1
_08003780:
	lsls r0, r4, #1
	add r0, sb
	ldrh r2, [r0]
	cmp r2, #0
	bne _08003716
_0800378A:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800379C
sub_0800379C: @ 0x0800379C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sb, r1
	mov r8, r2
	movs r4, #0
	movs r7, #0
	ldrh r2, [r1]
	cmp r2, #0
	beq _0800382E
	ldr r0, _08003804 @ =gUnk_03005580
	mov sl, r0
_080037BA:
	ldr r0, _08003808 @ =0x0000F0FF
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _0800380C @ =0x0000C083
	cmp r0, r1
	bne _08003810
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r1, #0
	ands r2, r0
	lsrs r1, r2, #8
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
	ldrh r2, [r0]
	adds r6, r4, #1
	cmp r2, #0
	beq _080037FE
	adds r4, r0, #0
_080037E4:
	adds r0, r2, #0
	bl sub_0800348C
	adds r1, r5, #0
	mov r2, r8
	bl sub_080031E8
	adds r5, #0x40
	adds r4, #2
	adds r7, #1
	ldrh r2, [r4]
	cmp r2, #0
	bne _080037E4
_080037FE:
	adds r4, r6, #0
	b _08003824
	.align 2, 0
_08003804: .4byte gUnk_03005580
_08003808: .4byte 0x0000F0FF
_0800380C: .4byte 0x0000C083
_08003810:
	adds r0, r2, #0
	bl sub_0800348C
	adds r1, r5, #0
	mov r2, r8
	bl sub_080031E8
	adds r5, #0x40
	adds r4, #1
	adds r7, #1
_08003824:
	lsls r0, r4, #1
	add r0, sb
	ldrh r2, [r0]
	cmp r2, #0
	bne _080037BA
_0800382E:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003840
sub_08003840: @ 0x08003840
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	ldr r4, [sp, #0x20]
	ldr r0, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsls r0, r0, #0x1c
	orrs r0, r4
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r4, r3
	cmp r4, r0
	bge _0800392C
	mov sb, r0
	lsls r7, r4, #1
	adds r6, r5, #1
	adds r2, r5, #0
	subs r0, r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080038B8
	cmp r4, #0x1f
	bhi _080038B0
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x1f
	bhi _08003894
	asrs r0, r1, #0xa
	add r0, ip
	adds r0, r7, r0
	strh r2, [r0]
_08003894:
	asrs r3, r1, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r1, r5
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080038AC
	lsls r0, r3, #6
	add r0, ip
	adds r0, r7, r0
	adds r0, #0x40
	strh r6, [r0]
_080038AC:
	adds r6, r2, #3
	adds r2, #2
_080038B0:
	adds r7, #2
	adds r4, #1
	cmp r4, sb
	bge _0800392C
_080038B8:
	cmp r4, #0x1f
	bhi _080038EA
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x1f
	bhi _080038CE
	asrs r0, r1, #0xa
	add r0, ip
	adds r0, r7, r0
	strh r2, [r0]
_080038CE:
	asrs r3, r1, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r1, r5
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080038E6
	lsls r0, r3, #6
	add r0, ip
	adds r0, r7, r0
	adds r0, #0x40
	strh r6, [r0]
_080038E6:
	adds r6, #2
	adds r2, #2
_080038EA:
	adds r5, r7, #2
	adds r0, r4, #1
	cmp r0, #0x1f
	bhi _08003924
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x1f
	bhi _08003904
	asrs r0, r1, #0xa
	add r0, ip
	adds r0, r5, r0
	strh r2, [r0]
_08003904:
	asrs r3, r1, #0x10
	mov sl, r3
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r1, r3
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08003920
	mov r1, sl
	lsls r0, r1, #6
	add r0, ip
	adds r0, r5, r0
	adds r0, #0x40
	strh r6, [r0]
_08003920:
	adds r6, #2
	adds r2, #2
_08003924:
	adds r7, #4
	adds r4, #2
	cmp r4, sb
	blt _080038B8
_0800392C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800393C
sub_0800393C: @ 0x0800393C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r4, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsls r0, r0, #0x1c
	orrs r0, r4
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	adds r0, r4, r3
	cmp r4, r0
	bge _08003A14
	mov r8, r0
	lsls r5, r4, #1
	subs r0, r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080039A8
	cmp r4, #0x1f
	bhi _080039A0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x1f
	bhi _08003988
	asrs r0, r1, #0xa
	adds r0, r0, r7
	adds r0, r5, r0
	strh r6, [r0]
_08003988:
	asrs r3, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080039A0
	lsls r0, r3, #6
	adds r0, r0, r7
	adds r0, r5, r0
	adds r0, #0x40
	strh r6, [r0]
_080039A0:
	adds r5, #2
	adds r4, #1
	cmp r4, r8
	bge _08003A14
_080039A8:
	cmp r4, #0x1f
	bhi _080039D6
	mov r3, ip
	lsls r1, r3, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x1f
	bhi _080039BE
	asrs r0, r1, #0xa
	adds r0, r0, r7
	adds r0, r5, r0
	strh r6, [r0]
_080039BE:
	asrs r3, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _080039D6
	lsls r0, r3, #6
	adds r0, r0, r7
	adds r0, r5, r0
	adds r0, #0x40
	strh r6, [r0]
_080039D6:
	adds r2, r5, #2
	adds r0, r4, #1
	cmp r0, #0x1f
	bhi _08003A0C
	mov r3, ip
	lsls r1, r3, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x1f
	bhi _080039F0
	asrs r0, r1, #0xa
	adds r0, r0, r7
	adds r0, r2, r0
	strh r6, [r0]
_080039F0:
	asrs r0, r1, #0x10
	mov sb, r0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r1, r3
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08003A0C
	mov r1, sb
	lsls r0, r1, #6
	adds r0, r0, r7
	adds r0, r2, r0
	adds r0, #0x40
	strh r6, [r0]
_08003A0C:
	adds r5, #4
	adds r4, #2
	cmp r4, r8
	blt _080039A8
_08003A14:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08003A20
sub_08003A20: @ 0x08003A20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov sb, r1
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _08003AE4
	movs r2, #0
	movs r0, #6
	subs r0, r0, r7
	str r0, [sp, #4]
_08003A42:
	movs r4, #0
	adds r0, r2, #1
	mov ip, r0
	ldr r1, [sp, #4]
	cmp r4, r1
	bhs _08003ADC
	mov r6, r8
	adds r1, r2, r6
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, sb
	adds r3, r0, r1
	movs r0, #6
	subs r5, r0, r7
	lsls r0, r2, #3
	add r0, sl
	adds r2, r0, r7
	movs r0, #3
	ands r0, r5
	cmp r5, #0
	ble _08003A94
	cmp r0, #0
	beq _08003AA6
	cmp r0, #1
	ble _08003A94
	cmp r0, #2
	ble _08003A86
	ldrb r0, [r2]
	ldrb r6, [r3]
	adds r0, r0, r6
	strb r0, [r3]
	adds r2, #1
	movs r4, #1
_08003A86:
	adds r1, r3, r4
	ldrb r0, [r2]
	ldrb r6, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	adds r2, #1
	adds r4, #1
_08003A94:
	adds r1, r3, r4
	ldrb r0, [r2]
	ldrb r6, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	adds r2, #1
	adds r4, #1
	cmp r4, r5
	bhs _08003ADC
_08003AA6:
	adds r1, r3, r4
	ldrb r0, [r2]
	ldrb r6, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	adds r1, r4, #1
	adds r1, r3, r1
	ldrb r0, [r2, #1]
	ldrb r6, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	adds r1, r4, #2
	adds r1, r3, r1
	ldrb r0, [r2, #2]
	ldrb r6, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	adds r1, r4, #3
	adds r1, r3, r1
	ldrb r0, [r2, #3]
	ldrb r6, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	adds r2, #4
	adds r4, #4
	cmp r4, r5
	blo _08003AA6
_08003ADC:
	mov r2, ip
	cmp r2, #0xb
	bls _08003A42
	b _08003B8C
_08003AE4:
	movs r2, #0
	movs r0, #6
	subs r0, r0, r7
	str r0, [sp]
_08003AEC:
	movs r4, #0
	adds r0, r2, #1
	mov ip, r0
	ldr r1, [sp]
	cmp r4, r1
	bhs _08003B86
	mov r6, r8
	adds r1, r2, r6
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, sb
	adds r5, r0, r1
	movs r0, #6
	subs r6, r0, r7
	lsls r0, r2, #3
	add r0, sl
	adds r3, r0, r7
	movs r0, #3
	ands r0, r6
	cmp r6, #0
	ble _08003B3E
	cmp r0, #0
	beq _08003B50
	cmp r0, #1
	ble _08003B3E
	cmp r0, #2
	ble _08003B30
	ldrb r0, [r5]
	ldrb r1, [r3]
	subs r0, r0, r1
	strb r0, [r5]
	adds r3, #1
	movs r4, #1
_08003B30:
	adds r0, r5, r4
	ldrb r1, [r0]
	ldrb r2, [r3]
	subs r1, r1, r2
	strb r1, [r0]
	adds r3, #1
	adds r4, #1
_08003B3E:
	adds r0, r5, r4
	ldrb r1, [r0]
	ldrb r2, [r3]
	subs r1, r1, r2
	strb r1, [r0]
	adds r3, #1
	adds r4, #1
	cmp r4, r6
	bhs _08003B86
_08003B50:
	adds r2, r5, r4
	ldrb r0, [r2]
	ldrb r1, [r3]
	subs r0, r0, r1
	strb r0, [r2]
	adds r2, r4, #1
	adds r2, r5, r2
	ldrb r0, [r2]
	ldrb r1, [r3, #1]
	subs r0, r0, r1
	strb r0, [r2]
	adds r2, r4, #2
	adds r2, r5, r2
	ldrb r0, [r2]
	ldrb r1, [r3, #2]
	subs r0, r0, r1
	strb r0, [r2]
	adds r2, r4, #3
	adds r2, r5, r2
	ldrb r0, [r2]
	ldrb r1, [r3, #3]
	subs r0, r0, r1
	strb r0, [r2]
	adds r3, #4
	adds r4, #4
	cmp r4, r6
	blo _08003B50
_08003B86:
	mov r2, ip
	cmp r2, #0xb
	bls _08003AEC
_08003B8C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08003B9C
sub_08003B9C: @ 0x08003B9C
	ldr r1, _08003BA4 @ =0x66666666
	str r1, [r0, #0x3c]
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08003BA4: .4byte 0x66666666

	thumb_func_start sub_08003BA8
sub_08003BA8: @ 0x08003BA8
	subs r0, #0x20
	ldr r2, _08003BB8 @ =0x00006666
	adds r1, r2, #0
	strh r1, [r0, #0x3e]
	ldr r1, _08003BBC @ =0x66666666
	str r1, [r0, #0x7c]
	bx lr
	.align 2, 0
_08003BB8: .4byte 0x00006666
_08003BBC: .4byte 0x66666666
