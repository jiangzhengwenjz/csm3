#include "global.h"
#include "vcount.h"
#include "main.h"

void sub_08006E44(void)
{
    u16 idx = gUnk_03003230;
    u16 vc = REG_VCOUNT;
    struct Unk_030031D0 *ptr2 = gUnk_030031D0;
    struct Unk_030031D0 *ptr = &ptr2[idx];
    if (ptr->unk0[0].unk4 == vc)
    {
        *gUnk_030031D0[idx].unk0[0].unk0 = ptr->unk0[0].unk6;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= ptr->unk0[1].unk4 << 8;
    }
    if (ptr->unk0[1].unk4 == vc)
    {
        *gUnk_030031D0[idx].unk0[1].unk0 = ptr->unk0[1].unk6;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= ptr->unk0[2].unk4 << 8;
    }
    if (ptr->unk0[2].unk4 == vc)
    {
        *gUnk_030031D0[idx].unk0[2].unk0 = ptr->unk0[2].unk6;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= ptr->unk0[3].unk4 << 8;
    }
    if (ptr->unk0[3].unk4 == vc)
    {
        *gUnk_030031D0[idx].unk0[3].unk0 = ptr->unk0[3].unk6;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= ptr->unk0[0].unk4 << 8;
    }
}

extern void sub_080071A0(void);
extern void sub_08006C48(void);
extern void (*gIntrTable[])(void);
extern u16 IntrMain_Buffer[0x80];
extern void IntrMain(void);
extern u16 gUnk_03003240[0x80];
extern void sub_080071F8(void); // handwritten?
extern void sub_08006FCC(void);
extern void sub_08006FA8(u16 r0, void (*r1)(void)); // set gIntrTable
extern void IntrDummy(void);

void InitIntrHandlers(void)
{
    s16 temp;
    gUnk_03003364 = 0; // TODO:fix type
    sub_080071A0();
    sub_08006C48();
    for (temp = 0; temp <= 0xc; temp++)
    {
        gIntrTable[temp] = IntrDummy;
    }
    DmaCopy16(3, IntrMain, IntrMain_Buffer, sizeof(IntrMain_Buffer));
    INTR_VECTOR = IntrMain_Buffer;
    DmaCopy16(3, sub_080071F8, gUnk_03003240, sizeof(gUnk_03003240));
    sub_08006FA8(0, sub_08006FCC);
    REG_IE = INTR_FLAG_VBLANK | INTR_FLAG_GAMEPAK;
    REG_DISPSTAT = DISPSTAT_VBLANK_INTR;
    REG_IME = 1;
}

void sub_08006FA8(u16 r0, void (*r1)(void))
{
    gIntrTable[r0] = r1;
}

void (*sub_08006FB8(u16 r0))(void)
{
    return gIntrTable[r0];
}

void IntrDummy(void)
{
}

extern void sub_080146F4(void);
extern void sub_0801465C(void);

void sub_08006FCC(void)
{
    sub_080146F4();
    gUnk_03003364 += 1;
    sub_0801465C();
    INTR_CHECK = 1;
}

void sub_08006FF0(void)
{
    void (*temp)(void) = IntrDummy; // ?
    gIntrTable[1] = temp;
    REG_IME = 0;
    REG_IE &= ~INTR_FLAG_HBLANK;
    REG_DISPSTAT &= ~DISPSTAT_HBLANK_INTR;
    REG_IME = 1;
}

extern u16 gUnk_03003230;
extern u16 gUnk_03003360[];

void sub_08007034(u16 r0, u16 *r1, u16 r2)
{
    u16 r5 = 1 - gUnk_03003230;
    struct Unk_030031D0_1 *ptr = &gUnk_030031D0[r5].unk0[gUnk_03003360[r5]];
    ptr->unk0 = r1;
    ptr->unk4 = r0;
    ptr->unk6 = r2;
    REG_DISPSTAT &= 0xff;
    REG_DISPSTAT |= r0 << 8;
    gUnk_03003360[r5] += 1;
}
