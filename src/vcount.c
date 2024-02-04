#include "global.h"
#include "vcount.h"
#include "main.h"

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

extern void sub_080071A0(void);
extern void sub_08006C48(void);
extern void (*gIntrTable[])(void);
extern u16 IntrMain_Buffer[];
extern void IntrMain(void);
extern u16 gUnk_03003240[];
extern void sub_080071F8(void); // handwritten?
extern void sub_08006FCC(void);
extern void sub_08006FA8(u16 r0, void (*r1)(void)); // set gIntrTable
extern void __div01(void);

void InitIntrHandlers(void)
{
    s16 temp;
    gUnk_03003364 = 0; // TODO:fix type
    sub_080071A0();
    sub_08006C48();
    for (temp = 0; temp <= 0xc; temp++)
    {
        gIntrTable[temp] = __div01;
    }
    DmaCopy16(3, IntrMain, IntrMain_Buffer, 0x100);
    INTR_VECTOR = IntrMain_Buffer;
    DmaCopy16(3, sub_080071F8, gUnk_03003240, 0x100);
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

void __div01(void)
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
    void (*temp)(void) = __div01; // ?
    gIntrTable[1] = temp;
    REG_IME = 0;
    REG_IE &= 0xfffd;
    REG_DISPSTAT &= 0xffef;
    REG_IME = 1;
}
