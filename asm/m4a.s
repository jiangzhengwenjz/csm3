	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x080B7944
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080B795C @ =0x68736D53
	cmp r3, r0
	bne _080B795A
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _080B7960 @ =0x00000101
	strh r0, [r2, #0x28]
_080B795A:
	bx lr
	.align 2, 0
_080B795C: .4byte 0x68736D53
_080B7960: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x080B7964
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080B7984 @ =0x68736D53
	cmp r3, r0
	bne _080B7982
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _080B7988 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080B7982:
	bx lr
	.align 2, 0
_080B7984: .4byte 0x68736D53
_080B7988: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x080B798C
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _080B79CE
	movs r7, #0x80
_080B7998:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080B79C6
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080B79C6
	adds r0, r4, #0
	bl Clear64byte_rev
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080B79C6:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B7998
_080B79CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x080B79D4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080B7A9C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _080B7AA0 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _080B7AA4 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _080B7AA8 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _080B7AAC @ =0x68736D53
	cmp r6, r0
	bne _080B7A94
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _080B7AB0 @ =gUnk_03007530
	ldr r0, _080B7AB4 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _080B7AB8 @ =ply_lfos_rev01
	str r0, [r1, #0x44]
	ldr r0, _080B7ABC @ =ply_mod_rev01
	str r0, [r1, #0x4c]
	ldr r0, _080B7AC0 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _080B7AC4 @ =ply_endtie_rev01
	str r0, [r1, #0x74]
	ldr r0, _080B7AC8 @ =SampFreqSet_rev01
	str r0, [r1, #0x78]
	ldr r0, _080B7ACC @ =TrackStop_rev01
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080B7AD0 @ =FadeOutBody_rev01
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _080B7AD4 @ =TrkVolPitSet_rev01
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _080B7AD8 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _080B7ADC @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _080B7AE0 @ =MidiKey2CgbFr
	str r0, [r4, #0x30]
	ldr r0, _080B7AE4 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _080B7AE8 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_080B7A94:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B7A9C: .4byte 0x04000084
_080B7AA0: .4byte 0x04000080
_080B7AA4: .4byte 0x04000063
_080B7AA8: .4byte 0x03007FF0
_080B7AAC: .4byte 0x68736D53
_080B7AB0: .4byte gUnk_03007530
_080B7AB4: .4byte ply_memacc
_080B7AB8: .4byte ply_lfos_rev01
_080B7ABC: .4byte ply_mod_rev01
_080B7AC0: .4byte ply_xcmd
_080B7AC4: .4byte ply_endtie_rev01
_080B7AC8: .4byte SampFreqSet_rev01
_080B7ACC: .4byte TrackStop_rev01
_080B7AD0: .4byte FadeOutBody_rev01
_080B7AD4: .4byte TrkVolPitSet_rev01
_080B7AD8: .4byte CgbSound
_080B7ADC: .4byte CgbOscOff
_080B7AE0: .4byte MidiKey2CgbFr
_080B7AE4: .4byte 0x00000000
_080B7AE8: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x080B7AEC
	svc #0x2a
	bx lr

	thumb_func_start ClearChain_rev
ClearChain_rev: @ 0x080B7AF0
	push {lr}
	ldr r1, _080B7B00 @ =gUnk_030075B8
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080B7B00: .4byte gUnk_030075B8

	thumb_func_start Clear64byte_rev
Clear64byte_rev: @ 0x080B7B04
	push {lr}
	ldr r1, _080B7B14 @ =gUnk_030075BC
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080B7B14: .4byte gUnk_030075BC

	thumb_func_start SoundInit
SoundInit: @ 0x080B7B18
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r2, _080B7BB0 @ =0x040000C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080B7B34
	ldr r0, _080B7BB4 @ =0x84400004
	str r0, [r2]
_080B7B34:
	ldr r1, _080B7BB8 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _080B7BBC @ =0x00000B0E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080B7BC0 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080B7BC4 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080B7BC8 @ =0x040000A0
	str r0, [r1]
	ldr r0, _080B7BCC @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _080B7BD0 @ =0x05000260
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _080B7BD4 @ =ply_note_rev01
	str r0, [r5, #0x38]
	ldr r0, _080B7BD8 @ =nullsub_141
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _080B7BDC @ =gUnk_03007530
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet_rev01
	ldr r0, _080B7BE0 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B7BB0: .4byte 0x040000C4
_080B7BB4: .4byte 0x84400004
_080B7BB8: .4byte 0x040000C6
_080B7BBC: .4byte 0x00000B0E
_080B7BC0: .4byte 0x04000089
_080B7BC4: .4byte 0x040000BC
_080B7BC8: .4byte 0x040000A0
_080B7BCC: .4byte 0x03007FF0
_080B7BD0: .4byte 0x05000260
_080B7BD4: .4byte ply_note_rev01
_080B7BD8: .4byte nullsub_141
_080B7BDC: .4byte gUnk_03007530
_080B7BE0: .4byte 0x68736D53

	thumb_func_start SampFreqSet_rev01
SampFreqSet_rev01: @ 0x080B7BE4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _080B7C64 @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _080B7C68 @ =gUnk_080C0768
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _080B7C6C @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _080B7C70 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _080B7C74 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _080B7C78 @ =0x04000102
	strh r6, [r0]
	ldr r4, _080B7C7C @ =0x04000100
	ldr r0, _080B7C80 @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn_rev01
	ldr r1, _080B7C84 @ =0x04000006
_080B7C48:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _080B7C48
	ldr r1, _080B7C84 @ =0x04000006
_080B7C50:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _080B7C50
	ldr r1, _080B7C78 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B7C64: .4byte 0x03007FF0
_080B7C68: .4byte gUnk_080C0768
_080B7C6C: .4byte 0x00091D1B
_080B7C70: .4byte 0x00001388
_080B7C74: .4byte 0x00002710
_080B7C78: .4byte 0x04000102
_080B7C7C: .4byte 0x04000100
_080B7C80: .4byte 0x00044940
_080B7C84: .4byte 0x04000006

	thumb_func_start m4aSoundMode
m4aSoundMode: @ 0x080B7C88
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080B7D14 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080B7D18 @ =0x68736D53
	cmp r1, r0
	bne _080B7D0E
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _080B7CAA
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_080B7CAA:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _080B7CCA
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_080B7CC0:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _080B7CC0
_080B7CCA:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _080B7CD8
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_080B7CD8:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _080B7CF6
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _080B7D1C @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_080B7CF6:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _080B7D0A
	bl SoundVSyncOff_rev01
	adds r0, r4, #0
	bl SampFreqSet_rev01
_080B7D0A:
	ldr r0, _080B7D18 @ =0x68736D53
	str r0, [r5]
_080B7D0E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B7D14: .4byte 0x03007FF0
_080B7D18: .4byte 0x68736D53
_080B7D1C: .4byte 0x04000089

	thumb_func_start SoundClear_rev01
SoundClear_rev01: @ 0x080B7D20
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B7D6C @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _080B7D70 @ =0x68736D53
	cmp r1, r0
	bne _080B7D66
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_080B7D3A:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _080B7D3A
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _080B7D62
	movs r5, #1
	movs r7, #0
_080B7D4E:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080B7D4E
_080B7D62:
	ldr r0, _080B7D70 @ =0x68736D53
	str r0, [r6]
_080B7D66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7D6C: .4byte 0x03007FF0
_080B7D70: .4byte 0x68736D53

	thumb_func_start SoundVSyncOff_rev01
SoundVSyncOff_rev01: @ 0x080B7D74
	push {lr}
	sub sp, #4
	ldr r0, _080B7DC0 @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _080B7DC4 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _080B7DBA
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r3, _080B7DC8 @ =0x040000C4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080B7D9E
	ldr r0, _080B7DCC @ =0x84400004
	str r0, [r3]
_080B7D9E:
	ldr r1, _080B7DD0 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080B7DD4 @ =0x0500018C
	mov r0, sp
	bl CpuSet
_080B7DBA:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B7DC0: .4byte 0x03007FF0
_080B7DC4: .4byte 0x978C92AD
_080B7DC8: .4byte 0x040000C4
_080B7DCC: .4byte 0x84400004
_080B7DD0: .4byte 0x040000C6
_080B7DD4: .4byte 0x0500018C

	thumb_func_start SoundVSyncOn_rev01
SoundVSyncOn_rev01: @ 0x080B7DD8
	push {r4, lr}
	ldr r0, _080B7E04 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080B7E08 @ =0x68736D53
	cmp r3, r0
	beq _080B7DFC
	ldr r1, _080B7E0C @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_080B7DFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B7E04: .4byte 0x03007FF0
_080B7E08: .4byte 0x68736D53
_080B7E0C: .4byte 0x040000C6

	thumb_func_start MPlayOpen
MPlayOpen: @ 0x080B7E10
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080B7E74
	cmp r4, #0x10
	bls _080B7E24
	movs r4, #0x10
_080B7E24:
	ldr r0, _080B7E7C @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080B7E80 @ =0x68736D53
	cmp r1, r0
	bne _080B7E74
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte_rev
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080B7E58
	movs r1, #0
_080B7E4A:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080B7E4A
_080B7E58:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080B7E68
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080B7E68:
	str r7, [r5, #0x24]
	ldr r0, _080B7E84 @ =MPlayMain_rev01
	str r0, [r5, #0x20]
	ldr r0, _080B7E80 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080B7E74:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7E7C: .4byte 0x03007FF0
_080B7E80: .4byte 0x68736D53
_080B7E84: .4byte MPlayMain_rev01

	thumb_func_start MPlayStart
MPlayStart: @ 0x080B7E88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080B7F68 @ =0x68736D53
	cmp r1, r0
	bne _080B7F5E
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _080B7ECA
	ldr r0, [r5]
	cmp r0, #0
	beq _080B7EB4
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080B7EC0
_080B7EB4:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080B7ECA
	cmp r1, #0
	blt _080B7ECA
_080B7EC0:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _080B7F5E
_080B7ECA:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _080B7F2A
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080B7F4A
	mov r8, r6
_080B7EFE:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _080B7F2A
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080B7EFE
_080B7F2A:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080B7F4A
	movs r1, #0
	mov r8, r1
_080B7F34:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080B7F34
_080B7F4A:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _080B7F5A
	ldrb r0, [r7, #3]
	bl m4aSoundMode
_080B7F5A:
	ldr r0, _080B7F68 @ =0x68736D53
	str r0, [r5, #0x34]
_080B7F5E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7F68: .4byte 0x68736D53

	thumb_func_start MPlayStop
MPlayStop: @ 0x080B7F6C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _080B7FA8 @ =0x68736D53
	cmp r1, r0
	bne _080B7FA2
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _080B7F9E
_080B7F8E:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop_rev01
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080B7F8E
_080B7F9E:
	ldr r0, _080B7FA8 @ =0x68736D53
	str r0, [r6, #0x34]
_080B7FA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B7FA8: .4byte 0x68736D53

	thumb_func_start FadeOutBody_rev01
FadeOutBody_rev01: @ 0x080B7FAC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080B806E
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _080B7FEC @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080B806E
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B7FF0
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080B8042
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080B8042
	.align 2, 0
_080B7FEC: .4byte 0x0000FFFF
_080B7FF0:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B8042
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080B8022
_080B8006:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _080B801A
	strb r0, [r4]
_080B801A:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B8006
_080B8022:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _080B8036
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080B803A
_080B8036:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080B803A:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080B806E
_080B8042:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080B806E
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080B8050:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B8066
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080B8066:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080B8050
_080B806E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet_rev01
TrkVolPitSet_rev01: @ 0x080B8074
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080B80D8
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _080B809C
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_080B809C:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _080B80B2
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_080B80B2:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080B80BE
	adds r1, r0, #0
	b _080B80C4
_080B80BE:
	cmp r1, #0x7f
	ble _080B80C4
	movs r1, #0x7f
_080B80C4:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_080B80D8:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080B811C
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _080B8116
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_080B8116:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080B811C:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKey2CgbFr
MidiKey2CgbFr: @ 0x080B8128
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080B8160
	cmp r5, #0x14
	bhi _080B8144
	movs r5, #0
	b _080B8152
_080B8144:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080B8152
	movs r5, #0x3b
_080B8152:
	ldr r0, _080B815C @ =gUnk_080C081C
	adds r0, r5, r0
	ldrb r0, [r0]
	b _080B81C2
	.align 2, 0
_080B815C: .4byte gUnk_080C081C
_080B8160:
	cmp r5, #0x23
	bhi _080B816C
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080B817E
_080B816C:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080B817E
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080B817E:
	ldr r3, _080B81C8 @ =gUnk_080C0780
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _080B81CC @ =gUnk_080C0804
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080B81C2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B81C8: .4byte gUnk_080C0780
_080B81CC: .4byte gUnk_080C0804

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x080B81D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _080B81F8
	cmp r0, #2
	bgt _080B81E4
	cmp r0, #1
	beq _080B81EA
	b _080B820C
_080B81E4:
	cmp r1, #3
	beq _080B8200
	b _080B820C
_080B81EA:
	ldr r1, _080B81F4 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _080B8214
	.align 2, 0
_080B81F4: .4byte 0x04000063
_080B81F8:
	ldr r1, _080B81FC @ =0x04000069
	b _080B820E
	.align 2, 0
_080B81FC: .4byte 0x04000069
_080B8200:
	ldr r1, _080B8208 @ =0x04000070
	movs r0, #0
	b _080B8216
	.align 2, 0
_080B8208: .4byte 0x04000070
_080B820C:
	ldr r1, _080B821C @ =0x04000079
_080B820E:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_080B8214:
	movs r0, #0x80
_080B8216:
	strb r0, [r1]
	bx lr
	.align 2, 0
_080B821C: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x080B8220
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _080B8240
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _080B824C
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _080B825A
_080B8240:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080B824C
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _080B825A
_080B824C:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _080B826A
_080B825A:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _080B826C
	movs r0, #0xf
_080B826A:
	strb r0, [r1, #0xa]
_080B826C:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x080B8288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _080B82A8 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080B82AC
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _080B82B2
	.align 2, 0
_080B82A8: .4byte 0x03007FF0
_080B82AC:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_080B82B2:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_080B82B8:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _080B82CE
	b _080B86B8
_080B82CE:
	cmp r6, #2
	beq _080B8300
	cmp r6, #2
	bgt _080B82DC
	cmp r6, #1
	beq _080B82E2
	b _080B8338
_080B82DC:
	cmp r6, #3
	beq _080B8318
	b _080B8338
_080B82E2:
	ldr r0, _080B82F4 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _080B82F8 @ =0x04000062
	ldr r2, _080B82FC @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080B8348
	.align 2, 0
_080B82F4: .4byte 0x04000060
_080B82F8: .4byte 0x04000062
_080B82FC: .4byte 0x04000063
_080B8300:
	ldr r0, _080B830C @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _080B8310 @ =0x04000068
	ldr r2, _080B8314 @ =0x04000069
	b _080B8340
	.align 2, 0
_080B830C: .4byte 0x04000061
_080B8310: .4byte 0x04000068
_080B8314: .4byte 0x04000069
_080B8318:
	ldr r0, _080B832C @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _080B8330 @ =0x04000072
	ldr r2, _080B8334 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080B8348
	.align 2, 0
_080B832C: .4byte 0x04000070
_080B8330: .4byte 0x04000072
_080B8334: .4byte 0x04000073
_080B8338:
	ldr r0, _080B8398 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _080B839C @ =0x04000078
	ldr r2, _080B83A0 @ =0x04000079
_080B8340:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_080B8348:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080B843E
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _080B8462
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _080B83B0
	cmp r6, #2
	bgt _080B83A4
	cmp r6, #1
	beq _080B83AA
	b _080B8404
	.align 2, 0
_080B8398: .4byte 0x04000071
_080B839C: .4byte 0x04000078
_080B83A0: .4byte 0x04000079
_080B83A4:
	cmp r6, #3
	beq _080B83BC
	b _080B8404
_080B83AA:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_080B83B0:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _080B8410
_080B83BC:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _080B83E4
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _080B83F8 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_080B83E4:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080B83FC
	movs r0, #0xc0
	b _080B841E
	.align 2, 0
_080B83F8: .4byte 0x04000090
_080B83FC:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _080B8420
_080B8404:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_080B8410:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080B841E
	movs r0, #0x40
_080B841E:
	strb r0, [r4, #0x1a]
_080B8420:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080B843A
	b _080B8576
_080B843A:
	strb r2, [r4, #9]
	b _080B85A4
_080B843E:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080B8470
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _080B8462
	b _080B85B6
_080B8462:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _080B86B4
_080B8470:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _080B84B0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080B84B0
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080B84E2
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B85A4
	ldrb r2, [r4, #7]
	mov r8, r2
	b _080B85A4
_080B84B0:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080B85A4
	cmp r6, #3
	bne _080B84C2
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080B84C2:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _080B8516
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B8512
_080B84E2:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B8462
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B85B6
	movs r2, #8
	mov r8, r2
	b _080B85B6
_080B8512:
	ldrb r0, [r4, #7]
	b _080B85A2
_080B8516:
	cmp r0, #1
	bne _080B8522
_080B851A:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _080B85A2
_080B8522:
	cmp r0, #2
	bne _080B8566
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _080B8562
_080B853A:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080B854A
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _080B84E2
_080B854A:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B851A
	movs r0, #8
	mov r8, r0
	b _080B851A
_080B8562:
	ldrb r0, [r4, #5]
	b _080B85A2
_080B8566:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _080B85A0
_080B8576:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080B853A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _080B85A4
	ldrb r2, [r4, #5]
	mov r8, r2
	b _080B85A4
_080B85A0:
	ldrb r0, [r4, #4]
_080B85A2:
	strb r0, [r4, #0xb]
_080B85A4:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _080B85B6
	subs r0, #1
	str r0, [sp]
	b _080B84B0
_080B85B6:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _080B862E
	cmp r6, #3
	bgt _080B85F6
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _080B85F6
	ldr r0, _080B85E0 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _080B85E8
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _080B85E4 @ =0x000007FC
	b _080B85F2
	.align 2, 0
_080B85E0: .4byte 0x04000089
_080B85E4: .4byte 0x000007FC
_080B85E8:
	cmp r0, #0x7f
	bgt _080B85F6
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080B8604 @ =0x000007FE
_080B85F2:
	ands r0, r1
	str r0, [r4, #0x20]
_080B85F6:
	cmp r6, #4
	beq _080B8608
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _080B8616
	.align 2, 0
_080B8604: .4byte 0x000007FE
_080B8608:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_080B8616:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080B862E:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _080B86B4
	ldr r1, _080B8678 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _080B8680
	ldr r0, _080B867C @ =gUnk_080C0858
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _080B86B4
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _080B86B4
	.align 2, 0
_080B8678: .4byte 0x04000081
_080B867C: .4byte gUnk_080C0858
_080B8680:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _080B86B4
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080B86B4
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080B86B4:
	movs r0, #0
	strb r0, [r4, #0x1d]
_080B86B8:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _080B86C2
	b _080B82B8
_080B86C2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayTempoControl
MPlayTempoControl: @ 0x080B86D4
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080B86F8 @ =0x68736D53
	cmp r3, r0
	bne _080B86F0
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_080B86F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B86F8: .4byte 0x68736D53

	thumb_func_start MPlayVolumeControl
MPlayVolumeControl: @ 0x080B86FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080B8760 @ =0x68736D53
	cmp r3, r0
	bne _080B8754
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080B8750
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_080B872C:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080B8746
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080B8746
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080B8746:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080B872C
_080B8750:
	ldr r0, _080B8760 @ =0x68736D53
	str r0, [r4, #0x34]
_080B8754:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B8760: .4byte 0x68736D53

	thumb_func_start MPlayPitchControl
MPlayPitchControl: @ 0x080B8764
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080B87D4 @ =0x68736D53
	cmp r3, r0
	bne _080B87C6
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080B87C2
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_080B879C:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _080B87B8
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _080B87B8
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_080B87B8:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080B879C
_080B87C2:
	ldr r0, _080B87D4 @ =0x68736D53
	str r0, [r4, #0x34]
_080B87C6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B87D4: .4byte 0x68736D53

	thumb_func_start MPlayPanpotControl
MPlayPanpotControl: @ 0x080B87D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _080B883C @ =0x68736D53
	cmp r3, r0
	bne _080B8830
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080B882C
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_080B8808:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080B8822
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080B8822
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080B8822:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080B8808
_080B882C:
	ldr r0, _080B883C @ =0x68736D53
	str r0, [r4, #0x34]
_080B8830:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B883C: .4byte 0x68736D53

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
	ldr r2, _080B8AD0 @ =gUnk_03007530
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080B8AD0: .4byte gUnk_03007530

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

