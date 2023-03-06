	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start DebugFunc
DebugFunc: @ 0x080001D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08000224 @ =0x000001B5
	bl sub_08012F60
	cmp r0, #1
	beq _080001E8
	b _08000876
_080001E8:
	ldr r0, _08000228 @ =gUnk_03005920
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	ldr r5, _0800022C @ =gUnk_03002944
	cmp r0, #0
	bne _08000200
	ldrh r0, [r5]
	ldr r1, _08000230 @ =gUnk_0300294C
	mov sb, r1
	cmp r0, #0x5a
	bls _0800020E
_08000200:
	ldr r0, _08000230 @ =gUnk_0300294C
	movs r1, #0
	strh r1, [r0]
	strh r1, [r5]
	ldr r2, _08000234 @ =gUnk_03002940
	strh r1, [r2]
	mov sb, r0
_0800020E:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	ldr r0, _08000238 @ =0x04000006
	ldrh r0, [r0]
	movs r4, #0xff
	ands r4, r0
	cmp r4, #0x9f
	bgt _0800023C
	adds r4, #0x44
	b _0800023E
	.align 2, 0
_08000224: .4byte 0x000001B5
_08000228: .4byte gUnk_03005920
_0800022C: .4byte gUnk_03002944
_08000230: .4byte gUnk_0300294C
_08000234: .4byte gUnk_03002940
_08000238: .4byte 0x04000006
_0800023C:
	subs r4, #0xa0
_0800023E:
	ldr r3, _080002DC @ =gUnk_03003364
	ldr r0, [r3]
	subs r0, #1
	ldr r2, _080002E0 @ =gUnk_03002950
	ldr r1, [r2]
	subs r0, r0, r1
	movs r1, #0xe4
	muls r0, r1, r0
	adds r4, r4, r0
	mov r2, sb
	ldrh r2, [r2]
	cmp r4, r2
	blt _08000260
	mov r3, sb
	strh r4, [r3]
	movs r0, #0
	strh r0, [r5]
_08000260:
	mov r6, sp
	movs r0, #3
	mov r8, r0
	movs r5, #0
	ldr r1, _080002E4 @ =gUnk_080BAAE8
	mov sl, r1
_0800026C:
	movs r3, #1
	adds r0, r5, #1
	mov r2, r8
	subs r1, r2, r0
	mov ip, r0
	adds r7, r6, r5
	cmp r1, #0
	ble _080002C6
	adds r2, r1, #0
	rsbs r1, r2, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _080002A8
	cmp r1, #3
	bge _0800029C
	cmp r1, #2
	bge _08000294
	movs r3, #0xa
	subs r2, #1
_08000294:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #1
_0800029C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #1
	cmp r2, #0
	beq _080002C6
_080002A8:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #4
	cmp r2, #0
	bne _080002A8
_080002C6:
	movs r2, #0
	adds r1, r7, #0
	subs r4, r4, r3
	cmp r4, r3
	bge _080002E8
	cmp r4, #0
	blt _08000310
	movs r0, #0x31
	strb r0, [r7]
	b _080002FE
	.align 2, 0
_080002DC: .4byte gUnk_03003364
_080002E0: .4byte gUnk_03002950
_080002E4: .4byte gUnk_080BAAE8
_080002E8:
	adds r2, #1
	cmp r2, #9
	bgt _080002FE
	subs r4, r4, r3
	cmp r4, r3
	bge _080002E8
	cmp r4, #0
	blt _08000310
	adds r0, r2, #0
	adds r0, #0x31
	strb r0, [r1]
_080002FE:
	adds r1, r6, r5
	ldrb r0, [r1]
	cmp r0, #0x39
	bhi _0800030A
	cmp r2, #0xa
	bne _0800031A
_0800030A:
	movs r0, #0x39
	strb r0, [r1]
	b _08000320
_08000310:
	adds r0, r2, #0
	adds r0, #0x30
	strb r0, [r7]
	adds r4, r4, r3
	b _080002FE
_0800031A:
	mov r5, ip
	cmp r5, #3
	blt _0800026C
_08000320:
	cmp r5, #3
	beq _0800036E
	cmp r5, #3
	bge _0800036E
	movs r4, #0x39
	movs r0, #3
	subs r1, r0, r5
	ands r1, r0
	cmp r1, #0
	beq _08000352
	cmp r1, #1
	ble _08000348
	cmp r1, #2
	ble _08000342
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
_08000342:
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
_08000348:
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
	cmp r5, #3
	bge _0800036E
_08000352:
	adds r0, r6, r5
	strb r4, [r0]
	adds r0, r5, #1
	adds r0, r6, r0
	strb r4, [r0]
	adds r0, r5, #2
	adds r0, r6, r0
	strb r4, [r0]
	adds r0, r5, #3
	adds r0, r6, r0
	strb r4, [r0]
	adds r5, #4
	cmp r5, #3
	blt _08000352
_0800036E:
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08000468 @ =gUnk_0300295C
	ldr r4, [r3]
	ldr r0, _0800046C @ =gUnk_03002958
	ldrh r1, [r0]
	movs r0, #0x20
	subs r7, r0, r1
	ldr r1, _08000470 @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r6, r0, #0xc
	movs r5, #0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080003B0
	mov r1, sp
	ldr r0, _08000474 @ =0x00000276
	lsls r0, r0, #1
	adds r4, r4, r0
_08000398:
	ldrb r0, [r1]
	subs r0, r0, r7
	orrs r0, r6
	strh r0, [r4]
	adds r1, #1
	adds r4, #2
	adds r5, #1
	cmp r5, #0x1f
	bhi _080003B0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000398
_080003B0:
	ldr r2, _08000468 @ =gUnk_0300295C
	ldr r6, [r2]
	ldr r3, _0800046C @ =gUnk_03002958
	ldrh r1, [r3]
	movs r0, #0x20
	subs r2, r0, r1
	ldr r1, _08000470 @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r7, r0, #0xc
	movs r5, #0
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0
	beq _080003EC
	mov r4, sl
	ldr r0, _08000478 @ =0x00000279
	lsls r0, r0, #1
	adds r1, r6, r0
_080003D4:
	ldrb r0, [r4]
	subs r0, r0, r2
	orrs r0, r7
	strh r0, [r1]
	adds r4, #1
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1f
	bhi _080003EC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080003D4
_080003EC:
	mov r0, sb
	ldrh r4, [r0]
	mov r6, sp
	movs r1, #4
	mov r8, r1
	movs r5, #0
_080003F8:
	movs r3, #1
	adds r0, r5, #1
	mov r2, r8
	subs r1, r2, r0
	mov ip, r0
	adds r7, r6, r5
	cmp r1, #0
	ble _08000452
	adds r2, r1, #0
	rsbs r1, r2, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08000434
	cmp r1, #3
	bge _08000428
	cmp r1, #2
	bge _08000420
	movs r3, #0xa
	subs r2, #1
_08000420:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #1
_08000428:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #1
	cmp r2, #0
	beq _08000452
