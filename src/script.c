#include "data.h"
#include "ramptr.h"

extern u32 (*gUnk_08B716B4[])(void);
extern u32 (*gUnk_08B716F4[])(void);
extern u32 (*gUnk_08B71750[])(void);
extern u32 (*gUnk_08B718B0[])(void);
extern u32 (*gUnk_08B71AEC[])(void);

extern void sub_08001AEC(s16 unk);

void sub_0801309C(void)
{
    gUnk_03006574->unk2 = *gUnk_03006574->unk4++;
    sub_080127E4();
    gUnk_03006578->unk1 = 1;
}

void sub_080130C4(void)
{
    if(gUnk_08B716B4[(u8)gUnk_03006574->unk2]() << 0x10 == 0)
    {
        gUnk_03006574->unk2 = *gUnk_03006574->unk4++;
        sub_080127E4();
    }
}

void sub_080130FC(void)
{
    if(gUnk_08B716F4[(u8)gUnk_03006574->unk2]() << 0x10 == 0)
    {
        gUnk_03006574->unk2 = *gUnk_03006574->unk4++;
        sub_080127E4();
    }
}

void sub_08013134(void)
{
    if(gUnk_08B71750[(u8)gUnk_03006574->unk2]() << 0x10 == 0)
    {
        gUnk_03006574->unk2 = *gUnk_03006574->unk4++;
        sub_080127E4();
    }
}

void sub_0801316C(void)
{
    if(gUnk_08B718B0[(u8)gUnk_03006574->unk2]() << 0x10 == 0)
    {
        gUnk_03006574->unk2 = *gUnk_03006574->unk4++;
        sub_080127E4();
    }
}

void sub_080131A4(void)
{
    if(gUnk_08B71AEC[(u8)gUnk_03006574->unk2]() << 0x10 == 0)
    {
        gUnk_03006574->unk2 = *gUnk_03006574->unk4++;
        sub_080127E4();
    }
}

u32 sub_080131DC(void)
{
    u16 r2 = *gUnk_03006574->unk4;
    u32 r4;
    gUnk_03006574->unk4++;
    r4 = r2 << 0x10;
    if (sub_08012578() == 0)
    {
        gUnk_03006574->unk4 = (r4 >> 0x11 << 1) + 0x10 + gUnk_03006578->unk28; // TODO: I think this is a fakematch.
    }
    gUnk_03006578->unk1 = 1;
    return 0;
}

u32 sub_08013220(void)
{
    u16 r1 = *gUnk_03006574->unk4++;
    gUnk_03006574->unk4 = (r1 >> 1 << 1) + 0x10 + gUnk_03006578->unk28;
    gUnk_03006578->unk1 = 1;
    return 0;
}

u32 sub_0801324C(void)
{
    gUnk_03006590[0].unk2C[sub_08012578()].unk0 = 9;
    gUnk_03006578->unk1 = 1;
    return 0;
}

u32 sub_08013278(void)
{
    u32 t1 = sub_08012578();
    u8 t2 = gUnk_03006590[t1].unk0;
    gUnk_030067B0[0x7] = t2;
    gUnk_03006578->unk1 = 1;
    return 0;
}

u32 sub_080132B0(void)
{
    return 0;
}

u32 sub_080132B4(void)
{
    u32 r0 = 0;
    gUnk_030067B0[4] = r0;
    sub_08001AEC(r0); // is this UB?
    return 0;
}
