#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "global.h"

struct Unk_08001CBC 
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
}; /* size = unknown */

struct Unk_08001D98 
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u32 *unk8;
    u32 *unkc;
    u32 *unk10;
}; /* size = unknown */

struct Unk_0200B000 
{
    u32 unk0[4];
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1a;
    u32 unk1c;
}; /* size = unknown */

extern struct Unk_0200B000 gUnk_0200B000, gUnk_0200D800, gUnk_02031800, gUnk_02033000;

/* 02031800 is passed to 1dc4 as an argument in 3afa8. And it is passed to 1cbc in 59edc ? */

struct Unk_08001DC4_2  
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unka;
    u32 *unkc;
}; /* size = unknown */

struct Unk_08001DE8_1 
{
    u32 unk0[4];
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u32 unk18;
    u32 unk1c;
}; /* size = unknown */

struct Unk_08001DE8_2 
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u32 *unk8;
    u32 *unkc;
}; /* size = unknown */

struct Unk_08001E14 
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u32 *unk4;
    u32 *unk8;
}; /* size = unknown */

struct Unk_08001E38 
{
    u16 unk0;
    u16 unk2;
    u32 *unk4;
}; /* size = unknown */

struct Unk_08001E4C_1 
{
    u32 unk0[4];
    u8 unk10;
    u8 unk11;
    u16 unk12;
    u32 unk14;
}; /* size = unknown */
struct Unk_08001E4C_2 
{
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u32 *unk4;
}; /* size = unknown */

struct Unk_08001E64 
{
    u32 unk0;
    u16 *unk4;
}; /* size = unknown */

extern u32 sub_08001A18(u32 *a);
extern void sub_08001B20(void);
extern void sub_08001B14(int unk);
extern void sub_08001A1C(void);
extern void sub_08001AEC(s16 unk);
extern void sub_08001C30(void);
extern void sub_080934A8(void);
extern void sub_08001BC0(void);
extern void sub_08012454(void);
extern void sub_08019688(void);
extern void sub_08001C00(void);
extern void sub_08001C64(void);
extern void sub_080132CC(void);
extern void sub_08013A78(void);
extern void sub_08019A94(void);
extern void sub_08008B94(void);
extern void sub_0800CA2C(void);
extern void sub_08004D6C(void);
extern void sub_08009714(void);
extern void sub_0800901C(void);
extern void sub_08010CD4(void);
extern void sub_08014E68(void);
extern void sub_0800708C(void);
extern void sub_080044E4(void);
extern void sub_08004B30(void);
extern void DmaCopyBufferToOam(void);
extern void DmaCopyMapAndPltt(void);
extern void sub_0800EF48(void);
extern void sub_080092EC(void);
extern void sub_0800A5E8(void);
extern void sub_08006AB8(void);
extern void sub_080146B0(void);
extern void sub_08006F00(void);
extern void sub_08001D0C(void);
extern void sub_08001120(void);
extern void sub_080044B0(void);
extern void sub_0800F034(void);
extern void sub_080150C4(void);
extern void sub_08006AA4(void);
extern void sub_08004A8C(void);
extern void sub_080092B0(void);
extern void sub_0800A5BC(void);
extern void sub_0801978C(void);
extern void sub_080AB2D0(void);
extern int sub_08012F60(int a);
extern void sub_08012C44(void);
extern void sub_0800F094(void);
extern void sub_080136CC(void);
extern void sub_08003620(void);
extern void sub_0800AF74(void);
extern void sub_0801B960(void);
extern void sub_08008B3C(void);
extern void sub_080637C4(void);
extern void InitAttribTablePointer(void);
extern void sub_0806EF50(void);
extern void sub_080B3128(void);
extern void sub_080B4970(void);
extern void sub_08062EB0(void);
extern void sub_08093418(void);
extern void sub_08012D14(int a,int *b);
extern void sub_08012D30(void);
extern void sub_08012D64(int a,int b,int c);
extern void sub_08012F0C(int a,int b);

extern int gUnk_03002968;
extern int gUnk_02006000;
extern int gUnk_03003364;
extern vu16 gUnk_03002948;
extern int gUnk_03002954;
extern int gUnk_03002938;
extern int gUnk_0300295C;
extern u16 gUnk_0300294C;
extern u16 gUnk_03002944;
extern int gUnk_03002950;


extern const u16 gUnk_08B6D04C[];
extern const int *gUnk_03002970[5];
extern const int gUnk_08BDA40C[];
extern const int gUnk_098C8D9C[];
extern const int gUnk_09718FFC[];
extern const int gUnk_094D446C[];
extern const int gUnk_09E2261C[];
extern const s16 gUnk_08B6D24C[];

void sub_08001C98(void);

#endif
