	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_08011F54
sub_08011F54: @ 0x08011F54
	push {r4, r5, r6, r7}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0x1f
	mov r8, r0
	mov sb, r1
	movs r4, #0x1c
_08011F66:
	mov r7, sb
	ldr r1, [r7, r4]
	adds r7, r2, #0
	ands r7, r5
	adds r6, r1, #0
	ands r6, r5
	mov sl, r7
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	adds r0, r6, #0
	lsrs r6, r1, #0x10
	ands r6, r5
	mov r7, sl
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x10
	orrs r0, r6
	lsrs r6, r1, #5
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #5
	ands r7, r5
	mov sl, r7
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #5
	orrs r0, r6
	lsrs r6, r1, #0x15
	ands r6, r5
	mov r7, sl
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x15
	orrs r0, r6
	lsrs r6, r1, #0xa
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #0xa
	ands r7, r5
	mov sl, r7
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0xa
	orrs r0, r6
	lsrs r6, r1, #0x1a
	ands r6, r5
	mov r7, sl
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x1a
	orrs r6, r0
	mov r7, r8
	str r6, [r7, r4]
	subs r4, #4
	bpl _08011F66
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	bx lr

	thumb_func_start sub_08011FF8
sub_08011FF8: @ 0x08011FF8
	push {r4, r5, r6, r7}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0x1f
	mov r8, r0
	mov sb, r1
	movs r4, #0x1c
_0801200A:
	mov r7, sb
	ldr r1, [r7, r4]
	adds r7, r2, #0
	ands r7, r5
	adds r6, r1, #0
	ands r6, r5
	mov sl, r7
	subs r6, r6, r7
	muls r6, r3, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	adds r0, r6, #0
	lsrs r6, r1, #0x10
	ands r6, r5
	mov r7, sl
	subs r6, r6, r7
	muls r6, r3, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x10
	orrs r0, r6
	lsrs r6, r1, #5
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #5
	ands r7, r5
	mov sl, r7
	subs r6, r6, r7
	muls r6, r3, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #5
	orrs r0, r6
	lsrs r6, r1, #0x15
	ands r6, r5
	mov r7, sl
	subs r6, r6, r7
	muls r6, r3, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x15
	orrs r0, r6
	lsrs r6, r1, #0xa
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #0xa
	mov sl, r7
	ands r7, r5
	subs r6, r6, r7
	muls r6, r3, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0xa
	orrs r0, r6
	lsrs r6, r1, #0x1a
	ands r6, r5
	mov r7, sl
	subs r6, r6, r7
	muls r6, r3, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x1a
	mov r7, r8
	orrs r6, r0
	mov r7, r8
	str r6, [r7, r4]
	subs r4, #4
	bpl _0801200A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0

	thumb_func_start sub_080120A0
sub_080120A0: @ 0x080120A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0x1f
	mov r8, r0
	mov sb, r1
	mov sl, r2
	movs r4, #0x1c
_080120B4:
	mov r7, sb
	mov r6, sl
	ldr r1, [r7, r4]
	ldr r2, [r6, r4]
	adds r7, r2, #0
	ands r7, r5
	adds r6, r1, #0
	ands r6, r5
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	adds r0, r6, #0
	lsrs r6, r1, #0x10
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #0x10
	ands r7, r5
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x10
	orrs r0, r6
	lsrs r6, r1, #5
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #5
	ands r7, r5
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #5
	orrs r0, r6
	lsrs r6, r1, #0x15
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #0x15
	ands r7, r5
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x15
	orrs r0, r6
	lsrs r6, r1, #0xa
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #0xa
	ands r7, r5
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0xa
	orrs r0, r6
	lsrs r6, r1, #0x1a
	ands r6, r5
	adds r7, r2, #0
	lsrs r7, r7, #0x1a
	ands r7, r5
	subs r7, r7, r6
	muls r7, r3, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x1a
	orrs r6, r0
	mov r7, r8
	str r6, [r7, r4]
	subs r4, #4
	bpl _080120B4
	pop {r4, r5, r6}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08012150
sub_08012150: @ 0x08012150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0x1f
	mov r8, r0
	mov sb, r1
	movs r4, #0x1c
_08012162:
	mov r7, sb
	ldr r1, [r7, r4]
	mov sl, r1
	mov ip, r2
	adds r0, r1, #0
	bl sub_080122CC
	bl sub_08012328
	mov r1, sl
	mov r2, ip
	adds r3, r0, #0
	adds r7, r3, #0
	ands r7, r5
	adds r6, r1, #0
	ands r6, r5
	subs r7, r7, r6
	muls r7, r2, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	adds r0, r6, #0
	lsrs r6, r1, #0x10
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #0x10
	ands r7, r5
	subs r7, r7, r6
	muls r7, r2, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x10
	orrs r0, r6
	lsrs r6, r1, #5
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #5
	ands r7, r5
	subs r7, r7, r6
	muls r7, r2, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #5
	orrs r0, r6
	lsrs r6, r1, #0x15
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #0x15
	ands r7, r5
	subs r7, r7, r6
	muls r7, r2, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x15
	orrs r0, r6
	lsrs r6, r1, #0xa
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #0xa
	ands r7, r5
	subs r7, r7, r6
	muls r7, r2, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0xa
	orrs r0, r6
	lsrs r6, r1, #0x1a
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #0x1a
	ands r7, r5
	subs r7, r7, r6
	muls r7, r2, r7
	asrs r7, r7, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x1a
	orrs r6, r0
	mov r7, r8
	str r6, [r7, r4]
	subs r4, #4
	bpl _08012162
	pop {r4, r5, r6}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801220C
