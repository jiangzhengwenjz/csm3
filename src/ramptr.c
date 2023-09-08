#include "global.h"
#include "ramptr.h"
#include "data.h"
#include "functions.h"

void sub_08012C44(void)
{
    CpuFill16(0, gUnk_03006590, 0x218);  // TODO: Find out if gUnk_03006590 contains 2 elements. 
    gUnk_030067B0 = (u32*)EWRAM_START;
    gUnk_0300657C = gUnk_02000100;
    gUnk_03006584 = gUnk_02000380;
    gUnk_030067AC = gUnk_02000540;
    gUnk_03006570 = gUnk_02000580;
    gUnk_030067A8 = gUnk_02000680;
    CpuFill32(0, (u32*)EWRAM_START, 0x400); // TODO: Find out why this overlaps other variables. 
    CpuFill32(0, gUnk_02000540, 0x1E4);
}

void sub_08012CDC(void)
{
    CpuFill16(0, (u16*)EWRAM_START, 0x400);  // TODO: ditto.
    CpuFill16(0, gUnk_02000540, 0x1E4);
}

void sub_08012D14(u16 r0, void *r1)
{
    gUnk_03006590[r0].unk28 = r1;
}

void sub_08012D30(u32 r0)
{
    LZ77UnCompWram(sub_08001D3C(2,r0), gUnk_03006590[0].unk28);
    sub_08012F0C(4, r0);
    sub_08012F0C(0x180, 0);
}

void sub_08012D64(u16 idx, u16 r1, u32 r2)
{
    gUnk_03006590[idx].unk0 |= (1 << r1);
    gUnk_03006590[idx].unk2C[r1].unk0 = 1;
    gUnk_03006590[idx].unk2C[r1].unk4 = gUnk_03006590[idx].unk28 + 16 + (r2 & 0xfffe); // Looks weird. The sequence of operators affects code generation. 
}

void sub_08012DC4(u16 r0)
{
    gUnk_03006590[r0].unk0 = 0;
}

bool32 sub_08012DE0(u16 r0, u16 r1)
{
    if ((gUnk_03006590[r0].unk0 >> r1) & 1)
        return TRUE;
    else
        return FALSE;
}

#ifdef NONMATCHING

void sub_08012E14(u16 r0, u16 r1, u32 r2)
{
    gUnk_03006590[r0].unk2C[r1].unk4 = gUnk_03006590[r0].unk28 + 16 + (r2 & 0xfffe);
    gUnk_03006574 = &(gUnk_03006590[r0].unk2C[r1]);
    gUnk_03006590[r0].unk2C[r1].unk2 = *((u16*)gUnk_03006590[r0].unk2C[r1].unk4);
    gUnk_03006590[r0].unk2C[r1].unk4 += 1;
    sub_080127E4();
    // Not matching yet. 
}

#else

void __attribute__((naked)) sub_08012E14(u16 r0, u16 r1, u32 r2)
{
    asm("\n\
    .syntax unified\n\
    push {r4, r5, lr}\n\
    lsls r0, r0, #0x10\n\
    lsrs r0, r0, #0x10\n\
    lsls r1, r1, #0x10\n\
    lsrs r1, r1, #0x10\n\
    ldr r3, _08012E6C @ =gUnk_03006590\n\
    mov ip, r3\n\
    lsls r5, r1, #3\n\
    subs r5, r5, r1\n\
    lsls r5, r5, #2\n\
    lsls r1, r0, #4\n\
    adds r1, r1, r0\n\
    lsls r1, r1, #2\n\
    subs r1, r1, r0\n\
    lsls r1, r1, #2\n\
    adds r4, r5, r1\n\
    mov r0, ip\n\
    adds r0, #0x30\n\
    adds r4, r4, r0\n\
    subs r0, #8\n\
    adds r0, r1, r0\n\
    ldr r3, _08012E70 @ =0x0000FFFE\n\
    ands r3, r2\n\
    adds r3, #0x10\n\
    ldr r0, [r0]\n\
    adds r0, r0, r3\n\
    str r0, [r4]\n\
    ldr r2, _08012E74 @ =gUnk_03006574\n\
    mov r0, ip\n\
    adds r0, #0x2c\n\
    adds r1, r1, r0\n\
    adds r1, r1, r5\n\
    str r1, [r2]\n\
    ldr r0, [r1, #4]\n\
    ldrh r2, [r0]\n\
    strh r2, [r1, #2]\n\
    adds r0, #2\n\
    str r0, [r1, #4]\n\
    bl sub_080127E4\n\
    pop {r4, r5}\n\
    pop {r0}\n\
    bx r0\n\
    .align 2, 0\n\
_08012E6C: .4byte gUnk_03006590\n\
_08012E70: .4byte 0x0000FFFE\n\
_08012E74: .4byte gUnk_03006574\n\
        .syntax divided\n\
    ");
}

#endif

void *sub_08012E78(u16 r0, u16 r1)
{
    return gUnk_03006590[r0].unk2C[r1].unk4;
}

void sub_08012EA0(u32 r0)
{
    gUnk_03006574->unk4 = gUnk_03006578->unk28 + 16 + (r0 & 0xfffe);
}


void *sub_08012EC4(void)
{
    return gUnk_03006574->unk4;
}

s16 sub_08012ED0(void)
{
    return gUnk_03006578->unk4;
}

u16 sub_08012EE0(void)
{
    u16 r0 = *(u16*)gUnk_03006574->unk4;
    gUnk_03006574->unk4 += 2;
    return r0;
}

s16 sub_08012EF4(void)
{
    u16 r0 = *(u16*)gUnk_03006574->unk4;
    gUnk_03006574->unk4 += 2;
    return r0;
}
