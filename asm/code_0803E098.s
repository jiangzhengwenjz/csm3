	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_0803E098
sub_0803E098: @ 0x0803E098
	push {r4, r5, r6, r7}
	ldr r0, _0803E150 @ =gUnk_03006AC0
	ldr r1, [r0]
	ldr r0, [r1]
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldr r7, _0803E154 @ =gUnk_02031800
	adds r7, r7, r1
	ldr r4, _0803E158 @ =0x000001FF
_0803E0AE:
	ldr r3, [r7]
	cmp r3, #0
	bne _0803E0BA
	adds r7, #0x10
	subs r4, #1
	bpl _0803E0AE
_0803E0BA:
	movs r2, #0xf
	adds r6, r3, #0
	ands r6, r2
	subs r6, #3
	bpl _0803E0C6
	movs r6, #0
_0803E0C6:
	lsls r2, r2, #4
	adds r5, r3, #0
	ands r5, r2
	lsrs r5, r5, #4
	subs r5, #3
	bpl _0803E0D4
	movs r5, #0
_0803E0D4:
	lsls r5, r5, #4
	orrs r6, r5
	lsls r2, r2, #4
	adds r5, r3, #0
	ands r5, r2
	lsrs r5, r5, #8
	subs r5, #3
	bpl _0803E0E6
	movs r5, #0
_0803E0E6:
	lsls r5, r5, #8
	orrs r6, r5
	lsls r2, r2, #4
	adds r5, r3, #0
	ands r5, r2
	lsrs r5, r5, #0xc
	subs r5, #3
	bpl _0803E0F8
	movs r5, #0
_0803E0F8:
	lsls r5, r5, #0xc
	orrs r6, r5
	lsls r2, r2, #4
	adds r5, r3, #0
	ands r5, r2
	lsrs r5, r5, #0x10
	subs r5, #3
	bpl _0803E10A
	movs r5, #0
_0803E10A:
	lsls r5, r5, #0x10
	orrs r6, r5
	lsls r2, r2, #4
	adds r5, r3, #0
	ands r5, r2
	lsrs r5, r5, #0x14
	subs r5, #3
	bpl _0803E11C
	movs r5, #0
_0803E11C:
	lsls r5, r5, #0x14
	orrs r6, r5
	lsls r2, r2, #4
	adds r5, r3, #0
	ands r5, r2
	lsrs r5, r5, #0x18
	subs r5, #3
	bpl _0803E12E
	movs r5, #0
_0803E12E:
	lsls r5, r5, #0x18
	orrs r6, r5
	lsls r2, r2, #4
	adds r5, r3, #0
	ands r5, r2
	lsrs r5, r5, #0x1c
	subs r5, #3
	bpl _0803E140
	movs r5, #0
_0803E140:
	lsls r5, r5, #0x1c
	orrs r6, r5
	str r6, [r7]
	adds r7, #0x10
	subs r4, #1
	bpl _0803E0AE
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0803E150: .4byte gUnk_03006AC0
_0803E154: .4byte gUnk_02031800
_0803E158: .4byte 0x000001FF

	thumb_func_start sub_0803E15C
sub_0803E15C: @ 0x0803E15C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803E260 @ =gUnk_03006AC0
	ldr r0, [r0]
	ldr r1, _0803E264 @ =0x0000047C
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #0xb
	ldr r1, _0803E268 @ =gUnk_02031800
	adds r6, r0, r1
	movs r0, #0x7f
	mov ip, r0
	ldr r5, _0803E26C @ =0x88888888
	ldr r7, _0803E270 @ =0xEEEEEEEF
_0803E17A:
	ldm r6!, {r1, r2, r3, r4}
	subs r6, #0x10
	.2byte 0x1C09 @ adds r1, r1, #0
	beq _0803E1B2
	adds r0, r1, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r1
	ands r0, r5
	lsrs r0, r0, #3
	subs r1, r1, r0
	beq _0803E1B0
	adds r0, r1, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r1
	ands r0, r5
	lsrs r0, r0, #3
	subs r1, r1, r0
	beq _0803E1B0
	adds r0, r1, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r1
	ands r0, r5
	lsrs r0, r0, #3
	subs r1, r1, r0
_0803E1B0:
	str r1, [r6]
