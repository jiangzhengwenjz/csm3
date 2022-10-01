	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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
	bl EEPROMWrite1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080B8F80
	adds r0, r4, #0
	adds r1, r5, #0
	bl EEPROMCompare
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
