#include "global.h"
#include "attribute.h"
#include "data.h"
#include "functions.h"

#ifndef NONMATCHING

u16 sub_08018D9C(u16 r0)
{
    u16 r4 = 0;
    s32 r5 = 0;
    u32 cond;
    u32 r1 = r0 * 4;
    u32 r2, r3;
    void *labels[2];

    r1 += r0;
    r3 = r1 << 0x1b;
    labels[0] = &&zeal;
    for (r5; r5 < 0x28; r5 += 2)
zeal:
    {
        r2 = r3 >> 0x18;
        if (r2 > 0xef)
        {
            cond = 1;
        }
        else
        {
            if (!((gSaveBlock1Ptr->weaponDexLighted[r3 >> 0x1b] >> (7 & r2)) & 1))
            {
                cond = 0;
            }
            else
            {
                cond = 1;
            }
        }
        asm(""::"r"(cond));
        if (cond)
        {
            r4++;
        }

        r3 += 0x1000000;
        r2 = r3 >> 0x18;
        if (r2 > 0xef)
        {
            cond = 1;
        }
        else
        {
            if (!((gSaveBlock1Ptr->weaponDexLighted[r3 >> 0x1b] >> (7 & r2)) & 1))
            {
                cond = 0;
            }
            else
            {
                cond = 1;
            }
        }
        asm(""::"r"(cond));
        if (cond)
        {
            r4++;
        }

        r3 += 0x1000000;
    }
    return r4;
}

#else

u16 sub_08018D9C(u16 r0)
{
    u16 r4 = 0;
    s32 r5 = 0;
    u32 cond;
    u32 r1 = r0 * 4;
    u32 r2, r3;
    void *labels[2];

    r1 += r0;
    r3 = r1 << 0x1b;
    for (r5; r5 < 0x28; r5 += 2)
    {
        r2 = r3 >> 0x18;
        if (r2 > 0xef)
        {
            cond = 1;
        }
        else
        {
            if (!((gSaveBlock1Ptr->weaponDexLighted[r3 >> 0x1b] >> (7 & r2)) & 1))
            {
                cond = 0;
            }
            else
            {
                cond = 1;
            }
        }
        if (cond)
        {
            r4++;
        }

        r3 += 0x1000000;
        r2 = r3 >> 0x18;
        if (r2 > 0xef)
        {
            cond = 1;
        }
        else
        {
            if (!((gSaveBlock1Ptr->weaponDexLighted[r3 >> 0x1b] >> (7 & r2)) & 1))
            {
                cond = 0;
            }
            else
            {
                cond = 1;
            }
        }
        if (cond)
        {
            r4++;
        }

        r3 += 0x1000000;
    }
    return r4;
}

#endif

s32 sub_08018E3C(void)
{
    return gSaveBlock1Ptr->money;
}

u16 sub_08018E50(void)
{
    return gSaveBlock1Ptr->fishingPoint;
}

u16 *sub_08018E64(void)
{
    return gSaveBlock1Ptr->unk5B0; // TODO: figure out the real data structure of unk5B0
}

u8 sub_08018E74(u8 idx)
{
    return gUnk_08B7CFA4[idx - 1];
}

u8 sub_08018E88(u8 idx)
{
    return gUnk_08B7D007[idx - 1];
}

u8 sub_08018E9C(u8 idx)
{
    return gUnk_08B7D06A[idx - 1];
}

u8 sub_08018EB0(u8 idx)
{
    return gUnk_08B7D0CD[idx - 1];
}

#ifdef NONMATCHING

u32 sub_08018EC4(u8 idx)
{
    u32 ridx = idx - 1;
    idx = ridx;
    if (idx <= 0x62)
    {
        return gUnk_08B7D8EC[ridx];
    }
    else
    {
        return 0;
    }
}

#else

__attribute__((naked)) u32 sub_08018EC4(u8 idx)
{
    asm(".syntax unified");
    asm("push {lr}");
    asm("lsls r0, r0, #0x18");
    asm("lsrs r0, r0, #0x18");
    asm("subs r1, r0, #1");
    asm("lsls r0, r1, #0x18");
    asm("lsrs r0, r0, #0x18");
    asm("cmp r0, #0x62");
    asm("bls _08018ED8");
    asm("movs r0, #0");
    asm("b _08018EE0");
    asm("_08018ED8:");
    asm("ldr r0, _08018EE4 @ =gUnk_08B7D8EC");
    asm("lsls r1, r1, #2");
    asm("adds r1, r1, r0");
    asm("ldr r0, [r1]");
    asm("_08018EE0:");
    asm("pop {r1}");
    asm("bx r1");
    asm(".align 2, 0");
    asm("_08018EE4: .4byte gUnk_08B7D8EC");
    asm(".syntax divided");
}

#endif
