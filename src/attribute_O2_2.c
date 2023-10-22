#include "global.h"
#include "attribute.h"
#include "data.h"
#include "functions.h"

u16 sub_08018D5C(void)
{
    u16 r5 = 0, r4 = 0;
    for (; r4 < 0xc8; r4 += 1)
    {
        if (sub_08063868(r4) & 1)
        {
            r5 += gSaveBlock1Ptr->itemQuantityList[r4];
        }
    }
    return r5;
}