_08000434:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #4
	cmp r2, #0
	bne _08000434
_08000452:
	movs r2, #0
	adds r1, r7, #0
	subs r4, r4, r3
	cmp r4, r3
	bge _0800047C
	cmp r4, #0
	blt _080004A4
	movs r0, #0x31
	strb r0, [r7]
	b _08000492
	.align 2, 0
_08000468: .4byte gUnk_0300295C
_0800046C: .4byte gUnk_03002958
_08000470: .4byte gUnk_0300293C
_08000474: .4byte 0x00000276
_08000478: .4byte 0x00000279
_0800047C:
	adds r2, #1
	cmp r2, #9
	bgt _08000492
	subs r4, r4, r3
	cmp r4, r3
	bge _0800047C
	cmp r4, #0
	blt _080004A4
	adds r0, r2, #0
	adds r0, #0x31
	strb r0, [r1]
_08000492:
	adds r1, r6, r5
	ldrb r0, [r1]
	cmp r0, #0x39
	bhi _0800049E
	cmp r2, #0xa
	bne _080004AE
_0800049E:
	movs r0, #0x39
	strb r0, [r1]
	b _080004B4
_080004A4:
	adds r0, r2, #0
	adds r0, #0x30
	strb r0, [r7]
	adds r4, r4, r3
	b _08000492
_080004AE:
	mov r5, ip
	cmp r5, #4
	blt _080003F8
_080004B4:
	cmp r5, #4
	beq _08000504
	cmp r5, #4
	bge _08000504
	movs r4, #0x39
	movs r0, #4
	subs r1, r0, r5
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _080004E8
	cmp r1, #1
	ble _080004DE
	cmp r1, #2
	ble _080004D8
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
_080004D8:
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
_080004DE:
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
	cmp r5, #4
	bge _08000504
_080004E8:
	adds r0, r6, r5
	strb r4, [r0]
	adds r0, r5, #1
	adds r0, r6, r0
	strb r4, [r0]
	adds r0, r5, #2
	adds r0, r6, r0
	strb r4, [r0]
	adds r0, r5, #3
	adds r0, r6, r0
	strb r4, [r0]
	adds r5, #4
	cmp r5, #4
	blt _080004E8
_08000504:
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08000554 @ =gUnk_0300295C
	ldr r4, [r3]
	ldr r0, _08000558 @ =gUnk_03002958
	ldrh r1, [r0]
	movs r0, #0x20
	subs r7, r0, r1
	ldr r1, _0800055C @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r6, r0, #0xc
	movs r5, #0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08000546
	mov r1, sp
	ldr r0, _08000560 @ =0x0000027A
	lsls r0, r0, #1
	adds r4, r4, r0
_0800052E:
	ldrb r0, [r1]
	subs r0, r0, r7
	orrs r0, r6
	strh r0, [r4]
	adds r1, #1
	adds r4, #2
	adds r5, #1
	cmp r5, #0x1f
	bhi _08000546
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800052E
_08000546:
	ldr r2, _08000564 @ =gUnk_03002948
	ldrh r4, [r2]
	cmp r4, #0x9f
	bgt _08000568
	adds r4, #0x44
	b _0800056A
	.align 2, 0
_08000554: .4byte gUnk_0300295C
_08000558: .4byte gUnk_03002958
_0800055C: .4byte gUnk_0300293C
_08000560: .4byte 0x0000027A
_08000564: .4byte gUnk_03002948
_08000568:
	subs r4, #0xa0
_0800056A:
	ldr r3, _08000600 @ =gUnk_03003364
	ldr r0, [r3]
	subs r0, #1
	ldr r2, _08000604 @ =gUnk_03002950
	ldr r1, [r2]
	subs r0, r0, r1
	movs r1, #0xe4
	muls r0, r1, r0
	adds r4, r4, r0
	ldr r3, _08000608 @ =gUnk_03002940
	ldrh r3, [r3]
	cmp r4, r3
	ble _08000588
	ldr r0, _08000608 @ =gUnk_03002940
	strh r4, [r0]
_08000588:
	mov r6, sp
	movs r1, #3
	mov r8, r1
	movs r5, #0
_08000590:
	movs r3, #1
	adds r0, r5, #1
	mov r2, r8
	subs r1, r2, r0
	mov ip, r0
	adds r7, r6, r5
	cmp r1, #0
	ble _080005EA
	adds r2, r1, #0
	rsbs r1, r2, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _080005CC
	cmp r1, #3
	bge _080005C0
	cmp r1, #2
	bge _080005B8
	movs r3, #0xa
	subs r2, #1
_080005B8:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #1
_080005C0:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #1
	cmp r2, #0
	beq _080005EA
_080005CC:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #4
	cmp r2, #0
	bne _080005CC
_080005EA:
	movs r2, #0
	adds r1, r7, #0
	subs r4, r4, r3
	cmp r4, r3
	bge _0800060C
	cmp r4, #0
	blt _08000634
	movs r0, #0x31
	strb r0, [r7]
	b _08000622
	.align 2, 0
_08000600: .4byte gUnk_03003364
_08000604: .4byte gUnk_03002950
_08000608: .4byte gUnk_03002940
_0800060C:
	adds r2, #1
	cmp r2, #9
	bgt _08000622
	subs r4, r4, r3
	cmp r4, r3
	bge _0800060C
	cmp r4, #0
	blt _08000634
	adds r0, r2, #0
	adds r0, #0x31
	strb r0, [r1]
_08000622:
	adds r1, r6, r5
	ldrb r0, [r1]
	cmp r0, #0x39
	bhi _0800062E
	cmp r2, #0xa
	bne _0800063E
_0800062E:
	movs r0, #0x39
	strb r0, [r1]
	b _08000644
_08000634:
	adds r0, r2, #0
	adds r0, #0x30
	strb r0, [r7]
	adds r4, r4, r3
	b _08000622
_0800063E:
	mov r5, ip
	cmp r5, #3
	blt _08000590
_08000644:
	cmp r5, #3
	beq _08000692
	cmp r5, #3
	bge _08000692
	movs r4, #0x39
	movs r0, #3
	subs r1, r0, r5
	ands r1, r0
	cmp r1, #0
	beq _08000676
	cmp r1, #1
	ble _0800066C
	cmp r1, #2
	ble _08000666
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
_08000666:
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
_0800066C:
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
	cmp r5, #3
	bge _08000692
_08000676:
	adds r0, r6, r5
	strb r4, [r0]
	adds r0, r5, #1
	adds r0, r6, r0
	strb r4, [r0]
	adds r0, r5, #2
	adds r0, r6, r0
	strb r4, [r0]
	adds r0, r5, #3
	adds r0, r6, r0
	strb r4, [r0]
	adds r5, #4
	cmp r5, #3
	blt _08000676
