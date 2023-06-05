#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

struct Unk_03006590
{
    u8 filler0[0x28];
    u32 *unk28;
    u8 filler2c[0xE0];
}; /* size = 0x10C */

extern u16 gUnk_0300594C;
extern int gUnk_03002964;
extern int gUnk_03002960;
extern int gUnk_03002968;

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
