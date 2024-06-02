#include "global.h"
#include "main.h"

extern void sub_08001CBC(const u32 *arr0, struct Unk_08001CBC *arr1); // const?
extern const int *sub_08001D3C(u16 a, u16 b);
extern void sub_08010D40(u32 *r0, u16 r1, u16 r2);

extern u16 gUnk_03002990[];
extern u32 *gUnk_030029AC;

u16 sub_08004544(void)
{
    return gUnk_03002990[0] & 7;
}

void sub_08004554(u16 r0)
{
    gUnk_03002990[0] = (gUnk_03002990[0] & 0xFFF8) | r0;
}

void sub_08004570(u32 *r0)
{
    struct Unk_08001CBC temp;
    gUnk_030029AC = r0;
    sub_08001CBC(sub_08001D3C(3, 0), &temp);
    CpuFastSet(temp.unk10, r0, temp.unk4 << 9 >> 11); // ?
}

u32 *sub_080045A4(void)
{
    return gUnk_030029AC;
}

void sub_080045B0(u32 *r0)
{
    struct Unk_08001CBC temp;
    gUnk_030029AC = r0;
    sub_08001CBC(sub_08001D3C(3, 1), &temp);
    CpuFastSet(temp.unk10, r0, (temp.unk4 / 4) & 0x1FFFFF); // ?
}

void sub_080045E4(u16 r0, u16 r1)
{
    struct Unk_08001CBC temp;
    sub_08001CBC(sub_08001D3C(3, 0), &temp);
    sub_08010D40(temp.unk14, r0, r1);
}

u16 sub_08004614(u32 r0, u32 r1, u32 r2, u32 r3, u32 sp10, u32 sp14, u32 sp18)
{
    u32 v1 = r2 | (r1 | r0);
    r3 <<= 0x10;
    sp10 <<= 0x10;
    return  v1 | sp14 | sp18 | (r3 >> 8 | sp10 >> 14);
}

bool32 sub_0800463C(u16 r0)
{
    u32 zero = 0;

    return (gUnk_03002990[zero] & (0x100 << r0)) != zero;
}

void sub_08004658(u16 r0, u16 *r1, u16 *r2, u16 *r3)
{
    u16 r4 = gUnk_03002990[0];

    r4 = (gUnk_03002990 + 1)[r0]; // TODO:find the real compiler I guess?
    *r1 = 0x80 & r4;
    *r2 = 3 & r4;
    *r3 = 0xc000 & r4;
}

void sub_08004684(u16 r0, u16 *r1, u16 *r2)
{
    u16 r3 = gUnk_03002990[r0];

    r3 = (gUnk_03002990 + 1)[r0]; // TODO:find the real compiler I guess?
    *r1 = (0x1f00 & r3) >> 8;
    *r2 = (0xc & r3) >> 2;
}

bool32 sub_080046A8(u16 r0)
{
    u32 zero;
    u16 r1 = gUnk_03002990[r0];
    bool32 r2;
    r1 = (gUnk_03002990 + 1)[r0];
    r2 = 0;

    if (r0 == 2)
    {
        u16 var = r1 & 0x2000;
        r2 = var ? TRUE: FALSE;
    }

    return r2;
}

bool32 sub_080046D8(u16 r0)
{
    u16 var = gUnk_03002990[r0];
    u16 var2 = (gUnk_03002990 + 1)[r0];
    u16 var3 = var2 & 0x40;
    return var3 ? TRUE : FALSE;
}

void sub_080046F8(u16 r0, u16 r1)
{
    gUnk_03002990[5] = (gUnk_03002990[5] & 0xff00) | (r0 | (r1 << 4));
}

void sub_0800471C(u16 r0, u16 r1)
{
    gUnk_03002990[0] = (gUnk_03002990[0] & ~(0x100 << r0)) | (r1 << r0 << 8);
}

void sub_08004744(u16 r0, u32 r1, u32 r2, u32 r3)
{
    u16 temp1,temp2;
    r2 |= r1;
    r3 |= r2;
    temp1 = gUnk_03002990[r0];
    temp1 = (gUnk_03002990 + 1)[r0] & 0x3F7C;
    temp2 = r3;
    (gUnk_03002990 + 1)[r0] = temp1 | temp2;
}

void sub_0800476C(u16 r0, u16 r1, u16 r2)
{
    u16 temp1;
    temp1 = gUnk_03002990[r0];
    temp1 = (gUnk_03002990 + 1)[r0] & 0xE0F3;
    (gUnk_03002990 + 1)[r0] = temp1 | (r1 << 8 | r2 << 2);
}

void sub_0800479C(u16 r0, u16 r1)
{
    u16 *temp1, temp2;
    temp1 = gUnk_03002990;
    if (r0 == 2)
    {
        temp2 = (temp1[3] & 0xDFFF);
        gUnk_03002990[3] = temp2 | r1;
    }
}

void sub_080047C4(u16 r0, u16 r1)
{
    register u16 temp1 asm("r3");
    temp1 = gUnk_03002990[r0];
    temp1 = (gUnk_03002990 + 1)[r0];
    (gUnk_03002990 + 1)[r0] = (temp1 & 0xFFBF) | r1;
}

void sub_080047E8(u16 r0, u16 r1)
{
    u16 temp1;
    temp1 = gUnk_03002990[4];
    temp1 = (gUnk_03002990 + 1)[4] & 0xFF00;
    (gUnk_03002990 + 1)[4] = temp1 | (r1 << 4 | r0);
}

void sub_0800480C(u16 r0)
{
    gUnk_03002990[0] = (gUnk_03002990[0] & 0xEFFF) | (r0 << 0xc);
}

// this function shows that gUnk_03002990 is a struct, so I'll modify functions above later

#ifdef NONMATCHING

void sub_08004828(u16 r0, u16 r1)
{
    gUnk_03002990[5] = gUnk_03002990[5] | ((r1 << 0xc) | r0 << 8);
}

#else

__attribute__((naked)) void sub_08004828(u16 r0, u16 r1)
{
    asm(".syntax unified");
    asm("lsls r0, r0, #0x10");
    asm("lsls r1, r1, #0x10");
    asm("ldr r3, _0800483C @ =gUnk_03002990");
    asm("ldrb r2, [r3, #0xa]");
    asm("lsrs r1, r1, #4");
    asm("lsrs r0, r0, #8");
    asm("orrs r1, r0");
    asm("orrs r2, r1");
    asm("strh r2, [r3, #0xa]");
    asm("bx lr");
    asm(".align 2, 0");
    asm("_0800483C: .4byte gUnk_03002990");
    asm(".syntax divided");
}

#endif

void sub_08004840(u16 r0)
{
    gUnk_03002990[6] = (gUnk_03002990[6] & 0xFF3F) | r0;
}

void sub_0800485C(u16 r0)
{
    gUnk_03002990[6] = (gUnk_03002990[6] & 0xFFC0) | r0;
}
