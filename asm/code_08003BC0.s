	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08003BC0
sub_08003BC0: @ 0x08003BC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	mov r4, ip
	push {r4, r5, r6, r7}
	adds r4, r3, #0
	adds r5, r3, #0
	adds r6, r3, #0
	adds r7, r1, #0
	stm r7!, {r3, r4, r5, r6}
	adds r7, #0x20
	stm r7!, {r3, r4, r5, r6}
	adds r4, r3, #0
	adds r5, r3, #0
	adds r6, r3, #0
	stm r7!, {r3, r4, r5, r6}
	stm r7!, {r3, r4, r5, r6}
	stm r7!, {r3, r4, r5, r6}
	stm r7!, {r3, r4, r5, r6}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	cmp r3, #0
	beq _08003BF4
	b _08003D44
_08003BF4:
	ldrh r4, [r0]
	movs r5, #0
	adds r6, r5, #0
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0x1c
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #0x17
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r0, #4
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r2, sb
	mov r3, sl
	lsls r3, r3, #2
	str r1, [r2, r3]
	adds r6, r0, #0
	adds r2, r4, #0
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	adds r0, r1, #0
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #5
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xa
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xf
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r2, r6, #0x1c
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	mov r3, sl
	adds r3, #0x10
	lsls r3, r3, #2
	strh r1, [r2, r3]
	adds r5, r0, #0
	movs r3, #1
_08003C8E:
	cmp r3, #0xc
	bne _08003C94
	b _08003E9C
_08003C94:
	mov r1, r8
	adds r2, r3, #0
	lsls r2, r2, #1
	ldrh r4, [r1, r2]
	adds r7, r6, #0
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0x1c
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #0x17
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r6, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r6, r0, #0
	mov r0, sl
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r2, sb
	str r1, [r2, r0]
	adds r2, r4, #0
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	adds r0, r1, #0
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #5
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xa
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xf
	orrs r0, r1
	lsls r1, r5, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsrs r2, r6, #0x1c
	orrs r1, r2
	lsrs r2, r7, #0x1c
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, r0, #0
	mov r2, sb
	mov r0, sl
	adds r0, r0, r3
	adds r0, #0x10
	lsls r0, r0, #2
	strh r1, [r2, r0]
	adds r3, #1
	b _08003C8E
_08003D44:
	ldrh r4, [r0]
	ldr r2, _08003EB0 @ =0x44444444
	mov lr, r2
	movs r5, #0
	adds r6, r5, #0
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0x1c
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #0x17
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r0, #4
	lsls r1, r1, #1
	mov r2, lr
	subs r2, r2, r1
	subs r1, r2, r0
	mov r2, sb
	mov r3, sl
	lsls r3, r3, #2
	str r1, [r2, r3]
	adds r6, r0, #0
	adds r2, r4, #0
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	adds r0, r1, #0
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #5
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xa
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xf
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r2, r6, #0x1c
	orrs r1, r2
	lsls r1, r1, #1
	mov r2, lr
	subs r2, r2, r1
	subs r1, r2, r0
	mov r2, sb
	mov r3, sl
	adds r3, #0x10
	lsls r3, r3, #2
	strh r1, [r2, r3]
	adds r5, r0, #0
	movs r3, #1
_08003DE6:
	mov r1, r8
	adds r2, r3, #0
	lsls r2, r2, #1
	ldrh r4, [r1, r2]
	adds r7, r6, #0
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0x1c
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #0x17
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r6, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsls r1, r1, #1
	mov r2, lr
	subs r2, r2, r1
	subs r1, r2, r0
	adds r6, r0, #0
	mov r0, sl
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r2, sb
	str r1, [r2, r0]
	adds r2, r4, #0
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	adds r0, r1, #0
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #5
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xa
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xf
	orrs r0, r1
	lsls r1, r5, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsrs r2, r6, #0x1c
	orrs r1, r2
	lsrs r2, r7, #0x1c
	orrs r1, r2
	lsls r1, r1, #1
	mov r2, lr
	subs r2, r2, r1
	subs r1, r2, r0
	adds r5, r0, #0
	mov r2, sb
	mov r0, sl
	adds r0, r0, r3
	adds r0, #0x10
	lsls r0, r0, #2
	strh r1, [r2, r0]
	adds r3, #1
	cmp r3, #0xc
	bne _08003DE6
_08003E9C:
	pop {r2, r3, r4, r5}
	mov ip, r2
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
_08003EA8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
_08003EB0: .4byte 0x44444444

	thumb_func_start sub_08003EB4
sub_08003EB4: @ 0x08003EB4
	add r4, r8
	add r4, r8

	thumb_func_start sub_08003EB8
