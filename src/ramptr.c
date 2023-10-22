#include "global.h"
#include "ramptr.h"
#include "data.h"
#include "functions.h"

u32 sub_08012BE8(void)
{
    u16 a, b;
    u32 c = sub_08012578();
    a = *gUnk_03006574->unk4++;
    b = c; // ?
    gUnk_03006590[0].unk0 |= (1 << b);
    gUnk_03006590[0].unk2C[b].unk0 = 1;
    gUnk_03006590[0].unk2C[b].unk4 = gUnk_03006590[0].unk28 + 16 + (a >> 1 << 1); // I tried & 0xfffe but not work.
    gUnk_03006578->unk1 = 1;
    return 0;
}

void sub_08012C44(void)
{
    CpuFill16(0, gUnk_03006590, 0x218);  // TODO: Find out if gUnk_03006590 contains 2 elements. 
    gUnk_030067B0 = (u32*)EWRAM_START;
    gUnk_0300657C = gUnk_02000100;
    gUnk_03006584 = gUnk_02000380;
    gUnk_030067AC = gUnk_02000540;
    gUnk_03006570 = gUnk_02000580;
    gUnk_030067A8 = gUnk_02000680;
    CpuFill32(0, (u32*)EWRAM_START, 0x400); // TODO: Find out why this overlaps other variables. 
    CpuFill32(0, gUnk_02000540, 0x1E4);
}

void sub_08012CDC(void)
{
    CpuFill16(0, (u16*)EWRAM_START, 0x400);  // TODO: ditto.
    CpuFill16(0, gUnk_02000540, 0x1E4);
}

void sub_08012D14(u16 r0, void *r1)
{
    gUnk_03006590[r0].unk28 = r1;
}

void sub_08012D30(u32 r0)
{
    LZ77UnCompWram(sub_08001D3C(2, r0), gUnk_03006590[0].unk28);
    sub_08012F0C(4, r0);
    sub_08012F0C(0x180, 0);
}

void sub_08012D64(u16 idx, u16 r1, u32 r2)
{
    gUnk_03006590[idx].unk0 |= (1 << r1);
    gUnk_03006590[idx].unk2C[r1].unk0 = 1;
    gUnk_03006590[idx].unk2C[r1].unk4 = gUnk_03006590[idx].unk28 + 16 + (r2 & 0xfffe); // Looks weird. The sequence of operators affects code generation. 
}

void sub_08012DC4(u16 r0)
{
    gUnk_03006590[r0].unk0 = 0;
}

bool32 sub_08012DE0(u16 r0, u16 r1)
{
    if ((gUnk_03006590[r0].unk0 >> r1) & 1)
        return TRUE;
    else
        return FALSE;
}

void sub_08012E14(u16 r0, u16 r1, u32 r2)
{
    struct Unk_03006590_1 *ptr;

    gUnk_03006590[r0].unk2C[r1].unk4 = gUnk_03006590[r0].unk28 + 16 + (r2 & 0xfffe);
    gUnk_03006574 = &(gUnk_03006590[r0].unk2C[r1]);
    ptr = &gUnk_03006590[r0].unk2C[r1];
    ptr->unk2 = *ptr->unk4;
    ptr->unk4 += 1;
    sub_080127E4();
}

u16 *sub_08012E78(u16 r0, u16 r1)
{
    return gUnk_03006590[r0].unk2C[r1].unk4;
}

void sub_08012EA0(u32 r0)
{
    gUnk_03006574->unk4 = gUnk_03006578->unk28 + 16 + (r0 & 0xfffe);
}


u16 *sub_08012EC4(void)
{
    return gUnk_03006574->unk4;
}

s16 sub_08012ED0(void)
{
    return gUnk_03006578->unk4;
}

u16 sub_08012EE0(void)
{
    return *gUnk_03006574->unk4++;
}

s16 sub_08012EF4(void)
{
    u16 r0 = *gUnk_03006574->unk4;
    gUnk_03006574->unk4 += 1;
    return r0;
}

/* The function gets called whenever scene changes. I believe this is an important function, but I don't know what it does. */
void sub_08012F0C(u16 r0, u32 r1)
{
    if (r0 <= 0x3f)
    {
        gUnk_030067B0[r0] = r1;
    }
    else if (r0 <= 0x17f)
    {
        gUnk_0300657C[r0-0x40] = r1;
    }
    else
    {
        gUnk_03006584[r0-0x180] = r1;
    }
}

u32 sub_08012F60(u16 r0)
{
    u32 temp;
    if (r0 <= 0x3f)
    {
        temp = gUnk_030067B0[r0];
    }
    else if (r0 <= 0x17f)
    {
        temp = (s16)gUnk_0300657C[r0-0x40];
    }
    else
    {
        temp = (s8)gUnk_03006584[r0-0x180];
    }
    return temp;
}
