#include "global.h"
#include "copy.h"
#include "gba/syscall.h"
#include "data.h"
#include "functions.h"

void sub_080092B0(void)
{
    sub_08009684();
    sub_080092EC();
    gUnk_03003CB0[1] = 0;
    gUnk_03003CB0[3] = 0;
}

void DmaCopyBufferToOam(void)
{
    DmaCopy32(3, gOamBuffer, OAM, 0x400);
}

void sub_080092EC(void)
{
    CpuFastFill(0x2e4, gOamBuffer, 0x400);
    CpuFill32(-1,gUnk_030037A0,0x10);
    gUnk_03003CB0[0] = 0;
    gUnk_03003CB0[2] = 0;
}

void sub_08009334(u8 a1, u32 *a2, u32 a3, u32 a4)
{
    u16 *v1;
    u32 *v2;
    v1 = gUnk_030040C0 + a1 * 8;  //TODO:I think gUnk_030040C0 is a struct, but it is wierd to find members through a variable. 
    v2 = (u32*)v1;
    v1[0] = a2[0];
    v1[1] = (a3 + 0xf9ff0000) / 32;
    v2[1] = a2[4];
    v2[2] = a2[6];
    v2[3] = a4;
}

void sub_08009364(u8 a1, u16 a2, u32 a3)
{
    u16 *v1;
    u32 *v2;
    v1 = gUnk_030040C0 + a1 * 8;  //TODO:Same above.
    v2 = (u32*)v1;
    v1[0] = a2;
    v2[2] = a3;
}

u32 sub_08009378(u8 a1, u16 a2, u32 a3)
{
    u16 *v1;
    u32 *v2;
    v1 = gUnk_030040C0 + a1 * 8;  //TODO:Same above.
    v2 = (u32*)v1;
    return v2[3];
}
