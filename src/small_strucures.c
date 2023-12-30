#include "global.h"
#include "main.h"
#include "gba/syscall.h"

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
    u32 unk2C; // May be a sub struct.
    u8 filler30[0x24];
};
/* size = 0x54 */

struct Unk_03006AE4
{
    u8 filler0[0x12];
    u8 unk12;
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u8 unk18;
    u8 unk19;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    s16 unk20;
    u16 unk22;
    u16 unk24;
    u16 unk26;
    s16 unk28;
    u16 unk2A;
    u8 unk2C;
    u8 unk2D;
    u8 unk2E;
    u8 unk2F;
    u8 unk30;
    u8 unk31;
    u16 unk32;
    u8 filler34[0x24];
};
/* size = 0x58 */

extern struct Unk_03006AE0 *gUnk_03006AE0;
extern struct Unk_03006AE0 gUnk_08BBCA9C[];
extern struct Unk_03006AE4 *gUnk_03006AE4;
extern struct Unk_03006AE4 gUnk_08BC1E9C[];
extern u32 *gUnk_03006AF0;
extern u32 gUnk_08BC73DC;
extern u32 *gUnk_03006AEC;
extern u32 gUnk_08BC81DC;
extern u32 *gUnk_03006AE8;
extern u32 gUnk_08BC9100;

extern const int *sub_08001D3C(u16 a, u16 b);
extern const int *sub_08001D78(const int *a, u16 b);

void sub_080637C4(void)
{
    gUnk_03006AE0 = gUnk_08BBCA9C;
    gUnk_03006AE4 = gUnk_08BC1E9C;
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

struct Unk_03006AE4 *sub_080639BC(u8 r0)
{
    return &gUnk_03006AE4[r0]; // May be the first element's address.
}

u16 *sub_080639D0(u8 r0)
{
    return &gUnk_03006AE4[r0].unk32;
}

u8 sub_080639E8(u8 r0)
{
    return gUnk_03006AE4[r0].unk12;
}

u8 sub_08063A00(u8 r0)
{
    return gUnk_03006AE4[r0].unk13;
}

u8 sub_08063A18(u8 r0)
{
    return gUnk_03006AE4[r0].unk14;
}

u8 sub_08063A30(u8 r0)
{
    return gUnk_03006AE4[r0].unk15;
}

u8 sub_08063A48(u8 r0)
{
    return gUnk_03006AE4[r0].unk16;
}

u8 sub_08063A60(u8 r0)
{
    return gUnk_03006AE4[r0].unk18;
}

u8 sub_08063A78(u8 r0)
{
    return gUnk_03006AE4[r0].unk19;
}

s8 sub_08063A90(u8 r0)
{
    return gUnk_03006AE4[r0].unk31;
}

u16 sub_08063AAC(u8 r0)
{
    return gUnk_03006AE4[r0].unk1A;
}

u16 sub_08063AC4(u8 r0)
{
    return gUnk_03006AE4[r0].unk1C;
}

u16 sub_08063ADC(u8 r0)
{
    return gUnk_03006AE4[r0].unk1E;
}

s16 sub_08063AF4(u8 r0)
{
    return gUnk_03006AE4[r0].unk20;
}

u16 sub_08063B0C(u8 r0)
{
    return gUnk_03006AE4[r0].unk22;
}

u16 sub_08063B24(u8 r0)
{
    return gUnk_03006AE4[r0].unk24;
}

u16 sub_08063B3C(u8 r0)
{
    return gUnk_03006AE4[r0].unk26;
}

s16 sub_08063B54(u8 r0)
{
    return gUnk_03006AE4[r0].unk28;
}

u16 sub_08063B6C(u8 r0)
{
    return gUnk_03006AE4[r0].unk2A;
}

u8 sub_08063B84(u8 r0)
{
    return gUnk_03006AE4[r0].unk17;
}

u8 sub_08063B9C(u8 r0)
{
    return gUnk_03006AE4[r0].unk30;
}

u8 sub_08063BB4(u8 r0)
{
    return gUnk_03006AE4[r0].unk2F;
}

u8 sub_08063BCC(u8 r0)
{
    return gUnk_03006AE4[r0].unk2C;
}

u8 sub_08063BE4(u8 r0)
{
    return gUnk_03006AE4[r0].unk2D;
}

u8 sub_08063BFC(u8 r0)
{
    return gUnk_03006AE4[r0].unk2E;
}

void sub_08063C14(u16 r0, void *r1)
{
    RLUnCompWram(sub_08001D78(sub_08001D3C(3, 0xf), gUnk_03006AE4[(u8)r0].unk14), r1); // The cast is weird
}

/*
Maybe 3 means the assets are rl compressed?
*/
void sub_08063C4C(u16 r0, void *r1)
{
    RLUnCompWram(sub_08001D78(sub_08001D3C(3, 0x10), r0), r1);
}
