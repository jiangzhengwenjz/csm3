#include "global.h"
#include "main.h"

extern void sub_08001CBC(const u32 *arr0, struct Unk_08001CBC *arr1); // const?
extern const int *sub_08001D3C(u16 a, u16 b);

extern u16 gUnk_03002990[];
extern u32 *gUnk_030029AC;

u16 sub_08004544(void)
{
    return gUnk_03002990[0] & 7;
}

void sub_08004554(u16 r0)
{
    gUnk_03002990[0] = (gUnk_03002990[0] & 0xFFF8) | r0;
}

void sub_08004570(u32 *r0)
{
    struct Unk_08001CBC temp;
    gUnk_030029AC = r0;
    sub_08001CBC(sub_08001D3C(3, 0), &temp);
    CpuFastSet(temp.unk10, r0, temp.unk4 << 9 >> 11); // ?
}
