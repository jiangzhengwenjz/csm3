	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MP_clear_modM
MP_clear_modM: @ 0x080B8840
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080B8854
	movs r0, #0xc
	b _080B8856
_080B8854:
	movs r0, #3
_080B8856:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start MPlayModDepthSet
MPlayModDepthSet: @ 0x080B8860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080B88D0 @ =0x68736D53
	cmp r1, r0
	bne _080B88C0
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080B88BC
	mov sb, r8
_080B8890:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080B88B2
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080B88B2
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _080B88B2
	adds r0, r4, #0
	bl MP_clear_modM
_080B88B2:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080B8890
_080B88BC:
	ldr r0, _080B88D0 @ =0x68736D53
	str r0, [r6, #0x34]
_080B88C0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B88D0: .4byte 0x68736D53

	thumb_func_start MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x080B88D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080B8944 @ =0x68736D53
	cmp r1, r0
	bne _080B8934
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080B8930
	mov sb, r8
_080B8904:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080B8926
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080B8926
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _080B8926
	adds r0, r4, #0
	bl MP_clear_modM
_080B8926:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080B8904
_080B8930:
	ldr r0, _080B8944 @ =0x68736D53
	str r0, [r6, #0x34]
_080B8934:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B8944: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x080B8948
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _080B896C
	b _080B8A9A
_080B896C:
	lsls r0, r5, #2
	ldr r1, _080B8978 @ =_080B897C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B8978: .4byte _080B897C
_080B897C: @ jump table
	.4byte _080B89C4 @ case 0
	.4byte _080B89C8 @ case 1
	.4byte _080B89D0 @ case 2
	.4byte _080B89D8 @ case 3
	.4byte _080B89E2 @ case 4
	.4byte _080B89F0 @ case 5
	.4byte _080B89FE @ case 6
	.4byte _080B8A06 @ case 7
	.4byte _080B8A0E @ case 8
	.4byte _080B8A16 @ case 9
	.4byte _080B8A1E @ case 10
	.4byte _080B8A26 @ case 11
	.4byte _080B8A2E @ case 12
	.4byte _080B8A3C @ case 13
	.4byte _080B8A4A @ case 14
	.4byte _080B8A58 @ case 15
	.4byte _080B8A66 @ case 16
	.4byte _080B8A74 @ case 17
_080B89C4:
	strb r2, [r3]
	b _080B8A9A
_080B89C8:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _080B8A9A
_080B89D0:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _080B8A9A
_080B89D8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _080B8A9A
_080B89E2:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _080B8A9A
_080B89F0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _080B8A9A
_080B89FE:
	ldrb r3, [r3]
	cmp r3, r2
	beq _080B8A80
	b _080B8A94
_080B8A06:
	ldrb r3, [r3]
	cmp r3, r2
	bne _080B8A80
	b _080B8A94
_080B8A0E:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _080B8A80
	b _080B8A94
_080B8A16:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _080B8A80
	b _080B8A94
_080B8A1E:
	ldrb r3, [r3]
	cmp r3, r2
	bls _080B8A80
	b _080B8A94
_080B8A26:
	ldrb r3, [r3]
	cmp r3, r2
	blo _080B8A80
	b _080B8A94
_080B8A2E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _080B8A80
	b _080B8A94
_080B8A3C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _080B8A80
	b _080B8A94
_080B8A4A:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _080B8A80
	b _080B8A94
_080B8A58:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080B8A80
	b _080B8A94
_080B8A66:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _080B8A80
	b _080B8A94
_080B8A74:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080B8A94
_080B8A80:
	ldr r0, _080B8A90 @ =gUnk_03007534
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _080B8A9A
	.align 2, 0
_080B8A90: .4byte gUnk_03007534
_080B8A94:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_080B8A9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x080B8AA0
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _080B8ABC @ =gUnk_080C089C
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080B8ABC: .4byte gUnk_080C089C

	thumb_func_start ply_xxx
ply_xxx: @ 0x080B8AC0
	push {lr}
	ldr r2, _080B8AD0 @ =gMPlayJumpTable
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080B8AD0: .4byte gMPlayJumpTable

	thumb_func_start ply_xwave
ply_xwave: @ 0x080B8AD4
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _080B8B0C @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _080B8B10 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _080B8B14 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _080B8B18 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8B0C: .4byte 0xFFFFFF00
_080B8B10: .4byte 0xFFFF00FF
_080B8B14: .4byte 0xFF00FFFF
_080B8B18: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x080B8B1C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x080B8B30
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x080B8B44
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x080B8B58
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x080B8B6C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x080B8B80
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x080B8B8C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x080B8B98
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x080B8BAC
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]

	thumb_func_start sub_080B8BBC
sub_080B8BBC: @ 0x080B8BBC
	bx lr
	.align 2, 0

	thumb_func_start nullsub_141
nullsub_141: @ 0x080B8BC0
	bx lr
	.align 2, 0