_08000692:
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	ldr r3, _0800078C @ =gUnk_0300295C
	ldr r4, [r3]
	ldr r0, _08000790 @ =gUnk_03002958
	ldrh r1, [r0]
	movs r0, #0x20
	subs r7, r0, r1
	ldr r1, _08000794 @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r6, r0, #0xc
	movs r5, #0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080006D4
	mov r1, sp
	ldr r0, _08000798 @ =0x00000256
	lsls r0, r0, #1
	adds r4, r4, r0
_080006BC:
	ldrb r0, [r1]
	subs r0, r0, r7
	orrs r0, r6
	strh r0, [r4]
	adds r1, #1
	adds r4, #2
	adds r5, #1
	cmp r5, #0x1f
	bhi _080006D4
	ldrb r0, [r1]
	cmp r0, #0
	bne _080006BC
_080006D4:
	ldr r2, _0800078C @ =gUnk_0300295C
	ldr r6, [r2]
	ldr r3, _08000790 @ =gUnk_03002958
	ldrh r1, [r3]
	movs r0, #0x20
	subs r2, r0, r1
	ldr r1, _08000794 @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r7, r0, #0xc
	movs r5, #0
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, #0
	beq _08000710
	mov r4, sl
	ldr r0, _0800079C @ =0x00000259
	lsls r0, r0, #1
	adds r1, r6, r0
_080006F8:
	ldrb r0, [r4]
	subs r0, r0, r2
	orrs r0, r7
	strh r0, [r1]
	adds r4, #1
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1f
	bhi _08000710
	ldrb r0, [r4]
	cmp r0, #0
	bne _080006F8
_08000710:
	ldr r0, _080007A0 @ =gUnk_03002940
	ldrh r4, [r0]
	mov r6, sp
	movs r1, #4
	mov r8, r1
	movs r5, #0
_0800071C:
	movs r3, #1
	adds r0, r5, #1
	mov r2, r8
	subs r1, r2, r0
	mov ip, r0
	adds r7, r6, r5
	cmp r1, #0
	ble _08000776
	adds r2, r1, #0
	rsbs r1, r2, #0
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08000758
	cmp r1, #3
	bge _0800074C
	cmp r1, #2
	bge _08000744
	movs r3, #0xa
	subs r2, #1
_08000744:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #1
_0800074C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #1
	cmp r2, #0
	beq _08000776
_08000758:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r3
	lsls r3, r0, #1
	subs r2, #4
	cmp r2, #0
	bne _08000758
_08000776:
	movs r2, #0
	adds r1, r7, #0
	subs r4, r4, r3
	cmp r4, r3
	bge _080007A4
	cmp r4, #0
	blt _080007CC
	movs r0, #0x31
	strb r0, [r7]
	b _080007BA
	.align 2, 0
_0800078C: .4byte gUnk_0300295C
_08000790: .4byte gUnk_03002958
_08000794: .4byte gUnk_0300293C
_08000798: .4byte 0x00000256
_0800079C: .4byte 0x00000259
_080007A0: .4byte gUnk_03002940
_080007A4:
	adds r2, #1
	cmp r2, #9
	bgt _080007BA
	subs r4, r4, r3
	cmp r4, r3
	bge _080007A4
	cmp r4, #0
	blt _080007CC
	adds r0, r2, #0
	adds r0, #0x31
	strb r0, [r1]
_080007BA:
	adds r1, r6, r5
	ldrb r0, [r1]
	cmp r0, #0x39
	bhi _080007C6
	cmp r2, #0xa
	bne _080007D6
_080007C6:
	movs r0, #0x39
	strb r0, [r1]
	b _080007DC
_080007CC:
	adds r0, r2, #0
	adds r0, #0x30
	strb r0, [r7]
	adds r4, r4, r3
	b _080007BA
_080007D6:
	mov r5, ip
	cmp r5, #4
	blt _0800071C
_080007DC:
	cmp r5, #4
	beq _0800082C
	cmp r5, #4
	bge _0800082C
	movs r4, #0x39
	movs r0, #4
	subs r1, r0, r5
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08000810
	cmp r1, #1
	ble _08000806
	cmp r1, #2
	ble _08000800
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
_08000800:
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
_08000806:
	adds r0, r6, r5
	strb r4, [r0]
	adds r5, #1
	cmp r5, #4
	bge _0800082C
_08000810:
	adds r0, r6, r5
	strb r4, [r0]
	adds r0, r5, #1
	adds r0, r6, r0
	strb r4, [r0]
	adds r0, r5, #2
	adds r0, r6, r0
	strb r4, [r0]
	adds r0, r5, #3
	adds r0, r6, r0
	strb r4, [r0]
	adds r5, #4
	cmp r5, #4
	blt _08000810
_0800082C:
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	ldr r3, _080008A0 @ =gUnk_0300295C
	ldr r4, [r3]
	ldr r0, _080008A4 @ =gUnk_03002958
	ldrh r1, [r0]
	movs r0, #0x20
	subs r7, r0, r1
	ldr r1, _080008A8 @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r6, r0, #0xc
	movs r5, #0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800086E
	mov r1, sp
	ldr r0, _080008AC @ =0x0000025A
	lsls r0, r0, #1
	adds r4, r4, r0
_08000856:
	ldrb r0, [r1]
	subs r0, r0, r7
	orrs r0, r6
	strh r0, [r4]
	adds r1, #1
	adds r4, #2
	adds r5, #1
	cmp r5, #0x1f
	bhi _0800086E
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000856
_0800086E:
	ldr r2, _080008B0 @ =gUnk_03003364
	ldr r0, [r2]
	ldr r3, _080008B4 @ =gUnk_03002950
	str r0, [r3]
_08000876:
	movs r0, #0xda
	lsls r0, r0, #1
	bl sub_08012F60
	cmp r0, #0
	ble _080008E4
	ldr r0, _080008B8 @ =gUnk_0300594C
	ldrh r1, [r0]
	movs r2, #4
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080008E4
	ldr r0, _080008BC @ =gUnk_03005920
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080008E4
	movs r4, #0
	b _080008C6
	.align 2, 0
_080008A0: .4byte gUnk_0300295C
_080008A4: .4byte gUnk_03002958
_080008A8: .4byte gUnk_0300293C
_080008AC: .4byte 0x0000025A
_080008B0: .4byte gUnk_03003364
_080008B4: .4byte gUnk_03002950
_080008B8: .4byte gUnk_0300594C
_080008BC: .4byte gUnk_03005920
_080008C0:
	bl VBlankIntrWait
	adds r4, #1
_080008C6:
	movs r0, #0xda
	lsls r0, r0, #1
	bl sub_08012F60
	cmp r4, r0
	blo _080008C0
	ldr r0, _08000970 @ =gUnk_0300294C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08000974 @ =gUnk_03002940
	strh r1, [r0]
	ldr r1, _08000978 @ =gUnk_03002950
	ldr r0, _0800097C @ =gUnk_03003364
	ldr r0, [r0]
	str r0, [r1]
_080008E4:
	movs r0, #0xdb
	lsls r0, r0, #1
	bl sub_08012F60
	cmp r0, #1
	beq _080008F2
	b _08000D78
