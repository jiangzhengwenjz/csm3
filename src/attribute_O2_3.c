#include "global.h"
#include "attribute.h"

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

u16 sub_08018EE8(u8 idx)
{
    return gUnk_08B80178[idx];
}

// I am not sure how to fix the rest issues.
// https://cexplore.karathan.at/z/PNyO6J

#ifdef NONMATCHING

void sub_08018EF8(u32 r4, u8 *r5, u32 *r6)
{
    u8 i;
    u32 temp;
    for (i = 1; i <= 0x63; ++i)
    {
        if ((u8)((u8)i - 1) <= 0x62)
        {
            temp = gUnk_08B7D8EC[(u32)(i - 1)];
        }
        else
        {
            temp = 0;
        }
        if (temp > r4) break;
    }
    ++i;--i;
    *r5 = i - 1;
    ++i;--i;
    if (i == 0x64)
    {
        *r6 = 0;
    }
    else
    {
        if ((u8)((u8)i - 1) <= 0x62) // Can this be a macro?
        {
            temp = gUnk_08B7D8EC[(u32)(i - 1)];
        }
        else
        {
            temp = 0;
        }
        *r6 = temp - r4;
    }
}

#else

__attribute__((naked)) void sub_08018EF8(u32 r4, u8 *r5, u32 *r6)
{
    asm(".syntax unified");
    asm("push {r4, r5, r6, lr}");
    asm("adds r4, r0, #0");
    asm("adds r5, r1, #0");
    asm("adds r6, r2, #0");
    asm("movs r1, #1");
    asm("ldr r2, _08018F08 @ =gUnk_08B7D8EC");
    asm("b _08018F0E");
    asm(".align 2, 0");
    asm("_08018F08: .4byte gUnk_08B7D8EC");
    asm("_08018F0C:");
    asm("adds r1, #1");
    asm("_08018F0E:");
    asm("cmp r1, #0x63");
    asm("bhi _08018F2E");
    asm("lsls r0, r1, #0x18");
    asm("lsrs r0, r0, #0x18");
    asm("subs r3, r0, #1");
    asm("lsls r0, r3, #0x18");
    asm("lsrs r0, r0, #0x18");
    asm("cmp r0, #0x62");
    asm("bhi _08018F28");
    asm("lsls r0, r3, #2");
    asm("adds r0, r0, r2");
    asm("ldr r0, [r0]");
    asm("b _08018F2A");
    asm("_08018F28:");
    asm("movs r0, #0");
    asm("_08018F2A:");
    asm("cmp r0, r4");
    asm("bls _08018F0C");
    asm("_08018F2E:");
    asm("subs r0, r1, #1");
    asm("strb r0, [r5]");
    asm("cmp r1, #0x64");
    asm("bne _08018F3A");
    asm("movs r0, #0");
    asm("b _08018F5C");
    asm("_08018F3A:");
    asm("lsls r0, r1, #0x18");
    asm("lsrs r0, r0, #0x18");
    asm("subs r3, r0, #1");
    asm("lsls r0, r3, #0x18");
    asm("lsrs r0, r0, #0x18");
    asm("cmp r0, #0x62");
    asm("bhi _08018F58");
    asm("ldr r1, _08018F54 @ =gUnk_08B7D8EC");
    asm("lsls r0, r3, #2");
    asm("adds r0, r0, r1");
    asm("ldr r0, [r0]");
    asm("b _08018F5A");
    asm(".align 2, 0");
    asm("_08018F54: .4byte gUnk_08B7D8EC");
    asm("_08018F58:");
    asm("movs r0, #0");
    asm("_08018F5A:");
    asm("subs r0, r0, r4");
    asm("_08018F5C:");
    asm("str r0, [r6]");
    asm("pop {r4, r5, r6}");
    asm("pop {r0}");
    asm("bx r0");
    asm(".syntax divided");
}

#endif
