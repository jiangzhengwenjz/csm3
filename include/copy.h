#ifndef GUARD_COPY_H
#define GUARD_COPY_H

#include "global.h"

struct Unk_030040C0
{
    u16 unk0;
    u16 unk2; // obj tile index
    u32 unk4;
    u32 unk8;
    u32 unkC;
}; /* size = 0x10 */

extern void sub_08009684(void);
extern void sub_080092EC(void);

extern u8 gUnk_03003CB0[];
extern u32 gOamBuffer[];
extern u16 gUnk_030037A0[];
extern struct Unk_030040C0 gUnk_030040C0[];

#endif