_080008F2:
	movs r0, #4
	bl sub_08012F60
	adds r4, r0, #0
	mov r6, sp
	movs r0, #4
	mov r8, r0
	movs r5, #0
_08000902:
	movs r1, #1
	adds r0, r5, #1
	mov r3, r8
	subs r2, r3, r0
	mov ip, r0
	adds r7, r6, r5
	cmp r2, #0
	ble _0800095C
	adds r3, r2, #0
	rsbs r2, r3, #0
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _0800093E
	cmp r2, #3
	bge _08000932
	cmp r2, #2
	bge _0800092A
	movs r1, #0xa
	subs r3, #1
_0800092A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #1
_08000932:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #1
	cmp r3, #0
	beq _0800095C
_0800093E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #4
	cmp r3, #0
	bne _0800093E
_0800095C:
	movs r3, #0
	adds r2, r7, #0
	subs r4, r4, r1
	cmp r4, r1
	bge _08000980
	cmp r4, #0
	blt _080009A8
	movs r0, #0x31
	strb r0, [r7]
	b _08000996
	.align 2, 0
_08000970: .4byte gUnk_0300294C
_08000974: .4byte gUnk_03002940
_08000978: .4byte gUnk_03002950
_0800097C: .4byte gUnk_03003364
_08000980:
	adds r3, #1
	cmp r3, #9
	bgt _08000996
	subs r4, r4, r1
	cmp r4, r1
	bge _08000980
	cmp r4, #0
	blt _080009A8
	adds r0, r3, #0
	adds r0, #0x31
	strb r0, [r2]
_08000996:
	adds r2, r6, r5
	ldrb r0, [r2]
	cmp r0, #0x39
	bhi _080009A2
	cmp r3, #0xa
	bne _080009B2
_080009A2:
	movs r0, #0x39
	strb r0, [r2]
	b _080009B8
_080009A8:
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r7]
	adds r4, r4, r1
	b _08000996
_080009B2:
	mov r5, ip
	cmp r5, #4
	blt _08000902
_080009B8:
	cmp r5, #4
	beq _08000A08
	cmp r5, #4
	bge _08000A08
	movs r1, #0x39
	movs r0, #4
	subs r2, r0, r5
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _080009EC
	cmp r2, #1
	ble _080009E2
	cmp r2, #2
	ble _080009DC
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
_080009DC:
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
_080009E2:
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
	cmp r5, #4
	bge _08000A08
_080009EC:
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r5, #1
	adds r0, r6, r0
	strb r1, [r0]
	adds r0, r5, #2
	adds r0, r6, r0
	strb r1, [r0]
	adds r0, r5, #3
	adds r0, r6, r0
	strb r1, [r0]
	adds r5, #4
	cmp r5, #4
	blt _080009EC
_08000A08:
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	mov r3, sp
	movs r2, #0
	movs r4, #0x20
	b _08000A18
_08000A16:
	adds r2, #1
_08000A18:
	cmp r2, #4
	bge _08000A30
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x30
	bne _08000A28
	strb r4, [r1]
	b _08000A16
_08000A28:
	cmp r0, #0x2b
	beq _08000A16
	cmp r0, #0x2d
	beq _08000A16
_08000A30:
	cmp r2, #4
	bne _08000A38
	movs r0, #0x30
	strb r0, [r3, #3]
_08000A38:
	ldr r0, _08000AF4 @ =gUnk_0300295C
	ldr r2, [r0]
	ldr r3, _08000AF8 @ =gUnk_03002958
	ldrh r1, [r3]
	movs r0, #0x20
	subs r5, r0, r1
	ldr r1, _08000AFC @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r4, r0, #0xc
	movs r3, #0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08000A76
	mov r1, sp
	movs r0, #0xfd
	lsls r0, r0, #1
	lsls r0, r0, #1
	adds r2, r2, r0
_08000A5E:
	ldrb r0, [r1]
	subs r0, r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r1, #1
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bhi _08000A76
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000A5E
_08000A76:
	movs r0, #5
	bl sub_08012F60
	adds r4, r0, #0
	mov r6, sp
	movs r2, #4
	mov r8, r2
	movs r5, #0
_08000A86:
	movs r1, #1
	adds r0, r5, #1
	mov r3, r8
	subs r2, r3, r0
	mov ip, r0
	adds r7, r6, r5
	cmp r2, #0
	ble _08000AE0
	adds r3, r2, #0
	rsbs r2, r3, #0
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08000AC2
	cmp r2, #3
	bge _08000AB6
	cmp r2, #2
	bge _08000AAE
	movs r1, #0xa
	subs r3, #1
_08000AAE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #1
_08000AB6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #1
	cmp r3, #0
	beq _08000AE0
_08000AC2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #4
	cmp r3, #0
	bne _08000AC2
_08000AE0:
	movs r3, #0
	adds r2, r7, #0
	subs r4, r4, r1
	cmp r4, r1
	bge _08000B00
	cmp r4, #0
	blt _08000B28
	movs r0, #0x31
	strb r0, [r7]
	b _08000B16
	.align 2, 0
_08000AF4: .4byte gUnk_0300295C
_08000AF8: .4byte gUnk_03002958
_08000AFC: .4byte gUnk_0300293C
_08000B00:
	adds r3, #1
	cmp r3, #9
	bgt _08000B16
	subs r4, r4, r1
	cmp r4, r1
	bge _08000B00
	cmp r4, #0
	blt _08000B28
	adds r0, r3, #0
	adds r0, #0x31
	strb r0, [r2]
_08000B16:
	adds r2, r6, r5
	ldrb r0, [r2]
	cmp r0, #0x39
	bhi _08000B22
	cmp r3, #0xa
	bne _08000B32
_08000B22:
	movs r0, #0x39
	strb r0, [r2]
	b _08000B38
_08000B28:
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r7]
	adds r4, r4, r1
	b _08000B16
_08000B32:
	mov r5, ip
	cmp r5, #4
	blt _08000A86
_08000B38:
	cmp r5, #4
	beq _08000B88
	cmp r5, #4
	bge _08000B88
	movs r1, #0x39
	movs r0, #4
	subs r2, r0, r5
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08000B6C
	cmp r2, #1
	ble _08000B62
	cmp r2, #2
	ble _08000B5C
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
_08000B5C:
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
_08000B62:
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
	cmp r5, #4
	bge _08000B88
_08000B6C:
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r5, #1
	adds r0, r6, r0
	strb r1, [r0]
	adds r0, r5, #2
	adds r0, r6, r0
	strb r1, [r0]
	adds r0, r5, #3
	adds r0, r6, r0
	strb r1, [r0]
	adds r5, #4
	cmp r5, #4
	blt _08000B6C
_08000B88:
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	mov r3, sp
	movs r2, #0
	movs r4, #0x20
	b _08000B98
_08000B96:
	adds r2, #1
