#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "global.h"

struct unk_1 
{
    u32 unk0;
    u32 unk4;
    u16 unk8;
    u16 unka;
    u16 unkc;
    u16 unke;
    u32 *unk10;
    u32 *unk14;
    u32 *unk18;
};

struct unk_2 
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u32 *unk8;
    u32 *unkc;
    u32 *unk10;
};

struct unk_3 
{
    u32 unk0[4];
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1a;
    u32 unk1c;
};

struct unk_4 
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unka;
    u32 *unkc;
};

struct unk_5 
{
    u32 unk0[4];
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u32 unk18;
    u32 unk1c;
};

struct unk_6 
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u32 *unk8;
    u32 *unkc;
};

struct unk_7 
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u32 *unk4;
    u32 *unk8;
};

struct unk_8 
{
    u16 unk0;
    u16 unk2;
    u32 *unk4;
};

struct unk_9 
{
    u32 unk0[4];
    u8 unk10;
    u8 unk11;
    u16 unk12;
    u32 unk14;
};
struct unk_10 
{
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u32 *unk4;
};

struct unk_11 
{
    u32 unk0;
    u16 *unk4;
};

extern void sub_08001B20(void);
extern void sub_08001B14(void);
extern void sub_08001A1C(void);
extern void sub_08001AEC(int);
extern void sub_08001C30(void);

extern int gUnk_03002968;

extern const int *gUnk_03002970[5];
extern const int gUnk_08BDA40C[];
extern const int gUnk_098C8D9C[];
extern const int gUnk_09718FFC[];
extern const int gUnk_094D446C[];
extern const int gUnk_09E2261C[];
extern const s16 gUnk_08B6D24C[];

void sub_08001C98(void);

#endif