_0803E1B2:
	.2byte 0x1C12 @ adds r2, r2, #0
	beq _0803E1E6
	adds r0, r2, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r2
	ands r0, r5
	lsrs r0, r0, #3
	subs r2, r2, r0
	beq _0803E1E4
	adds r0, r2, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r2
	ands r0, r5
	lsrs r0, r0, #3
	subs r2, r2, r0
	beq _0803E1E4
	adds r0, r2, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r2
	ands r0, r5
	lsrs r0, r0, #3
	subs r2, r2, r0
_0803E1E4:
	str r2, [r6, #4]
_0803E1E6:
	.2byte 0x1C1B @ adds r3, r3, #0
	beq _0803E21A
	adds r0, r3, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r3
	ands r0, r5
	lsrs r0, r0, #3
	subs r3, r3, r0
	beq _0803E218
	adds r0, r3, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r3
	ands r0, r5
	lsrs r0, r0, #3
	subs r3, r3, r0
	beq _0803E218
	adds r0, r3, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r3
	ands r0, r5
	lsrs r0, r0, #3
	subs r3, r3, r0
_0803E218:
	str r3, [r6, #8]
_0803E21A:
	.2byte 0x1C24 @ adds r4, r4, #0
	beq _0803E24E
	adds r0, r4, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r4
	ands r0, r5
	lsrs r0, r0, #3
	subs r4, r4, r0
	beq _0803E24C
	adds r0, r4, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r4
	ands r0, r5
	lsrs r0, r0, #3
	subs r4, r4, r0
	beq _0803E24C
	adds r0, r4, #0
	orrs r0, r5
	adds r0, r0, r7
	orrs r0, r4
	ands r0, r5
	lsrs r0, r0, #3
	subs r4, r4, r0
_0803E24C:
	str r4, [r6, #0xc]
_0803E24E:
	adds r6, #0x10
	mov r0, ip
	subs r0, #1
	mov ip, r0
	bge _0803E17A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E260: .4byte gUnk_03006AC0
_0803E264: .4byte 0x0000047C
_0803E268: .4byte gUnk_02031800
_0803E26C: .4byte 0x88888888
_0803E270: .4byte 0xEEEEEEEF

	thumb_func_start sub_0803E274
sub_0803E274: @ 0x0803E274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r0, #0x7a
	bhi _0803E36E
	cmp r1, #0x7a
	bhi _0803E36E
	movs r2, #5
	movs r0, #7
	mov sl, r0
	movs r1, #0xf0
	mov sb, r1
	movs r3, #0xf
	mov r8, r3
_0803E29C:
	ldr r1, [sp]
	adds r0, r2, r1
	asrs r1, r0, #3
	lsls r1, r1, #9
	mov r3, sl
	ands r0, r3
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r6, #5
	lsls r0, r2, #1
	subs r3, r2, #1
	str r3, [sp, #8]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #4]
	adds r0, r0, r2
	adds r5, r0, #5
	ldr r3, _0803E2F8 @ =gUnk_02031800
	adds r7, r3, r1
_0803E2C2:
	ldrb r4, [r5]
	cmp r4, #0
	beq _0803E312
	mov r0, ip
	adds r2, r6, r0
	asrs r1, r2, #3
	lsls r1, r1, #5
	adds r1, r7, r1
	adds r0, r2, #0
	mov r3, sl
	ands r0, r3
	asrs r0, r0, #1
	adds r3, r1, r0
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0803E2FC
	lsls r1, r4, #4
	ldrb r2, [r3]
	mov r0, sb
	ands r0, r2
	adds r1, r1, r0
	cmp r1, #0xf0
	bls _0803E2F4
	movs r1, #0xf0
_0803E2F4:
	mov r0, r8
	b _0803E30C
	.align 2, 0
_0803E2F8: .4byte gUnk_02031800
_0803E2FC:
	ldrb r2, [r3]
	mov r0, r8
	ands r0, r2
	adds r1, r4, r0
	cmp r1, #0xf
	bls _0803E30A
	movs r1, #0xf
_0803E30A:
	mov r0, sb
_0803E30C:
	ands r0, r2
	orrs r1, r0
	strb r1, [r3]
_0803E312:
	subs r0, r5, #1
	subs r2, r6, #1
	ldrb r4, [r0]
	cmp r4, #0
	beq _0803E360
	add r2, ip
	asrs r1, r2, #3
	lsls r1, r1, #5
	adds r1, r7, r1
	adds r0, r2, #0
	mov r3, sl
	ands r0, r3
	asrs r0, r0, #1
	adds r3, r1, r0
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0803E34A
	lsls r1, r4, #4
	ldrb r2, [r3]
	mov r0, sb
	ands r0, r2
	adds r1, r1, r0
	cmp r1, #0xf0
	bls _0803E346
	movs r1, #0xf0
_0803E346:
	mov r0, r8
	b _0803E35A
_0803E34A:
	ldrb r2, [r3]
	mov r0, r8
	ands r0, r2
	adds r1, r4, r0
	cmp r1, #0xf
	bls _0803E358
	movs r1, #0xf
_0803E358:
	mov r0, sb
_0803E35A:
	ands r0, r2
	orrs r1, r0
	strb r1, [r3]
_0803E360:
	subs r5, #2
	subs r6, #2
	cmp r6, #0
	bge _0803E2C2
	ldr r2, [sp, #8]
	cmp r2, #0
	bge _0803E29C
_0803E36E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803E380
sub_0803E380: @ 0x0803E380
	push {r4, r5, r6, r7, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	cmp r0, #0x7a
	bhi _0803E47E
	cmp r1, #0x7a
	bhi _0803E47E
	ldr r7, _0803E488 @ =gUnk_02031800
	mov fp, r7
	movs r3, #0x11
	lsls r3, r3, #4
	mov sb, r3
	lsrs r0, r0, #1
	movs r3, #5
	mov lr, r3
_0803E3A2:
	adds r3, r3, r1
	lsrs r4, r3, #3
	lsls r4, r4, #9
	lsls r5, r3, #0x1d
	lsrs r5, r5, #0x1b
	adds r6, r4, r5
	mov sl, r6
	adds r3, r0, #2
	lsrs r4, r3, #2
	lsls r4, r4, #5
	lsls r5, r3, #0x1e
	lsrs r5, r5, #0x1e
	mov r3, fp
	adds r3, r3, r6
	adds r3, r3, r4
	adds r7, r3, r5
	mov r3, lr
	lsls r3, r3, #2
	mov r8, r3
	adds r3, #2
	ldrb r3, [r2, r3]
	mov ip, r3
	cmp r3, #0
	beq _0803E3F6
	ldrb r4, [r7]
	ands r3, r4
	lsls r3, r3, #1
	mov r5, ip
	eors r5, r4
	movs r6, #0xee
	ands r5, r6
	adds r3, r3, r5
	mov r5, sb
	ands r3, r5
	lsrs r3, r3, #4
	movs r5, #0x77
	adds r3, r3, r5
	eors r3, r5
	add r4, ip
	subs r4, r4, r3
	orrs r4, r3
	strb r4, [r7]
_0803E3F6:
	adds r3, r0, #1
	lsrs r4, r3, #2
	lsls r4, r4, #5
	lsls r5, r3, #0x1e
	lsrs r5, r5, #0x1e
	mov r3, fp
	add r3, sl
	adds r3, r3, r4
	adds r7, r3, r5
	mov r3, r8
	adds r3, #1
	ldrb r3, [r2, r3]
	mov ip, r3
	cmp r3, #0
	beq _0803E438
	ldrb r4, [r7]
	ands r3, r4
	lsls r3, r3, #1
	mov r5, ip
	eors r5, r4
	movs r6, #0xee
	ands r5, r6
	adds r3, r3, r5
	mov r5, sb
	ands r3, r5
	lsrs r3, r3, #4
	movs r5, #0x77
	adds r3, r3, r5
	eors r3, r5
	add r4, ip
	subs r4, r4, r3
	orrs r4, r3
	strb r4, [r7]
_0803E438:
	lsrs r4, r0, #2
	lsls r4, r4, #5
	lsls r5, r0, #0x1e
	lsrs r5, r5, #0x1e
	mov r3, fp
	add r3, sl
	adds r3, r3, r4
	adds r7, r3, r5
	mov r3, r8
	ldrb r3, [r2, r3]
	mov ip, r3
	cmp r3, #0
	beq _0803E476
	ldrb r4, [r7]
	ands r3, r4
	lsls r3, r3, #1
	mov r5, ip
	eors r5, r4
	movs r6, #0xee
	ands r5, r6
	adds r3, r3, r5
	mov r5, sb
	ands r3, r5
	lsrs r3, r3, #4
	movs r5, #0x77
	adds r3, r3, r5
	eors r3, r5
	add r4, ip
	subs r4, r4, r3
	orrs r4, r3
	strb r4, [r7]
_0803E476:
	mov r3, lr
	subs r3, #1
	mov lr, r3
	bpl _0803E3A2
_0803E47E:
	pop {r4, r5, r6}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0803E488: .4byte gUnk_02031800
