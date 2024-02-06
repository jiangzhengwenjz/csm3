#include "global.h"

extern u8 gUnk_03005960[];
extern void (*gUnk_08B714AC[])(u8 *a, u8 *b, u16 c, u32 r6);

struct Unk_08011B1C
{
    u16 unk0;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 filler12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    s32 unk20;
};

#ifdef NONMATCHING

void sub_08011B1C(struct Unk_08011B1C *r0)
{
    u32 r6;
    u8 *sb = gUnk_03005960;
    s32 r4;
    u16 r7;
    void (*r5)(u8 *a, u8 *b, u16 c, u32 r6);
    if (r0->unk0 == 2)
    {
        r0->unk8 += 1;
    }
    r6 = (r0->unk8 << 0xc) / r0->unk4;
    r0->unk14 = r6;
    r4 = r0->unk20;
    r7 = r0->unkC;
    r5 = gUnk_08B714AC[r0->unk2];
    if (r4 < 0)
    {
        r5(&sb[0x7E0], &sb[0x7E0], r7, r6);
    }
    if (r4 & (0x80 << 0x17))
    {
        r5(&sb[0x7C0], &sb[0x7C0], r7, r6);
    }
    if (r4 & (0x80 << 0x16))
    {
        r5(&sb[0x7A0], &sb[0x7A0], r7, r6);
    }
    if (r4 & (0x80 << 0x15))
    {
        r5(&sb[0x780], &sb[0x780], r7, r6);
    }
    if (r4 & (0x80 << 0x14))
    {
        r5(&sb[0x760], &sb[0x760], r7, r6);
    }
    if (r4 & (0x80 << 0x13))
    {
        r5(&sb[0x740], &sb[0x740], r7, r6);
    }
    if (r4 & (0x80 << 0x12))
    {
        r5(&sb[0x720], &sb[0x720], r7, r6);
    }
    if (r4 & (0x80 << 0x11))
    {
        r5(&sb[0x700], &sb[0x700], r7, r6);
    }
    if (r4 & (0x80 << 0x10))
    {
        r5(&sb[0x6E0], &sb[0x6E0], r7, r6);
    }
    if (r4 & (0x80 << 0xF))
    {
        r5(&sb[0x6C0], &sb[0x6C0], r7, r6);
    }
    if (r4 & (0x80 << 0xE))
    {
        r5(&sb[0x6A0], &sb[0x6A0], r7, r6);
    }
    if (r4 & (0x80 << 0xD))
    {
        r5(&sb[0x680], &sb[0x680], r7, r6);
    }
    if (r4 & (0x80 << 0xC))
    {
        r5(&sb[0x660], &sb[0x660], r7, r6);
    }
    if (r4 & (0x80 << 0xB))
    {
        r5(&sb[0x640], &sb[0x640], r7, r6);
    }
    if (r4 & (0x80 << 0xA))
    {
        r5(&sb[0x620], &sb[0x620], r7, r6);
    }
    if (r4 & (0x80 << 0x9))
    {
        r5(&sb[0x600], &sb[0x600], r7, r6);
    }
    if (r4 & (0x80 << 0x8))
    {
        r5(&sb[0x5E0], &sb[0x5E0], r7, r6);
    }
    if (r4 & (0x80 << 0x7))
    {
        r5(&sb[0x5C0], &sb[0x5C0], r7, r6);
    }
    if (r4 & (0x80 << 0x6))
    {
        r5(&sb[0x5A0], &sb[0x5A0], r7, r6);
    }
    if (r4 & (0x80 << 0x5))
    {
        r5(&sb[0x580], &sb[0x580], r7, r6);
    }
    if (r4 & (0x80 << 0x4))
    {
        r5(&sb[0x560], &sb[0x560], r7, r6);
    }
    if (r4 & (0x80 << 0x3))
    {
        r5(&sb[0x540], &sb[0x540], r7, r6);
    }
    if (r4 & (0x80 << 0x2))
    {
        r5(&sb[0x520], &sb[0x520], r7, r6);
    }
    if (r4 & (0x80 << 0x1))
    {
        r5(&sb[0x500], &sb[0x500], r7, r6);
    }
    if (r4 & 0x80)
    {
        r5(&sb[0x4E0], &sb[0x4E0], r7, r6);
    }
    if (r4 & 0x40)
    {
        r5(&sb[0x4C0], &sb[0x4C0], r7, r6);
    }
    if (r4 & 0x20)
    {
        r5(&sb[0x4A0], &sb[0x4A0], r7, r6);
    }
    if (r4 & 0x10)
    {
        r5(&sb[0x480], &sb[0x480], r7, r6);
    }
    if (r4 & 0x8)
    {
        r5(&sb[0x460], &sb[0x460], r7, r6);
    }
    if (r4 & 0x4)
    {
        r5(&sb[0x440], &sb[0x440], r7, r6);
    }
    if (r4 & 0x2)
    {
        r5(&sb[0x420], &sb[0x420], r7, r6);
    }
    if (r4 & 0x1)
    {
        r5(&sb[0x400], &sb[0x400], r7, r6);
    }

    if (r0->unk8 == r0->unk6)
    {
        r0->unk0 = 3;
    }
    if (r0->unk0 == 4)
    {
        r0->unkA -= 1;
        if (1) // ???
        {
            r0->unk0 = 2;
        }
    }
    if (r0->unk3 == 5)
    {
        if (!(r0->unk2))
        {
            if (r0->unk8 < ((r0->unk4 * r0->unk1C) >> 0xC))
                return;
            r0->unk2 = 1;
            r0->unk8 = ((0x1000 - r0->unk1C) * r0->unk4) >> 0xC;
            if (r0->unk10 == 0)
                return;
            r0->unkA = r0->unk10;
            r0->unk0 = 4;
        }
        else
        {
            if (r0->unk8 < ((r0->unk4 * r0->unk18) >> 0xC))
                return;
            r0->unk2 = 0;
            r0->unk8 = ((0x1000 - r0->unk18) * r0->unk4) >> 0xC;
            if (r0->unkE == 0)
                return;
            r0->unkA = r0->unkE;
            r0->unk0 = 4;
        }
    }
    else
    {
        if (r0->unk8 != r0->unk4)
            return;
        if((r0->unk2 - 1) <= 1)
        {
            r0->unk0 = 1;
        }
        else
        {
            if (r0->unk3 == 3)
            {
                r0->unk8 = 0;
                r0->unk2 = 1;
                r0->unk3 = 2;
            }
            else
            {
                if (r0->unk3 != 4)
                    return;
                r0->unk8 = 0;
                if (r0->unk2 == 0)
                {
                    r0->unk2 = 1;
                }
                else
                {
                    r0->unk2 = 0;
                }
            }
        }
    }
}

