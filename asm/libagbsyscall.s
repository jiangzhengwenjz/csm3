	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ArcTan2
ArcTan2: @ 0x080B8BC4
	svc #0xa
	bx lr

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x080B8BC8
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x080B8BCC
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x080B8BD0
	svc #6
	bx lr

	thumb_func_start DivRem
DivRem: @ 0x080B8BD4
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x080B8BDC
	svc #0x11
	bx lr

	thumb_func_start RLUnCompWram
RLUnCompWram: @ 0x080B8BE0
	svc #0x14
	bx lr

	thumb_func_start Sqrt
Sqrt: @ 0x080B8BE4
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x080B8BE8
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
