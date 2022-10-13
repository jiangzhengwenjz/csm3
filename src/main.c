#include "global.h"
#include "main.h"

void sub_08001C98(void)
{
    sub_08001B20();
    gUnk_03002968 = 0;
    sub_08001B14();

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

const int sub_08001D5C(u16 a, u16 b)
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
    b->unk4 = a+a[6]/4;
    b->unk8 = a+a[7]/4;
}
