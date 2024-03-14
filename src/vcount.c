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

extern u32 gUnk_03003350[];
extern u32 gUnk_03003210;
extern u32 gUnk_03003470;

// https://cexplore.karathan.at/z/eozt9J
// the function seems to use lots of local variables.
// I'm not sure how to force it to use r8, and I don't know how to use both r0 and r2 for gUnk_030031D0
// also, the way to access gUnk_03003350 is weird. I can't get it to generate 'add r0, r0, #0x8'
// I tried different local variable declarations but no use.
// the link above is the close version, while the NONMATCHING version below does not use any local variable.

#ifdef NONMATCHING

void sub_0800708C(void)
{
    gUnk_03003360[gUnk_03003230] = 0;
    gUnk_03003350[gUnk_03003230] = 0;
    gUnk_03003350[gUnk_03003230 + 2] = 0;
    gUnk_03003210 = 0;
    gUnk_030031D0[gUnk_03003230].unk0[0].unk4 = 0xff;
    gUnk_030031D0[gUnk_03003230].unk0[1].unk4 = 0xff;
    gUnk_030031D0[gUnk_03003230].unk0[2].unk4 = 0xff;
    gUnk_030031D0[gUnk_03003230].unk0[3].unk4 = 0xff;
    gUnk_03003470 = 0;
    gUnk_03003230 = 1 - gUnk_03003230;
}

#else

__attribute__((naked)) void sub_0800708C(void)
{
    asm(".syntax unified");
    asm("push {r4, r5, r6, lr}");
    asm("mov r6, r8");
    asm("push {r6}");
    asm("ldr r0, _080070E0 @ =gUnk_03003230");
    asm("mov r8, r0");
    asm("ldrh r5, [r0]");
    asm("ldr r1, _080070E4 @ =gUnk_03003360");
    asm("lsls r0, r5, #1");
    asm("adds r0, r0, r1");
    asm("movs r4, #0");
    asm("strh r4, [r0]");
    asm("ldr r0, _080070E8 @ =gUnk_03003350");
    asm("lsls r3, r5, #2");
    asm("adds r1, r3, r0");
    asm("str r4, [r1]");
    asm("adds r0, #8");
    asm("adds r0, r3, r0");
    asm("str r4, [r0]");
    asm("ldr r0, _080070EC @ =gUnk_03003210");
    asm("str r4, [r0]");
    asm("ldr r6, _080070F0 @ =gUnk_03003470");
    asm("ldr r2, _080070F4 @ =gUnk_030031D0");
    asm("movs r1, #0xff");
    asm("lsls r0, r5, #5");
    asm("adds r0, r0, r2");
    asm("adds r2, r0, #0");
    asm("strh r1, [r0, #4]");
    asm("strh r1, [r0, #0xc]");
    asm("strh r1, [r2, #0x14]");
    asm("strh r1, [r2, #0x1c]");
    asm("adds r3, r3, r6");
    asm("str r4, [r3]");
    asm("movs r0, #1");
    asm("subs r0, r0, r5");
    asm("mov r1, r8");
    asm("strh r0, [r1]");
    asm("pop {r3}");
    asm("mov r8, r3");
    asm("pop {r4, r5, r6}");
    asm("pop {r0}");
    asm("bx r0");
    asm(".align 2, 0");
    asm("_080070E0: .4byte gUnk_03003230");
    asm("_080070E4: .4byte gUnk_03003360");
    asm("_080070E8: .4byte gUnk_03003350");
    asm("_080070EC: .4byte gUnk_03003210");
    asm("_080070F0: .4byte gUnk_03003470");
    asm("_080070F4: .4byte gUnk_030031D0");
    asm(".syntax divided");
}

#endif
