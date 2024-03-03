	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_08012FB8
sub_08012FB8: @ 0x08012FB8
	push {r4, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0x1f
	bhi _08012FD8
	ldr r0, _08012FD4 @ =gUnk_030067AC
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r3, [r0]
	b _0801302A
	.align 2, 0
_08012FD4: .4byte gUnk_030067AC
_08012FD8:
	cmp r2, #0xff
	bhi _08012FEC
	ldr r0, _08012FE8 @ =gUnk_03006570
	ldr r0, [r0]
	adds r0, r2, r0
	subs r0, #0x20
	strb r3, [r0]
	b _0801302A
	.align 2, 0
_08012FE8: .4byte gUnk_03006570
_08012FEC:
	movs r4, #7
	ands r4, r2
	cmp r3, #0
	bne _08013014
	ldr r1, _0801300C @ =0xFFFFFF00
	adds r0, r2, r1
	asrs r0, r0, #3
	ldr r1, _08013010 @ =gUnk_030067A8
	ldr r2, [r1]
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r4
	ldrb r0, [r2]
	bics r0, r1
	b _08013028
	.align 2, 0
_0801300C: .4byte 0xFFFFFF00
_08013010: .4byte gUnk_030067A8
_08013014:
	ldr r1, _08013030 @ =0xFFFFFF00
	adds r0, r0, r1
	asrs r0, r0, #3
	ldr r1, _08013034 @ =gUnk_030067A8
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r2]
	orrs r0, r1
_08013028:
	strb r0, [r2]
_0801302A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013030: .4byte 0xFFFFFF00
_08013034: .4byte gUnk_030067A8

	thumb_func_start sub_08013038
sub_08013038: @ 0x08013038
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, r3, #0
	cmp r3, #0x1f
	bhi _08013058
	ldr r0, _08013054 @ =gUnk_030067AC
	ldr r1, [r0]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _08013092
	.align 2, 0
_08013054: .4byte gUnk_030067AC
_08013058:
	cmp r3, #0xff
	bls _08013084
	movs r2, #7
	ands r2, r3
	ldr r0, _0801307C @ =0xFFFFFF00
	adds r1, r3, r0
	asrs r1, r1, #3
	ldr r0, _08013080 @ =gUnk_030067A8
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	b _08013092
	.align 2, 0
_0801307C: .4byte 0xFFFFFF00
_08013080: .4byte gUnk_030067A8
_08013084:
	ldr r0, _08013098 @ =gUnk_03006570
	ldr r0, [r0]
	adds r0, r1, r0
	subs r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08013092:
	pop {r1}
	bx r1
	.align 2, 0
_08013098: .4byte gUnk_03006570
