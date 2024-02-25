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
