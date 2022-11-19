#include "global.h"
#include "main.h"
#include "gba/syscall.h"
#include "data.h"
#include "functions.h"

int sub_08001A18(int *a)
{
    return *a;
}

void sub_08001A1C(void)
{
    sub_08001120();
    sub_080044B0();
    sub_0800F034();
    sub_080150C4();
    sub_08006AA4();
    sub_08004A8C();
    sub_080092B0();
    sub_0800A5BC();
    sub_0801978C();
    sub_080AB2D0();
    
    if (sub_08012F60(0x180) != 1)
    {
        sub_08012C44();
    }

    sub_0800F094();
    sub_080136CC();
    sub_08003620();
    sub_0800AF74();
    sub_0801B960();
    sub_08008B3C();
    sub_080637C4();
    
    if (sub_08012F60(0x180) != 1)
    {
        sub_08017B1C();
    }

    sub_0806EF50();
    sub_080B3128();
    sub_080B4970();
    sub_08062EB0();
    
    if (sub_08012F60(0x180) != 1)
    {
        sub_08093418();
    }

    sub_08012D14(0,&gUnk_02006000);
    sub_08012F60(4);
    sub_08012D30();
    sub_08012D64(0,0,0);
    sub_08012F0C(0,0x55555555);
    sub_08012F0C(1,0x55555555);
    sub_08012F0C(2,0x55555555);
    sub_08012F0C(3,0x55555555);
}

void sub_08001AEC(s16 unk)
{
    gUnk_03002960 = unk;
}

int sub_08001AFC(void)
{
    return gUnk_03002968;
}

void sub_08001B08(void)
{
    gUnk_03002968 = 1;
}

void sub_08001B14(int unk)
{
    gUnk_03002964 = unk;
}

void sub_08001B20(void)
{
    REG_WAITCNT = WAITCNT_SRAM_4 | WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1 | WAITCNT_PREFETCH_ENABLE;

    DmaFill32(3, 0x55555555, EWRAM_START, 0x40000);
    DmaFill32(3, 0x55555555, IWRAM_START, 0x7b00);
    DmaFill32(3, 0, VRAM, 0x18000);
    DmaFill32(3, 0xa0, OAM, 0x400);
    DmaFill16(3, 0, PLTT, 0x400);

    sub_08006F00();
    sub_08001D0C();
}

void sub_08001BC0(void)
{
    sub_0800708C();
    sub_080044E4();
    sub_08004B30();
    sub_080092CC();
    sub_08006AC4();
    
    gUnk_03002948 = REG_VCOUNT;

    sub_0800EF48();
    sub_080092EC();
    sub_0800A5E8();
    sub_08006AB8();
    sub_080146B0();
}

void sub_08001C00(void)
{
    sub_080132CC();
    sub_08013A78();
    sub_08019A94();
    sub_08008B94();
    sub_0800CA2C();
    sub_08004D6C();
    sub_08009714();
    sub_0800901C();
    sub_08010CD4();
    sub_08014E68();
}

void sub_08001C30(void)
{
    while (gUnk_03002960 != 0)
    {
        sub_08001BC0();
        sub_08012454();
        sub_08019688();
        sub_08001C00();
        sub_08001C64();
        VBlankIntrWait();
    }
}

void sub_08001C64(void)
{
    if (gUnk_03002964 == 1 && (gUnk_0300594C & 0xF) == 0xF )
    {
        sub_080934A8();
        gUnk_03002960 = 0;
    }
}

void sub_08001C94(void)
{
}

void sub_08001C98(void)
{
    sub_08001B20();
    gUnk_03002968 = 0;
    sub_08001B14(0);

    while (1)
    {
        sub_08001A1C();
        sub_08001AEC(1);
        sub_08001C30();
    }
}

void sub_08001CBC(u32* arr0, struct unk_1* arr1)
{
    arr1->unk0 = arr0[4];
    arr1->unk4 = arr0[5];
    arr1->unk8 = arr0[6];
    arr1->unkc = arr0[7];
    arr1->unke = arr0[8];
    arr1->unk10 = &arr0[arr0[9]>>2];

    if (arr0[10])
        arr1->unk14 = &arr0[arr0[10]>>2];
    else
        arr1->unk14 = NULL;
    if (arr0[11]) {
        arr1->unk18 = &arr0[arr0[11]>>2];
        arr1->unka = (arr1->unk18[0]+1) * 4;
    }
    else {
        arr1->unk18 = NULL;
        arr1->unka = 0;
    }
}

