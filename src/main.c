#include "global.h"
#include "main.h"

extern void sub_08001B20(void);
extern void sub_08001B14(void);
extern void sub_08001A1C(void);
extern void sub_08001AEC(int);
extern void sub_08001C30(void);

extern int gUnk_03002968;

extern int* gUnk_03002970[5];
extern int gUnk_08BDA40C;
extern int gUnk_098C8D9C;
extern int gUnk_09718FFC;
extern int gUnk_094D446C;
extern int gUnk_09E2261C;

//TODO:type

void sub_08001C98(void)
{
    sub_08001B20();
    gUnk_03002968=0;
    sub_08001B14();

    while (1)
    {
        sub_08001A1C();
        sub_08001AEC(1);
        sub_08001C30();
    }

}

void sub_08001CBC(u32* arr0,struct unk_1* arr1)
{
    arr1->unk0 = arr0[4];
    arr1->unk4 = arr0[5];
    arr1->unk8 = arr0[6];
    arr1->unkc = arr0[7];
    arr1->unke = arr0[8];
    arr1->unk10 = &arr0[arr0[9]>>2];
    //address=index*sizeof(element)

    if (arr0[10])
        arr1->unk14 = &arr0[arr0[10]>>2];
    else
        arr1->unk14 = NULL;
    if (arr0[11]) {
        arr1->unk18 = &arr0[arr0[11]>>2];
        arr1->unka = (arr1->unk18[0]+1) * 4;
    }
    else {
        arr1->unk18 = 0;
        arr1->unka = 0;
    }
}
//TODO:type

void sub_08001D0C(void)
{
    gUnk_03002970[0] = &gUnk_08BDA40C;
    gUnk_03002970[1] = &gUnk_098C8D9C;
    gUnk_03002970[2] = &gUnk_09718FFC;
    gUnk_03002970[3] = &gUnk_094D446C;
    gUnk_03002970[4] = &gUnk_09E2261C;
}
