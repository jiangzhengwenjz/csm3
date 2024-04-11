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

void sub_08018EF8(u32 r4, u8 *r5, u32 *r6)
{
    u32 i;
    u32 temp;
    for (i = 1; i < 100; ++i)
    {
        u32 r3 = (u8)i - 1;
        u8 ii = r3;

        if (ii < 99)
        {
            temp = gUnk_08B7D8EC[r3];
        }
        else
        {
            temp = 0;
        }
        if (temp > r4) break;
    }
    *r5 = i - 1;
    if (i == 100)
    {
        *r6 = 0;
    }
    else
    {
        u32 r3 = (u8)i - 1;
        u8 ii = r3;

        if (ii < 99)
        {
            temp = gUnk_08B7D8EC[r3];
        }
        else
        {
            temp = 0;
        }
        *r6 = temp - r4;
    }
}