_08000B98:
	cmp r2, #4
	bge _08000BB0
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x30
	bne _08000BA8
	strb r4, [r1]
	b _08000B96
_08000BA8:
	cmp r0, #0x2b
	beq _08000B96
	cmp r0, #0x2d
	beq _08000B96
_08000BB0:
	cmp r2, #4
	bne _08000BB8
	movs r0, #0x30
	strb r0, [r3, #3]
_08000BB8:
	ldr r0, _08000C74 @ =gUnk_0300295C
	ldr r2, [r0]
	ldr r3, _08000C78 @ =gUnk_03002958
	ldrh r1, [r3]
	movs r0, #0x20
	subs r5, r0, r1
	ldr r1, _08000C7C @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r4, r0, #0xc
	movs r3, #0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08000BF4
	mov r1, sp
	ldr r0, _08000C80 @ =0x0000021A
	lsls r0, r0, #1
	adds r2, r2, r0
_08000BDC:
	ldrb r0, [r1]
	subs r0, r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r1, #1
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bhi _08000BF4
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000BDC
_08000BF4:
	movs r0, #6
	bl sub_08012F60
	adds r4, r0, #0
	mov r6, sp
	movs r2, #4
	mov r8, r2
	movs r5, #0
_08000C04:
	movs r1, #1
	adds r0, r5, #1
	mov r3, r8
	subs r2, r3, r0
	mov ip, r0
	adds r7, r6, r5
	cmp r2, #0
	ble _08000C5E
	adds r3, r2, #0
	rsbs r2, r3, #0
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08000C40
	cmp r2, #3
	bge _08000C34
	cmp r2, #2
	bge _08000C2C
	movs r1, #0xa
	subs r3, #1
_08000C2C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #1
_08000C34:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #1
	cmp r3, #0
	beq _08000C5E
_08000C40:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #4
	cmp r3, #0
	bne _08000C40
_08000C5E:
	movs r3, #0
	adds r2, r7, #0
	subs r4, r4, r1
	cmp r4, r1
	bge _08000C84
	cmp r4, #0
	blt _08000CAC
	movs r0, #0x31
	strb r0, [r7]
	b _08000C9A
	.align 2, 0
_08000C74: .4byte gUnk_0300295C
_08000C78: .4byte gUnk_03002958
_08000C7C: .4byte gUnk_0300293C
_08000C80: .4byte 0x0000021A
_08000C84:
	adds r3, #1
	cmp r3, #9
	bgt _08000C9A
	subs r4, r4, r1
	cmp r4, r1
	bge _08000C84
	cmp r4, #0
	blt _08000CAC
	adds r0, r3, #0
	adds r0, #0x31
	strb r0, [r2]
_08000C9A:
	adds r2, r6, r5
	ldrb r0, [r2]
	cmp r0, #0x39
	bhi _08000CA6
	cmp r3, #0xa
	bne _08000CB6
_08000CA6:
	movs r0, #0x39
	strb r0, [r2]
	b _08000CBC
_08000CAC:
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r7]
	adds r4, r4, r1
	b _08000C9A
_08000CB6:
	mov r5, ip
	cmp r5, #4
	blt _08000C04
_08000CBC:
	cmp r5, #4
	beq _08000D0C
	cmp r5, #4
	bge _08000D0C
	movs r1, #0x39
	movs r0, #4
	subs r2, r0, r5
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08000CF0
	cmp r2, #1
	ble _08000CE6
	cmp r2, #2
	ble _08000CE0
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
_08000CE0:
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
_08000CE6:
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
	cmp r5, #4
	bge _08000D0C
_08000CF0:
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r5, #1
	adds r0, r6, r0
	strb r1, [r0]
	adds r0, r5, #2
	adds r0, r6, r0
	strb r1, [r0]
	adds r0, r5, #3
	adds r0, r6, r0
	strb r1, [r0]
	adds r5, #4
	cmp r5, #4
	blt _08000CF0
_08000D0C:
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	mov r3, sp
	movs r2, #0
	movs r4, #0x20
	b _08000D1C
_08000D1A:
	adds r2, #1
_08000D1C:
	cmp r2, #4
	bge _08000D34
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x30
	bne _08000D2C
	strb r4, [r1]
	b _08000D1A
_08000D2C:
	cmp r0, #0x2b
	beq _08000D1A
	cmp r0, #0x2d
	beq _08000D1A
_08000D34:
	cmp r2, #4
	bne _08000D3C
	movs r0, #0x30
	strb r0, [r3, #3]
_08000D3C:
	ldr r0, _08000D88 @ =gUnk_0300295C
	ldr r2, [r0]
	ldr r3, _08000D8C @ =gUnk_03002958
	ldrh r1, [r3]
	movs r0, #0x20
	subs r5, r0, r1
	ldr r1, _08000D90 @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r4, r0, #0xc
	movs r3, #0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08000D78
	mov r1, sp
	ldr r0, _08000D94 @ =0x0000023A
	lsls r0, r0, #1
	adds r2, r2, r0
_08000D60:
	ldrb r0, [r1]
	subs r0, r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r1, #1
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bhi _08000D78
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000D60
_08000D78:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000D88: .4byte gUnk_0300295C
_08000D8C: .4byte gUnk_03002958
_08000D90: .4byte gUnk_0300293C
_08000D94: .4byte 0x0000023A

	thumb_func_start sub_08000D98
sub_08000D98: @ 0x08000D98
	push {lr}
	ldr r0, _08000DB8 @ =gUnk_03002954
	ldr r1, _08000DBC @ =gUnk_03003364
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _08000DD8
	ldr r0, _08000DC0 @ =0x04000006
	ldrh r0, [r0]
	movs r2, #0xff
	ands r2, r0
	cmp r2, #0x9e
	bhi _08000DC4
	adds r2, #0x44
	b _08000DCC
	.align 2, 0
_08000DB8: .4byte gUnk_03002954
_08000DBC: .4byte gUnk_03003364
_08000DC0: .4byte 0x04000006
_08000DC4:
	adds r0, r2, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08000DCC:
	ldr r0, _08000DD4 @ =gUnk_03002938
	ldr r0, [r0]
	subs r0, r2, r0
	b _08000E0E
	.align 2, 0
_08000DD4: .4byte gUnk_03002938
_08000DD8:
	ldr r0, _08000DE8 @ =0x04000006
	ldrh r0, [r0]
	movs r2, #0xff
	ands r2, r0
	cmp r2, #0x9e
	bhi _08000DEC
	adds r2, #0x44
	b _08000DF4
	.align 2, 0
_08000DE8: .4byte 0x04000006
_08000DEC:
	adds r0, r2, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08000DF4:
	ldr r0, _08000E18 @ =gUnk_03002938
	ldr r0, [r0]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r1]
	subs r0, #1
	ldr r1, _08000E1C @ =gUnk_03002950
	ldr r1, [r1]
	subs r0, r0, r1
	movs r1, #0xe4
	muls r0, r1, r0
	adds r0, r2, r0
