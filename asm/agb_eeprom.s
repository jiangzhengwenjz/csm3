	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
/*
	thumb_func_start IdentifyEeprom
IdentifyEeprom: @ 0x080B8BF0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _080B8C0C
	ldr r1, _080B8C04 @ =gEEPROMConfig
	ldr r0, _080B8C08 @ =gEEPROMConfig512
	str r0, [r1]
	b _080B8C28
	.align 2, 0
_080B8C04: .4byte gEEPROMConfig
_080B8C08: .4byte gEEPROMConfig512
_080B8C0C:
	cmp r0, #0x40
	bne _080B8C20
	ldr r1, _080B8C18 @ =gEEPROMConfig
	ldr r0, _080B8C1C @ =gEEPROMConfig8k
	str r0, [r1]
	b _080B8C28
	.align 2, 0
_080B8C18: .4byte gEEPROMConfig
_080B8C1C: .4byte gEEPROMConfig8k
_080B8C20:
	ldr r1, _080B8C30 @ =gEEPROMConfig
	ldr r0, _080B8C34 @ =gEEPROMConfig512
	str r0, [r1]
	movs r2, #1
_080B8C28:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8C30: .4byte gEEPROMConfig
_080B8C34: .4byte gEEPROMConfig512
*/
	thumb_func_start EepromTimerIntr
EepromTimerIntr: @ 0x080B8C38
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _080B8C98 @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _080B8C9C @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _080B8CA0 @ =0x0000F8FF
	ands r4, r3
	ldr r3, _080B8CA4 @ =gEEPROMConfig
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _080B8CA8 @ =0x040000D4
	str r0, [r3]
	ldr r0, _080B8CAC @ =0x040000D8
	str r1, [r0]
	ldr r1, _080B8CB0 @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080B8C8C
	ldr r2, _080B8CB4 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_080B8C84:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _080B8C84
_080B8C8C:
	ldr r0, _080B8C98 @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B8C98: .4byte 0x04000208
_080B8C9C: .4byte 0x04000204
_080B8CA0: .4byte 0x0000F8FF
_080B8CA4: .4byte gEEPROMConfig
_080B8CA8: .4byte 0x040000D4
_080B8CAC: .4byte 0x040000D8
_080B8CB0: .4byte 0x040000DC
_080B8CB4: .4byte 0x040000DE

	thumb_func_start sub_080B8CB8
sub_080B8CB8: @ 0x080B8CB8
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _080B8CD0 @ =gEEPROMConfig
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _080B8CD8
	ldr r0, _080B8CD4 @ =0x000080FF
	b _080B8D66
	.align 2, 0
_080B8CD0: .4byte gEEPROMConfig
_080B8CD4: .4byte 0x000080FF
_080B8CD8:
	ldr r1, _080B8D70 @ =gEEPROMConfig
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r0, #0
	strh r0, [r2, #2]
	strh r0, [r2]
	movs r4, #0
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	cmp r4, r0
	bhs _080B8D10
	movs r6, #1
_080B8CF8:
	adds r0, r3, #0
	ands r0, r6
	strh r0, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _080B8CF8
_080B8D10:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	ldr r4, _080B8D74 @ =0x0DFFFF00
	ldr r0, _080B8D70 @ =gEEPROMConfig
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl EepromTimerIntr
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl EepromTimerIntr
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_080B8D3C:
	movs r1, #0
	movs r3, #0
_080B8D40:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _080B8D40
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080B8D3C
	movs r0, #0
_080B8D66:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B8D70: .4byte gEEPROMConfig
_080B8D74: .4byte 0x0DFFFF00

	thumb_func_start sub_080B8D78
sub_080B8D78: @ 0x080B8D78
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #1
	bl sub_080B8D8C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_080B8D8C
sub_080B8D8C: @ 0x080B8D8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xb0
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _080B8DB0 @ =gEEPROMConfig
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r5, r0
	blo _080B8DB8
	ldr r0, _080B8DB4 @ =0x000080FF
	b _080B8F0C
	.align 2, 0
_080B8DB0: .4byte gEEPROMConfig
_080B8DB4: .4byte 0x000080FF
_080B8DB8:
	ldr r0, _080B8E94 @ =gEEPROMConfig
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r4, #0
	movs r7, #1
_080B8DD0:
	ldrh r2, [r6]
	adds r6, #2
	movs r1, #0
_080B8DD6:
	adds r0, r2, #0
	ands r0, r7
	strh r0, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xf
	bls _080B8DD6
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080B8DD0
	movs r4, #0
	ldr r0, _080B8E94 @ =gEEPROMConfig
	adds r1, r0, #0
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r4, r0
	bhs _080B8E1C
	movs r2, #1
_080B8E04:
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r3]
	subs r3, #2
	lsrs r5, r5, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _080B8E04
