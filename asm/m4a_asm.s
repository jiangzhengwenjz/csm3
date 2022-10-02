	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start umul3232H32
umul3232H32: @ 0x080B6ADC
	add r2, pc, #0x0 @ =sub_080B6AE0
	bx r2

	arm_func_start sub_080B6AE0
sub_080B6AE0: @ 0x080B6AE0
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x080B6AEC
	ldr r0, _080B6B58 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080B6B5C @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _080B6AFA
	bx lr
_080B6AFA:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _080B6B1E
	ldr r2, _080B6B64 @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _080B6B1C
	adds r2, #0xe4
_080B6B1C:
	adds r1, r1, r2
_080B6B1E:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _080B6B2E
	ldr r0, [r0, #0x24]
	bl sub_080B6E9A
	ldr r0, [sp, #0x18]
_080B6B2E:
	ldr r3, [r0, #0x28]
	bl sub_080B6E9A
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _080B6B68 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _080B6B4E
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_080B6B4E:
	str r5, [sp, #8]
	ldr r6, _080B6B6C @ =0x00000630
	ldr r3, _080B6B60 @ =gUnk_030025B9
	bx r3
	.align 2, 0
_080B6B58: .4byte 0x03007FF0
_080B6B5C: .4byte 0x68736D53
_080B6B60: .4byte gUnk_030025B9
_080B6B64: .4byte 0x04000006
_080B6B68: .4byte 0x00000350
_080B6B6C: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x080B6B70
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_080B6BBC
	add r1, pc, #0x4 @ =sub_080B6B7C
	bx r1
	.align 2, 0

	arm_func_start sub_080B6B7C
sub_080B6B7C: @ 0x080B6B7C
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_080B6B8C:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _080B6B8C
	add r0, pc, #0x1F @ =sub_080B6BDA
	bx r0

	thumb_func_start sub_080B6BBC
sub_080B6BBC: @ 0x080B6BBC
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _080B6BC6
	stm r5!, {r0}
_080B6BC6:
	lsrs r1, r1, #1
	blo _080B6BCE
	stm r5!, {r0}
	stm r5!, {r0}
_080B6BCE:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _080B6BCE

	non_word_aligned_thumb_func_start sub_080B6BDA
sub_080B6BDA: @ 0x080B6BDA
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_080B6BE4:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080B6C04
	ldr r1, _080B6C00 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _080B6BF8
	adds r1, #0xe4
_080B6BF8:
	cmp r1, r0
	blo _080B6C04
	b _080B6E86
	.align 2, 0
_080B6C00: .4byte 0x04000006
_080B6C04:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _080B6C0E
	b sub_080B6E7C
_080B6C0E:
	movs r0, #0x80
	tst r0, r6
	beq _080B6C3E
	movs r0, #0x40
	tst r0, r6
	bne _080B6C4E
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _080B6C96
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _080B6C96
_080B6C3E:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _080B6C54
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _080B6CA4
_080B6C4E:
	movs r0, #0
	strb r0, [r4]
	b sub_080B6E7C
_080B6C54:
	movs r0, #0x40
	tst r0, r6
	beq _080B6C74
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _080B6CA4
_080B6C66:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080B6C4E
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _080B6CA4
_080B6C74:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _080B6C92
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _080B6CA4
	adds r5, r0, #0
	beq _080B6C66
	subs r6, #1
	strb r6, [r4]
	b _080B6CA4
_080B6C92:
	cmp r2, #3
	bne _080B6CA4
_080B6C96:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _080B6CA4
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_080B6CA4:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _080B6CD4
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_080B6CD4:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_080B6CE0
	bx r0
	.align 2, 0

	arm_func_start sub_080B6CE0
sub_080B6CE0: @ 0x080B6CE0
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _080B6DE8
_080B6CF8:
	cmp r2, #4
	ble _080B6D54
	subs r2, r2, r8
	movgt lr, #0
	bgt _080B6D24
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_080B6D24:
	ldr r6, [r5]
_080B6D28:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	adds r5, r5, #0x40000000
	blo _080B6D28
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080B6D24
	adds r8, r8, lr
	beq _080B6E68
_080B6D54:
	ldr r6, [r5]
_080B6D58:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _080B6DB8
_080B6D70:
	adds r5, r5, #0x40000000
	blo _080B6D58
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080B6CF8

	arm_func_start sub_080B6D84
sub_080B6D84: @ 0x080B6D84
	b _080B6E68
_080B6D88:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080B6DAC
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_080B6D9C:
	adds r2, r0, r2
	bgt _080B6E3C

	arm_func_start sub_080B6DA4
sub_080B6DA4: @ 0x080B6DA4
	sub sb, sb, r0
	b _080B6D9C
_080B6DAC:
	pop {r4, ip}
	mov r2, #0

	arm_func_start sub_080B6DB4
sub_080B6DB4: @ 0x080B6DB4
	b _080B6DC8
_080B6DB8:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _080B6D70
_080B6DC8:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4

	arm_func_start sub_080B6DE4
sub_080B6DE4: @ 0x080B6DE4
	b _080B6E70
_080B6DE8:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080B6E04:
	ldr r6, [r5]
_080B6E08:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _080B6E48
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _080B6D88
	subs sb, sb, #1
	addeq r0, r0, r1
_080B6E3C:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080B6E48:
	adds r5, r5, #0x40000000
	blo _080B6E08
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080B6E04
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_080B6E68:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_080B6E70:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_080B6E7C
	bx r0

	thumb_func_start sub_080B6E7C
sub_080B6E7C: @ 0x080B6E7C
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080B6E86
	adds r4, #0x40
	b _080B6BE4
_080B6E86:
	ldr r0, [sp, #0x18]
	ldr r3, _080B6E9C @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start sub_080B6E9A
sub_080B6E9A: @ 0x080B6E9A
	bx r3
	.align 2, 0
_080B6E9C: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x080B6EA0
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start RealClearChain
RealClearChain: @ 0x080B6EB8
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080B6ED6
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080B6ECA
	str r1, [r2, #0x34]
	b _080B6ECC
_080B6ECA:
	str r1, [r3, #0x20]
_080B6ECC:
	cmp r1, #0
	beq _080B6ED2
	str r2, [r1, #0x30]
_080B6ED2:
	movs r1, #0
	str r1, [r0, #0x2c]
_080B6ED6:
	bx lr
	
	thumb_func_start ply_fine
ply_fine:	@_080B6ED8
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080B6EFC
_080B6EE2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080B6EF0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_080B6EF0:
	adds r0, r4, #0
	bl RealClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080B6EE2
_080B6EFC:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x080B6F08
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080B6F38 @ =gMPlayJumpTableTemplate
_080B6F0E:
	ldr r3, [r2]
	bl _080B6F22
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080B6F0E
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x080B6F20
	ldrb r3, [r2]
_080B6F22:
	push {r0}
	lsrs r0, r2, #0x19
	bne _080B6F34
	ldr r0, _080B6F38 @ =gMPlayJumpTableTemplate
	cmp r2, r0
	blo _080B6F32
	lsrs r0, r2, #0xe
	beq _080B6F34
_080B6F32:
	movs r3, #0
_080B6F34:
	pop {r0}
	bx lr
	.align 2, 0
_080B6F38: .4byte gMPlayJumpTableTemplate

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x080B6F3C
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_080B6F3E
sub_080B6F3E: @ 0x080B6F3E
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _080B6F22
	.align 2, 0
	
	thumb_func_start ply_goto
ply_goto:	@_080B6F48
	push {lr}
_080B6F4A:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x080B6F68
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080B6F80
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_080B6F80:
	b ply_fine
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x080B6F84
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080B6F96
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080B6F96:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x080B6F98
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _080B6FA8
	adds r2, #1
	str r2, [r1, #0x40]
	b _080B6F4A
_080B6FA8:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _080B6FBA
	b _080B6F4A
_080B6FBA:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x080B6FC8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x080B6FD4
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x080B6FE8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x080B6FFC
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _080B6F22
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _080B6F22
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _080B6F22
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x080B702C
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x080B7040
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x080B7054
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x080B7068
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x080B707C
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x080B7088
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080B709E
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_080B709E:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x080B70A0
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x080B70B4
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _080B70C8 @ =0x04000060
	adds r0, r0, r3
	bl sub_080B6F3E

	thumb_func_start sub_080B70C4
sub_080B70C4: @ 0x080B70C4
	strb r3, [r0]
	bx ip
	.align 2, 0
_080B70C8: .4byte 0x04000060

	thumb_func_start SoundVSync_rev01
SoundVSync_rev01: @ 0x080B70CC
	ldr r0, _080B7368 @ =0x03007FF0
	ldr r0, [r0]
	ldr r2, _080B736C @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _080B70FE
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _080B70FE
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _080B7100 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _080B70F2
	ldr r1, _080B7104 @ =0x84400004
	str r1, [r2, #8]
_080B70F2:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
_080B70FE:
	bx lr
	.align 2, 0
_080B7100: .4byte 0x040000BC
_080B7104: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x080B7108
	ldr r2, _080B736C @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _080B7112
	bx lr
_080B7112:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _080B7124
	ldr r0, [r0, #0x3c]

	thumb_func_start j_.call_r3_rev
j_.call_r3_rev: @ 0x080B7120
	bl .call_r3_rev
_080B7124:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080B713C

	non_word_aligned_thumb_func_start j_.pause
j_.pause: @ 0x080B713A
	b _080B7350
_080B713C:
	ldr r0, _080B7368 @ =0x03007FF0
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080B7150

	non_word_aligned_thumb_func_start j_.pause_0
j_.pause_0: @ 0x080B714E
	b _080B7350
_080B7150:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1

	non_word_aligned_thumb_func_start sub_080B7156
sub_080B7156: @ 0x080B7156
	b _080B72A0
_080B7158:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_080B7160:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _080B716A

	thumb_func_start sub_080B7168
sub_080B7168: @ 0x080B7168
	b _080B727C
_080B716A:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080B719E
_080B7176:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080B7192
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080B7198
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _080B7198
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]

	thumb_func_start sub_080B7190
sub_080B7190: @ 0x080B7190
	b _080B7198
_080B7192:
	adds r0, r4, #0
	bl ClearChain
_080B7198:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080B7176
_080B719E:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _080B721C
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]

	non_word_aligned_thumb_func_start sub_080B71C2
sub_080B71C2: @ 0x080B71C2
	b _080B721C
_080B71C4:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _080B71D0
	ldrb r1, [r5, #7]

	non_word_aligned_thumb_func_start sub_080B71CE
sub_080B71CE: @ 0x080B71CE
	b _080B71DA
_080B71D0:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _080B71DA
	strb r1, [r5, #7]
_080B71DA:
	cmp r1, #0xcf
	blo _080B71F0
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0

	non_word_aligned_thumb_func_start j_.call_r3_rev_0
j_.call_r3_rev_0: @ 0x080B71EA
	bl .call_r3_rev

	non_word_aligned_thumb_func_start sub_080B71EE
sub_080B71EE: @ 0x080B71EE
	b _080B721C
_080B71F0:
	cmp r1, #0xb0
	bls _080B7212
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0

	non_word_aligned_thumb_func_start j_.call_r3_rev_1
j_.call_r3_rev_1: @ 0x080B7206
	bl .call_r3_rev
	ldrb r0, [r5]
	cmp r0, #0
	beq _080B7278

	thumb_func_start sub_080B7210
sub_080B7210: @ 0x080B7210
	b _080B721C
_080B7212:
	ldr r0, _080B7364 @ =gUnk_080C0868
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080B721C:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080B71C4
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _080B7278
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080B7278
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080B723E
	subs r0, #1
	strb r0, [r5, #0x1c]

	thumb_func_start j_.next_trk
j_.next_trk: @ 0x080B723C
	b _080B7278
_080B723E:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _080B7252
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18

	thumb_func_start sub_080B7250
sub_080B7250: @ 0x080B7250
	b _080B7256
_080B7252:
	movs r0, #0x80
	subs r2, r0, r1
_080B7256:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _080B7278
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _080B7272
	movs r1, #0xc

	thumb_func_start sub_080B7270
sub_080B7270: @ 0x080B7270
	b _080B7274
_080B7272:
	movs r1, #3
_080B7274:
	orrs r0, r1
	strb r0, [r5]
_080B7278:
	mov r3, sl
	mov r4, fp
_080B727C:
	subs r6, #1
	ble _080B7288

	thumb_func_start sub_080B7280
sub_080B7280: @ 0x080B7280
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _080B7160
_080B7288:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _080B729A
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]

	thumb_func_start j_.pause_1
j_.pause_1: @ 0x080B7298
	b _080B7350
_080B729A:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_080B72A0:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _080B72A8

	non_word_aligned_thumb_func_start sub_080B72A6
sub_080B72A6: @ 0x080B72A6
	b _080B7158
_080B72A8:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_080B72AC:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _080B7346
	movs r1, #0xf
	tst r1, r0
	beq _080B7346
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080B733C
_080B72CA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _080B72DA
	adds r0, r4, #0
	bl ClearChain

	thumb_func_start sub_080B72D8
sub_080B72D8: @ 0x080B72D8
	b _080B7336
_080B72DA:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _080B72F8
	bl ChnVolSetAsm
	cmp r6, #0
	beq _080B72F8
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080B72F8:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _080B7336
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _080B730C
	movs r2, #0
_080B730C:
	cmp r6, #0
	beq _080B732A
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0

	non_word_aligned_thumb_func_start j_.call_r3_rev_2
j_.call_r3_rev_2: @ 0x080B731A
	bl .call_r3_rev
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]

	thumb_func_start sub_080B7328
sub_080B7328: @ 0x080B7328
	b _080B7336
_080B732A:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_080B7336:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080B72CA
_080B733C:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_080B7346:
	subs r2, #1
	ble _080B7350
	movs r0, #0x50
	adds r5, r5, r0
	bgt _080B72AC
_080B7350:
	ldr r0, _080B736C @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start .call_r3_rev
.call_r3_rev: @ 0x080B7360
	bx r3
	.align 2, 0
_080B7364: .4byte gUnk_080C0868
_080B7368: .4byte 0x03007FF0
_080B736C: .4byte 0x68736D53

	thumb_func_start TrackStop
TrackStop: @ 0x080B7370
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _080B73A8
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080B73A6
	movs r6, #0
_080B7384:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B739E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080B739C
	ldr r3, _080B73B0 @ =0x03007FF0
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl .call_r3_rev
_080B739C:
	strb r6, [r4]
_080B739E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080B7384
_080B73A6:
	str r4, [r5, #0x20]
_080B73A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B73B0: .4byte 0x03007FF0

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x080B73B4
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080B73CC
	movs r0, #0xff
_080B73CC:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080B73E0
	movs r0, #0xff
_080B73E0:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note
ply_note: @ 0x080B73E4
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _080B75DC @ =0x03007FF0
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _080B75E0 @ =gUnk_080C0868
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080B742A
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080B7428
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080B7428
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080B7428:
	str r3, [r5, #0x40]
_080B742A:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _080B747C
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080B744A
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _080B744C
_080B744A:
	adds r0, r3, #0
_080B744C:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _080B7464
	b _080B75CA
_080B7464:
	movs r0, #0x80
	tst r0, r2
	beq _080B7480
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080B7478
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_080B7478:
	ldrb r3, [r6, #1]
	b _080B7480
_080B747C:
	mov sb, r4
	ldrb r3, [r5, #5]
_080B7480:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080B7490
	movs r0, #0xff
_080B7490:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _080B74D0
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080B74A8
	b _080B75CA
_080B74A8:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080B7524
	movs r0, #0x40
	tst r0, r1
	bne _080B7524
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080B7524
	beq _080B74C8
	b _080B75CA
_080B74C8:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080B7524
	b _080B75CA
_080B74D0:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_080B74DE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080B7524
	movs r0, #0x40
	tst r0, r1
	beq _080B74F8
	cmp r2, #0
	bne _080B74FC
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080B7516
_080B74F8:
	cmp r2, #0
	bne _080B7518
_080B74FC:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080B7508
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080B7516
_080B7508:
	bhi _080B7518
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080B7514
	adds r7, r0, #0
	b _080B7516
_080B7514:
	blo _080B7518
_080B7516:
	mov r8, r4
_080B7518:
	adds r4, #0x40
	subs r3, #1
	bgt _080B74DE
	mov r4, r8
	cmp r4, #0
	beq _080B75CA
_080B7524:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080B7538
	str r4, [r3, #0x30]
_080B7538:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080B754A
	adds r1, r5, #0
	bl clear_modM
_080B754A:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080B7584
	movs r3, #0
_080B7584:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080B75B2
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080B759E
	movs r0, #0x70
	tst r0, r1
	bne _080B75A0
_080B759E:
	movs r1, #8
_080B75A0:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl .call_r3_rev
	b _080B75BC
_080B75B2:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_080B75BC:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_080B75CA:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_080B75DC: .4byte 0x03007FF0
_080B75E0: .4byte gUnk_080C0868

	thumb_func_start ply_endtie
ply_endtie: @ 0x080B75E4
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080B75F6
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080B75F8
_080B75F6:
	ldrb r3, [r1, #5]
_080B75F8:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080B7620
	movs r4, #0x83
	movs r5, #0x40
_080B7602:
	ldrb r2, [r1]
	tst r2, r4
	beq _080B761A
	tst r2, r5
	bne _080B761A
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080B761A
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080B7620
_080B761A:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080B7602
_080B7620:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x080B7624
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080B7634
	movs r2, #0xc
	b _080B7636
_080B7634:
	movs r2, #3
_080B7636:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x080B7640
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos
ply_lfos: @ 0x080B764C
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _080B765C
	bl clear_modM
_080B765C:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod
ply_mod: @ 0x080B7660
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080B7670
	bl clear_modM
_080B7670:
	bx ip
	.align 2, 0