sub_0801220C: @ 0x0801220C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0x1f
	mov r8, r0
	mov sb, r1
	movs r4, #0x1c
_0801221E:
	mov r7, sb
	ldr r1, [r7, r4]
	mov sl, r1
	mov ip, r2
	adds r0, r1, #0
	bl sub_080122CC
	bl sub_08012328
	mov r1, sl
	mov r2, ip
	adds r3, r0, #0
	adds r7, r3, #0
	ands r7, r5
	adds r6, r1, #0
	ands r6, r5
	subs r6, r6, r7
	muls r6, r2, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	adds r0, r6, #0
	lsrs r6, r1, #0x10
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #0x10
	ands r7, r5
	subs r6, r6, r7
	muls r6, r2, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x10
	orrs r0, r6
	lsrs r6, r1, #5
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #5
	ands r7, r5
	subs r6, r6, r7
	muls r6, r2, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #5
	orrs r0, r6
	lsrs r6, r1, #0x15
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #0x15
	ands r7, r5
	subs r6, r6, r7
	muls r6, r2, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x15
	orrs r0, r6
	lsrs r6, r1, #0xa
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #0xa
	ands r7, r5
	subs r6, r6, r7
	muls r6, r2, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0xa
	orrs r0, r6
	lsrs r6, r1, #0x1a
	ands r6, r5
	adds r7, r3, #0
	lsrs r7, r7, #0x1a
	ands r7, r5
	subs r6, r6, r7
	muls r6, r2, r6
	asrs r6, r6, #0xc
	adds r6, r6, r7
	lsls r6, r6, #0x1a
	mov r7, r8
	orrs r6, r0
	mov r7, r8
	str r6, [r7, r4]
	subs r4, #4
	bpl _0801221E
	pop {r4, r5, r6}
	mov r8, r4
	mov sb, r5
	mov sl, r6
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080122CC
sub_080122CC: @ 0x080122CC
	push {r4, r5, r6, r7, lr}
	movs r4, #0x1f
	adds r3, r0, #0
	ands r3, r4
	lsrs r1, r0, #5
	ands r1, r4
	lsrs r7, r0, #0xa
	ands r7, r4
	movs r6, #0x4c
	muls r3, r6, r3
	movs r5, #0x96
	muls r1, r5, r1
	adds r3, r3, r1
	lsls r1, r7, #3
	subs r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r7
	adds r3, r3, r1
	lsrs r3, r3, #8
	lsrs r1, r0, #0x10
	ands r1, r4
	lsrs r2, r0, #0x15
	ands r2, r4
	lsrs r7, r0, #0x1a
	ands r7, r4
	muls r1, r6, r1
	adds r0, r2, #0
	muls r0, r5, r0
	adds r1, r1, r0
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r1, r1, r0
	lsrs r1, r1, #8
	lsls r0, r3, #5
	orrs r0, r3
	lsls r3, r3, #0xa
	orrs r0, r3
	lsls r2, r1, #0x10
	orrs r0, r2
	lsls r2, r1, #0x15
	orrs r0, r2
	lsls r1, r1, #0x1a
	orrs r0, r1
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08012328
sub_08012328: @ 0x08012328
	push {r4, r5, r6, r7, lr}
	movs r5, #0x1f
	adds r7, r0, #0
	ands r7, r5
	lsrs r3, r0, #5
	ands r3, r5
	lsrs r2, r0, #0xa
	ands r2, r5
	lsls r4, r7, #7
	lsls r3, r3, #7
	lsls r2, r2, #7
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #1
	lsrs r7, r1, #0xc
	movs r6, #0x1a
	adds r1, r3, #0
	muls r1, r6, r1
	lsrs r3, r1, #0xc
	lsls r1, r2, #2
	adds r1, r1, r2
	lsrs r2, r1, #0xa
	lsls r1, r3, #5
	orrs r7, r1
	lsls r4, r2, #0xa
	orrs r4, r7
	lsrs r2, r0, #0x10
	ands r2, r5
	lsrs r3, r0, #0x15
	ands r3, r5
	lsrs r0, r0, #0x1a
	ands r0, r5
	lsls r2, r2, #7
	lsls r3, r3, #7
	lsls r0, r0, #7
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	lsrs r7, r1, #0xc
	adds r1, r3, #0
	muls r1, r6, r1
	lsrs r3, r1, #0xc
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	lsrs r2, r1, #0xc
	lsls r0, r7, #0x10
	lsls r1, r3, #0x15
	orrs r0, r1
	lsls r1, r2, #0x1a
	orrs r0, r1
	orrs r4, r0
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08012394
sub_08012394: @ 0x08012394
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r7, #0x1f
	adds r5, r4, #0
	ands r5, r7
	muls r5, r1, r5
	lsrs r5, r5, #0xc
	cmp r5, #0x1f
	bls _080123AC
	movs r5, #0x1f
	b _080123AE
_080123AC:
	ands r5, r7
_080123AE:
	adds r0, r5, #0
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r5, r4, #0
	ands r5, r7
	muls r5, r2, r5
	lsrs r5, r5, #0xc
	cmp r5, r7
	bls _080123C4
	adds r5, r7, #0
	b _080123C6
_080123C4:
	ands r5, r7
_080123C6:
	orrs r0, r5
	movs r7, #0xf8
	lsls r7, r7, #7
	adds r5, r4, #0
	ands r5, r7
	muls r5, r3, r5
	lsrs r5, r5, #0xc
	cmp r5, r7
	bls _080123DC
	adds r5, r7, #0
	b _080123DE
_080123DC:
	ands r5, r7
_080123DE:
	orrs r0, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
