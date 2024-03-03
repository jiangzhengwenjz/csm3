#include "data.h"
#include "ramptr.h"

extern u32 (*gUnk_08B716B4[])(void);
extern u32 (*gUnk_08B716F4[])(void);
extern u32 (*gUnk_08B71750[])(void);
extern u32 (*gUnk_08B718B0[])(void);
extern u32 (*gUnk_08B71AEC[])(void);

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