_08000E0E:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08000E18: .4byte gUnk_03002938
_08000E1C: .4byte gUnk_03002950

	thumb_func_start sub_08000E20
sub_08000E20: @ 0x08000E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x20]
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08000D98
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r7, sp
	movs r0, #3
	mov r8, r0
	movs r6, #0
	lsls r4, r4, #5
	mov sb, r4
_08000E4E:
	movs r1, #1
	adds r0, r6, #1
	mov r3, r8
	subs r2, r3, r0
	mov ip, r0
	adds r4, r7, r6
	cmp r2, #0
	ble _08000EA8
	adds r3, r2, #0
	rsbs r2, r3, #0
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08000E8A
	cmp r2, #3
	bge _08000E7E
	cmp r2, #2
	bge _08000E76
	movs r1, #0xa
	subs r3, #1
_08000E76:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #1
_08000E7E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #1
	cmp r3, #0
	beq _08000EA8
_08000E8A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r1, r0, #1
	subs r3, #4
	cmp r3, #0
	bne _08000E8A
_08000EA8:
	movs r3, #0
	adds r2, r4, #0
	subs r5, r5, r1
	cmp r5, r1
	bge _08000EBC
	cmp r5, #0
	blt _08000EE4
	movs r0, #0x31
	strb r0, [r4]
	b _08000ED2
_08000EBC:
	adds r3, #1
	cmp r3, #9
	bgt _08000ED2
	subs r5, r5, r1
	cmp r5, r1
	bge _08000EBC
	cmp r5, #0
	blt _08000EE4
	adds r0, r3, #0
	adds r0, #0x31
	strb r0, [r2]
_08000ED2:
	adds r2, r7, r6
	ldrb r0, [r2]
	cmp r0, #0x39
	bhi _08000EDE
	cmp r3, #0xa
	bne _08000EEE
_08000EDE:
	movs r0, #0x39
	strb r0, [r2]
	b _08000EF4
_08000EE4:
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r4]
	adds r5, r5, r1
	b _08000ED2
_08000EEE:
	mov r6, ip
	cmp r6, #3
	blt _08000E4E
_08000EF4:
	cmp r6, #3
	beq _08000F42
	cmp r6, #3
	bge _08000F42
	movs r1, #0x39
	movs r0, #3
	subs r2, r0, r6
	ands r2, r0
	cmp r2, #0
	beq _08000F26
	cmp r2, #1
	ble _08000F1C
	cmp r2, #2
	ble _08000F16
	adds r0, r7, r6
	strb r1, [r0]
	adds r6, #1
_08000F16:
	adds r0, r7, r6
	strb r1, [r0]
	adds r6, #1
_08000F1C:
	adds r0, r7, r6
	strb r1, [r0]
	adds r6, #1
	cmp r6, #3
	bge _08000F42
_08000F26:
	adds r0, r7, r6
	strb r1, [r0]
	adds r0, r6, #1
	adds r0, r7, r0
	strb r1, [r0]
	adds r0, r6, #2
	adds r0, r7, r0
	strb r1, [r0]
	adds r0, r6, #3
	adds r0, r7, r0
	strb r1, [r0]
	adds r6, #4
	cmp r6, #3
	blt _08000F26
