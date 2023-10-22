#ifndef GUARD_BATTLE_H
#define GUARD_BATTLE_H

#include "global.h"

struct BattleAttrib_184
{
    u16 unk0;
    u8 filler2[0x12];
    u32 unk14;
    u16 unk18;
    u16 unk1A;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
    u8 unk20;
    u8 unk21;
    u8 unk22;
    u8 unk23;
    u8 unk24;
    u8 unk25;
    u8 unk26;
    u8 unk27;
}; /* size = unknown */

struct BattleAttrib_44
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u32 unk10;
    u16 unk14;
    u16 unk16;
    u8 unk18;
    u8 unk19;
    u16 unk1A;
    u32 unk1C;
    u32 filler20;
    u8 unk24;
    u8 unk25;
    u16 unk26;
}; /* size = 0x28 */
// function chain: 3e48c->9f0c

struct BattleAttrib_108
{
    u16 unk0;
    u8 filler2[0x14];
    u8 unk16;
}; /* size = 0x18 */

struct BattleAttrib
{
    u16 index;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u32 unk8;
    u8 fillerC[0x2C];
    u16 unk38;
    u16 unk3A;
    u16 unk3C;
    u16 unk3E;
    u16 unk40;
    u16 unk42;
    struct BattleAttrib_44 unk44;
    u8 unk6C;
    u8 filler6D;
    u16 unk6E;
    u8 filler70[0x28];
    u16 unk98;
    u16 unk9A;
    u16 unk9C;
    u16 unk9E;
    u16 unkA0;
    u8 fillerA2[0xa];
    u16 unkAC;
    u16 unkAE;
    u8 unkB0;
    u8 unkB1;
    u8 fillerB2[0xA];
    u16 unkBC;
    u16 unkBE;
    u16 unkC0;
    u8 fillerC2[3];
    /*0x0C5*/ u8 canUseSkillTime;
    u8 fillerC6[0x2E];
    /*0x0F4*/ u16 currentHp; // no reference in sub_0803E48C
    u16 fillerF6;
    /*0x0F8*/ u16 maxHp; // no reference in sub_0803E48C
    u16 fillerFA;
    u16 unkFC;
    u16 fillerFE;
    u32 unk100;
    u32 unk104;
    struct BattleAttrib_108 unk108[3]; // Something related to weapons.
    u32 unk150;
    u16 unk154;
    u8 filler156[4];
    u8 unk15A;
    /*0x15B*/ u8 weaponSkillIdx;
    /*0x15C*/ u8 itemSkill1Idx;
    /*0x15D*/ u8 itemSkill2Idx;
    /*0x15E*/ u8 itemSkill3Idx;
    /*0x15F*/ u8 itemSkill4Idx;
    u8 unk160;
    u8 unk161;
    u8 unk162;
    u8 unk163;
    u8 unk164;
    u8 unk165;
    /*0x166*/ u8 cursorPosition;
    u8 filler167[0x11];
    u8 unk178;
    u8 filler179;
    u8 unk17A;
    u8 unk17B;
    u8 unk17C;
    u8 filler17D[3];
    u32 unk180;
    struct BattleAttrib_184 *unk184;
    u32 filler188;
    /*0x18C*/ u16 currentHeight; // no reference in sub_0803E48C
    u16 filler18E;
    u32 filler190;
    /*0x194*/ u16 lastFrameHeight; // no reference in sub_0803E48C
    u16 filler196;
    u8 unk198;
    u8 unk199;
    u8 filler19A[8];
    u16 unk1A2;
    u16 unk1A4;
    u16 filler1A6;
    /*0x1A8*/ s32 jumpVerticalSpeed;
    /*0x1AC*/ s32 jumpHorizontalSpeed;
    u16 unk1B0;
    u16 unk1B2;
    u8 filler1B4[0x5C];
    u16 unk210;
    u16 unk212;
    u8 filler214[0xC];
    u32 unk220[0x3A];
    u16 unk308;
    u16 unk30A;
    struct BattleAttrib_44 unk30C;
    struct BattleAttrib_44 unk334;
    u8 filler35C[0x14];
    u32 unk370;
    u8 filler374[0x10];
    u8 unk384;
    u8 filler385[7];
    u8 unk38C;
}; /* size = unknown */

extern void sub_080498A8(struct BattleAttrib *ba);
extern void sub_08049BF8(struct BattleAttrib *ba);
extern void sub_08025880(struct BattleAttrib *ba);
extern void sub_08049C40(struct BattleAttrib *ba);
extern void sub_08009F0C(struct BattleAttrib_44 *ba44);
extern void sub_0800A6C0(struct BattleAttrib_44 *ba44, u8 unkE, u8 r2);
extern void sub_0800A6C4(struct BattleAttrib_44 *ba44, u8 unk18, u8 unk19);
extern void sub_0800A728(struct BattleAttrib_44 *ba44, u8 unkD);
extern void sub_08049714(struct BattleAttrib *ba);

#endif
