#include "global.h"

struct Unk_03006AE0
{
    u8 filler0[0x12];
    u8 unk12;
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u16 filler16;
    u32 unk18;
    u32 unk1C;
    s16 unk20;
    s16 unk22;
    u8 unk24;
    u8 unk25;
    u8 unk26;
    u8 unk27;
    u8 unk28;
    u8 unk29;
    u8 unk2A;
    u8 filler2B;
    u32 unk2C;
    u8 unk30[0x24];
};
/* size = 0x54 */

extern struct Unk_03006AE0 *gUnk_03006AE0;
extern struct Unk_03006AE0 gUnk_08BBCA9C[];
extern u32 *gUnk_03006AE4;
extern u32 gUnk_08BC1E9C;
extern u32 *gUnk_03006AF0;
extern u32 gUnk_08BC73DC;
extern u32 *gUnk_03006AEC;
extern u32 gUnk_08BC81DC;
extern u32 *gUnk_03006AE8;
extern u32 gUnk_08BC9100;

void sub_080637C4(void)
{
    gUnk_03006AE0 = gUnk_08BBCA9C;
    gUnk_03006AE4 = &gUnk_08BC1E9C;
    gUnk_03006AF0 = &gUnk_08BC73DC;
    gUnk_03006AEC = &gUnk_08BC81DC;
    gUnk_03006AE8 = &gUnk_08BC9100;
}

struct Unk_03006AE0 *sub_0806380C(u16 r0)
{
    return &gUnk_03006AE0[r0]; // May be the first element's address.
}

u32 *sub_08063820(u16 r0)
{
    return &gUnk_03006AE0[r0].unk2C;
}

u8 sub_08063838(u16 r0)
{
    return gUnk_03006AE0[r0].unk12;
}

u8 sub_08063850(u16 r0)
{
    return gUnk_03006AE0[r0].unk13;
}

u8 sub_08063868(u16 r0)
{
    return gUnk_03006AE0[r0].unk14;
}

u8 sub_08063880(u16 r0)
{
    return gUnk_03006AE0[r0].unk15;
}

u32 sub_08063898(u16 r0)
{
    return gUnk_03006AE0[r0].unk18;
}

u32 sub_080638B0(u16 r0)
{
    return gUnk_03006AE0[r0].unk1C;
}

s16 sub_080638C8(u16 r0)
{
    return gUnk_03006AE0[r0].unk20;
}

s16 sub_080638E0(u16 r0)
{
    return gUnk_03006AE0[r0].unk22;
}

s8 sub_080638F8(u16 r0)
{
    return gUnk_03006AE0[r0].unk24;
}

s8 sub_08063914(u16 r0)
{
    return gUnk_03006AE0[r0].unk25;
}

s8 sub_08063930(u16 r0)
{
    return gUnk_03006AE0[r0].unk26;
}

s8 sub_0806394C(u16 r0)
{
    return gUnk_03006AE0[r0].unk27;
}

s8 sub_08063968(u16 r0)
{
    return gUnk_03006AE0[r0].unk28;
}

s8 sub_08063984(u16 r0)
{
    return gUnk_03006AE0[r0].unk29;
}

s8 sub_080639A0(u16 r0)
{
    return gUnk_03006AE0[r0].unk2A;
}