_080B8E1C:
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r6, #1
	strh r6, [r3]
	ldr r4, _080B8E98 @ =0x0DFFFF00
	ldr r0, _080B8E94 @ =gEEPROMConfig
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	adds r1, r4, #0
	bl EepromTimerIntr
	movs r5, #0
	add r2, sp, #0xa4
	strh r5, [r2]
	mov r1, sp
	adds r1, #0xa6
	ldr r0, _080B8E9C @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, sp, #0xac
	str r5, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	bne _080B8E66
	ldrh r0, [r4]
	ands r0, r6
	cmp r0, #0
	beq _080B8E66
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	mov r0, r8
	cmp r0, #0
	beq _080B8F0A
_080B8E66:
	add r3, sp, #0xa8
	ldr r0, _080B8E9C @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r3]
	mov r4, sp
	adds r4, #0xa6
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	beq _080B8EEA
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	bls _080B8EA0
	add r2, sp, #0xac
	ldrh r1, [r3]
	ldrh r0, [r4]
	subs r1, r1, r0
	ldr r0, [r2]
	adds r1, r1, r0
	str r1, [r2]
	b _080B8EB6
	.align 2, 0
_080B8E94: .4byte gEEPROMConfig
_080B8E98: .4byte 0x0DFFFF00
_080B8E9C: .4byte 0x04000006
_080B8EA0:
	add r2, sp, #0xac
	add r0, sp, #0xa8
	ldrh r0, [r0]
	adds r0, #0xe4
	mov r1, sp
	adds r1, #0xa6
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r2]
_080B8EB6:
	add r0, sp, #0xac
	ldr r0, [r0]
	cmp r0, #0x88
	bls _080B8EE0
	add r0, sp, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _080B8F0A
	ldr r0, _080B8ED8 @ =0x0DFFFF00
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B8F0A
	ldr r5, _080B8EDC @ =0x0000C001
	b _080B8F0A
	.align 2, 0
_080B8ED8: .4byte 0x0DFFFF00
_080B8EDC: .4byte 0x0000C001
_080B8EE0:
	mov r0, sp
	adds r0, #0xa6
	add r1, sp, #0xa8
	ldrh r1, [r1]
	strh r1, [r0]
_080B8EEA:
	add r2, sp, #0xa4
	ldrh r0, [r2]
	cmp r0, #0
	bne _080B8E66
	ldr r0, _080B8F18 @ =0x0DFFFF00
	movs r1, #1
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080B8E66
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	mov r1, r8
	cmp r1, #0
	bne _080B8E66
_080B8F0A:
	adds r0, r5, #0
_080B8F0C:
	add sp, #0xb0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B8F18: .4byte 0x0DFFFF00

	thumb_func_start sub_080B8F1C
sub_080B8F1C: @ 0x080B8F1C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _080B8F38 @ =gEEPROMConfig
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _080B8F40
	ldr r0, _080B8F3C @ =0x000080FF
	b _080B8F6A
	.align 2, 0
_080B8F38: .4byte gEEPROMConfig
_080B8F3C: .4byte 0x000080FF
_080B8F40:
	adds r0, r1, #0
	mov r1, sp
	bl sub_080B8CB8
	mov r2, sp
	movs r3, #0
	b _080B8F58
_080B8F4E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _080B8F68
_080B8F58:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _080B8F4E
	movs r5, #0x80
	lsls r5, r5, #8
_080B8F68:
	adds r0, r5, #0
_080B8F6A:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifyEepromDword
VerifyEepromDword: @ 0x080B8F74
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080B8F86
_080B8F80:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B8F86:
	cmp r6, #2
	bhi _080B8FAA
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B8D78
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080B8F80
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080B8F1C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080B8F80
_080B8FAA:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
