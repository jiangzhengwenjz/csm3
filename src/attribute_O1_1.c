#include "global.h"
#include "attribute.h"
#include "data.h"
#include "functions.h"

u16 sub_08018B6C(void)
{
    u16 sum = 0;
    s32 i = 0;
    u8 *iql = gSaveBlock1Ptr->itemQuantityList;

    for (; i < 0xc8; i += 5)
    {
        u16 r0 = i;
        sum += iql[r0];
        r0 = i + 1;
        sum += iql[r0];
        r0 = i + 2;
        sum += iql[r0];
        r0 = i + 3;
        sum += iql[r0];
        r0 = i + 4;
        sum += iql[r0];
    }
    return sum;
}

u16 sub_08018BE0(void)
{
    u16 sum = 0;
    s32 i = 0x32;
    u8 *iql = gSaveBlock1Ptr->itemQuantityList;

    for (; i < 0x5a; i += 5)
    {
        u16 r0 = i;
        sum += iql[r0];
        r0 = i + 1;
        sum += iql[r0];
        r0 = i + 2;
        sum += iql[r0];
        r0 = i + 3;
        sum += iql[r0];
        r0 = i + 4;
        sum += iql[r0];
    }
    return sum;
}

u16 sub_08018C54(void)
{
    u16 sum = 0;
    s32 i = 0xc8;
    u8 *iql = gSaveBlock1Ptr->itemQuantityList;

    for (; i < 0x100; i += 7)
    {
        u16 r0 = i;
        sum += iql[r0];
        r0 = i + 1;
        sum += iql[r0];
        r0 = i + 2;
        sum += iql[r0];
        r0 = i + 3;
        sum += iql[r0];
        r0 = i + 4;
        sum += iql[r0];
        r0 = i + 5;
        sum += iql[r0];
        r0 = i + 6;
        sum += iql[r0];
    }
    return sum;
}

u16 sub_08018CE8(void)
{
    u16 sum = 0;
    s32 i = 0x96;
    u8 *iql = gSaveBlock1Ptr->itemQuantityList;

    for (; i < 0xc8; i += 5)
    {
        u16 r0 = i;
        sum += iql[r0];
        r0 = i + 1;
        sum += iql[r0];
        r0 = i + 2;
        sum += iql[r0];
        r0 = i + 3;
        sum += iql[r0];
        r0 = i + 4;
        sum += iql[r0];
    }
    return sum;
}
