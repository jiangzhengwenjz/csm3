#ifndef GUARD_COPY_H
#define GUARD_COPY_H

#include "global.h"

struct Unk_030040C0
{
    u16 unk0;
    u16 unk2; // obj tile index
    u32 unk4;
    struct Unk_030040C0_8 *unk8;
    u32 unkC;
}; /* size = 0x10 */

struct Unk_03003CC0
{
    u8* unk0;
    u16 unk4;
    u16 unk8;
};/* size = 0x8 */

struct Unk_08009400
{
    u8 filler0[0xC];
    u8 unkC;
    u8 unkD;
    u16 unkE;
}; /* size = UNKNOWN */

struct Unk_08009334
{
    u32 unk0;
    u32 fillter0[3];
    u32 unk10;
    u32 fillter1;
    struct Unk_030040C0_8 *unk18;
};

struct Unk_030040C0_8_4
{
    u8 unk0;
    u8 unk1;
    u16 unk2;
}; /* size = 4 */

struct Unk_030040C0_8
{
    u32 filler0;
    struct Unk_030040C0_8_4 unk4[0]; // TODO: update the size
}; /* size = UNKNOWN */

extern void sub_08009684(void);
extern void sub_080092EC(void);

extern u8 gUnk_03003CB0[];
extern u32 gOamBuffer[];
extern u16 gUnk_030037A0[];
extern struct Unk_030040C0 gUnk_030040C0[];
extern struct Unk_03003CC0 gUnk_03003CC0[];

#endif