#else

__attribute__((naked)) void sub_08011B1C(struct Unk_08011B1C *r0)
{
    asm(".syntax unified");
    asm("push {r4, r5, r6, r7, lr}");
    asm("mov r7, sl");
    asm("mov r6, sb");
    asm("mov r5, r8");
    asm("push {r5, r6, r7}");
    asm("mov r8, r0");
    asm("ldr r0, _08011E50 @ =gUnk_03005960");
    asm("mov sb, r0");
    asm("mov r1, r8");
    asm("ldrh r0, [r1]");
    asm("cmp r0, #2");
    asm("bne _08011B3A");
    asm("ldrh r0, [r1, #8]");
    asm("adds r0, #1");
    asm("strh r0, [r1, #8]");
    asm("_08011B3A:");
    asm("mov r2, r8");
    asm("ldrh r0, [r2, #8]");
    asm("lsls r0, r0, #0xc");
    asm("ldrh r1, [r2, #4]");
    asm("bl __udivsi3");
    asm("adds r6, r0, #0");
    asm("mov r3, r8");
    asm("str r6, [r3, #0x14]");
    asm("ldr r4, [r3, #0x20]");
    asm("ldrh r7, [r3, #0xc]");
    asm("ldr r1, _08011E54 @ =gUnk_08B714AC");
    asm("ldrb r0, [r3, #2]");
    asm("lsls r0, r0, #2");
    asm("adds r0, r0, r1");
    asm("ldr r5, [r0]");
    asm("adds r5, #1");
    asm("movs r1, #0xfc");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("cmp r4, #0");
    asm("bge _08011B70");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011B70:");
    asm("movs r1, #0xf8");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0x17");
    asm("ands r0, r4");
    asm("beq _08011B88");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011B88:");
    asm("movs r1, #0xf4");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0x16");
    asm("ands r0, r4");
    asm("beq _08011BA0");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011BA0:");
    asm("movs r1, #0xf0");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0x15");
    asm("ands r0, r4");
    asm("beq _08011BB8");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011BB8:");
    asm("movs r1, #0xec");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0x14");
    asm("ands r0, r4");
    asm("beq _08011BD0");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011BD0:");
    asm("movs r1, #0xe8");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0x13");
    asm("ands r0, r4");
    asm("beq _08011BE8");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011BE8:");
    asm("movs r1, #0xe4");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0x12");
    asm("ands r0, r4");
    asm("beq _08011C00");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011C00:");
    asm("movs r1, #0xe0");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0x11");
    asm("ands r0, r4");
    asm("beq _08011C18");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011C18:");
    asm("movs r1, #0xdc");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0x10");
    asm("ands r0, r4");
    asm("beq _08011C30");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011C30:");
    asm("movs r1, #0xd8");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0xf");
    asm("ands r0, r4");
    asm("beq _08011C48");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011C48:");
    asm("movs r1, #0xd4");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0xe");
    asm("ands r0, r4");
    asm("beq _08011C60");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011C60:");
    asm("movs r1, #0xd0");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0xd");
    asm("ands r0, r4");
    asm("beq _08011C78");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011C78:");
    asm("movs r1, #0xcc");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0xc");
    asm("ands r0, r4");
    asm("beq _08011C90");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011C90:");
    asm("movs r1, #0xc8");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0xb");
    asm("ands r0, r4");
    asm("beq _08011CA8");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011CA8:");
    asm("movs r1, #0xc4");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #0xa");
    asm("ands r0, r4");
    asm("beq _08011CC0");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011CC0:");
    asm("movs r1, #0xc0");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #9");
    asm("ands r0, r4");
    asm("beq _08011CD8");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011CD8:");
    asm("movs r1, #0xbc");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #8");
    asm("ands r0, r4");
    asm("beq _08011CF0");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011CF0:");
    asm("movs r1, #0xb8");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #7");
    asm("ands r0, r4");
    asm("beq _08011D08");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011D08:");
    asm("movs r1, #0xb4");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #6");
    asm("ands r0, r4");
    asm("beq _08011D20");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011D20:");
    asm("movs r1, #0xb0");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #5");
    asm("ands r0, r4");
    asm("beq _08011D38");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011D38:");
    asm("movs r1, #0xac");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #4");
    asm("ands r0, r4");
    asm("beq _08011D50");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011D50:");
    asm("movs r1, #0xa8");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #3");
    asm("ands r0, r4");
    asm("beq _08011D68");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011D68:");
    asm("movs r1, #0xa4");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #2");
    asm("ands r0, r4");
    asm("beq _08011D80");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011D80:");
    asm("movs r1, #0xa0");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #1");
    asm("ands r0, r4");
    asm("beq _08011D98");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011D98:");
    asm("movs r1, #0x9c");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x80");
    asm("ands r0, r4");
    asm("beq _08011DAE");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011DAE:");
    asm("movs r1, #0x98");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x40");
    asm("ands r0, r4");
    asm("beq _08011DC4");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011DC4:");
    asm("movs r1, #0x94");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x20");
    asm("ands r0, r4");
    asm("beq _08011DDA");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011DDA:");
    asm("movs r1, #0x90");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #0x10");
    asm("ands r0, r4");
    asm("beq _08011DF0");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011DF0:");
    asm("movs r1, #0x8c");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #8");
    asm("ands r0, r4");
    asm("beq _08011E06");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011E06:");
    asm("movs r1, #0x88");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #4");
    asm("ands r0, r4");
    asm("beq _08011E1C");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011E1C:");
    asm("movs r1, #0x84");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #2");
    asm("mov sl, r0");
    asm("adds r0, r4, #0");
    asm("mov r2, sl");
    asm("ands r0, r2");
    asm("beq _08011E38");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("_08011E38:");
    asm("movs r1, #0x80");
    asm("lsls r1, r1, #3");
    asm("add r1, sb");
    asm("movs r0, #1");
    asm("ands r4, r0");
    asm("beq _08011E58");
    asm("adds r0, r1, #0");
    asm("adds r2, r7, #0");
    asm("adds r3, r6, #0");
    asm("bl _call_via_r5");
    asm("b _08011E58");
    asm(".align 2, 0");
    asm("_08011E50: .4byte gUnk_03005960");
    asm("_08011E54: .4byte gUnk_08B714AC");
    asm("_08011E58:");
    asm("mov r3, r8");
    asm("ldrh r0, [r3, #8]");
    asm("adds r3, r0, #0");
    asm("mov r4, r8");
    asm("ldrh r4, [r4, #6]");
    asm("cmp r3, r4");
    asm("bne _08011E6C");
    asm("movs r0, #3");
    asm("mov r1, r8");
    asm("strh r0, [r1]");
    asm("_08011E6C:");
    asm("mov r2, r8");
    asm("ldrh r0, [r2]");
    asm("cmp r0, #4");
    asm("bne _08011E82");
    asm("ldrh r0, [r2, #0xa]");
    asm("subs r0, #1");
    asm("strh r0, [r2, #0xa]");
    asm("lsls r0, r0, #0x10");
    asm("bne _08011E82");
    asm("mov r4, sl");
    asm("strh r4, [r2]");
    asm("_08011E82:");
    asm("mov r0, r8");
    asm("ldrb r2, [r0, #3]");
    asm("adds r1, r2, #0");
    asm("cmp r1, #5");
    asm("bne _08011EF6");
    asm("ldrb r0, [r0, #2]");
    asm("cmp r0, #0");
    asm("bne _08011EC4");
    asm("mov r1, r8");
    asm("ldrh r2, [r1, #8]");
    asm("ldrh r1, [r1, #4]");
    asm("mov r4, r8");
    asm("ldr r3, [r4, #0x1c]");
    asm("adds r0, r1, #0");
    asm("muls r0, r3, r0");
    asm("lsrs r0, r0, #0xc");
    asm("cmp r2, r0");
    asm("blo _08011F44");
    asm("movs r0, #1");
    asm("strb r0, [r4, #2]");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #5");
    asm("subs r0, r0, r3");
    asm("muls r0, r1, r0");
    asm("lsrs r0, r0, #0xc");
    asm("strh r0, [r4, #8]");
    asm("ldrh r0, [r4, #0x10]");
    asm("cmp r0, #0");
    asm("beq _08011F44");
    asm("strh r0, [r4, #0xa]");
    asm("movs r0, #4");
    asm("strh r0, [r4]");
    asm("b _08011F44");
    asm("_08011EC4:");
    asm("mov r0, r8");
    asm("ldrh r2, [r0, #8]");
    asm("ldrh r1, [r0, #4]");
    asm("ldr r3, [r0, #0x18]");
    asm("adds r0, r1, #0");
    asm("muls r0, r3, r0");
    asm("lsrs r0, r0, #0xc");
    asm("cmp r2, r0");
    asm("blo _08011F44");
    asm("movs r0, #0");
    asm("mov r2, r8");
    asm("strb r0, [r2, #2]");
    asm("movs r0, #0x80");
    asm("lsls r0, r0, #5");
    asm("subs r0, r0, r3");
    asm("muls r0, r1, r0");
    asm("lsrs r0, r0, #0xc");
    asm("strh r0, [r2, #8]");
    asm("ldrh r0, [r2, #0xe]");
    asm("cmp r0, #0");
    asm("beq _08011F44");
    asm("strh r0, [r2, #0xa]");
    asm("movs r0, #4");
    asm("strh r0, [r2]");
    asm("b _08011F44");
    asm("_08011EF6:");
    asm("lsls r0, r3, #0x10");
    asm("lsrs r0, r0, #0x10");
    asm("mov r3, r8");
    asm("ldrh r3, [r3, #4]");
    asm("cmp r0, r3");
    asm("bne _08011F44");
    asm("subs r0, r2, #1");
    asm("lsls r0, r0, #0x18");
    asm("lsrs r0, r0, #0x18");
    asm("cmp r0, #1");
    asm("bhi _08011F14");
    asm("movs r0, #1");
    asm("mov r4, r8");
    asm("strh r0, [r4]");
    asm("b _08011F44");
    asm("_08011F14:");
    asm("cmp r1, #3");
    asm("bne _08011F28");
    asm("movs r0, #0");
    asm("mov r1, r8");
    asm("strh r0, [r1, #8]");
    asm("movs r0, #1");
    asm("strb r0, [r1, #2]");
    asm("movs r0, #2");
    asm("strb r0, [r1, #3]");
    asm("b _08011F44");
    asm("_08011F28:");
    asm("cmp r1, #4");
    asm("bne _08011F44");
    asm("movs r0, #0");
    asm("mov r2, r8");
    asm("strh r0, [r2, #8]");
    asm("ldrb r0, [r2, #2]");
    asm("cmp r0, #0");
    asm("bne _08011F3E");
    asm("movs r0, #1");
    asm("strb r0, [r2, #2]");
    asm("b _08011F44");
    asm("_08011F3E:");
    asm("movs r0, #0");
    asm("mov r3, r8");
    asm("strb r0, [r3, #2]");
    asm("_08011F44:");
    asm("pop {r3, r4, r5}");
    asm("mov r8, r3");
    asm("mov sb, r4");
    asm("mov sl, r5");
    asm("pop {r4, r5, r6, r7}");
    asm("pop {r0}");
    asm("bx r0");
    asm(".align 2, 0");
    asm(".syntax divided");
}
#endif

/*
something related to the pltt.
don't know why it uses call_via_rx.
https://cexplore.karathan.at/z/neIDEO
*/
