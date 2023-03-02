#include "global.h"
#include "main.h"
#include "gba/syscall.h"
#include "data.h"
#include "functions.h"

void nullsub_9(void)
{}

void sub_080015E4(int a1, int a2, u16 a3, int a4, u16 a5)
{
    s32 arg2 = a3;
    s32 r1;
    s32 var;

    if ((u32)arg2 < a3 + a5)
    {
        var = a3 + a5;
        ++var; --var;
        r1 = (var - arg2) & 3;
        if (arg2 >= var) goto label;
        if (r1 != 0)
        {
            if (r1 > 1)
            {
                if (r1 > 2)
                {
                    ++arg2;
                }
                ++arg2;
            }
        label:
            ++arg2;
            if (arg2 >= (u32)var) return;
        }
        do
        {
            arg2 += 4;
        } while (arg2 < (u32)var);
    }
}

void sub_08001624(u32 r0, u32 *r1, u32 *r2, u32 *r3, u32 *sp18)
{
    *r1 = 0;
    *r2 = 0;
    *r3 = 0;
    *sp18 = 0;
    *r1 = r0 / 0x34BC0;
    *r2 = (r0 -= 0x34BC0 * *r1) / 0xE10;
    *r3 = (r0 -= 0xE10 * *r2) / 0x3C;
    *sp18 = r0 - 0x3C * *r3;
}

void sub_080016A0(void)
{
    gUnk_0300294C = 0;
    gUnk_03002944 = 0;
    gUnk_03002950 = 0;
    gUnk_03002948 = 0;
    gUnk_0300295C = EWRAM_START;
}

void sub_080016D4(int a)
{
    gUnk_0300295C = a;
}

void sub_080016E0(void)
{
    u16 r1;
    gUnk_03002954 = gUnk_03003364;
    r1 = REG_VCOUNT & 0xff;
    if (r1 <= 0x9e)
        r1 += 0x44;
    else
        r1 -= 0xA0;
    gUnk_03002938 = r1;
}

void sub_0800171C(u16 a)
{
    for (; a; --a) {
        u16 vcount = REG_VCOUNT;
        while (vcount == REG_VCOUNT) {} // wait for the next scanline
    }
}

void sub_08001750(void)
{
    u32 *r1 = (u32 *)0x3007E00;
    u32 *r3 = (u32 *)0x3007A00;
    u32 *r0;
    do
    {
        *r1 = 0x55555555;
        r0 = r1 - 1;
        *r0 = 0x55555555;
        r0 = r0 - 1;
        *r0 = 0x55555555;
        r0 = r0 - 1;
        *r0 = 0x55555555;
        r1 = r1 - 4;
    } while (r1 > r3);
}

u32 sub_0800177C(void)
{
    u32 r2 = 0;
    u32 r1 = IWRAM_START + 0x7E00;
    u32 r0;

    while (r1 > IWRAM_START) {
        r0 = *(u32 *)r1;
        r2++;
        if (r0 != 0x55555555) r2 = 0;
        if (r2 >= 8) break;
        r1 -= 4;
    }
    return 0x03008000 - r1;
}

u32 sub_080017B8(u32 *p)
{
    return *p >> 8;
}

int sub_080017C0(void)
{
    return 0;
}

void sub_080017C4(u16 i)
{
    sub_08012F0C(9, i);
}

int sub_080017D8(void)
{
    u32 i = sub_08012F60(9) + gUnk_03003364;
    i = (i * 214013 + 2531011) >> 0x10; // Linear congruential generator
    sub_08012F0C(9, i);
    return (s32)i; // UB
}

int sub_0800180C(u16 r4)
{
    u32 i = sub_08012F60(9) + gUnk_03003364;
    i = (i * 214013 + 2531011) >> 0x10; // Linear congruential generator
    sub_08012F0C(9, i);
    return (s32)i % (r4 + 1); // UB
}

int sub_08001850(u16 r4)
{
    u32 i = sub_08012F60(9) + gUnk_03003364;
    i = (i * 214013 + 2531011) >> 0x10; // Linear congruential generator
    sub_08012F0C(9, i);
    return (s32)i % (r4 * 2 + 1) - r4; // UB
}

int sub_08001894(int r5, int r4)
{
    u32 i = sub_08012F60(9) + gUnk_03003364;
    i = (i * 214013 + 2531011) >> 0x10; // Linear congruential generator
    sub_08012F0C(9, i);
    return (s32)i % (r4 - r5 + 1) + r5; // UB
}
u16 sub_080018D8(u8* r5, u32 r4)
{
    u16 r2 = 0xFFFF;
    u16 r3;
    u8 idx;
    
    for (r3 = 0; r3 < r4; r3++)
    {
        idx = r2 ^ r5[r3];
        r2 = gUnk_08B6D04C[idx] ^ (r2 >> 8);
    }
    
    return r2;
}

