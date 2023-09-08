#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

struct Unk_03006590_1
{
    u8 unk0;
    u8 filler1;
    u16 unk2;
    void *unk4;
    u8 filler8[0x14];
}; /* size = 0x1C */

struct Unk_03006590
{
    u8 unk0; // Judging from sub_08012D64, this looks like a bit field. 
    u8 filler1;
    u8 filler2;
    u8 filler3;
    s16 unk4; // sub_08012ED0
    u8 filler6[0x22];
    void *unk28; // Judging from the runtime memory, [030065b8] always = 02006000. 
    struct Unk_03006590_1 unk2C[8];
}; /* size = 0x10C */

extern u16 gUnk_0300594C;
extern int gUnk_03002964;
extern int gUnk_03002960;
extern int gUnk_03002968;

extern struct Unk_03006590_1 *gUnk_03006574; // See 08012e14

extern struct Unk_03006590 *gUnk_03006578; // See 08012ea0

extern struct Unk_03006590 gUnk_03006590[];
extern u32 *gUnk_030067B0;
extern u16 *gUnk_0300657C;
extern u16 gUnk_02000100[];
extern u8 *gUnk_03006584;
extern u8 gUnk_02000380[];
extern u16 *gUnk_030067AC;
extern u16 gUnk_02000540[];
extern u8 *gUnk_03006570;
extern u8 gUnk_02000580[];
extern u8 *gUnk_030067A8;
extern u8 gUnk_02000680[];

#endif
