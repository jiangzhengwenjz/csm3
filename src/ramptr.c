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

void sub_08012D14(u16 r0, struct Unk_08001DE8_1 *r1)
{
    gUnk_03006590[r0].unk28 = r1;
}