u32 sub_08001918(u8 *sb, u32 *r4)
{
    u32 r8 = sub_08001A18(r4);
    u32 sp, sl, i, r7, ip;
    u8 *r3, *r1;

    r4 += 1;
    sp = 0;
    sl = 0;
    i = 0;
    ip = 0;
    r7 = 0;
    if (i < r8)
    {
        r3 = sb;
        r1 = (void *)r4;
        while (i < r8)
        {
            s32 r5, x;
            u32 r0;
            u32 j;
            u8 *r2;

            if (!(sl & 7))
            {
                r7 = *r1;
                ++r1;
            } else
                r7 >>= 1;
            ++sl;
            if (r7 & 1)
            {
                *r3 = *r1;
                ++r1;
                ++r3;
                ++i;
                continue;
            }

            if (!sp)
            {
                ip = *r1;
                ++r1;
            } else
                ip >>= 4;
            sp ^= 1;
            r5 = (ip & 0xF) + 2;
            r0 = *r1 + 1;
            ++r1;
            j = 0;
            if (j < r5)
            {
                r2 = (void *)(i + ((uintptr_t)sb - r0)); // TODO: maybe sb is really not a pointer?
                x = r5 & 3;
                if (r5 <= 0) goto label;
                if (x)
                {
                    if (x > 1)
                    {
                        if (x > 2)
                        {
                            *r3 = *r2;
                            ++r2;
                            ++r3;
                            ++i;
                            ++j;
                        }
                        *r3 = *r2;
                        ++r2;
                        ++r3;
                        ++i;
                        ++j;
                    }
                label:
                    *r3 = *r2;
                    ++r2;
                    ++r3;
                    ++i;
                    ++j;
                    if (j >= r5) continue;
                }
                do
                {
                    r3[0] = r2[0];
                    r3[1] = r2[1];
                    r3[2] = r2[2];
                    r3[3] = r2[3];
                    r2 += 4;
                    r3 += 4;
                    i += 4;
                    j += 4;
                } while (j < r5);
            }
        }
    }
    return r8;
}

u32 sub_08001A18(u32 *a)
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
    sub_08012D64(0, 0, 0);
    sub_08012F0C(0, 0x55555555);
    sub_08012F0C(1, 0x55555555);
    sub_08012F0C(2, 0x55555555);
    sub_08012F0C(3, 0x55555555);
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
    DmaCopyBufferToOam();
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
    if (gUnk_03002964 == 1 && (gUnk_0300594C & 0xF) == 0xF)
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

void sub_08001CBC(u32 *arr0, struct Unk_08001CBC *arr1)
{
    arr1->unk0 = arr0[4];
    arr1->unk4 = arr0[5];
    arr1->unk8 = arr0[6];
    arr1->unkc = arr0[7];
    arr1->unke = arr0[8];
    arr1->unk10 = &arr0[arr0[9] >> 2];

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
    const int* var1 = &gUnk_03002970[a][b * 2];
    return 16 * gUnk_03002970[a][b * 2 + 3];
}

int *sub_08001D78(int *a, u16 b)
{
    int *var = &a[b * 2 + 2];
    return &a[*var * 4];
}

int sub_08001D88(u32 *a, u16 b)
{
    return a[b * 2 + 3] * 16;
}

u16 sub_08001D94(u16 *a)
{
    return a[0];
}

void sub_08001D98(u32 *a, struct Unk_08001D98 *b)
{
    u32 var;
    
    b->unk0 = a[4];
    b->unk2 = a[6];
    b->unk4 = a[8];
    
    var = a[5] / 4;
    b->unk8 = &a[var];
    
    var = a[7] / 4;
    b->unkc = &a[var];

    var = a[9] / 4;
    b->unk10 = &a[var];   
}

void sub_08001DC4(struct Unk_0200B000 *a, struct Unk_08001DC4_2 *b)
{
    b->unk0 = a->unk10;
    b->unk2 = a->unk12;
    b->unk4 = a->unk14;
    b->unk6 = a->unk16;
    b->unk8 = a->unk18;
    b->unka = a->unk1a;
    b->unkc = a->unk0 + a->unk1c / 4;
}

void sub_08001DE8(struct Unk_08001DE8_1 *a, struct Unk_08001DE8_2 *b)
{
    b->unk0 = a->unk10;
    b->unk2 = ((a->unk12 + 3) >> 2) * 4;
    b->unk4 = a->unk14;
    b->unk6 = a->unk16;
    b->unk8 = a->unk0 + a->unk18 / 4;
    b->unkc = a->unk0 + a->unk1c / 4;    
}

void sub_08001E14(u32 *a, struct Unk_08001E14 *b) 
{
    b->unk0 = a[4];
    b->unk1 = a[5];
    b->unk2 = 0;
    b->unk3 = 0;
    b->unk4 = a + a[6] / 4;
    b->unk8 = a + a[7] / 4;
}

void sub_08001E38(u32 *a, struct Unk_08001E38 *b) 
{
    b->unk0 = a[4];
    b->unk2 = a[5];
    b->unk4 = a + a[6] / 4;
}

void sub_08001E4C(struct Unk_08001E4C_1 *a, struct Unk_08001E4C_2 *b) 
{
    b->unk0 = a->unk10;
    b->unk1 = a->unk11;
    b->unk2 = a->unk12;
    b->unk4 = a->unk0 + a->unk14 / 4;
}

void sub_08001E64(u16 *a, struct Unk_08001E64 *b) 
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
