#ifndef MAIN_H
#define MAIN_H

#include "global.h"

struct unk_1 {
    u32 unk0; u32 unk4; 
    u16 unk8; u16 unka; 
    u16 unkc; u16 unke; 
    u32 *unk10; u32 *unk14; 
    u32 *unk18;
};

struct unk_2 
{
    u16 unk0; u16 unk2; u16 unk4;
    
    u32 *unk8; u32 *unkc; u32 *unk10;
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
//TODO:type
//Should I put externs here? 

#endif
