#include "global.h"
#include "vcount.h"

void sub_08006E44(void)
{
    u16 idx = gUnk_03003230;
    u16 vc = REG_VCOUNT;
    struct Unk_030031D0 *ptr2 = gUnk_030031D0;
    struct Unk_030031D0 *ptr = &ptr2[idx];
    if (ptr->unk4 == vc)
    {
        *gUnk_030031D0[idx].unk0 = ptr->unk6;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= ptr->unkC << 8;
    }
    if (ptr->unkC == vc)
    {
        *gUnk_030031D0[idx].unk8 = ptr->unkE;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= ptr->unk14 << 8;
    }
    if (ptr->unk14 == vc)
    {
        *gUnk_030031D0[idx].unk10 = ptr->unk16;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= ptr->unk1C << 8;
    }
    if (ptr->unk1C == vc)
    {
        *gUnk_030031D0[idx].unk18 = ptr->unk1E;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= ptr->unk4 << 8;
    }
}
