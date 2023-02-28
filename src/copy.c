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
    CpuFill32(-1, gUnk_030037A0, 0x10);
    gUnk_03003CB0[0] = 0;
    gUnk_03003CB0[2] = 0;
}

void sub_08009334(u8 a1, struct Unk_08009334 *a2, u32 tilesVram, u32 a4)
{
    struct Unk_030040C0 *var = &gUnk_030040C0[a1];

    var->unk0 = a2->unk0;
    var->unk2 = (tilesVram - 0x6010000) / 32; // 4BPP
    var->unk4 = a2->unk10;
    var->unk8 = a2->unk18;
    var->unkC = a4;
}

void sub_08009364(u8 a1, u16 a2, struct Unk_030040C0_8 *a3)
{
    struct Unk_030040C0 *var = &gUnk_030040C0[a1];

    var->unk0 = a2;
    var->unk8 = a3;
}

u32 sub_08009378(u8 a1)
{
    struct Unk_030040C0 *var = &gUnk_030040C0[a1];

    return var->unkC;
}

u32 sub_08009388(u8 a1)
{
    return gUnk_030040C0[a1].unk2;
}

u8 sub_08009398(void)
{
    return gUnk_03003CB0[2];
}

void CpuClear16Bytes(void *a)
{
    CpuFill32(0, a, 0x10);
}

void sub_080093C0(u8* a)
{
    u32 v1 = gUnk_03003CB0[0];
    struct Unk_03003CC0 *var = &gUnk_03003CC0[v1];
    if(v1 != 0x80)
    {
        var->unk0 = a;
        var->unk4 = gUnk_030037A0[a[8]];
        gUnk_030037A0[a[8]] = v1;
        gUnk_03003CB0[0] = gUnk_03003CB0[0] + 1;
    }
}

void sub_08009400(struct Unk_08009400 *r0, u8 r1, u8 r2)
{
    struct Unk_030040C0_8_4 *var = gUnk_030040C0[r1].unk8->unk4;
    struct Unk_030040C0_8_4 *r3 = var + r2;
    u16 idx2;

    r0->unkC = r3->unk0;
    r0->unkD = r3->unk1;
    idx2 = r3->unk2;
    r0->unkE = gUnk_030040C0[r1].unk2 + idx2;
}
