	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	arm_func_start __start
__start: @ 0x08000000
	b _080000C0

	.include "asm/rom_header.inc"

	.global _080000C0
_080000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =0x03007E00
	ldr r1, _080001C4 @ =0x03007FFC
	add r0, pc, #0x18 @ =IntrMain
	str r0, [r1]
	ldr r1, _080001C8 @ =sub_08001C98
	mov lr, pc
	bx r1
	b _080000C0
	.align 2, 0
_080000F4: .4byte 0x03007FA0
_080000F8: .4byte 0x03007E00

	arm_func_start IntrMain
IntrMain: @ 0x080000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_08000114:
	bne _08000114
	mov r2, #0
	ands r0, r1, #1
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #2
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #4
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #8
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _080001B0
	add r2, r2, #4
	ands r0, r1, #0x1000
_080001B0:
	strh r0, [r3, #2]
	ldr r1, _080001CC @ =gIntrTable
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0
_080001C4: .4byte 0x03007FFC
_080001C8: .4byte sub_08001C98
_080001CC: .4byte gIntrTable
