#ifndef GUARD_ATTRIBUTE_H
#define GUARD_ATTRIBUTE_H

#include "global.h"

struct RoleAttrib
{
    u8 filler0[0x78];
};

struct SaveBlock1
{
    u8 playerGender; //00 = male
    u8 playerLevel; 
    u8 bladeForgeLevel; //00-09
    u8 axeForgeLevel;
    u8 spearForgeLevel;
    u8 boxGloveForgeLevel;
    u8 bowForgeLevel;
    u8 filler8[16]; //Something related to player name
    u16 playerMaxHp; //max = 0x270f,but more is ok
    u16 playerCurrentHp;
    u16 equippedOneAtk; //max = 0x3e7
    u16 equippedTwoAtk;
    u16 equippedThreeAtk;
    u16 notEquippedAtk;
    u16 filler30; //TODO:maybe this is a substruct align
    u16 equippedOneDef;
    u16 equippedTwoDef;
    u16 equippedThreeDef;
    u16 notEquippedDef; 
    u16 filler3A;
    u16 equippedOneAgl;
    u16 equippedTwoAgl;
    u16 equippedThreeAgl;
    u16 notEquippedAgl; 
    u16 filler44;
    u8 equipOneIndex; //max = 0x1D, as one can take up to 30 wepons in the bag
    u8 equipTwoIndex;
    u8 equipThreeIndex;
    u8 equipItemIndex;
    u16 filler4A;
    u8 filler4C[8];
    u16 filler54;
    u16 bonusStats; //synced with 020036BA, void?
    u32 filler58;
    u32 playerExp; //max = 00BD95FC
    u32 filler60;
    u8 guardimalType; //00-04
    u8 guardimalLevel;
    u8 filler66[6]; //Something related to guardimal name
    u16 guardimalHp;
    u16 filler76;
    u16 guardimalMag;
    u16 guardimalAtk;
    u16 guardimalDef;
    u16 guardimalAgl;
    u32 filler80;
    u32 guardimalExp;
    u32 guardimalNextExp;
    u8 battleItemOne;
    u8 battleItemTwo;
    u8 battleItemThree;
    u8 battleItemFour;
    u8 filler90[54];
    u8 fillerE4[0x4F4]; //TODO:add more labels through cheatcode. 
}; /* size = 0x5D8 */

extern struct SaveBlock1 *gSaveBlock1Ptr; 
extern struct SaveBlock1 gSaveBlock1;

extern const struct RoleAttrib *gAttribTablePtr;
extern const struct RoleAttrib gAttribTable[];

extern void sub_080154F0(void);

#endif