sub_08003EB8: @ 0x08003EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	mov r4, ip
	push {r4, r5, r6, r7}
	subs r1, #0x20
	adds r4, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r1, #2]
	strh r4, [r1, #6]
	strh r4, [r1, #0xa]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x32]
	strh r4, [r1, #0x36]
	strh r4, [r1, #0x3a]
	strh r4, [r1, #0x3e]
	adds r4, r3, #0
	adds r5, r3, #0
	adds r6, r3, #0
	adds r7, r1, #0
	adds r7, #0x40
	stm r7!, {r3, r4, r5, r6}
	adds r7, #0x20
	stm r7!, {r3, r4, r5, r6}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	cmp r3, #0
	beq _08003EF8
	b _08004050
_08003EF8:
	ldrh r4, [r0]
	movs r5, #0
	adds r6, r5, #0
	adds r2, r4, #0
	movs r1, #0x10
	ands r1, r2
	lsls r0, r1, #8
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r0, #4
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	mov r3, sl
	lsls r3, r3, #2
	adds r3, #2
	strh r1, [r2, r3]
	adds r5, r0, #0
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0xc
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsrs r1, r1, #3
	orrs r0, r1
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xb
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #1
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r2, r5, #0xc
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r2, sb
	mov r3, sl
	adds r3, #0x10
	lsls r3, r3, #2
	str r1, [r2, r3]
	adds r7, r0, #0
	movs r3, #1
_08003F98:
	cmp r3, #0xc
	bne _08003F9E
	b _080041AC
_08003F9E:
	mov r1, r8
	adds r2, r3, #0
	lsls r2, r2, #1
	ldrh r4, [r1, r2]
	adds r6, r5, #0
	adds r2, r4, #0
	movs r1, #0x10
	ands r1, r2
	lsls r0, r1, #8
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r5, r0, #0
	mov r0, sl
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, #2
	mov r2, sb
	strh r1, [r2, r0]
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0xc
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsrs r1, r1, #3
	orrs r0, r1
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xb
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #1
	orrs r0, r1
	lsls r1, r7, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsrs r2, r6, #0xc
	orrs r1, r2
	lsrs r2, r5, #0xc
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r7, r0, #0
	mov r2, sb
	mov r0, sl
	adds r0, r0, r3
	adds r0, #0x10
	lsls r0, r0, #2
	str r1, [r2, r0]
	adds r3, #1
	b _08003F98
_08004050:
	ldrh r4, [r0]
	ldr r2, _080041C0 @ =0x44444444
	mov lr, r2
	movs r5, #0
	adds r6, r5, #0
	adds r2, r4, #0
	movs r1, #0x10
	ands r1, r2
	lsls r0, r1, #8
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r0, #4
	lsls r1, r1, #1
	mov r2, lr
	subs r2, r2, r1
	subs r1, r2, r0
	mov r2, sb
	mov r3, sl
	lsls r3, r3, #2
	adds r3, #2
	strh r1, [r2, r3]
	adds r5, r0, #0
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0xc
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsrs r1, r1, #3
	orrs r0, r1
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xb
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #1
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r2, r5, #0xc
	orrs r1, r2
	lsls r1, r1, #1
	mov r2, lr
	subs r2, r2, r1
	subs r1, r2, r0
	mov r2, sb
	mov r3, sl
	adds r3, #0x10
	lsls r3, r3, #2
	str r1, [r2, r3]
	adds r7, r0, #0
	movs r3, #1
_080040F4:
	mov r1, r8
	adds r2, r3, #0
	lsls r2, r2, #1
	ldrh r4, [r1, r2]
	adds r6, r5, #0
	adds r2, r4, #0
	movs r1, #0x10
	ands r1, r2
	lsls r0, r1, #8
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r5, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsls r1, r1, #1
	mov r2, lr
	subs r2, r2, r1
	subs r1, r2, r0
	adds r5, r0, #0
	mov r0, sl
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, #2
	mov r2, sb
	strh r1, [r2, r0]
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0xc
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #7
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsrs r1, r1, #3
	orrs r0, r1
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xb
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsls r1, r1, #1
	orrs r0, r1
	lsls r1, r7, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsrs r2, r6, #0xc
	orrs r1, r2
	lsrs r2, r5, #0xc
	orrs r1, r2
	lsls r1, r1, #1
	mov r2, lr
	subs r2, r2, r1
	subs r1, r2, r0
	adds r7, r0, #0
	mov r2, sb
	mov r0, sl
	adds r0, r0, r3
	adds r0, #0x10
	lsls r0, r0, #2
	str r1, [r2, r0]
	adds r3, #1
	cmp r3, #0xc
	bne _080040F4
_080041AC:
	pop {r2, r3, r4, r5}
	mov ip, r2
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
_080041B8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
_080041C0: .4byte 0x44444444

	thumb_func_start sub_080041C4
sub_080041C4: @ 0x080041C4
	add r4, r8
	add r4, r8

	thumb_func_start sub_080041C8
sub_080041C8: @ 0x080041C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	mov r4, ip
	mov r3, fp
	push {r3, r4, r5, r6, r7}
	adds r3, r2, #0
	adds r4, r2, #0
	adds r5, r2, #0
	adds r6, r2, #0
	adds r7, r1, #0
	stm r7!, {r3, r4, r5, r6}
	stm r7!, {r3, r4, r5, r6}
	stm r7!, {r3, r4, r5, r6}
	stm r7!, {r3, r4, r5, r6}
	stm r7!, {r3, r4, r5, r6}
	stm r7!, {r3, r4, r5, r6}
	movs r7, #0xc
	mov ip, r7
	mov lr, r7
	mov r8, r0
	mov sb, r1
	mov sl, r2
	ldrh r4, [r0]
	mov fp, r3
	movs r0, #0xff
	ands r0, r4
	lsls r0, r0, #8
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r4
	lsrs r1, r1, #8
	adds r0, r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	movs r2, #0
_08004212:
	adds r3, r0, #0
	ands r3, r1
	beq _0800421C
	mov ip, r2
	b _08004224
_0800421C:
	lsrs r1, r1, #1
	adds r2, #1
	cmp r2, #0xc
	bne _08004212
_08004224:
	movs r1, #0x10
	movs r2, #0
_08004228:
	adds r3, r0, #0
	ands r3, r1
	beq _08004232
	mov lr, r2
	b _0800423A
_08004232:
	lsls r1, r1, #1
	adds r2, #1
	cmp r2, #0xc
	bne _08004228
_0800423A:
	mov r3, fp
	movs r5, #0
	adds r6, r5, #0
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0x1c
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #0x17
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r0, #4
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r2, sb
	str r1, [r2]
	adds r6, r0, #0
	adds r2, r4, #0
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	adds r0, r1, #0
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #5
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xa
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xf
	orrs r0, r1
	lsls r1, r0, #4
	lsrs r2, r6, #0x1c
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sb
	strh r1, [r2, #4]
	adds r5, r0, #0
	movs r3, #1
_080042CA:
	cmp r3, #0xc
	bne _080042D0
	b _080043CC
_080042D0:
	mov r1, r8
	adds r2, r3, #0
	lsls r2, r2, #1
	ldrh r4, [r1, r2]
	mov fp, r3
	movs r0, #0xff
	ands r0, r4
	lsls r0, r0, #8
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r4
	lsrs r1, r1, #8
	adds r0, r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	movs r2, #0
_080042F0:
	adds r3, r0, #0
	ands r3, r1
	beq _08004300
	cmp r2, ip
	bmi _080042FC
	b _08004308
_080042FC:
	mov ip, r2
	b _08004308
_08004300:
	lsrs r1, r1, #1
	adds r2, #1
	cmp r2, #0xc
	bne _080042F0
_08004308:
	movs r1, #0x10
	movs r2, #0
_0800430C:
	adds r3, r0, #0
	ands r3, r1
	beq _0800431C
	cmp r2, lr
	bmi _08004318
	b _08004324
_08004318:
	mov lr, r2
	b _08004324
_0800431C:
	lsls r1, r1, #1
	adds r2, #1
	cmp r2, #0xc
	bne _0800430C
_08004324:
	mov r3, fp
	adds r7, r6, #0
	adds r2, r4, #0
	movs r1, #1
	ands r1, r2
	lsls r0, r1, #0x1c
	movs r1, #2
	ands r1, r2
	lsls r1, r1, #0x17
	orrs r0, r1
	movs r1, #4
	ands r1, r2
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #8
	ands r1, r2
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x20
	ands r1, r2
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x40
	ands r1, r2
	lsrs r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	ands r1, r2
	lsrs r1, r1, #7
	orrs r0, r1
	lsls r1, r6, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r6, r0, #0
	adds r0, r3, #0
	lsls r0, r0, #3
	mov r2, sb
	str r1, [r2, r0]
	adds r2, r4, #0
	movs r1, #1
	lsls r1, r1, #0xc
	ands r1, r2
	adds r0, r1, #0
	movs r1, #2
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #5
	orrs r0, r1
	movs r1, #4
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xa
	orrs r0, r1
	movs r1, #8
	lsls r1, r1, #0xc
	ands r1, r2
	lsrs r1, r1, #0xf
	orrs r0, r1
	lsls r1, r5, #4
	lsls r2, r0, #4
	orrs r1, r2
	lsrs r2, r6, #0x1c
	orrs r1, r2
	lsrs r2, r7, #0x1c
	orrs r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, r0, #0
	mov r2, sb
	adds r0, r3, #0
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	strh r1, [r2, r0]
	adds r3, #1
	b _080042CA
_080043CC:
	mov r0, ip
	lsls r0, r0, #0x10
	mov r1, lr
	orrs r0, r1
	pop {r2, r3, r4, r5, r6}
	mov fp, r2
	mov ip, r3
	mov r8, r4
	mov sb, r5
	mov sl, r6
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080043E4
sub_080043E4: @ 0x080043E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	mov r4, ip
	push {r4, r5, r6, r7}
	movs r7, #0
	mov lr, r7
	mov r8, r0
	mov sb, r1
	mov ip, r2
_080043FA:
	adds r7, r1, #0
	ldr r3, [r0]
	movs r2, #0x78
	ldr r4, [r0, r2]
	adds r2, #0x78
	ldr r5, [r0, r2]
	adds r2, #0x78
	ldr r6, [r0, r2]
	stm r7!, {r3, r4, r5, r6}
	adds r2, #0x78
	ldr r3, [r0, r2]
	adds r2, #0x78
	ldr r4, [r0, r2]
	adds r2, #0x78
	ldr r5, [r0, r2]
	adds r2, #0x78
	ldr r6, [r0, r2]
	stm r7!, {r3, r4, r5, r6}
	adds r2, #0x78
	ldr r3, [r0, r2]
	adds r2, #0x78
	ldr r4, [r0, r2]
	adds r2, #0x78
	ldr r5, [r0, r2]
	adds r2, #0x78
	ldr r6, [r0, r2]
	stm r7!, {r3, r4, r5, r6}
	adds r2, #0x78
	ldr r3, [r0, r2]
	adds r2, #0x78
	ldr r4, [r0, r2]
	adds r2, #0x78
	ldr r5, [r0, r2]
	adds r2, #0x78
	ldr r6, [r0, r2]
	stm r7!, {r3, r4, r5, r6}
	mov r3, lr
	adds r3, #1
	mov lr, r3
	cmp r3, ip
	beq _080044A4
	movs r2, #4
	ldr r3, [r0, r2]
	adds r2, #0x78
	ldr r4, [r0, r2]
	adds r2, #0x78
	ldr r5, [r0, r2]
	adds r2, #0x78
	ldr r6, [r0, r2]
	stm r7!, {r3, r4, r5, r6}
	adds r2, #0x78
	ldr r3, [r0, r2]
	adds r2, #0x78
	ldr r4, [r0, r2]
	adds r2, #0x78
	ldr r5, [r0, r2]
	adds r2, #0x78
	ldr r6, [r0, r2]
	stm r7!, {r3, r4, r5, r6}
	adds r2, #0x78
	ldr r3, [r0, r2]
	adds r2, #0x78
	ldr r4, [r0, r2]
	adds r2, #0x78
	ldr r5, [r0, r2]
	adds r2, #0x78
	ldr r6, [r0, r2]
	stm r7!, {r3, r4, r5, r6}
	adds r2, #0x78
	ldr r3, [r0, r2]
	adds r2, #0x78
	ldr r4, [r0, r2]
	adds r2, #0x78
	ldr r5, [r0, r2]
	adds r2, #0x78
	ldr r6, [r0, r2]
	stm r7!, {r3, r4, r5, r6}
	mov r3, lr
	adds r3, #1
	mov lr, r3
	cmp r3, ip
	beq _080044A4
	adds r1, #0x80
	adds r0, #8
	b _080043FA
_080044A4:
	pop {r4, r5, r6, r7}
	mov ip, r4
	mov r8, r5
	mov sb, r6
	mov sl, r7
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080044B0
sub_080044B0: @ 0x080044B0
	push {r4, lr}
	ldr r0, _080044DC @ =gUnk_03002990
	movs r4, #0
	movs r1, #0x40
	strh r1, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	bl sub_080044E4
	ldr r0, _080044E0 @ =gUnk_030029AC
	str r4, [r0]
	movs r0, #1
	bl sub_0800480C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080044DC: .4byte gUnk_03002990
_080044E0: .4byte gUnk_030029AC

	thumb_func_start sub_080044E4
sub_080044E4: @ 0x080044E4
	ldr r1, _08004540 @ =gUnk_03002990
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #8
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #6]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #8]
	strh r0, [r2]
	adds r2, #0x3e
	ldrh r0, [r1, #0xa]
	strh r0, [r2]
	adds r2, #4
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xe]
	strh r0, [r2]
	subs r2, #0x12
	ldrh r0, [r1, #0x10]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x12]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x14]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x16]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x18]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x1a]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08004540: .4byte gUnk_03002990

