	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0800708C
sub_0800708C: @ 0x0800708C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _080070E0 @ =gUnk_03003230
	mov r8, r0
	ldrh r5, [r0]
	ldr r1, _080070E4 @ =gUnk_03003360
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r4, #0
	strh r4, [r0]
	ldr r0, _080070E8 @ =gUnk_03003350
	lsls r3, r5, #2
	adds r1, r3, r0
	str r4, [r1]
	adds r0, #8
	adds r0, r3, r0
	str r4, [r0]
	ldr r0, _080070EC @ =gUnk_03003210
	str r4, [r0]
	ldr r6, _080070F0 @ =gUnk_03003470
	ldr r2, _080070F4 @ =gUnk_030031D0
	movs r1, #0xff
	lsls r0, r5, #5
	adds r0, r0, r2
	adds r2, r0, #0
	strh r1, [r0, #4]
	strh r1, [r0, #0xc]
	strh r1, [r2, #0x14]
	strh r1, [r2, #0x1c]
	adds r3, r3, r6
	str r4, [r3]
	movs r0, #1
	subs r0, r0, r5
	mov r1, r8
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080070E0: .4byte gUnk_03003230
_080070E4: .4byte gUnk_03003360
_080070E8: .4byte gUnk_03003350
_080070EC: .4byte gUnk_03003210
_080070F0: .4byte gUnk_03003470
_080070F4: .4byte gUnk_030031D0

	thumb_func_start sub_080070F8
sub_080070F8: @ 0x080070F8
	push {r4, lr}
	ldr r3, _0800711C @ =gUnk_03003230
	ldrh r4, [r3]
	movs r3, #1
	subs r3, r3, r4
	lsls r3, r3, #0x10
	ldr r4, _08007120 @ =gUnk_03003350
	lsrs r3, r3, #0xe
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r4, r3, r4
	str r1, [r4]
	ldr r0, _08007124 @ =gUnk_03003220
	adds r3, r3, r0
	str r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800711C: .4byte gUnk_03003230
_08007120: .4byte gUnk_03003350
_08007124: .4byte gUnk_03003220

	thumb_func_start sub_08007128
sub_08007128: @ 0x08007128
	ldr r2, _08007144 @ =gUnk_03003230
	ldrh r3, [r2]
	movs r2, #1
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r3, _08007148 @ =gUnk_03003470
	lsrs r2, r2, #0xe
	adds r3, r2, r3
	str r0, [r3]
	ldr r0, _0800714C @ =gUnk_03003340
	adds r2, r2, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_08007144: .4byte gUnk_03003230
_08007148: .4byte gUnk_03003470
_0800714C: .4byte gUnk_03003340

	thumb_func_start sub_08007150
sub_08007150: @ 0x08007150
	push {lr}
	bl sub_08006C48
	ldr r1, _08007180 @ =sub_08006E44
	ldr r0, _08007184 @ =gIntrTable
	str r1, [r0, #8]
	ldr r3, _08007188 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0800718C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08007190 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08007180: .4byte sub_08006E44
_08007184: .4byte gIntrTable
_08007188: .4byte 0x04000208
_0800718C: .4byte 0x04000200
_08007190: .4byte 0x04000004

	thumb_func_start sub_08007194
sub_08007194: @ 0x08007194
	ldr r0, _0800719C @ =gUnk_03003230
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0800719C: .4byte gUnk_03003230

	thumb_func_start sub_080071A0
sub_080071A0: @ 0x080071A0
	push {r4, r5, r6, lr}
	ldr r1, _080071E0 @ =gUnk_03003230
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080071E4 @ =gUnk_03003210
	movs r0, #0
	str r0, [r1]
	ldr r3, _080071E8 @ =gUnk_03003470
	ldr r4, _080071EC @ =gUnk_03003340
	ldr r1, _080071F0 @ =gUnk_03003350
	mov ip, r1
	ldr r5, _080071F4 @ =gUnk_03003220
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r5]
	str r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #8
	adds r1, #8
	mov r6, ip
	str r0, [r6, #8]
	str r0, [r1, #4]
	str r0, [r5, #8]
	str r0, [r2, #4]
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r4]
	str r0, [r4, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080071E0: .4byte gUnk_03003230
_080071E4: .4byte gUnk_03003210
_080071E8: .4byte gUnk_03003470
_080071EC: .4byte gUnk_03003340
_080071F0: .4byte gUnk_03003350
_080071F4: .4byte gUnk_03003220

	thumb_func_start sub_080071F8
sub_080071F8: @ 0x080071F8
	ldr r0, _080072D0 @ =0x04000006
	ldrh r3, [r0]
	movs r1, #0xa0
	cmp r3, r1
	bmi _08007204
	bx lr
_08007204:
	push {r4, r5, r6}
	adds r4, r3, #0
	ldr r0, _080072D4 @ =gUnk_03003230
	ldrh r6, [r0]
	ldr r5, _080072D8 @ =gUnk_03003350
	lsls r3, r6, #2
	adds r0, r3, r5
	ldr r2, [r0]
	cmp r2, #0
	beq _08007226
	ldr r0, _080072DC @ =gUnk_03003220
	adds r0, r3, r0
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08007226:
	adds r5, #8
	adds r5, r5, r3
	ldr r2, [r5]
	cmp r2, #0
	beq _08007240
	ldr r0, _080072E0 @ =gUnk_03003220
	adds r0, #8
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08007240:
	ldr r5, _080072E4 @ =gUnk_030031D0
	lsls r3, r6, #5
	adds r2, r3, r5
	ldrh r0, [r2, #4]
	cmp r0, r4
	bne _08007252
	ldr r1, [r2]
	ldrh r0, [r2, #6]
	strh r0, [r1]
_08007252:
	ldrh r0, [r2, #0xc]
	cmp r0, r4
	bne _08007264
	adds r0, r5, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r1, [r0]
	ldrh r0, [r2, #0xe]
	strh r0, [r1]
_08007264:
	ldrh r0, [r2, #0x14]
	cmp r0, r4
	bne _08007276
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r3, r0
	ldr r1, [r0]
	ldrh r0, [r2, #0x16]
	strh r0, [r1]
_08007276:
	ldrh r0, [r2, #0x1c]
	cmp r0, r4
	bne _08007288
	adds r0, r5, #0
	adds r0, #0x18
	adds r0, r3, r0
	ldr r1, [r0]
	ldrh r0, [r2, #0x1e]
	strh r0, [r1]
_08007288:
	ldr r5, _080072E8 @ =gUnk_03003470
	lsls r3, r6, #2
	adds r2, r3, r5
	ldrh r0, [r2]
	cmp r0, #0
	beq _080072CA
	lsls r2, r6, #2
	adds r0, r2, r5
	ldr r0, [r0]
	lsls r3, r4, #3
	adds r1, r0, r3
	ldr r0, _080072EC @ =gUnk_03003340
	adds r0, r2, r0
	ldr r2, [r0]
	adds r2, r2, r3
	ldr r3, _080072F0 @ =0x04000028
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	ldrh r0, [r1, #4]
	strh r0, [r3, #4]
	ldrh r0, [r1, #6]
	strh r0, [r3, #6]
	ldr r1, _080072F4 @ =0x04000020
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #4]
	ldrh r0, [r2, #4]
	strh r0, [r1, #6]
	ldrh r0, [r2, #6]
	strh r0, [r1, #0xa]
_080072CA:
	pop {r4, r5, r6}
	bx lr
	.align 2, 0
_080072D0: .4byte 0x04000006
_080072D4: .4byte gUnk_03003230
_080072D8: .4byte gUnk_03003350
_080072DC: .4byte gUnk_03003220
_080072E0: .4byte gUnk_03003220
_080072E4: .4byte gUnk_030031D0
_080072E8: .4byte gUnk_03003470
_080072EC: .4byte gUnk_03003340
_080072F0: .4byte 0x04000028
_080072F4: .4byte 0x04000020

	thumb_func_start sub_080072F8
sub_080072F8: @ 0x080072F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r2, r0, #0
	mov r8, r1
	ldr r6, _0800742C @ =gUnk_03003480
	movs r7, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08007324
	movs r1, #0xc6
	lsls r1, r1, #1
_08007316:
	adds r6, r6, r1
	adds r7, #1
	cmp r7, #1
	bhi _08007324
	ldrb r0, [r6]
	cmp r0, #0
	bne _08007316
_08007324:
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r7, r0
	strh r7, [r2]
	mov r2, r8
	ldrb r0, [r2]
	movs r3, #0
	strb r0, [r6, #2]
	ldrb r0, [r2, #1]
	strb r0, [r6, #3]
	ldrb r0, [r2, #6]
	strb r0, [r6, #4]
	ldrb r0, [r2, #7]
	strb r0, [r6, #5]
	ldrb r0, [r2, #0x11]
	strb r0, [r6, #0x15]
	ldrb r0, [r2, #0x12]
	strb r0, [r6, #0x16]
	ldrh r0, [r2, #8]
	strh r0, [r6, #8]
	ldrb r0, [r2, #0xa]
	strb r0, [r6, #6]
	ldrb r0, [r2, #0xb]
	strb r0, [r6, #7]
	movs r2, #1
	strb r2, [r6, #0x19]
	mov r4, r8
	ldrb r0, [r4, #0xc]
	strb r0, [r6, #0xd]
	ldrb r0, [r4, #0xd]
	strb r0, [r6, #0xe]
	ldrb r0, [r4, #0xe]
	strb r0, [r6, #0xf]
	ldrb r0, [r4, #0xf]
	strb r0, [r6, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r4, #0x20]
	str r0, [r1]
	movs r4, #0xc2
	lsls r4, r4, #1
	adds r1, r6, r4
	mov r4, r8
	ldr r0, [r4, #0x1c]
	str r0, [r1]
	strb r2, [r6, #0x11]
	strb r2, [r6, #0x12]
	strb r2, [r6, #0x14]
	strb r2, [r6, #0x13]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r4, r6, r0
	mov r1, r8
	ldr r0, [r1, #0x14]
	str r0, [r4]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r1, r6, r2
	mov r2, r8
	ldr r0, [r2, #0x18]
	str r0, [r1]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r2, #0x24]
	str r0, [r1]
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r6, r2
	strh r3, [r1]
	ldr r0, [r4]
	ldr r0, [r0]
	movs r3, #0x1c
	adds r3, r3, r6
	mov sb, r3
	movs r2, #0x44
	adds r2, r2, r6
	mov sl, r2
	adds r3, r6, #0
	adds r3, #0x6c
	str r3, [sp]
	cmp r0, #0
	beq _080073E6
	adds r2, r1, #0
	adds r3, r4, #0
_080073D2:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r1, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080073D2
_080073E6:
	mov r4, r8
	ldrh r2, [r4, #2]
	adds r5, r2, #0
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _08007430
	strh r0, [r6, #0xa]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r7, r6, r0
	ldrh r0, [r7]
	cmp r2, r0
	blo _08007406
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08007406:
	ldrb r4, [r6, #6]
	cmp r5, r4
	blt _08007456
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	muls r0, r4, r0
	strh r0, [r6, #0xa]
	ldrh r1, [r7]
	ldrh r0, [r6, #0xa]
	adds r0, r0, r4
	cmp r1, r0
	bge _08007426
	subs r0, r1, r4
	strh r0, [r6, #0xa]
_08007426:
	ldrb r0, [r6, #0xa]
	subs r0, r5, r0
	b _080074A6
	.align 2, 0
_0800742C: .4byte gUnk_03003480
_08007430:
	mov r3, r8
	ldrh r1, [r3, #4]
	ldrb r4, [r6, #6]
	adds r3, r1, r4
	cmp r3, r2
	bgt _0800747A
	movs r0, #0
	strh r0, [r6, #0xa]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r7, r6, r0
	ldrh r0, [r7]
	cmp r2, r0
	blo _08007452
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08007452:
	cmp r5, r4
	bge _0800745A
_08007456:
	strb r5, [r6, #0xc]
	b _080074A8
_0800745A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	muls r0, r4, r0
	strh r0, [r6, #0xa]
	ldrh r1, [r7]
	ldrh r0, [r6, #0xa]
	adds r0, r0, r4
	cmp r1, r0
	bge _08007474
	subs r0, r1, r4
	strh r0, [r6, #0xa]
_08007474:
	ldrb r0, [r6, #0xa]
	subs r0, r5, r0
	b _080074A6
_0800747A:
	cmp r1, r5
	bls _08007484
	movs r0, #0
	strh r5, [r6, #0xa]
	b _080074A6
_08007484:
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	cmp r3, r0
	ble _0800749C
	subs r0, r0, r4
	strh r0, [r6, #0xa]
	ldrh r1, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #2]
	b _080074A4
_0800749C:
	strh r1, [r6, #0xa]
	mov r4, r8
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #4]
_080074A4:
	subs r0, r0, r1
_080074A6:
	strb r0, [r6, #0xc]
_080074A8:
	movs r0, #0
	strb r0, [r6, #0x18]
	movs r0, #1
	strb r0, [r6]
	mov r0, r8
	ldrh r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080074C2
	movs r0, #0x10
_080074C2:
	strb r0, [r6, #1]
	mov r0, sb
	bl sub_08009F0C
	ldrb r1, [r6, #5]
	mov r0, sb
	movs r2, #1
	movs r3, #0
	bl sub_08009F50
	ldrb r1, [r6, #0x17]
	mov r0, sb
	movs r2, #1
	bl sub_0800A6C0
	ldrb r1, [r6, #0x15]
	ldrb r2, [r6, #0x16]
	mov r0, sb
	bl sub_0800A6C4
	ldrb r0, [r6, #2]
	lsls r0, r0, #3
	movs r1, #0xe
	ldrsb r1, [r6, r1]
	adds r1, r1, r0
	ldrb r2, [r6, #0xc]
	mov r0, sb
	bl sub_0800A678
	mov r0, sl
	bl sub_08009F0C
	ldrb r1, [r6, #5]
	mov r0, sl
	movs r2, #4
	movs r3, #0
	bl sub_08009F50
	ldrb r1, [r6, #0x17]
	mov r0, sl
	movs r2, #1
	bl sub_0800A6C0
	ldrb r1, [r6, #0x15]
	ldrb r2, [r6, #0x16]
	mov r0, sl
	bl sub_0800A6C4
	ldrb r0, [r6, #2]
	lsls r0, r0, #3
	movs r1, #0xd
	ldrsb r1, [r6, r1]
	adds r1, r1, r0
	ldrb r2, [r6, #3]
	lsls r2, r2, #0x13
	ldr r3, _080076A8 @ =0xFFF80000
	adds r2, r2, r3
	asrs r2, r2, #0x10
	mov r0, sl
	bl sub_0800A678
	ldr r0, [sp]
	bl sub_08009F0C
	ldrb r1, [r6, #5]
	ldr r0, [sp]
	movs r2, #5
	movs r3, #0
	bl sub_08009F50
	ldrb r1, [r6, #0x17]
	ldr r0, [sp]
	movs r2, #1
	bl sub_0800A6C0
	ldrb r1, [r6, #0x15]
	ldrb r2, [r6, #0x16]
	ldr r0, [sp]
	bl sub_0800A6C4
	ldrb r0, [r6, #2]
	lsls r0, r0, #3
	movs r1, #0xd
	ldrsb r1, [r6, r1]
	adds r1, r1, r0
	ldrb r2, [r6, #3]
	lsls r2, r2, #3
	ldrb r0, [r6, #6]
	subs r0, #1
	lsls r0, r0, #4
	adds r2, r2, r0
	adds r2, #0x10
	ldr r0, [sp]
	bl sub_0800A678
	ldrh r1, [r6, #8]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800758C
	b _08007698
_0800758C:
	movs r4, #0x98
	lsls r4, r4, #1
	adds r1, r6, r4
	ldrb r0, [r6, #6]
	str r0, [r1]
	movs r7, #0
	cmp r7, r0
	bhs _080075D2
	movs r0, #0
	mov sb, r0
	movs r2, #0x80
	mov ip, r2
	adds r4, #4
	adds r3, r6, r4
	adds r2, r6, #0
	ldr r0, _080076AC @ =0x00000135
	mov r8, r0
	movs r5, #0x9b
	lsls r5, r5, #1
	adds r4, r1, #0
_080075B4:
	mov r1, ip
	strb r1, [r3]
	mov r1, r8
	adds r0, r2, r1
	mov r1, sb
	strb r1, [r0]
	lsls r1, r7, #1
	adds r0, r2, r5
	strh r1, [r0]
	adds r3, #4
	adds r2, #4
	adds r7, #1
	ldr r0, [r4]
	cmp r7, r0
	blo _080075B4
_080075D2:
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r3, #0
	str r3, [r1]
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r2, r6, r4
	ldrb r0, [r6, #6]
	lsls r0, r0, #6
	str r0, [r2]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r3, [r0]
	ldrb r0, [r6, #6]
	lsls r0, r0, #2
	adds r4, #6
	adds r2, r6, r4
	strh r0, [r2]
	ldrb r0, [r6, #6]
	lsls r0, r0, #1
	adds r4, #2
	adds r2, r6, r4
	strh r0, [r2]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #4
	adds r2, r6, r4
	adds r4, #0x5c
	adds r0, r6, r4
	ldr r0, [r0]
	str r0, [r2]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r6, r2
	str r3, [r0]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r2, #8
	adds r4, r6, r2
	str r4, [r0]
	ldrb r0, [r6, #0x10]
	adds r3, #0x58
	adds r2, r6, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_08009334
	movs r7, #0
	ldr r0, [r4]
	cmp r7, r0
	bhs _08007698
	adds r5, r6, #0
	adds r5, #0x94
_08007646:
	lsls r4, r7, #4
	adds r0, r5, #0
	bl CpuClear16Bytes
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009490
	ldrb r1, [r6, #0x10]
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	bl sub_08009400
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009448
	ldrb r1, [r6, #0x15]
	ldrb r2, [r6, #0x16]
	adds r0, r5, #0
	bl sub_0800944C
	ldrb r1, [r6, #2]
	lsls r1, r1, #3
	ldrb r0, [r6, #0xf]
	adds r1, r1, r0
	ldrb r2, [r6, #3]
	lsls r2, r2, #3
	adds r2, r2, r4
	adds r0, r5, #0
	bl sub_080091C4
	adds r5, #0x10
	adds r7, #1
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r7, r0
	blo _08007646
_08007698:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080076A8: .4byte 0xFFF80000
_080076AC: .4byte 0x00000135

	thumb_func_start sub_080076B0
sub_080076B0: @ 0x080076B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r1, #0
	ldr r6, _080077A0 @ =gUnk_03003480
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r0, r6
	ldrb r0, [r4]
	movs r3, #0
	strb r0, [r6, #2]
	ldrb r0, [r4, #1]
	strb r0, [r6, #3]
	ldrb r0, [r4, #0x11]
	strb r0, [r6, #0x15]
	ldrb r0, [r4, #0x12]
	strb r0, [r6, #0x16]
	ldrh r0, [r4, #8]
	strh r0, [r6, #8]
	ldrb r0, [r4, #0xa]
	strb r0, [r6, #6]
	ldrb r0, [r4, #0xb]
	strb r0, [r6, #7]
	movs r2, #1
	strb r2, [r6, #0x19]
	ldrb r0, [r4, #0xc]
	strb r0, [r6, #0xd]
	ldrb r0, [r4, #0xd]
	strb r0, [r6, #0xe]
	ldrb r0, [r4, #0xe]
	strb r0, [r6, #0xf]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r4, #0x20]
	str r0, [r1]
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r4, #0x1c]
	str r0, [r1]
	strb r2, [r6, #0x11]
	strb r2, [r6, #0x12]
	strb r2, [r6, #0x14]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r5, r6, r1
	ldr r0, [r4, #0x14]
	str r0, [r5]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r0, [r4, #0x18]
	str r0, [r1]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [r4, #0x24]
	str r0, [r1]
	subs r2, #0x28
	adds r1, r6, r2
	strh r3, [r1]
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	beq _08007758
	adds r2, r1, #0
	adds r3, r5, #0
_08007744:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r1, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08007744
_08007758:
	ldrh r3, [r4, #2]
	adds r5, r3, #0
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _080077A4
	strh r0, [r6, #0xa]
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrh r0, [r4]
	cmp r3, r0
	blo _08007776
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08007776:
	ldrb r2, [r6, #6]
	cmp r5, r2
	blt _080077CA
	adds r0, r5, #0
	adds r1, r2, #0
	str r2, [sp]
	bl __divsi3
	ldr r2, [sp]
	muls r0, r2, r0
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	ldrh r0, [r6, #0xa]
	adds r0, r0, r2
	cmp r1, r0
	bge _0800779A
	subs r0, r1, r2
	strh r0, [r6, #0xa]
_0800779A:
	ldrb r0, [r6, #0xa]
	subs r0, r5, r0
	b _08007816
	.align 2, 0
_080077A0: .4byte gUnk_03003480
_080077A4:
	ldrh r1, [r4, #4]
	ldrb r0, [r6, #6]
	adds r7, r1, r0
	adds r2, r0, #0
	cmp r7, r3
	bgt _080077F2
	movs r0, #0
	strh r0, [r6, #0xa]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r6, r1
	ldrh r0, [r4]
	cmp r3, r0
	blo _080077C6
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080077C6:
	cmp r5, r2
	bge _080077CE
_080077CA:
	strb r5, [r6, #0xc]
	b _08007818
_080077CE:
	adds r0, r5, #0
	adds r1, r2, #0
	str r2, [sp]
	bl __divsi3
	ldr r2, [sp]
	muls r0, r2, r0
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	ldrh r0, [r6, #0xa]
	adds r0, r0, r2
	cmp r1, r0
	bge _080077EC
	subs r0, r1, r2
	strh r0, [r6, #0xa]
_080077EC:
	ldrb r0, [r6, #0xa]
	subs r0, r5, r0
	b _08007816
_080077F2:
	cmp r1, r5
	bls _080077FC
	movs r0, #0
	strh r5, [r6, #0xa]
	b _08007816
_080077FC:
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r0, [r0]
	cmp r7, r0
	ble _0800780E
	subs r0, r0, r2
	strh r0, [r6, #0xa]
	b _08007810
_0800780E:
	strh r1, [r6, #0xa]
_08007810:
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #4]
	subs r0, r0, r1
_08007816:
	strb r0, [r6, #0xc]
_08007818:
	movs r0, #1
	strb r0, [r6]
	ldrh r1, [r6, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800782A
	movs r0, #8
	b _0800782C
_0800782A:
	movs r0, #4
_0800782C:
	strb r0, [r6, #1]
	movs r0, #0
	strb r0, [r6, #0x18]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800783C
	b _08007946
_0800783C:
	movs r4, #0x98
	lsls r4, r4, #1
	adds r0, r6, r4
	str r2, [r0]
	movs r7, #0
	cmp r7, r2
	bhs _08007880
	movs r1, #0
	mov sb, r1
	movs r2, #0x80
	mov r8, r2
	adds r4, #4
	adds r3, r6, r4
	adds r2, r6, #0
	ldr r1, _08007954 @ =0x00000135
	mov ip, r1
	movs r5, #0x9b
	lsls r5, r5, #1
	adds r4, r0, #0
_08007862:
	mov r0, r8
	strb r0, [r3]
	mov r1, ip
	adds r0, r2, r1
	mov r1, sb
	strb r1, [r0]
	lsls r1, r7, #1
	adds r0, r2, r5
	strh r1, [r0]
	adds r3, #4
	adds r2, #4
	adds r7, #1
	ldr r0, [r4]
	cmp r7, r0
	blo _08007862
_08007880:
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r3, #0
	str r3, [r1]
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r2, r6, r4
	ldrb r0, [r6, #6]
	lsls r0, r0, #6
	str r0, [r2]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r3, [r0]
	ldrb r0, [r6, #6]
	lsls r0, r0, #2
	adds r4, #6
	adds r2, r6, r4
	strh r0, [r2]
	ldrb r0, [r6, #6]
	lsls r0, r0, #1
	adds r4, #2
	adds r2, r6, r4
	strh r0, [r2]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #4
	adds r2, r6, r4
	adds r4, #0x5c
	adds r0, r6, r4
	ldr r0, [r0]
	str r0, [r2]
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r6, r2
	str r3, [r0]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r2, #8
	adds r4, r6, r2
	str r4, [r0]
	ldrb r0, [r6, #0x10]
	adds r3, #0x58
	adds r2, r6, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_08009334
	movs r7, #0
	ldr r0, [r4]
	cmp r7, r0
	bhs _08007946
	adds r5, r6, #0
	adds r5, #0x94
_080078F4:
	lsls r4, r7, #4
	adds r0, r5, #0
	bl CpuClear16Bytes
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009490
	ldrb r1, [r6, #0x10]
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	bl sub_08009400
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009448
	ldrb r1, [r6, #0x15]
	ldrb r2, [r6, #0x16]
	adds r0, r5, #0
	bl sub_0800944C
	ldrb r1, [r6, #2]
	lsls r1, r1, #3
	ldrb r0, [r6, #0xf]
	adds r1, r1, r0
	ldrb r2, [r6, #3]
	lsls r2, r2, #3
	adds r2, r2, r4
	adds r0, r5, #0
	bl sub_080091C4
	adds r5, #0x10
	adds r7, #1
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r7, r0
	blo _080078F4
_08007946:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007954: .4byte 0x00000135

	thumb_func_start sub_08007958
sub_08007958: @ 0x08007958
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08007998 @ =gUnk_03003480
	adds r4, r0, r1
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r6, r0
	blo _08007980
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08007980:
	ldrb r5, [r4, #6]
	ldrh r0, [r4, #0xa]
	cmp r6, r0
	blo _0800799C
	ldrh r1, [r4, #0xa]
	adds r0, r1, r5
	cmp r6, r0
	bge _0800799C
	subs r0, r6, r1
	strb r0, [r4, #0xc]
	b _080079DA
	.align 2, 0
_08007998: .4byte gUnk_03003480
_0800799C:
	adds r0, r6, #0
	adds r1, r5, #0
	bl __divsi3
	muls r0, r5, r0
	strh r0, [r4, #0xa]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r2, [r0]
	ldrh r0, [r4, #0xa]
	ldrb r1, [r4, #6]
	adds r0, r0, r1
	cmp r2, r0
	bge _080079BE
	subs r0, r2, r1
	strh r0, [r4, #0xa]
_080079BE:
	ldrb r0, [r4, #0xa]
	subs r0, r6, r0
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4]
	ldrh r1, [r4, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080079D6
	movs r0, #8
	b _080079D8
_080079D6:
	movs r0, #4
_080079D8:
	strb r0, [r4, #1]
_080079DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080079E0
sub_080079E0: @ 0x080079E0
	push {r4, lr}
	ldrb r3, [r0]
	adds r4, r3, #0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08007A10 @ =gUnk_03003480
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #3
	bne _08007A50
	ldr r0, _08007A14 @ =gCurrentKeyPress
	ldrh r2, [r0]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08007A18
	adds r0, r3, #0
	bl sub_08008670
	b _08007A50
	.align 2, 0
_08007A10: .4byte gUnk_03003480
_08007A14: .4byte gCurrentKeyPress
_08007A18:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08007A28
	adds r0, r3, #0
	bl sub_0800886C
	b _08007A50
_08007A28:
	ldrh r1, [r1, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007A50
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08007A42
	adds r0, r3, #0
	bl sub_08008A94
	b _08007A50
_08007A42:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08007A50
	adds r0, r4, #0
	bl sub_08008ADC
_08007A50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007A58
sub_08007A58: @ 0x08007A58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08007A8C @ =gUnk_03003480
	adds r7, r1, r0
	ldrb r0, [r7, #1]
	cmp r0, #0x60
	bls _08007A80
	bl _08008466
_08007A80:
	lsls r0, r0, #2
	ldr r1, _08007A90 @ =_08007A94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007A8C: .4byte gUnk_03003480
_08007A90: .4byte _08007A94
_08007A94: @ jump table
	.4byte _08007C1E @ case 0
	.4byte _08007D0C @ case 1
	.4byte _08007DF4 @ case 2
	.4byte _08008466 @ case 3
	.4byte _08007EA6 @ case 4
	.4byte _08007F94 @ case 5
	.4byte _08008088 @ case 6
	.4byte _08008466 @ case 7
	.4byte _080081FC @ case 8
	.4byte _08008466 @ case 9
	.4byte _08008466 @ case 10
	.4byte _08008466 @ case 11
	.4byte _08008466 @ case 12
	.4byte _08008466 @ case 13
	.4byte _08008466 @ case 14
	.4byte _08008466 @ case 15
	.4byte _08008362 @ case 16
	.4byte _08008466 @ case 17
	.4byte _08008466 @ case 18
	.4byte _08008466 @ case 19
	.4byte _08008466 @ case 20
	.4byte _08008466 @ case 21
	.4byte _08008466 @ case 22
	.4byte _08008466 @ case 23
	.4byte _08008466 @ case 24
	.4byte _08008466 @ case 25
	.4byte _08008466 @ case 26
	.4byte _08008466 @ case 27
	.4byte _08008466 @ case 28
	.4byte _08008466 @ case 29
	.4byte _08008466 @ case 30
	.4byte _08008466 @ case 31
	.4byte _08008466 @ case 32
	.4byte _08008466 @ case 33
	.4byte _08008466 @ case 34
	.4byte _08008466 @ case 35
	.4byte _08008466 @ case 36
	.4byte _08008466 @ case 37
	.4byte _08008466 @ case 38
	.4byte _08008466 @ case 39
	.4byte _08008466 @ case 40
	.4byte _08008466 @ case 41
	.4byte _08008466 @ case 42
	.4byte _08008466 @ case 43
	.4byte _08008466 @ case 44
	.4byte _08008466 @ case 45
	.4byte _08008466 @ case 46
	.4byte _08008466 @ case 47
	.4byte _08008466 @ case 48
	.4byte _08008466 @ case 49
	.4byte _08008466 @ case 50
	.4byte _08008466 @ case 51
	.4byte _08008466 @ case 52
	.4byte _08008466 @ case 53
	.4byte _08008466 @ case 54
	.4byte _08008466 @ case 55
	.4byte _08008466 @ case 56
	.4byte _08008466 @ case 57
	.4byte _08008466 @ case 58
	.4byte _08008466 @ case 59
	.4byte _08008466 @ case 60
	.4byte _08008466 @ case 61
	.4byte _08008466 @ case 62
	.4byte _08008466 @ case 63
	.4byte _080083F0 @ case 64
	.4byte _08008466 @ case 65
	.4byte _08008466 @ case 66
	.4byte _08008466 @ case 67
	.4byte _08008466 @ case 68
	.4byte _08008466 @ case 69
	.4byte _08008466 @ case 70
	.4byte _08008466 @ case 71
	.4byte _08008466 @ case 72
	.4byte _08008466 @ case 73
	.4byte _08008466 @ case 74
	.4byte _08008466 @ case 75
	.4byte _08008466 @ case 76
	.4byte _08008466 @ case 77
	.4byte _08008466 @ case 78
	.4byte _08008466 @ case 79
	.4byte _08008466 @ case 80
	.4byte _08008466 @ case 81
	.4byte _08008466 @ case 82
	.4byte _08008466 @ case 83
	.4byte _08008466 @ case 84
	.4byte _08008466 @ case 85
	.4byte _08008466 @ case 86
	.4byte _08008466 @ case 87
	.4byte _08008466 @ case 88
	.4byte _08008466 @ case 89
	.4byte _08008466 @ case 90
	.4byte _08008466 @ case 91
	.4byte _08008466 @ case 92
	.4byte _08008466 @ case 93
	.4byte _08008466 @ case 94
	.4byte _08008466 @ case 95
	.4byte _08008424 @ case 96
_08007C18:
	movs r0, #2
	strb r0, [r7, #1]
	b _08007CFE
_08007C1E:
	ldrh r1, [r7, #8]
	movs r0, #8
	ands r0, r1
	ldr r1, _08007D08 @ =0x44444444
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _08007C30
	movs r2, #0
	str r2, [sp, #0x14]
_08007C30:
	movs r3, #0
	mov r8, r3
	movs r4, #0xab
	lsls r4, r4, #1
	adds r6, r7, r4
_08007C3A:
	ldrh r4, [r7, #0xa]
	add r4, r8
	ldrb r1, [r7, #4]
	movs r5, #0xbc
	lsls r5, r5, #1
	adds r5, r5, r7
	mov sl, r5
	ldr r2, [r5]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r3, [r7, #2]
	mov r5, r8
	lsls r0, r5, #1
	ldrb r5, [r7, #3]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	movs r5, #0xbe
	lsls r5, r5, #1
	adds r5, r5, r7
	mov sb, r5
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	adds r0, r6, #0
	bl sub_0800E844
	adds r0, r6, #0
	bl sub_0800E858
	mov r0, r8
	adds r0, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _08007C18
	adds r5, r6, #2
	mov r8, r0
	ldrh r4, [r7, #0xa]
	add r4, r8
	ldrb r1, [r7, #4]
	mov r3, sl
	ldr r2, [r3]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r0, [r7, #2]
	mov sl, r0
	mov r3, r8
	lsls r0, r3, #1
	ldrb r3, [r7, #3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	mov r3, sl
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	adds r0, r5, #0
	bl sub_0800E844
	adds r0, r5, #0
	bl sub_0800E858
	mov r0, r8
	adds r0, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	beq _08007C18
	adds r6, #4
	mov r8, r0
	cmp r0, #3
	bls _08007C3A
_08007CFE:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _08007D06
	b _08008466
_08007D06:
	b _0800807A
	.align 2, 0
_08007D08: .4byte 0x44444444
_08007D0C:
	ldrh r1, [r7, #8]
	movs r0, #8
	ands r0, r1
	ldr r1, _08007DF0 @ =0x44444444
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _08007D1E
	movs r2, #0
	str r2, [sp, #0x14]
_08007D1E:
	movs r3, #0xaf
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	movs r6, #4
_08007D28:
	ldrh r4, [r7, #0xa]
	adds r4, r4, r6
	ldrb r1, [r7, #4]
	movs r5, #0xbc
	lsls r5, r5, #1
	adds r5, r5, r7
	mov sl, r5
	ldr r2, [r5]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r3, [r7, #2]
	lsls r0, r6, #1
	ldrb r5, [r7, #3]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	movs r5, #0xbe
	lsls r5, r5, #1
	adds r5, r5, r7
	mov sb, r5
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	mov r0, r8
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	mov r0, r8
	bl sub_0800E844
	mov r0, r8
	bl sub_0800E858
	adds r0, r6, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	bne _08007D86
	b _08008078
_08007D86:
	mov r5, r8
	adds r5, #2
	adds r6, r0, #0
	ldrh r4, [r7, #0xa]
	adds r4, r4, r6
	ldrb r1, [r7, #4]
	mov r3, sl
	ldr r2, [r3]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r0, [r7, #2]
	mov sl, r0
	lsls r0, r6, #1
	ldrb r3, [r7, #3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	mov r3, sl
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	adds r0, r5, #0
	bl sub_0800E844
	adds r0, r5, #0
	bl sub_0800E858
	adds r0, r6, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	bne _08007DE2
	b _08008078
_08007DE2:
	movs r1, #4
	add r8, r1
	adds r6, r0, #0
	cmp r6, #7
	bls _08007D28
	b _08008078
	.align 2, 0
_08007DF0: .4byte 0x44444444
_08007DF4:
	ldrh r1, [r7, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08007E24
	movs r2, #0
	mov r8, r2
	b _08007E06
_08007E04:
	mov r8, r0
_08007E06:
	mov r3, r8
	cmp r3, #7
	bhi _08007E24
	lsls r0, r3, #1
	movs r4, #0xab
	lsls r4, r4, #1
	adds r0, r0, r4
	adds r0, r7, r0
	bl sub_0800E878
	mov r0, r8
	adds r0, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	bne _08007E04
_08007E24:
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08007E92
	movs r2, #0
	mov r8, r2
	adds r5, r7, r1
_08007E36:
	mov r3, r8
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	add r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	lsls r3, r3, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r5]
	bl _call_via_r4
	mov r0, r8
	adds r0, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _08007E92
	mov r8, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	add r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	mov r4, r8
	lsls r3, r4, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r5]
	bl _call_via_r4
	mov r0, r8
	adds r0, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _08007E92
	mov r8, r0
	cmp r0, #7
	bls _08007E36
_08007E92:
	ldrh r1, [r7, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08007E9E
	b _080081EA
_08007E9E:
	b _080081F0
_08007EA0:
	movs r0, #6
	strb r0, [r7, #1]
	b _08007F86
_08007EA6:
	ldrh r1, [r7, #8]
	movs r0, #8
	ands r0, r1
	ldr r2, _08007F90 @ =0x44444444
	str r2, [sp, #0x14]
	cmp r0, #0
	beq _08007EB8
	movs r3, #0
	str r3, [sp, #0x14]
_08007EB8:
	movs r4, #0
	mov r8, r4
	movs r5, #0xb3
	lsls r5, r5, #1
	adds r6, r7, r5
_08007EC2:
	ldrh r4, [r7, #0xa]
	add r4, r8
	ldrb r1, [r7, #4]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	ldr r2, [r0]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r3, [r7, #2]
	mov r5, r8
	lsls r0, r5, #1
	ldrb r5, [r7, #3]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	movs r5, #0xbe
	lsls r5, r5, #1
	adds r5, r5, r7
	mov sb, r5
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	adds r0, r6, #0
	bl sub_0800E844
	adds r0, r6, #0
	bl sub_0800E858
	mov r0, r8
	adds r0, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _08007EA0
	adds r5, r6, #2
	mov r8, r0
	ldrh r4, [r7, #0xa]
	add r4, r8
	ldrb r1, [r7, #4]
	mov r3, sl
	ldr r2, [r3]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r0, [r7, #2]
	mov sl, r0
	mov r3, r8
	lsls r0, r3, #1
	ldrb r3, [r7, #3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	mov r3, sl
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	adds r0, r5, #0
	bl sub_0800E844
	adds r0, r5, #0
	bl sub_0800E858
	mov r0, r8
	adds r0, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	beq _08007EA0
	adds r6, #4
	mov r8, r0
	cmp r0, #3
	bls _08007EC2
_08007F86:
	ldrb r0, [r7, #1]
	cmp r0, #4
	beq _08007F8E
	b _08008466
_08007F8E:
	b _0800807A
	.align 2, 0
_08007F90: .4byte 0x44444444
_08007F94:
	ldrh r1, [r7, #8]
	movs r0, #8
	ands r0, r1
	ldr r1, _08008080 @ =0x44444444
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _08007FA6
	movs r2, #0
	str r2, [sp, #0x14]
_08007FA6:
	movs r3, #0xb7
	lsls r3, r3, #1
	adds r3, r3, r7
	mov r8, r3
	movs r6, #4
_08007FB0:
	ldrh r4, [r7, #0xa]
	adds r4, r4, r6
	ldr r5, _08008084 @ =gUnk_03002000
	str r4, [r5]
	ldrb r1, [r7, #4]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	ldr r2, [r0]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r3, [r7, #2]
	lsls r0, r6, #1
	ldrb r5, [r7, #3]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	movs r5, #0xbe
	lsls r5, r5, #1
	adds r5, r5, r7
	mov sb, r5
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	mov r0, r8
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	mov r0, r8
	bl sub_0800E844
	mov r0, r8
	bl sub_0800E858
	adds r0, r6, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _08008078
	mov r5, r8
	adds r5, #2
	adds r6, r0, #0
	ldrh r4, [r7, #0xa]
	adds r4, r4, r6
	ldr r2, _08008084 @ =gUnk_03002000
	str r4, [r2]
	ldrb r1, [r7, #4]
	mov r3, sl
	ldr r2, [r3]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r0, [r7, #2]
	mov sl, r0
	lsls r0, r6, #1
	ldrb r3, [r7, #3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	mov r3, sl
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	adds r0, r5, #0
	bl sub_0800E844
	adds r0, r5, #0
	bl sub_0800E858
	adds r0, r6, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	beq _08008078
	movs r1, #4
	add r8, r1
	adds r6, r0, #0
	cmp r6, #7
	bls _08007FB0
_08008078:
	ldrb r0, [r7, #1]
_0800807A:
	adds r0, #1
	strb r0, [r7, #1]
	b _08008466
	.align 2, 0
_08008080: .4byte 0x44444444
_08008084: .4byte gUnk_03002000
_08008088:
	movs r2, #0
	mov r8, r2
	movs r3, #0xab
	lsls r3, r3, #1
	adds r4, r7, r3
	mov sl, r2
_08008094:
	mov r0, r8
	lsls r5, r0, #1
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080080AC
	adds r0, r4, #0
	bl sub_0800B4E4
_080080AC:
	movs r1, #0xb3
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sb, r1
	adds r1, r1, r5
	ldrh r0, [r1]
	strh r0, [r4]
	mov r2, sl
	strh r2, [r1]
	adds r5, r4, #2
	mov r0, r8
	adds r0, #1
	lsls r6, r0, #1
	adds r0, r5, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080080DA
	adds r0, r5, #0
	bl sub_0800B4E4
_080080DA:
	mov r3, sb
	adds r1, r3, r6
	ldrh r0, [r1]
	strh r0, [r4, #2]
	mov r5, sl
	strh r5, [r1]
	adds r5, r4, #4
	mov r0, r8
	adds r0, #2
	lsls r6, r0, #1
	adds r0, r5, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008102
	adds r0, r5, #0
	bl sub_0800B4E4
_08008102:
	mov r0, sb
	adds r1, r0, r6
	ldrh r0, [r1]
	strh r0, [r4, #4]
	mov r2, sl
	strh r2, [r1]
	adds r5, r4, #6
	mov r0, r8
	adds r0, #3
	lsls r6, r0, #1
	adds r0, r5, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0800812A
	adds r0, r5, #0
	bl sub_0800B4E4
_0800812A:
	mov r3, sb
	adds r1, r3, r6
	ldrh r0, [r1]
	strh r0, [r4, #6]
	mov r5, sl
	strh r5, [r1]
	adds r4, #8
	movs r0, #4
	add r8, r0
	mov r1, r8
	cmp r1, #7
	bls _08008094
	ldrh r1, [r7, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08008172
	movs r2, #0
	mov r8, r2
	b _08008154
_08008152:
	mov r8, r0
_08008154:
	mov r3, r8
	cmp r3, #7
	bhi _08008172
	lsls r0, r3, #1
	movs r4, #0xab
	lsls r4, r4, #1
	adds r0, r0, r4
	adds r0, r7, r0
	bl sub_0800E878
	mov r0, r8
	adds r0, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	bne _08008152
_08008172:
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080081E0
	movs r2, #0
	mov r8, r2
	adds r5, r7, r1
_08008184:
	mov r3, r8
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	add r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	lsls r3, r3, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r5]
	bl _call_via_r4
	mov r0, r8
	adds r0, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _080081E0
	mov r8, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	add r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	mov r4, r8
	lsls r3, r4, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r5]
	bl _call_via_r4
	mov r0, r8
	adds r0, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _080081E0
	mov r8, r0
	cmp r0, #7
	bls _08008184
_080081E0:
	ldrh r1, [r7, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080081F0
_080081EA:
	movs r0, #0x40
	strb r0, [r7, #1]
	b _08008466
_080081F0:
	movs r0, #0x60
	strb r0, [r7, #1]
	b _08008466
_080081F6:
	movs r0, #0x40
	strb r0, [r7, #1]
	b _080082F6
_080081FC:
	ldrh r1, [r7, #8]
	movs r0, #8
	ands r0, r1
	ldr r2, _080082EC @ =0x44444444
	str r2, [sp, #0x14]
	cmp r0, #0
	beq _0800820E
	movs r3, #0
	str r3, [sp, #0x14]
_0800820E:
	movs r4, #0
	mov r8, r4
	movs r0, #0xab
	lsls r0, r0, #1
	adds r5, r7, r0
_08008218:
	adds r0, r5, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0800822C
	adds r0, r5, #0
	bl sub_0800B4E4
_0800822C:
	adds r4, r5, #2
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008242
	adds r0, r4, #0
	bl sub_0800B4E4
_08008242:
	adds r4, r5, #4
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008258
	adds r0, r4, #0
	bl sub_0800B4E4
_08008258:
	adds r4, r5, #6
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0800826E
	adds r0, r4, #0
	bl sub_0800B4E4
_0800826E:
	adds r5, #8
	movs r1, #4
	add r8, r1
	mov r2, r8
	cmp r2, #7
	bls _08008218
	movs r3, #0
	mov r8, r3
_0800827E:
	ldrh r4, [r7, #0xa]
	add r4, r8
	mov r0, r8
	lsls r5, r0, #1
	movs r1, #0xab
	lsls r1, r1, #1
	adds r6, r5, r1
	adds r6, r7, r6
	ldrb r1, [r7, #4]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r2, [r0]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r3, [r7, #2]
	ldrb r0, [r7, #3]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r5, [sp, #0x14]
	str r5, [sp, #4]
	movs r5, #0xbe
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	adds r0, r6, #0
	bl sub_0800E844
	mov r0, r8
	adds r0, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	bne _080082F0
	ldrh r1, [r7, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080081F6
	movs r0, #0x60
	strb r0, [r7, #1]
	b _080082F6
	.align 2, 0
_080082EC: .4byte 0x44444444
_080082F0:
	mov r8, r0
	cmp r0, #7
	bls _0800827E
_080082F6:
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08008304
	b _08008466
_08008304:
	adds r6, r7, r2
	movs r5, #0
_08008308:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	lsls r3, r5, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r6]
	bl _call_via_r4
	adds r0, r5, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	bne _08008330
	b _08008466
_08008330:
	adds r5, r0, #0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	lsls r3, r5, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r6]
	bl _call_via_r4
	adds r0, r5, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	bne _0800835A
	b _08008466
_0800835A:
	adds r5, r0, #0
	cmp r5, #7
	bls _08008308
	b _08008466
_08008362:
	ldrh r1, [r7, #8]
	movs r0, #8
	ands r0, r1
	ldr r1, _080083EC @ =0x44444444
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _08008374
	movs r2, #0
	str r2, [sp, #0x14]
_08008374:
	ldrh r6, [r7, #0xa]
	ldrb r5, [r7, #0x18]
	adds r6, r6, r5
	lsls r5, r5, #1
	movs r3, #0xab
	lsls r3, r3, #1
	mov r8, r3
	adds r0, r5, r3
	adds r0, r7, r0
	ldrb r1, [r7, #4]
	movs r4, #0xbc
	lsls r4, r4, #1
	adds r2, r7, r4
	ldr r3, [r2]
	lsls r2, r6, #2
	adds r2, r2, r3
	ldr r2, [r2]
	ldrb r3, [r7, #2]
	ldrb r4, [r7, #3]
	adds r4, r4, r5
	str r4, [sp]
	ldr r5, [sp, #0x14]
	str r5, [sp, #4]
	movs r5, #0xbe
	lsls r5, r5, #1
	adds r4, r7, r5
	ldr r4, [r4]
	adds r4, r4, r6
	ldrb r4, [r4]
	str r4, [sp, #8]
	movs r5, #2
	str r5, [sp, #0xc]
	ldrb r4, [r7, #7]
	str r4, [sp, #0x10]
	bl sub_0800B1AC
	ldrb r0, [r7, #0x18]
	lsls r0, r0, #1
	add r0, r8
	adds r0, r7, r0
	ldrb r1, [r7, #0x19]
	bl sub_0800E844
	ldrb r0, [r7, #0x18]
	lsls r0, r0, #1
	add r0, r8
	adds r0, r7, r0
	bl sub_0800E858
	ldrb r0, [r7, #0x18]
	adds r0, #1
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r7, #6]
	cmp r0, r1
	bne _08008466
	strb r5, [r7, #1]
	b _08008466
	.align 2, 0
_080083EC: .4byte 0x44444444
_080083F0:
	movs r2, #0
	mov r8, r2
	b _080083F8
_080083F6:
	mov r8, r0
_080083F8:
	mov r3, r8
	cmp r3, #7
	bhi _08008466
	lsls r0, r3, #1
	movs r4, #0xab
	lsls r4, r4, #1
	adds r0, r0, r4
	adds r0, r7, r0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008466
	mov r0, r8
	adds r0, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	bne _080083F6
_0800841E:
	movs r0, #3
	strb r0, [r7]
	b _08008466
_08008424:
	movs r0, #0
	mov r8, r0
	movs r1, #0xab
	lsls r1, r1, #1
	adds r4, r7, r1
	b _0800844C
_08008430:
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008466
	mov r0, r8
	adds r0, #1
	ldrb r2, [r7, #6]
	cmp r0, r2
	beq _0800841E
	adds r4, #2
	mov r8, r0
_0800844C:
	mov r3, r8
	cmp r3, #7
	bhi _08008466
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bne _08008430
	adds r0, r4, #0
	bl sub_0800E878
_08008466:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008478
sub_08008478: @ 0x08008478
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080085B8 @ =gUnk_03003480
	adds r7, r1, r0
	movs r0, #0x14
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _0800849E
	b _080085AA
_0800849E:
	ldrh r1, [r7, #8]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080084AA
	b _080085AA
_080084AA:
	ldrb r1, [r7, #6]
	lsls r0, r1, #4
	mov sb, r0
	lsls r5, r1, #0xe
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r4, [r0]
	lsls r0, r4, #0xa
	bl __udivsi3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bhi _080084D2
	movs r6, #2
_080084D2:
	ldrh r0, [r7, #0xa]
	muls r0, r5, r0
	adds r1, r4, #0
	bl __udivsi3
	adds r1, r0, #0
	lsls r0, r1, #6
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r0, r6
	cmp sb, r0
	bge _080084F4
	mov r3, sb
	subs r0, r3, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080084F4:
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r1, [r4]
	ldr r2, _080085BC @ =0x01000090
	mov r0, sp
	bl CpuFastSet
	ldr r5, _080085C0 @ =0x00077770
	str r5, [sp, #4]
	add r0, sp, #4
	ldr r1, [r4]
	ldrb r2, [r7, #6]
	lsls r2, r2, #4
	movs r3, #0xa0
	lsls r3, r3, #0x13
	mov sb, r3
	orrs r2, r3
	bl CpuSet
	ldr r0, _080085C4 @ =0x00076670
	str r0, [sp, #8]
	add r0, sp, #8
	mov r1, r8
	lsls r2, r1, #2
	ldr r1, [r4]
	adds r1, r1, r2
	mov r2, sb
	orrs r6, r2
	adds r2, r6, #0
	bl CpuSet
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, [r4]
	ldr r3, _080085C8 @ =0x05000001
	mov r8, r3
	mov r2, r8
	bl CpuSet
	str r5, [sp, #0x10]
	add r0, sp, #0x10
	ldrb r2, [r7, #6]
	lsls r2, r2, #6
	subs r2, #4
	ldr r1, [r4]
	adds r1, r1, r2
	mov r2, r8
	bl CpuSet
	ldr r0, [r4]
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r1, [r1]
	adds r2, #0xbc
	bl sub_08006BA4
	movs r5, #0
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r5, r0
	bhs _080085AA
	adds r4, r7, #0
	adds r4, #0x94
_0800857E:
	lsls r0, r5, #4
	ldrb r1, [r7, #2]
	lsls r1, r1, #3
	ldrb r2, [r7, #0xf]
	adds r1, r1, r2
	ldrb r2, [r7, #3]
	lsls r2, r2, #3
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_080091C4
	adds r0, r4, #0
	bl sub_080093C0
	adds r4, #0x10
	adds r5, #1
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r5, r0
	blo _0800857E
_080085AA:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080085B8: .4byte gUnk_03003480
_080085BC: .4byte 0x01000090
_080085C0: .4byte 0x00077770
_080085C4: .4byte 0x00076670
_080085C8: .4byte 0x05000001

	thumb_func_start sub_080085CC
sub_080085CC: @ 0x080085CC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08008668 @ =gUnk_03003480
	adds r4, r1, r0
	adds r5, r4, #0
	adds r5, #0x44
	adds r0, r5, #0
	bl sub_08009FF8
	adds r0, r4, #0
	adds r0, #0x6c
	bl sub_08009FF8
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _08008620
	ldrb r0, [r4, #2]
	lsls r0, r0, #3
	movs r1, #0xd
	ldrsb r1, [r4, r1]
	adds r1, r1, r0
	ldrb r2, [r4, #3]
	lsls r2, r2, #0x13
	ldr r0, _0800866C @ =0xFFF80000
	adds r2, r2, r0
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_0800A678
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _08008620
	adds r0, r5, #0
	bl sub_0800A778
_08008620:
	ldrh r0, [r4, #0xa]
	ldrb r3, [r4, #6]
	adds r0, r0, r3
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1]
	cmp r0, r1
	beq _08008660
	adds r5, r4, #0
	adds r5, #0x6c
	ldrb r0, [r4, #2]
	lsls r0, r0, #3
	movs r1, #0xd
	ldrsb r1, [r4, r1]
	adds r1, r1, r0
	ldrb r2, [r4, #3]
	lsls r2, r2, #3
	subs r0, r3, #1
	lsls r0, r0, #4
	adds r2, r2, r0
	adds r2, #0x10
	adds r0, r5, #0
	bl sub_0800A678
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _08008660
	adds r0, r5, #0
	bl sub_0800A778
_08008660:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008668: .4byte gUnk_03003480
_0800866C: .4byte 0xFFF80000

	thumb_func_start sub_08008670
sub_08008670: @ 0x08008670
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080086D4 @ =gUnk_03003480
	adds r7, r1, r0
	ldr r0, _080086D8 @ =gKeyNewPress
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080086E2
	ldrh r2, [r7, #8]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080086E2
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _080086E2
	ldrh r0, [r7, #0xa]
	cmp r0, #0
	bne _080086E2
	ldrb r0, [r7, #6]
	subs r0, #1
	strb r0, [r7, #0xc]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r7, #6]
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r7, #0xa]
	movs r0, #1
	strb r0, [r7]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080086DC
	movs r0, #8
	strb r0, [r7, #1]
	b _0800885E
	.align 2, 0
_080086D4: .4byte gUnk_03003480
_080086D8: .4byte gKeyNewPress
_080086DC:
	movs r0, #4
	strb r0, [r7, #1]
	b _0800885E
_080086E2:
	ldrb r0, [r7, #0xc]
	adds r2, r0, #0
	cmp r2, #1
	bhi _080086FE
	ldrh r1, [r7, #0xa]
	cmp r1, #0
	beq _080086FA
	subs r0, r1, #1
	strh r0, [r7, #0xa]
	movs r0, #1
	strb r0, [r7]
	b _08008702
_080086FA:
	cmp r2, #0
	beq _08008702
_080086FE:
	subs r0, #1
	strb r0, [r7, #0xc]
_08008702:
	ldrb r0, [r7]
	cmp r0, #1
	beq _0800870A
	b _0800885E
_0800870A:
	ldrb r0, [r7, #6]
	lsls r0, r0, #1
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r0, r7, r0
	bl sub_0800B4E4
	ldrb r0, [r7, #6]
	subs r6, r0, #1
	cmp r6, #0
	ble _08008776
	movs r4, #0xab
	lsls r4, r4, #1
	mov sb, r4
	adds r0, r7, #0
	add r0, sb
	mov r8, r0
_0800872E:
	lsls r5, r6, #1
	mov r3, r8
	adds r1, r3, r5
	subs r6, #1
	lsls r0, r6, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	add r5, sb
	adds r5, r7, r5
	adds r0, r5, #0
	bl sub_0800E8B4
	adds r0, r5, #0
	bl sub_0800E804
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	bl sub_0800E818
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r2, r2, r0
	asrs r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800E82C
	cmp r6, #0
	bgt _0800872E
_08008776:
	ldrh r1, [r7, #8]
	movs r0, #8
	ands r0, r1
	ldr r4, _080087D8 @ =0x44444444
	cmp r0, #0
	beq _08008784
	movs r4, #0
_08008784:
	movs r1, #0xab
	lsls r1, r1, #1
	adds r5, r7, r1
	movs r0, #0
	strh r0, [r5]
	ldrb r1, [r7, #4]
	ldrh r0, [r7, #0xa]
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r2, [r2]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrb r3, [r7, #2]
	ldrb r0, [r7, #3]
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r4, [r7, #0xa]
	movs r6, #0xbe
	lsls r6, r6, #1
	adds r0, r7, r6
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldrb r0, [r7, #7]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	bl sub_0800B1AC
	ldrb r1, [r7, #0x19]
	adds r0, r5, #0
	bl sub_0800E844
	movs r6, #1
	movs r0, #0xac
	lsls r0, r0, #1
	adds r4, r7, r0
	b _080087E0
	.align 2, 0
_080087D8: .4byte 0x44444444
_080087DC:
	adds r4, #2
	adds r6, #1
_080087E0:
	cmp r6, #7
	bgt _080087FA
	adds r0, r4, #0
	bl sub_0800B474
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800E898
	ldrb r0, [r7, #6]
	subs r0, #1
	cmp r6, r0
	bne _080087DC
_080087FA:
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800885E
	adds r6, r7, r1
	movs r5, #0
_0800880A:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	lsls r3, r5, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r6]
	bl _call_via_r4
	adds r0, r5, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _0800885E
	adds r5, r0, #0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	lsls r3, r5, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r6]
	bl _call_via_r4
	adds r0, r5, #1
	ldrb r1, [r7, #6]
	cmp r0, r1
	beq _0800885E
	adds r5, r0, #0
	cmp r5, #7
	ble _0800880A
_0800885E:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800886C
sub_0800886C: @ 0x0800886C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080088CC @ =gUnk_03003480
	adds r7, r1, r0
	ldr r0, _080088D0 @ =gKeyNewPress
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080088DA
	ldrh r2, [r7, #8]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080088DA
	ldrb r1, [r7, #0xc]
	ldrh r0, [r7, #0xa]
	adds r1, r1, r0
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrh r0, [r0]
	subs r0, #1
	cmp r1, r0
	bne _080088DA
	movs r0, #0
	strb r0, [r7, #0xc]
	strh r0, [r7, #0xa]
	movs r0, #1
	strb r0, [r7]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080088D4
	movs r0, #8
	strb r0, [r7, #1]
	b _08008A86
	.align 2, 0
_080088CC: .4byte gUnk_03003480
_080088D0: .4byte gKeyNewPress
_080088D4:
	movs r0, #4
	strb r0, [r7, #1]
	b _08008A86
_080088DA:
	ldrb r3, [r7, #0xc]
	ldrb r2, [r7, #6]
	subs r0, r2, #2
	cmp r3, r0
	blt _08008906
	ldrh r0, [r7, #0xa]
	adds r0, r0, r2
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r1, r7, r4
	ldrh r1, [r1]
	cmp r0, r1
	bge _08008900
	movs r0, #1
	strb r0, [r7]
	ldrh r0, [r7, #0xa]
	adds r0, #1
	strh r0, [r7, #0xa]
	b _0800890A
_08008900:
	subs r0, r2, #1
	cmp r3, r0
	bge _0800890A
_08008906:
	adds r0, r3, #1
	strb r0, [r7, #0xc]
_0800890A:
	ldrb r0, [r7]
	cmp r0, #1
	beq _08008912
	b _08008A86
_08008912:
	movs r5, #0xab
	lsls r5, r5, #1
	adds r4, r7, r5
	adds r0, r4, #0
	bl sub_0800B4E4
	ldrb r0, [r7, #6]
	movs r6, #0
	cmp r0, #1
	beq _08008976
	mov sb, r5
	mov r8, r4
_0800892A:
	lsls r5, r6, #1
	mov r0, r8
	adds r1, r0, r5
	adds r6, #1
	lsls r0, r6, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	add r5, sb
	adds r5, r7, r5
	adds r0, r5, #0
	bl sub_0800E8B4
	adds r0, r5, #0
	bl sub_0800E804
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	bl sub_0800E818
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r1, #0xfe
	lsls r1, r1, #0x18
	adds r2, r2, r1
	asrs r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800E82C
	ldrb r0, [r7, #6]
	subs r0, #1
	cmp r6, r0
	blo _0800892A
_08008976:
	ldrh r1, [r7, #8]
	movs r0, #8
	ands r0, r1
	ldr r5, _08008A00 @ =0x44444444
	cmp r0, #0
	beq _08008984
	movs r5, #0
_08008984:
	ldrb r0, [r7, #6]
	subs r0, #1
	lsls r0, r0, #1
	movs r3, #0xab
	lsls r3, r3, #1
	adds r3, r3, r7
	mov sb, r3
	add r0, sb
	movs r1, #0
	strh r1, [r0]
	ldrb r4, [r7, #6]
	lsls r0, r4, #1
	movs r6, #0xaa
	lsls r6, r6, #1
	mov r8, r6
	add r0, r8
	adds r0, r7, r0
	ldrb r1, [r7, #4]
	ldrh r2, [r7, #0xa]
	adds r2, r2, r4
	adds r6, #0x24
	adds r3, r7, r6
	ldr r3, [r3]
	lsls r2, r2, #2
	adds r2, r2, r3
	subs r2, #4
	ldr r2, [r2]
	ldrb r3, [r7, #2]
	subs r4, #1
	lsls r4, r4, #1
	ldrb r6, [r7, #3]
	adds r4, r4, r6
	str r4, [sp]
	str r5, [sp, #4]
	ldrh r4, [r7, #0xa]
	ldrb r5, [r7, #6]
	mov ip, r5
	movs r6, #0xbe
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r5, [r5]
	add r4, ip
	adds r4, r4, r5
	subs r4, #1
	ldrb r4, [r4]
	str r4, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	ldrb r4, [r7, #7]
	str r4, [sp, #0x10]
	bl sub_0800B1AC
	ldrb r0, [r7, #6]
	lsls r0, r0, #1
	add r0, r8
	adds r0, r7, r0
	ldrb r1, [r7, #0x19]
	bl sub_0800E844
	movs r6, #0
	mov r4, sb
	b _08008A08
	.align 2, 0
_08008A00: .4byte 0x44444444
_08008A04:
	adds r4, #2
	adds r6, #1
_08008A08:
	cmp r6, #7
	bhi _08008A22
	adds r0, r4, #0
	bl sub_0800B474
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800E898
	ldrb r0, [r7, #6]
	subs r0, #2
	cmp r6, r0
	bne _08008A04
_08008A22:
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08008A86
	adds r6, r7, r1
	movs r5, #0
_08008A32:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	lsls r3, r5, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r6]
	bl _call_via_r4
	adds r0, r5, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	beq _08008A86
	adds r5, r0, #0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r7, #0xa]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r7, #2]
	lsls r3, r5, #1
	ldrb r4, [r7, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r6]
	bl _call_via_r4
	adds r0, r5, #1
	ldrb r5, [r7, #6]
	cmp r0, r5
	beq _08008A86
	adds r5, r0, #0
	cmp r5, #7
	bls _08008A32
_08008A86:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08008A94
sub_08008A94: @ 0x08008A94
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08008ABC @ =gUnk_03003480
	adds r1, r1, r0
	ldrh r3, [r1, #0xa]
	adds r2, r3, #0
	cmp r2, #0
	beq _08008ACE
	ldrb r0, [r1, #6]
	cmp r2, r0
	blo _08008AC0
	subs r0, r3, r0
	b _08008AC2
	.align 2, 0
_08008ABC: .4byte gUnk_03003480
_08008AC0:
	movs r0, #0
_08008AC2:
	strh r0, [r1, #0xa]
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	strb r0, [r1, #1]
	b _08008AD6
_08008ACE:
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _08008AD6
	strb r2, [r1, #0xc]
_08008AD6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008ADC
sub_08008ADC: @ 0x08008ADC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08008B0C @ =gUnk_03003480
	adds r2, r1, r0
	ldrh r0, [r2, #0xa]
	ldrb r1, [r2, #6]
	adds r3, r0, r1
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r3, r0
	bge _08008B2C
	subs r0, r0, r1
	cmp r3, r0
	bge _08008B10
	strh r3, [r2, #0xa]
	b _08008B12
	.align 2, 0
_08008B0C: .4byte gUnk_03003480
_08008B10:
	strh r0, [r2, #0xa]
_08008B12:
	movs r0, #1
	strb r0, [r2]
	ldrh r1, [r2, #8]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08008B26
	movs r0, #8
	strb r0, [r2, #1]
	b _08008B36
_08008B26:
	movs r0, #4
	strb r0, [r2, #1]
	b _08008B36
_08008B2C:
	ldrb r0, [r2, #0xc]
	subs r1, #1
	cmp r0, r1
	beq _08008B36
	strb r1, [r2, #0xc]
_08008B36:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08008B3C
sub_08008B3C: @ 0x08008B3C
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _08008B88 @ =gUnk_03003480
	movs r5, #0
	str r5, [sp]
	ldr r2, _08008B8C @ =0x050000C6
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0xbc
	lsls r1, r1, #1
	movs r2, #0xc0
	lsls r2, r2, #1
	movs r3, #0xc2
	lsls r3, r3, #1
	adds r0, r4, r1
	str r5, [r0]
	adds r0, r4, r2
	str r5, [r0]
	adds r0, r4, r3
	str r5, [r0]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r1, r4, r1
	str r5, [r1]
	adds r2, r4, r2
	str r5, [r2]
	adds r4, r4, r3
	str r5, [r4]
	ldr r0, _08008B90 @ =gUnk_03003798
	strh r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008B88: .4byte gUnk_03003480
_08008B8C: .4byte 0x050000C6
_08008B90: .4byte gUnk_03003798

	thumb_func_start sub_08008B94
sub_08008B94: @ 0x08008B94
	push {r4, r5, lr}
	movs r5, #0
_08008B98:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008BB8 @ =gUnk_03003480
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #4
	bhi _08008BE6
	lsls r0, r0, #2
	ldr r1, _08008BBC @ =_08008BC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008BB8: .4byte gUnk_03003480
_08008BBC: .4byte _08008BC0
_08008BC0: @ jump table
	.4byte _08008BE6 @ case 0
	.4byte _08008BD4 @ case 1
	.4byte _08008BE6 @ case 2
	.4byte _08008BE6 @ case 3
	.4byte _08008BDE @ case 4
_08008BD4:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007A58
	b _08008BE6
_08008BDE:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08008F30
_08008BE6:
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08008C08
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08008FC0
	adds r0, r4, #0
	bl sub_080085CC
	adds r0, r4, #0
	bl sub_08008478
_08008C08:
	adds r5, #1
	cmp r5, #1
	bls _08008B98
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08008C14
sub_08008C14: @ 0x08008C14
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008C30 @ =gUnk_03003480
	adds r0, r0, r1
	movs r2, #0
	movs r1, #4
	strb r1, [r0]
	strb r2, [r0, #1]
	bx lr
	.align 2, 0
_08008C30: .4byte gUnk_03003480

	thumb_func_start sub_08008C34
sub_08008C34: @ 0x08008C34
	push {r4, r5, r6, r7, lr}
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008CB0 @ =gUnk_03003480
	adds r5, r0, r1
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08008CAA
	movs r6, #0
	adds r7, r5, r1
_08008C56:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r5, #2]
	lsls r3, r6, #1
	ldrb r4, [r5, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r7]
	bl _call_via_r4
	adds r0, r6, #1
	ldrb r1, [r5, #6]
	cmp r0, r1
	beq _08008CAA
	adds r6, r0, #0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrb r2, [r5, #2]
	lsls r3, r6, #1
	ldrb r4, [r5, #3]
	adds r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r4, [r7]
	bl _call_via_r4
	adds r0, r6, #1
	ldrb r1, [r5, #6]
	cmp r0, r1
	beq _08008CAA
	adds r6, r0, #0
	cmp r6, #7
	bls _08008C56
_08008CAA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008CB0: .4byte gUnk_03003480

	thumb_func_start sub_08008CB4
sub_08008CB4: @ 0x08008CB4
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r5, r3, #0
	ldrb r2, [r0]
	adds r4, r2, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008CE0 @ =gUnk_03003480
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #3
	bne _08008D10
	cmp r3, #0x40
	bne _08008CE4
	adds r0, r2, #0
	bl sub_08008670
	b _08008D10
	.align 2, 0
_08008CE0: .4byte gUnk_03003480
_08008CE4:
	cmp r3, #0x80
	bne _08008CF0
	adds r0, r2, #0
	bl sub_0800886C
	b _08008D10
_08008CF0:
	ldrh r1, [r1, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008D10
	cmp r3, #0x20
	bne _08008D06
	adds r0, r2, #0
	bl sub_08008A94
	b _08008D10
_08008D06:
	cmp r5, #0x10
	bne _08008D10
	adds r0, r4, #0
	bl sub_08008ADC
_08008D10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008D18
sub_08008D18: @ 0x08008D18
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008D2C @ =gUnk_03003480
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08008D2C: .4byte gUnk_03003480

	thumb_func_start sub_08008D30
sub_08008D30: @ 0x08008D30
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08008D4C @ =gUnk_03003480
	adds r1, r1, r0
	ldrh r0, [r1, #0xa]
	ldrb r1, [r1, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08008D4C: .4byte gUnk_03003480

	thumb_func_start sub_08008D50
sub_08008D50: @ 0x08008D50
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008D64 @ =gUnk_03003480
	adds r0, r0, r1
	ldrh r0, [r0, #0xa]
	bx lr
	.align 2, 0
_08008D64: .4byte gUnk_03003480

	thumb_func_start __div02
__div02: @ 0x08008D68
	bx lr
	.align 2, 0

	thumb_func_start sub_08008D6C
sub_08008D6C: @ 0x08008D6C
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008D80 @ =gUnk_03003480
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_08008D80: .4byte gUnk_03003480

	thumb_func_start sub_08008D84
sub_08008D84: @ 0x08008D84
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08008D9C @ =gUnk_03003480
	adds r0, r0, r2
	strh r1, [r0, #8]
	bx lr
	.align 2, 0
_08008D9C: .4byte gUnk_03003480

	thumb_func_start sub_08008DA0
sub_08008DA0: @ 0x08008DA0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008DB4 @ =gUnk_03003480
	adds r0, r0, r1
	ldrb r0, [r0, #7]
	bx lr
	.align 2, 0
_08008DB4: .4byte gUnk_03003480

	thumb_func_start sub_08008DB8
sub_08008DB8: @ 0x08008DB8
	push {r4, r5, lr}
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08008DD0 @ =gUnk_03003480
	adds r4, r0, r2
	strb r1, [r4, #7]
	movs r5, #0
	b _08008DF4
	.align 2, 0
_08008DD0: .4byte gUnk_03003480
_08008DD4:
	lsls r1, r5, #1
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08008DEE
	adds r0, r1, r2
	adds r0, r4, r0
	ldrb r1, [r4, #7]
	bl sub_0800E898
_08008DEE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08008DF4:
	ldrb r0, [r4, #6]
	cmp r5, r0
	blo _08008DD4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08008E00
sub_08008E00: @ 0x08008E00
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08008E30 @ =gUnk_03003480
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x1c
	ldrb r1, [r1, #5]
	adds r2, r4, #0
	bl sub_08009F50
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008E30: .4byte gUnk_03003480

	thumb_func_start sub_08008E34
sub_08008E34: @ 0x08008E34
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08008E48 @ =gUnk_03003480
	adds r0, r0, r2
	strb r1, [r0, #0x11]
	bx lr
	.align 2, 0
_08008E48: .4byte gUnk_03003480

	thumb_func_start sub_08008E4C
sub_08008E4C: @ 0x08008E4C
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08008E60 @ =gUnk_03003480
	adds r0, r0, r2
	strb r1, [r0, #0x12]
	bx lr
	.align 2, 0
_08008E60: .4byte gUnk_03003480

	thumb_func_start sub_08008E64
sub_08008E64: @ 0x08008E64
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08008E78 @ =gUnk_03003480
	adds r0, r0, r2
	strb r1, [r0, #0x13]
	bx lr
	.align 2, 0
_08008E78: .4byte gUnk_03003480

	thumb_func_start sub_08008E7C
sub_08008E7C: @ 0x08008E7C
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08008E90 @ =gUnk_03003480
	adds r0, r0, r2
	strb r1, [r0, #0x14]
	bx lr
	.align 2, 0
_08008E90: .4byte gUnk_03003480

	thumb_func_start sub_08008E94
sub_08008E94: @ 0x08008E94
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008EB0 @ =gUnk_03003480
	adds r0, r0, r1
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08008EB0: .4byte gUnk_03003480

	thumb_func_start sub_08008EB4
sub_08008EB4: @ 0x08008EB4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008EE8 @ =gUnk_03003480
	adds r2, r0, r1
	ldrh r0, [r2, #0xa]
	cmp r0, r3
	bhi _08008EEC
	adds r1, r0, #0
	ldrb r0, [r2, #6]
	adds r0, r1, r0
	cmp r0, r3
	ble _08008EEC
	subs r0, r3, r1
	lsls r0, r0, #1
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r2, r0
	b _08008EEE
	.align 2, 0
_08008EE8: .4byte gUnk_03003480
_08008EEC:
	movs r0, #0
_08008EEE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008EF4
sub_08008EF4: @ 0x08008EF4
	push {lr}
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08008F14 @ =gUnk_03003480
	adds r0, r0, r1
	adds r0, #0x1c
	bl sub_0800A7A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08008F14: .4byte gUnk_03003480

	thumb_func_start sub_08008F18
sub_08008F18: @ 0x08008F18
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r2, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, _08008F2C @ =gUnk_03003480
	adds r0, r0, r2
	strb r1, [r0, #0x19]
	bx lr
	.align 2, 0
_08008F2C: .4byte gUnk_03003480

	thumb_func_start sub_08008F30
sub_08008F30: @ 0x08008F30
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08008FBC @ =gUnk_03003480
	adds r6, r1, r0
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _08008FB4
	movs r7, #0
	movs r0, #0xab
	lsls r0, r0, #1
	adds r5, r6, r0
_08008F52:
	adds r0, r5, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008F66
	adds r0, r5, #0
	bl sub_0800B4E4
_08008F66:
	adds r4, r5, #2
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008F7C
	adds r0, r4, #0
	bl sub_0800B4E4
_08008F7C:
	adds r4, r5, #4
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008F92
	adds r0, r4, #0
	bl sub_0800B4E4
_08008F92:
	adds r4, r5, #6
	adds r0, r4, #0
	bl sub_0800E7E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08008FA8
	adds r0, r4, #0
	bl sub_0800B4E4
_08008FA8:
	adds r5, #8
	adds r7, #4
	cmp r7, #7
	bls _08008F52
	movs r0, #0
	strb r0, [r6]
_08008FB4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008FBC: .4byte gUnk_03003480

	thumb_func_start sub_08008FC0
sub_08008FC0: @ 0x08008FC0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08009018 @ =gUnk_03003480
	adds r5, r1, r0
	movs r0, #0x12
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _08008FE4
	adds r0, r5, #0
	adds r0, #0x1c
	bl sub_08009FF8
_08008FE4:
	movs r0, #0x11
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _08009010
	adds r4, r5, #0
	adds r4, #0x1c
	ldrb r0, [r5, #2]
	lsls r0, r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	adds r1, r1, r0
	ldrb r2, [r5, #3]
	lsls r2, r2, #3
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #4
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_0800A678
	adds r0, r4, #0
	bl sub_0800A778
_08009010:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009018: .4byte gUnk_03003480

	thumb_func_start sub_0800901C
sub_0800901C: @ 0x0800901C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080090F4 @ =gOamBuffer
	movs r2, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
_08009030:
	lsls r0, r2, #1
	ldr r1, _080090F8 @ =gUnk_030037A0
	adds r0, r0, r1
	ldrh r7, [r0]
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	adds r2, #1
	mov ip, r2
	cmp r0, sl
	ble _080090AE
	ldr r2, _080090FC @ =gUnk_03003CC0
	mov sb, r2
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
_0800904E:
	asrs r0, r1, #0xd
	add r0, sb
	ldr r1, [r0]
	ldrh r7, [r0, #4]
	ldrb r5, [r1, #0xc]
	lsls r5, r5, #8
	ldrb r0, [r1, #1]
	lsls r0, r0, #0xa
	orrs r5, r0
	ldrh r0, [r1, #6]
	orrs r5, r0
	ldrb r3, [r1, #0xd]
	lsls r3, r3, #8
	ldrb r0, [r1, #3]
	lsls r0, r0, #9
	orrs r3, r0
	ldrh r0, [r1, #4]
	orrs r3, r0
	lsls r3, r3, #0x10
	ldrb r4, [r1, #2]
	lsls r4, r4, #0xc
	ldrh r2, [r1, #0xe]
	adds r4, r4, r2
	ldrb r0, [r1, #9]
	lsls r0, r0, #0xa
	orrs r4, r0
	ldrb r0, [r1]
	lsls r0, r0, #8
	movs r2, #0x98
	lsls r2, r2, #5
	adds r1, r2, #0
	adds r2, r0, #0
	ands r2, r1
	orrs r2, r5
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	lsls r0, r0, #0xe
	orrs r0, r3
	lsrs r0, r0, #0x10
	strh r2, [r6]
	strh r0, [r6, #2]
	strh r4, [r6, #4]
	adds r6, #8
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	cmp r0, r8
	bgt _0800904E
_080090AE:
	mov r2, ip
	cmp r2, #7
	bls _08009030
	ldr r6, _080090F4 @ =gOamBuffer
	movs r2, #0
	ldr r3, _08009100 @ =gUnk_03003CB0
	ldrb r0, [r3, #2]
	cmp r2, r0
	bhs _080090E4
	ldr r1, _08009104 @ =gUnk_030037B0
_080090C2:
	ldrh r0, [r1]
	strh r0, [r6, #6]
	adds r6, #8
	ldrh r0, [r1, #4]
	strh r0, [r6, #6]
	adds r6, #8
	ldrh r0, [r1, #2]
	strh r0, [r6, #6]
	adds r6, #8
	ldrh r0, [r1, #6]
	strh r0, [r6, #6]
	adds r6, #8
	adds r1, #8
	adds r2, #1
	ldrb r0, [r3, #2]
	cmp r2, r0
	blo _080090C2
_080090E4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080090F4: .4byte gOamBuffer
_080090F8: .4byte gUnk_030037A0
_080090FC: .4byte gUnk_03003CC0
_08009100: .4byte gUnk_03003CB0
_08009104: .4byte gUnk_030037B0

	thumb_func_start sub_08009108
sub_08009108: @ 0x08009108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _080091BC @ =gUnk_03003CB0
	mov sl, r0
	ldrb r7, [r0, #2]
	adds r0, r6, #0
	bl sub_08001EA0
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, r6, #0
	bl sub_08001E70
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	mov sb, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sb
	adds r1, r5, #0
	bl Div
	ldr r1, _080091C0 @ =gUnk_030037B0
	lsls r2, r7, #3
	adds r2, r2, r1
	mov r1, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	muls r1, r4, r1
	asrs r1, r1, #8
	strh r1, [r2]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	rsbs r1, r6, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	strh r1, [r2, #2]
	adds r1, r6, #0
	muls r1, r4, r1
	asrs r1, r1, #8
	strh r1, [r2, #4]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	mov r1, sl
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080091BC: .4byte gUnk_03003CB0
_080091C0: .4byte gUnk_030037B0

	thumb_func_start sub_080091C4
sub_080091C4: @ 0x080091C4
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #0
	cmp r1, #0
	blt _080091E0
	cmp r1, #0xef
	bgt _080091F8
	ldr r5, _080091DC @ =0x000001FF
	adds r0, r5, #0
	ands r1, r0
	strh r1, [r3, #4]
	b _080091FA
	.align 2, 0
_080091DC: .4byte 0x000001FF
_080091E0:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080091F8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r1, r5
	subs r5, #1
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r3, #4]
	b _080091FA
_080091F8:
	movs r4, #1
_080091FA:
	cmp r2, #0
	blt _0800920A
	cmp r2, #0x9f
	bgt _08009220
	movs r0, #0xff
	ands r2, r0
	strh r2, [r3, #6]
	b _08009222
_0800920A:
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r2, r0
	ble _08009220
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #6]
	b _08009222
_08009220:
	movs r4, #1
_08009222:
	cmp r4, #1
	bne _0800922E
	movs r0, #0xf0
	strh r0, [r3, #4]
	movs r0, #0xa0
	strh r0, [r3, #6]
_0800922E:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009238
sub_08009238: @ 0x08009238
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080092A4 @ =gUnk_080BAAF8
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	add r6, sp, #0xc
	ldr r1, _080092A8 @ =gUnk_080BAAEC
	adds r0, r6, #0
	movs r2, #0xc
	bl memcpy
	ldr r3, _080092AC @ =gUnk_030040C0
	lsls r5, r5, #4
	adds r0, r3, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r1, [r0]
	adds r1, #4
	lsls r4, r4, #2
	adds r1, r1, r4
	ldrb r0, [r1]
	lsrs r0, r0, #6
	ldrb r1, [r1, #1]
	lsrs r1, r1, #6
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r6, r6, r1
	ldrb r2, [r6]
	mov r4, sp
	adds r0, r4, r1
	ldrb r0, [r0]
	muls r0, r2, r0
	lsls r4, r0, #0x10
	lsrs r2, r4, #0x10
	adds r5, r5, r3
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800929A
	lsrs r2, r4, #0x11
_0800929A:
	adds r0, r2, #0
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080092A4: .4byte gUnk_080BAAF8
_080092A8: .4byte gUnk_080BAAEC
_080092AC: .4byte gUnk_030040C0