void sub_08001D0C(void)
{
    gUnk_03002970[0] = gUnk_08BDA40C;
    gUnk_03002970[1] = gUnk_098C8D9C;
    gUnk_03002970[2] = gUnk_09718FFC;
    gUnk_03002970[3] = gUnk_094D446C;
    gUnk_03002970[4] = gUnk_09E2261C;
}

const int *sub_08001D3C(u16 a, u16 b)
{
    const int *var = &gUnk_03002970[a][b * 2 + 2];
    return &gUnk_03002970[a][*var * 4];
}

int sub_08001D5C(u16 a, u16 b)
{
    const int* var1 = &gUnk_03002970[a][b*2];
    return 16 * gUnk_03002970[a][b*2 + 3];
}

int *sub_08001D78(int *a, u16 b)
{
    int *var = &a[b * 2 + 2];
    return &a[*var * 4];
}

int sub_08001D88(u32 *a, u16 b)
{
    return a[b*2 + 3] * 16;
}

u16 sub_08001D94(u16 *a)
{
    return a[0];
}

void sub_08001D98(u32 *a, struct unk_2 *b)
{
    u32 var;
    
    b->unk0 = a[4];
    b->unk2 = a[6];
    b->unk4 = a[8];
    
    var = a[5]/4;
    b->unk8 = &a[var];
    
    var = a[7]/4;
    b->unkc = &a[var];

    var = a[9]/4;
    b->unk10 = &a[var];   
}

void sub_08001DC4(struct unk_3 *a, struct unk_4 *b)
{
    b->unk0 = a->unk10;
    b->unk2 = a->unk12;
    b->unk4 = a->unk14;
    b->unk6 = a->unk16;
    b->unk8 = a->unk18;
    b->unka = a->unk1a;
    b->unkc = a->unk0 + a->unk1c/4;
}

void sub_08001DE8(struct unk_5 *a, struct unk_6 *b)
{
    b->unk0 = a->unk10;
    b->unk2 = ((a->unk12+3) >> 2) * 4;
    b->unk4 = a->unk14;
    b->unk6 = a->unk16;
    b->unk8 = a->unk0 + a->unk18/4;
    b->unkc = a->unk0 + a->unk1c/4;    
}

void sub_08001E14(u32 *a, struct unk_7 *b) 
{
    b->unk0 = a[4];
    b->unk1 = a[5];
    b->unk2 = 0;
    b->unk3 = 0;
    b->unk4 = a + a[6]/4;
    b->unk8 = a + a[7]/4;
}

void sub_08001E38(u32 *a, struct unk_8 *b) 
{
    b->unk0 = a[4];
    b->unk2 = a[5];
    b->unk4 = a + a[6]/4;
}

void sub_08001E4C(struct unk_9 *a, struct unk_10 *b) 
{
    b->unk0 = a->unk10;
    b->unk1 = a->unk11;
    b->unk2 = a->unk12;
    b->unk4 = a->unk0 + a->unk14/4;
}

void sub_08001E64(u16 *a, struct unk_11 *b) 
{
    b->unk0 = a[8];
    b->unk4 = a + 9;
}

s16 sub_08001E70(u16 a) 
{
    if (a >= 360)
        a = DivRem(a, 360);
    return gUnk_08B6D24C[a];
}

s16 sub_08001EA0(u16 a) 
{
    if (a >= 360)
        a = DivRem(a, 360);
    return gUnk_08B6D24C[a + 90];
}

s16 sub_08001ED4(s16 a, s16 b) 
{
    return a * b >> 8;
}

s16 sub_08001EE4(s16 a, s16 b) 
{
    return Div(a * 0x100, b);
}

s16 sub_08001EFC(s16 a) 
{
    s32 var1 = 0x10000;
    return var1 / a;
}
