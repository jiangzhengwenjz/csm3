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
    CpuFastSet(temp.unk10, r0, temp.unk4 << 9 >> 11); // ?
}

void sub_080045E4(u16 r0, u16 r1)
{
    struct Unk_08001CBC temp;
    sub_08001CBC(sub_08001D3C(3, 0), &temp);
    sub_08010D40(temp.unk14, r0, r1);
}

#ifdef NONMATCHING

u16 sub_08004614(u32 r0, u32 r1, u32 r2, u16 r3, u16 sp10, u32 sp14, u32 sp18)
{
    return r0 | r1 | r2 | sp14 | sp18 | (r3 << 8 | sp10 << 2);
}

#else

__attribute__((naked)) u16 sub_08004614(u32 r0, u32 r1, u32 r2, u16 r3, u16 sp10, u32 sp14, u32 sp18)
{
    asm(".syntax unified");
    asm("push {r4, r5, r6, lr}");
    asm("ldr r5, [sp, #0x10]");
    asm("ldr r4, [sp, #0x14]");
    asm("ldr r6, [sp, #0x18]");
    asm("orrs r1, r0");
    asm("orrs r2, r1");
    asm("lsls r3, r3, #0x10");
    asm("lsls r5, r5, #0x10");
    asm("orrs r4, r2");
    asm("orrs r6, r4");
    asm("lsrs r3, r3, #8");
    asm("lsrs r5, r5, #0xe");
    asm("orrs r3, r5");
    asm("orrs r3, r6");
    asm("lsls r3, r3, #0x10");
    asm("lsrs r3, r3, #0x10");
    asm("adds r0, r3, #0");
    asm("pop {r4, r5, r6}");
    asm("pop {r1}");
    asm("bx r1");
    asm(".syntax divided");
}

#endif
