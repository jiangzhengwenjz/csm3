#include "global.h"
#include "copy.h"
#include "gba/syscall.h"
#include "data.h"
#include "functions.h"
#include "battle.h"

#ifdef NONMATCHING
void sub_0803E48C(struct BattleAttrib *ba, u16 idx, u32 r2)
{
    struct BattleAttrib_44 *ba44;
    const u32 r6 = 0;
    ba->index = idx;
    ba->unk2 = 0xffff;
    ba->unk4 = 0;
    ba->unk6 = 0;
    ba->unk8 = 0;
    ba->unk98 = 0;
    ba->unk38 = 0;
    ba->unk3A = 0;
    ba->unk3C = 0;
    ba->unk3E = 0;
    ba->unk40 = 0;
    ba->unk42 = 0;
    ba->unk6C = 0;
    ba->unk6E = 0;
    ba->unk9C = 0;
    ba->unk9E = 0;
    ba->unkA0 = 0;
    ba->unk198 = 0;
    ba->unk199 = 0;
    ba->unk1A2 = 0;
    sub_080498A8(ba);
    sub_08049BF8(ba);
    sub_08025880(ba);
    sub_08049C40(ba);
    ba->unkBC = 0;
    ba->unkFC = 0;
    ba->unk100 = 0;
    ba->unk154 = 0;
    ba->unk150 = 0;
    ba->unk104 = 0;
    ba->unk184->unk0 = 0xff;
    ba->unk184->unk1C = 0xff;
    ba->unk184->unk22 = 0;
    ba->unk184->unk1D = 0xff;
    ba->unk184->unk23 = 0;
    ba->unk184->unk1E = 0xff;
    ba->unk184->unk24 = 0;
    ba->unk184->unk1F = 0xff;
    ba->unk184->unk25 = 0;
    ba->unk184->unk20 = 0xff;
    ba->unk184->unk26 = 0;
    ba->unk184->unk21 = 0xff;
    ba->unk184->unk27 = 0;
    ba->unk184->unk1A = 0;
    ba->unk184->unk18 = 0;
    ba->unk184->unk14 = 0;
    ba->unkAC = 0;
    ba->unkAE = 0;
    ba->unkB0 = 0;
    ba->unkB1 = 0;
    ba->unk9A = 0;
    ba->unk210 = -1;
    ba->unk212 = -1;
    ba->unkBE = 0;
    ba->unkC0 = 0x3c;
    if (r2 == 0)
    {
    	ba->unk384 = 4;
    }
    else
    {
    	ba->unk384 = 5;
    }
    ba->unk1A4 = 0x100;
    ba->jumpVerticalSpeed = 0;
    ba->jumpHorizontalSpeed = 0;
    ba->unk1B0 = 0;
    ba->unk1B2 = 0;
    ba44 = &(ba->unk44);
    ba->unk108 = 0xff;
    ba->unk11E = 0;
    ba->unk120 = 0xff;
    ba->unk136 = 0;
    ba->unk138 = 0xff;
    ba->unk14E = 0;
    ba->unk178 = 0;
    ba->unk15A = 0xff;
    ba->unk160 = 0;
    ba->weaponSkillIdx = 0xff;
    ba->unk161 = 0;
    ba->itemSkill1Idx = 0xff;
    ba->unk162 = 0;
    ba->itemSkill2Idx = 0xff;
    ba->unk163 = 0;
    ba->itemSkill3Idx = 0xff;
    ba->unk164 = 0;
    ba->itemSkill4Idx = 0xff;
    ba->unk165 = 0;
    ba->canUseSkillTime = 6;
    ba->unk17A = 0;
    ba->unk17B = 0;
    ba->unk17C = 0;
    ba->unk370 = 0;
    CpuSet(&r6, ba->unk220, CPU_SET_SRC_FIXED | CPU_SET_32BIT | 0x3A);
    ba->unk308 = 0;
    ba->unk30A = 0;
    sub_08009F0C(&(ba->unk30C));
    sub_08009F0C(&(ba->unk334));
    sub_0800A6C0(&(ba->unk334), 0, 1);
    sub_0800A6C4(&(ba->unk334), 2, 2);
    sub_0800A728(&(ba->unk334), 1);
    sub_08009F0C(ba44);
    sub_0800A6C4(ba44, 6, 2);
    sub_08049714(ba);
    ba->cursorPosition = 0;
    ba->unk38C = 0;
    ba->unk180 = 0;
}
#else
__attribute__((naked)) void sub_0803E48C(struct BattleAttrib *ba, u16 idx, u32 r2)
{
    asm(".syntax unified");
    asm("push {r4, r5, r6, r7, lr}");
    asm("mov r7, r8");
    asm("push {r7}");
    asm("sub sp, #4");
    asm("adds r7, r0, #0");
    asm("adds r6, r2, #0");
    asm("movs r5, #0");
    asm("movs r4, #0");
    asm("strh r1, [r7]");
    asm("ldr r0, _0803E5C4 @ =0x0000FFFF");
    asm("strh r0, [r7, #2]");
    asm("strh r4, [r7, #4]");
    asm("strh r4, [r7, #6]");
    asm("str r4, [r7, #8]");
    asm("adds r0, r7, #0");
    asm("adds r0, #0x98");
    asm("strh r4, [r0]");
    asm("strh r4, [r7, #0x38]");
    asm("strh r4, [r7, #0x3a]");
    asm("strh r4, [r7, #0x3c]");
    asm("strh r4, [r7, #0x3e]");
    asm("subs r0, #0x58");
    asm("strh r4, [r0]");
    asm("adds r0, #2");
    asm("strh r4, [r0]");
    asm("adds r0, #0x2a");
    asm("strb r5, [r0]");
    asm("adds r0, #2");
    asm("strh r4, [r0]");
    asm("adds r0, #0x2e");
    asm("strh r4, [r0]");
    asm("adds r0, #2");
    asm("strh r4, [r0]");
    asm("adds r0, #2");
    asm("strh r4, [r0]");
    asm("movs r1, #0xcc");
    asm("lsls r1, r1, #1");
    asm("adds r0, r7, r1");
    asm("strb r5, [r0]");
    asm("ldr r3, _0803E5C8 @ =0x00000199");
    asm("adds r0, r7, r3");
    asm("strb r5, [r0]");
    asm("adds r1, #0xa");
    asm("adds r0, r7, r1");
    asm("strh r4, [r0]");
    asm("adds r0, r7, #0");
    asm("bl sub_080498A8");
    asm("adds r0, r7, #0");
    asm("bl sub_08049BF8");
    asm("adds r0, r7, #0");
    asm("bl sub_08025880");
    asm("adds r0, r7, #0");
    asm("bl sub_08049C40");
    asm("adds r0, r7, #0");
    asm("adds r0, #0xbc");
    asm("strh r4, [r0]");
    asm("adds r0, #0x40");
    asm("strh r4, [r0]");
    asm("movs r3, #0x80");
    asm("lsls r3, r3, #1");
    asm("adds r0, r7, r3");
    asm("str r4, [r0]");
    asm("movs r1, #0xaa");
    asm("lsls r1, r1, #1");
    asm("adds r0, r7, r1");
    asm("strh r4, [r0]");
    asm("adds r3, #0x50");
    asm("adds r0, r7, r3");
    asm("str r4, [r0]");
    asm("subs r1, #0x50");
    asm("adds r0, r7, r1");
    asm("str r4, [r0]");
    asm("adds r3, #0x34");
    asm("adds r2, r7, r3");
    asm("ldr r1, [r2]");
    asm("movs r0, #0xff");
    asm("strh r0, [r1]");
    asm("ldr r1, [r2]");
    asm("strb r0, [r1, #0x1c]");
    asm("ldr r0, [r2]");
    asm("adds r0, #0x22");
    asm("strb r4, [r0]");
    asm("ldr r1, [r2]");
    asm("movs r0, #0xff");
    asm("strb r0, [r1, #0x1d]");
    asm("ldr r0, [r2]");
    asm("adds r0, #0x23");
    asm("strb r5, [r0]");
    asm("ldr r1, [r2]");
    asm("movs r0, #0xff");
    asm("strb r0, [r1, #0x1e]");
    asm("ldr r0, [r2]");
    asm("adds r0, #0x24");
    asm("strb r5, [r0]");
    asm("ldr r1, [r2]");
    asm("movs r0, #0xff");
    asm("strb r0, [r1, #0x1f]");
    asm("ldr r0, [r2]");
    asm("adds r0, #0x25");
    asm("strb r5, [r0]");
    asm("ldr r0, [r2]");
    asm("adds r0, #0x20");
    asm("movs r1, #0xff");
    asm("strb r1, [r0]");
    asm("ldr r0, [r2]");
    asm("adds r0, #0x26");
    asm("strb r5, [r0]");
    asm("ldr r0, [r2]");
    asm("adds r0, #0x21");
    asm("strb r1, [r0]");
    asm("ldr r0, [r2]");
    asm("adds r0, #0x27");
    asm("strb r5, [r0]");
    asm("ldr r0, [r2]");
    asm("strh r4, [r0, #0x1a]");
    asm("ldr r0, [r2]");
    asm("strh r4, [r0, #0x18]");
    asm("ldr r0, [r2]");
    asm("str r4, [r0, #0x14]");
    asm("adds r0, r7, #0");
    asm("adds r0, #0xac");
    asm("strh r4, [r0]");
    asm("adds r0, #2");
    asm("strh r4, [r0]");
    asm("adds r0, #2");
    asm("strb r5, [r0]");
    asm("adds r0, #1");
    asm("strb r5, [r0]");
    asm("subs r0, #0x17");
    asm("strh r4, [r0]");
    asm("movs r0, #0x84");
    asm("lsls r0, r0, #2");
    asm("adds r1, r7, r0");
    asm("movs r0, #1");
    asm("rsbs r0, r0, #0");
    asm("strh r0, [r1]");
    asm("adds r3, #0x8e");
    asm("adds r1, r7, r3");
    asm("strh r0, [r1]");
    asm("adds r0, r7, #0");
    asm("adds r0, #0xbe");
    asm("strh r4, [r0]");
    asm("adds r1, r7, #0");
    asm("adds r1, #0xc0");
    asm("movs r0, #0x3c");
    asm("strh r0, [r1]");
    asm("cmp r6, #0");
    asm("bne _0803E5D0");
    asm("ldr r0, _0803E5CC @ =0x0000038B");
    asm("adds r1, r7, r0");
    asm("movs r0, #4");
    asm("b _0803E5D6");
    asm(".align 2, 0");
    asm("_0803E5C4: .4byte 0x0000FFFF");
    asm("_0803E5C8: .4byte 0x00000199");
    asm("_0803E5CC: .4byte 0x0000038B");
    asm("_0803E5D0:");
    asm("ldr r3, _0803E70C @ =0x0000038B");
    asm("adds r1, r7, r3");
    asm("movs r0, #5");
    asm("_0803E5D6:");
    asm("strb r0, [r1]");
    asm("movs r0, #0xd2");
    asm("lsls r0, r0, #1");
    asm("adds r1, r7, r0");
    asm("movs r6, #0");
    asm("subs r0, #0xa4");
    asm("strh r0, [r1]");
    asm("movs r1, #0xd4");
    asm("lsls r1, r1, #1");
    asm("adds r0, r7, r1");
    asm("str r6, [r0]");
    asm("movs r3, #0xd6");
    asm("lsls r3, r3, #1");
    asm("adds r0, r7, r3");
    asm("str r6, [r0]");
    asm("adds r1, #8");
    asm("adds r0, r7, r1");
    asm("strh r6, [r0]");
    asm("adds r3, #6");
    asm("adds r0, r7, r3");
    asm("strh r6, [r0]");
    asm("adds r2, r7, #0");
    asm("adds r2, #0xc5");
    asm("movs r0, #0x44");
    asm("adds r0, r0, r7");
    asm("mov r8, r0");
    asm("movs r4, #0");
    asm("movs r0, #0xff");
    asm("subs r3, #0xaa");
    asm("adds r1, r7, r3");
    asm("strh r0, [r1]");
    asm("strb r4, [r1, #0x16]");
    asm("adds r3, #0x18");
    asm("adds r1, r7, r3");
    asm("strh r0, [r1]");
    asm("strb r4, [r1, #0x16]");
    asm("adds r3, #0x18");
    asm("adds r1, r7, r3");
    asm("strh r0, [r1]");
    asm("strb r4, [r1, #0x16]");
    asm("movs r1, #0xbc");
    asm("lsls r1, r1, #1");
    asm("adds r0, r7, r1");
    asm("strb r6, [r0]");
    asm("adds r3, #0x22");
    asm("adds r1, r7, r3");
    asm("movs r0, #0xff");
    asm("strb r0, [r1]");
    asm("strb r4, [r1, #6]");
    asm("adds r0, #0x5c");
    asm("adds r1, r7, r0");
    asm("movs r0, #0xff");
    asm("strb r0, [r1]");
    asm("strb r4, [r1, #6]");
    asm("adds r3, #2");
    asm("adds r1, r7, r3");
    asm("strb r0, [r1]");
    asm("strb r4, [r1, #6]");
    asm("adds r0, #0x5e");
    asm("adds r1, r7, r0");
    asm("movs r0, #0xff");
    asm("strb r0, [r1]");
    asm("strb r4, [r1, #6]");
    asm("adds r3, #2");
    asm("adds r1, r7, r3");
    asm("strb r0, [r1]");
    asm("strb r4, [r1, #6]");
    asm("adds r0, #0x60");
    asm("adds r1, r7, r0");
    asm("movs r0, #0xff");
    asm("strb r0, [r1]");
    asm("strb r4, [r1, #6]");
    asm("movs r0, #6");
    asm("strb r0, [r2]");
    asm("movs r1, #0xbd");
    asm("lsls r1, r1, #1");
    asm("adds r0, r7, r1");
    asm("strb r4, [r0]");
    asm("adds r3, #0x1d");
    asm("adds r0, r7, r3");
    asm("strb r4, [r0]");
    asm("adds r1, #2");
    asm("adds r0, r7, r1");
    asm("strb r4, [r0]");
    asm("movs r3, #0xdc");
    asm("lsls r3, r3, #2");
    asm("adds r0, r7, r3");
    asm("str r6, [r0]");
    asm("str r6, [sp]");
    asm("movs r0, #0x88");
    asm("lsls r0, r0, #2");
    asm("adds r1, r7, r0");
    asm("ldr r2, _0803E710 @ =0x0500003A");
    asm("mov r0, sp");
    asm("bl CpuSet");
    asm("movs r1, #0xc2");
    asm("lsls r1, r1, #2");
    asm("adds r0, r7, r1");
    asm("strh r6, [r0]");
    asm("ldr r3, _0803E714 @ =0x0000030A");
    asm("adds r0, r7, r3");
    asm("strh r6, [r0]");
    asm("adds r1, #4");
    asm("adds r0, r7, r1");
    asm("bl sub_08009F0C");
    asm("movs r3, #0xcd");
    asm("lsls r3, r3, #2");
    asm("adds r5, r7, r3");
    asm("adds r0, r5, #0");
    asm("bl sub_08009F0C");
    asm("adds r0, r5, #0");
    asm("movs r1, #0");
    asm("movs r2, #1");
    asm("bl sub_0800A6C0");
    asm("adds r0, r5, #0");
    asm("movs r1, #2");
    asm("movs r2, #2");
    asm("bl sub_0800A6C4");
    asm("adds r0, r5, #0");
    asm("movs r1, #1");
    asm("bl sub_0800A728");
    asm("mov r0, r8");
    asm("bl sub_08009F0C");
    asm("mov r0, r8");
    asm("movs r1, #6");
    asm("movs r2, #2");
    asm("bl sub_0800A6C4");
    asm("adds r0, r7, #0");
    asm("bl sub_08049714");
    asm("movs r1, #0xb3");
    asm("lsls r1, r1, #1");
    asm("adds r0, r7, r1");
    asm("strb r4, [r0]");
    asm("movs r3, #0xe3");
    asm("lsls r3, r3, #2");
    asm("adds r0, r7, r3");
    asm("strb r4, [r0]");
    asm("adds r1, #0x1a");
    asm("adds r0, r7, r1");
    asm("str r6, [r0]");
    asm("add sp, #4");
    asm("pop {r3}");
    asm("mov r8, r3");
    asm("pop {r4, r5, r6, r7}");
    asm("pop {r0}");
    asm("bx r0");
    asm(".align 2, 0");
    asm("_0803E70C: .4byte 0x0000038B");
    asm("_0803E710: .4byte 0x0500003A");
    asm("_0803E714: .4byte 0x0000030A");
    asm(".syntax divided");
}

#endif

/*
I don't think this can be matched under current circumstance. 
we need to figure out the data structure of BattleAttrib.
https://cexplore.karathan.at/z/XMFsqu
I pull this mainly because some fields of BattleAttrib can be documented.
*/