_08000F42:
	adds r1, r7, r6
	movs r0, #0
	strb r0, [r1]
	mov r4, sl
	add r4, sb
	ldr r0, _08000F94 @ =gUnk_03002958
	ldrh r1, [r0]
	movs r0, #0x20
	subs r6, r0, r1
	ldr r1, _08000F98 @ =gUnk_0300293C
	ldrh r0, [r1]
	lsls r5, r0, #0xc
	movs r3, #0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08000F84
	mov r2, sp
	lsls r0, r4, #1
	ldr r4, [sp, #0x20]
	adds r1, r0, r4
_08000F6C:
	ldrb r0, [r2]
	subs r0, r0, r6
	orrs r0, r5
	strh r0, [r1]
	adds r2, #1
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1f
	bhi _08000F84
	ldrb r0, [r2]
	cmp r0, #0
	bne _08000F6C
_08000F84:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000F94: .4byte gUnk_03002958
_08000F98: .4byte gUnk_0300293C

	thumb_func_start sub_08000F9C
sub_08000F9C: @ 0x08000F9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp]
	str r1, [sp, #4]
	mov sb, r2
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x18]
	ldr r2, [sp]
	stm r2!, {r3}
	str r2, [sp]
	movs r4, #0
	str r4, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r5, #0
	mov ip, r5
	ldr r1, [sp, #8]
	cmp r5, r1
	blo _08000FD0
	b _08001102
_08000FD0:
	movs r2, #0
	str r2, [sp, #0x20]
	ldr r7, [sp, #0x50]
	cmp ip, r7
	bhs _08000FDC
	mov r7, ip
_08000FDC:
	ldr r4, [sp, #8]
	mov r1, ip
	subs r0, r4, r1
	movs r2, #0x11
	str r2, [sp, #0x1c]
	cmp r0, #0x10
	bhi _08000FEC
	str r0, [sp, #0x1c]
_08000FEC:
	movs r4, #1
	mov r8, r4
	mov r0, sb
	add r0, ip
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	movs r6, #1
	adds r0, r5, #1
	str r0, [sp, #0x2c]
	cmp r8, r7
	bhi _0800105E
	mov r0, ip
	adds r0, #1
	add r0, sb
	str r0, [sp, #0x28]
_0800100A:
	mov r2, ip
	subs r1, r2, r6
	mov r0, sb
	adds r4, r0, r1
	ldrb r0, [r4]
	adds r2, r6, #1
	mov sl, r2
	ldr r2, [sp, #0x24]
	cmp r0, r2
	bne _08001058
	movs r3, #1
	ldr r0, [sp, #0x1c]
	cmp r3, r0
	bhs _08001050
	adds r0, r1, #1
	add r0, sb
	ldrb r0, [r0]
	ldr r1, [sp, #0x28]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08001050
	mov r0, ip
	add r0, sb
	adds r2, r0, #1
	adds r1, r4, #1
_0800103C:
	adds r2, #1
	adds r1, #1
	adds r3, #1
	ldr r4, [sp, #0x1c]
	cmp r3, r4
	bhs _08001050
	ldrb r0, [r1]
	ldrb r4, [r2]
	cmp r0, r4
	beq _0800103C
_08001050:
	cmp r3, r8
	bls _08001058
	str r6, [sp, #0x20]
	mov r8, r3
_08001058:
	mov r6, sl
	cmp r6, r7
	bls _0800100A
_0800105E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08001078
	str r5, [sp, #0x14]
	ldr r1, [sp]
	adds r0, r1, r5
	mov r2, sp
	ldrb r2, [r2, #0xc]
	strb r2, [r0]
	ldr r5, [sp, #0x2c]
	ldr r4, [sp, #4]
	cmp r5, r4
	bhi _0800110A
_08001078:
	mov r0, r8
	cmp r0, #1
	bhi _080010A4
	ldr r1, [sp]
	ldr r4, [sp, #0x14]
	adds r2, r1, r4
	movs r0, #1
	ldr r1, [sp, #0xc]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [sp]
	adds r0, r2, r5
	add r4, sp, #0x24
	ldrb r4, [r4]
	strb r4, [r0]
	adds r5, #1
	ldr r0, [sp, #4]
	cmp r5, r0
	bls _080010EE
	b _0800110A
_080010A4:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _080010C2
	str r5, [sp, #0x18]
	adds r5, #1
	ldr r2, [sp, #4]
	cmp r5, r2
	bhi _0800110A
	ldr r4, [sp]
	ldr r0, [sp, #0x18]
	adds r1, r4, r0
	mov r0, r8
	subs r0, #2
	strb r0, [r1]
	b _080010D4
_080010C2:
	ldr r1, [sp]
	ldr r2, [sp, #0x18]
	adds r0, r1, r2
	mov r1, r8
	subs r1, #2
	lsls r1, r1, #4
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_080010D4:
	movs r0, #1
	ldr r4, [sp, #0x10]
	eors r4, r0
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r1, r0, r5
	ldr r0, [sp, #0x20]
	subs r0, #1
	strb r0, [r1]
	adds r5, #1
	ldr r1, [sp, #4]
	cmp r5, r1
	bhi _0800110A
_080010EE:
	ldr r2, [sp, #0xc]
	adds r2, #1
	movs r0, #7
	ands r2, r0
	str r2, [sp, #0xc]
	add ip, r8
	ldr r4, [sp, #8]
	cmp ip, r4
	bhs _08001102
	b _08000FD0
_08001102:
	adds r5, #4
	movs r0, #0
	cmp r0, #0
	beq _0800110C
_0800110A:
	movs r5, #0
_0800110C:
	adds r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001120
sub_08001120: @ 0x08001120
	push {lr}
	ldr r1, _08001138 @ =gUnk_0300293C
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800113C @ =gUnk_03002958
	movs r0, #0x40
	strh r0, [r1]
	bl sub_080016A0
	pop {r0}
	bx r0
	.align 2, 0
_08001138: .4byte gUnk_0300293C
_0800113C: .4byte gUnk_03002958

	thumb_func_start sub_08001140
sub_08001140: @ 0x08001140
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	adds r5, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x20]
	mov r0, sl
	adds r1, r6, #0
	bl __subsf3
	adds r4, r0, #0
	adds r0, r5, #0
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __mulsf3
	ldr r1, _080011F0 @ =0x42C80000
	bl __divsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __addsf3
	mov sb, r0
	mov r0, r8
	bl __floatsisf
	adds r4, r0, #0
	adds r0, r7, #0
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r5, r0, #0
	ldr r0, _080011F4 @ =0x3F800000
	adds r1, r5, #0
	bl __subsf3
	adds r4, r0, #0
	adds r1, r4, #0
	bl __mulsf3
	adds r1, r6, #0
	bl __mulsf3
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r5, #0
	bl __addsf3
	adds r1, r4, #0
	bl __mulsf3
	mov r1, sb
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __addsf3
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r5, #0
	bl __mulsf3
	mov r1, sl
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __addsf3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080011F0: .4byte 0x42C80000
_080011F4: .4byte 0x3F800000

	thumb_func_start sub_080011F8
sub_080011F8: @ 0x080011F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	adds r4, r3, #0
	lsls r5, r7, #0xa
	subs r0, r1, r7
	muls r0, r2, r0
	lsls r0, r0, #0xa
	movs r1, #0x64
	bl __divsi3
	adds r6, r5, r0
	lsls r4, r4, #0xa
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	bl __divsi3
	adds r2, r0, #0
	adds r3, r2, #0
	movs r0, #0x80
	lsls r0, r0, #3
	subs r1, r0, r2
	adds r0, r1, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08001234
	ldr r4, _08001280 @ =0x000003FF
	adds r0, r0, r4
_08001234:
	asrs r0, r0, #0xa
	adds r5, r0, #0
	muls r5, r7, r5
	lsls r0, r1, #1
	muls r0, r2, r0
	cmp r0, #0
	bge _08001246
	ldr r1, _08001280 @ =0x000003FF
	adds r0, r0, r1
_08001246:
	asrs r0, r0, #0xa
	muls r0, r6, r0
	cmp r0, #0
	bge _08001252
	ldr r4, _08001280 @ =0x000003FF
	adds r0, r0, r4
_08001252:
	asrs r0, r0, #0xa
	adds r5, r5, r0
	adds r0, r3, #0
	muls r0, r3, r0
	cmp r0, #0
	bge _08001262
	ldr r1, _08001280 @ =0x000003FF
	adds r0, r0, r1
_08001262:
	asrs r0, r0, #0xa
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r0, r5, r0
	cmp r0, #0
	bge _08001274
	ldr r1, _08001280 @ =0x000003FF
	adds r0, r0, r1
_08001274:
	asrs r0, r0, #0xa
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001280: .4byte 0x000003FF

	thumb_func_start sub_08001284
sub_08001284: @ 0x08001284
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0xb
	adds r4, r1, r2
	ldr r0, _080012CC @ =gUnk_03002958
	ldrh r1, [r0]
	movs r0, #0x20
	subs r6, r0, r1
	ldr r0, _080012D0 @ =gUnk_0300293C
	ldrh r0, [r0]
	lsls r5, r0, #0xc
	movs r2, #0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080012C4
	lsls r0, r4, #1
	adds r1, r0, r7
_080012AC:
	ldrb r0, [r3]
	subs r0, r0, r6
	orrs r0, r5
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	adds r2, #1
	cmp r2, #0x1f
	bhi _080012C4
	ldrb r0, [r3]
	cmp r0, #0
	bne _080012AC
_080012C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080012CC: .4byte gUnk_03002958
_080012D0: .4byte gUnk_0300293C

	thumb_func_start sub_080012D4
sub_080012D4: @ 0x080012D4
	ldr r1, _080012DC @ =gUnk_0300293C
	strh r0, [r1]
	bx lr
	.align 2, 0
_080012DC: .4byte gUnk_0300293C

	thumb_func_start sub_080012E0
sub_080012E0: @ 0x080012E0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r5, sp
	adds r5, #2
	mov r1, sp
	adds r2, r5, #0
	bl sub_08004684
	ldr r1, _08001310 @ =gUnk_03002958
	movs r0, #0xfa
	lsls r0, r0, #0x18
	adds r4, r4, r0
	ldrh r0, [r5]
	lsls r0, r0, #0xe
	subs r4, r4, r0
	lsrs r4, r4, #5
	strh r4, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001310: .4byte gUnk_03002958

	thumb_func_start sub_08001314
sub_08001314: @ 0x08001314
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	mov ip, r2
	movs r5, #0
	cmp r3, #1
	bne _080013DC
	cmp r4, #0
	blt _08001330
	movs r0, #0x2b
	strb r0, [r6]
	b _08001336
_08001330:
	movs r0, #0x2d
	strb r0, [r6]
	rsbs r4, r4, #0
_08001336:
	adds r5, #1
	b _080013DC
_0800133A:
	movs r2, #1
	adds r0, r5, #1
	mov r1, ip
	subs r3, r1, r0
	mov r8, r0
	adds r7, r6, r5
	cmp r3, #0
	ble _08001394
	adds r1, r3, #0
	rsbs r3, r1, #0
	movs r0, #3
	ands r3, r0
	cmp r3, #0
	beq _08001376
	cmp r3, #3
	bge _0800136A
	cmp r3, #2
	bge _08001362
	movs r2, #0xa
	subs r1, #1
_08001362:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r2, r0, #1
	subs r1, #1
_0800136A:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r2, r0, #1
	subs r1, #1
	cmp r1, #0
	beq _08001394
_08001376:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r2, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r2, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r2, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r2, r0, #1
	subs r1, #4
	cmp r1, #0
	bne _08001376
_08001394:
	movs r1, #0
	adds r3, r7, #0
	subs r4, r4, r2
	cmp r4, r2
	bge _080013A8
	cmp r4, #0
	blt _080013D0
	movs r0, #0x31
	strb r0, [r7]
	b _080013BE
_080013A8:
	adds r1, #1
	cmp r1, #9
	bgt _080013BE
	subs r4, r4, r2
	cmp r4, r2
	bge _080013A8
	cmp r4, #0
	blt _080013D0
	adds r0, r1, #0
	adds r0, #0x31
	strb r0, [r3]
_080013BE:
	adds r3, r6, r5
	ldrb r0, [r3]
	cmp r0, #0x39
	bhi _080013CA
	cmp r1, #0xa
	bne _080013DA
_080013CA:
	movs r0, #0x39
	strb r0, [r3]
	b _080013E0
_080013D0:
	adds r0, r1, #0
	adds r0, #0x30
	strb r0, [r7]
	adds r4, r4, r2
	b _080013BE
_080013DA:
	mov r5, r8
_080013DC:
	cmp r5, ip
	blt _0800133A
_080013E0:
	cmp r5, ip
	beq _08001430
	cmp r5, ip
	bge _08001430
	movs r1, #0x39
	mov r0, ip
	subs r3, r0, r5
	movs r0, #3
	ands r3, r0
	cmp r3, #0
	beq _08001414
	cmp r3, #1
	ble _0800140A
	cmp r3, #2
	ble _08001404
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
_08001404:
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
_0800140A:
	adds r0, r6, r5
	strb r1, [r0]
	adds r5, #1
	cmp r5, ip
	bge _08001430
_08001414:
	adds r0, r6, r5
	strb r1, [r0]
	adds r0, r5, #1
	adds r0, r6, r0
	strb r1, [r0]
	adds r0, r5, #2
	adds r0, r6, r0
	strb r1, [r0]
	adds r0, r5, #3
	adds r0, r6, r0
	strb r1, [r0]
	adds r5, #4
	cmp r5, ip
	blt _08001414
_08001430:
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001444
sub_08001444: @ 0x08001444
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r3, #0
	cmp r3, r4
	bhs _0800147C
	movs r7, #0xf
_08001454:
	adds r2, r3, #1
	subs r1, r4, r2
	lsls r1, r1, #2
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r6
	asrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08001470
	adds r1, r5, r3
	adds r0, #0x30
	b _08001474
_08001470:
	adds r1, r5, r3
	adds r0, #0x37
_08001474:
	strb r0, [r1]
	adds r3, r2, #0
	cmp r3, r4
	blo _08001454
_0800147C:
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08001488
sub_08001488: @ 0x08001488
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r5, #0x20
	b _08001494
_08001492:
	adds r0, #1
_08001494:
	cmp r0, r1
	bge _080014AC
	adds r3, r4, r0
	ldrb r2, [r3]
	cmp r2, #0x30
	bne _080014A4
	strb r5, [r3]
	b _08001492
_080014A4:
	cmp r2, #0x2b
	beq _08001492
	cmp r2, #0x2d
	beq _08001492
_080014AC:
	cmp r0, r1
	bne _080014B8
	adds r0, r1, r4
	subs r0, #1
	movs r1, #0x30
	strb r1, [r0]
_080014B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080014C0
sub_080014C0: @ 0x080014C0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r1, #0
	cmp r1, r5
	bge _080014E0
	ldrb r0, [r2]
	cmp r0, #0x20
	bne _080014E0
_080014D2:
	adds r1, #1
	cmp r1, r5
	bge _080014E0
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _080014D2
_080014E0:
	cmp r1, #0
	beq _080015AE
	adds r3, r1, #0
	movs r4, #0
	subs r6, r5, r3
	cmp r4, r6
	bge _0800155C
	movs r0, #3
	ands r0, r6
	cmp r6, #0
	ble _08001518
	cmp r0, #0
	beq _08001528
	cmp r0, #1
	ble _08001518
	cmp r0, #2
	ble _0800150C
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r2]
	movs r4, #1
	adds r3, #1
_0800150C:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, #1
	adds r3, #1
_08001518:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, #1
	adds r3, #1
	cmp r4, r6
	bge _0800155C
_08001528:
	adds r1, r2, r4
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r4, #1
	adds r0, r3, #1
	adds r1, r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r4, #2
	adds r0, r3, #2
	adds r1, r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r4, #3
	adds r0, r3, #3
	adds r1, r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	adds r4, #4
	adds r3, #4
	cmp r4, r6
	blt _08001528
_0800155C:
	cmp r4, r5
	bge _080015A6
	movs r3, #0x20
	subs r1, r5, r4
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0800158A
	cmp r1, #1
	ble _08001580
	cmp r1, #2
	ble _0800157A
	adds r0, r2, r4
	strb r3, [r0]
	adds r4, #1
_0800157A:
	adds r0, r2, r4
	strb r3, [r0]
	adds r4, #1
_08001580:
	adds r0, r2, r4
	strb r3, [r0]
	adds r4, #1
	cmp r4, r5
	bge _080015A6
_0800158A:
	adds r0, r2, r4
	strb r3, [r0]
	adds r0, r4, #1
	adds r0, r2, r0
	strb r3, [r0]
	adds r0, r4, #2
	adds r0, r2, r0
	strb r3, [r0]
	adds r0, r4, #3
	adds r0, r2, r0
	strb r3, [r0]
	adds r4, #4
	cmp r4, r5
	blt _0800158A
_080015A6:
	adds r0, r4, r2
	subs r0, #1
	movs r1, #0
	strb r1, [r0]
_080015AE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080015B4
sub_080015B4: @ 0x080015B4
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
	ldrb r0, [r3]
	strb r0, [r4]
	b _080015D0
_080015C2:
	adds r2, #1
	cmp r2, #0x1d
	bhi _080015D6
	adds r1, r4, r2
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
_080015D0:
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080015C2
_080015D6:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
