#include "global.h"
#include "ramptr.h"
#include "data.h"
#include "functions.h"

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

void sub_08012D14(u16 r0, u16 *r1)
{
    gUnk_03006590[r0].unk28 = r1;
}

void sub_08012D30(u32 r0)
{
    LZ77UnCompWram(sub_08001D3C(2,r0), gUnk_03006590[0].unk28);
    sub_08012F0C(4, r0);
    sub_08012F0C(0x180, 0);
}

void sub_08012D64(u16 idx, u16 r1, u32 r2)
{
    gUnk_03006590[idx].unk0 |= (1 << r1);
    gUnk_03006590[idx].unk2C[r1].unk0 = 1;
    gUnk_03006590[idx].unk2C[r1].unk4 = (u16*)((u32)gUnk_03006590[idx].unk28 + 16 + (r2 & 0xfffe)); // Looks weird. The sequence of operators affects code generation. 
}

void sub_08012DC4(u16 r0)
{
    gUnk_03006590[r0].unk0 = 0;
}

bool32 sub_08012DE0(u16 r0, u16 r1)
{
    if (((gUnk_03006590[r0].unk0 >> r1) & 1) != 0)
        return TRUE;
    else
        return FALSE;
}

/*
void sub_08012E14(u16 r0, u16 r1, u32 r2)
{
    gUnk_03006590[r0].unk2C[r1].unk4 = (u16*)((u32)gUnk_03006590[r0].unk28 + 16 + (r2 & 0xfffe));
    gUnk_03006574 = &(gUnk_03006590[r0].unk2C[r1]);
    gUnk_03006590[r0].unk2C[r1].unk2 = *(gUnk_03006590[r0].unk2C[r1].unk4);
    gUnk_03006590[r0].unk2C[r1].unk4 += 1;
    sub_080127E4();
    // Not matching yet. 
}
*/
