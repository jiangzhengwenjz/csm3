#ifndef GUARD_ATTRIBUTE_H
#define GUARD_ATTRIBUTE_H

#include "global.h"

/* Array index defines. Used in itemQuantityList */
#define ITEM_QUANTITY_WOUND_BAND_IDX 0
#define ITEM_QUANTITY_JVHUA_CHA_IDX 1
#define ITEM_QUANTITY_GOOD_POTION_IDX 2
#define ITEM_QUANTITY_SOFT_BOILED_EGG_IDX 3
#define ITEM_QUANTITY_EGG_FRY_RICE_IDX 4
#define ITEM_QUANTITY_SPICY_CURRY_IDX 5
#define ITEM_QUANTITY_EMERGENCY_BAG_IDX 6
#define ITEM_QUANTITY_NEEDLE_STONE_IDX 7
#define ITEM_QUANTITY_MIDDLE_STONE_IDX 8
#define ITEM_QUANTITY_HARD_STONE_IDX 9
#define ITEM_QUANTITY_MEMO_DIARY_IDX 10
#define ITEM_QUANTITY_ENTRY_TRANSTONE_IDX 11
#define ITEM_QUANTITY_ENEMY_EVADE_SCROLL_IDX 12
#define ITEM_QUANTITY_ENEMY_SUMMON_SCROLL_IDX 13
#define ITEM_QUANTITY_JVHUA_FRUIT_IDX 14
#define ITEM_QUANTITY_OIL_FRUIT_IDX 15
#define ITEM_QUANTITY_SWEET_FRUIT_IDX 16
#define ITEM_QUANTITY_SLIMY_TREE_LIQUID_IDX 17
#define ITEM_QUANTITY_MATURE_FRUIT_IDX 18
#define ITEM_QUANTITY_SOFT_STONE_IDX 19
#define ITEM_QUANTITY_WEIRD_STONE_IDX 20
#define ITEM_QUANTITY_WEED_IDX 21
#define ITEM_QUANTITY_SOFT_GRASS_IDX 22
#define ITEM_QUANTITY_GOOD_PAPER_IDX 23
#define ITEM_QUANTITY_FIT_STICK_IDX 24
#define ITEM_QUANTITY_CLEAN_CLOTH_IDX 25
#define ITEM_QUANTITY_SMELLY_ONION_IDX 26
#define ITEM_QUANTITY_SWEET_HONEY_IDX 27
#define ITEM_QUANTITY_SOFT_SKIN_IDX 28
#define ITEM_QUANTITY_SOLID_SKIN_IDX 29
#define ITEM_QUANTITY_GOOD_SKIN_IDX 30
#define ITEM_QUANTITY_SPICY_SEASONING_IDX 31
#define ITEM_QUANTITY_SECRET_CORN_IDX 32
#define ITEM_QUANTITY_GOOD_PURE_WATER_IDX 33
#define ITEM_QUANTITY_SECRET_EGG_IDX 34
#define ITEM_QUANTITY_BEAUTIFUL_EGG_IDX 35
#define ITEM_QUANTITY_SMALL_EARTHWORM_IDX 36
#define ITEM_QUANTITY_TARO_BALL_IDX 37
#define ITEM_QUANTITY_DRY_SHRIMP_IDX 38
#define ITEM_QUANTITY_CARROT_BIT_IDX 39
#define ITEM_QUANTITY_GOOD_SHELL_IDX 40
#define ITEM_QUANTITY_SMALL_BOMB_IDX 41
#define ITEM_QUANTITY_MIDDLE_BOMB_IDX 42
#define ITEM_QUANTITY_BIG_BOMB_IDX 43
#define ITEM_QUANTITY_POISON_BOMB_IDX 44
#define ITEM_QUANTITY_PARALYZE_BOMB_IDX 45
#define ITEM_QUANTITY_SLEEP_BOMB_IDX 46
#define ITEM_QUANTITY_RUST_BOMB_IDX 47
#define ITEM_QUANTITY_LOTTERY_IDX 48
#define ITEM_QUANTITY_NULL_IDX 49
// I don't know why this null item is needed.

struct RoleAttrib
{
    u8 filler0[0x78];
};

struct BagWeapon
{
    u8 unk0; // something related to reforge
    u8 weaponType;
    u8 weaponSpecialEffect;
    u8 weaponSkill;
    u8 enhanceItemList[3]; // null = 0xff
    u8 weaponTec;
    u16 weaponAtk;
    u16 weaponDef;
    s16 weaponAgl;
    u16 weaponInitAtk; // Atk when not enhanced or boosted
    u16 weaponInitDef;
    u16 weaponInitAgl;
    u16 weaponCurrentDur;
    u16 weaponMaxDur;
    u16 weaponInitDur;
    bool8 isGoodWeapon;
    u8 unk1B;
}; /* size = 0x1C */

struct GuardimalAttrib
{
    /*0x00*/ u8 guardimalType; // 00-04
    /*0x01*/ u8 guardimalLevel;
    /*0x02*/ u16 guardimalName[0x7]; // Something related to guardimal name
    /*0x10*/ u16 guardimalHp;
    /*0x12*/ u16 unk12;
    /*0x14*/ u16 guardimalMag;
    /*0x16*/ u16 guardimalAtk;
    /*0x18*/ u16 guardimalDef;
    /*0x1A*/ s16 guardimalAgl; //TODO: Find out real type
    /*0x1C*/ u16 unk1C;
    /*0x1E*/ u16 filler1E;
    /*0x20*/ u32 guardimalExp;
    /*0x24*/ u32 guardimalNextExp;
}; /* size = unknown */

struct SB90
{
    u8 unk0;
    u8 filler1;
    u8 unk2;
    u8 unk3;
};

/* TODO: list offsets and add defines */
struct SaveBlock1
{
    /*0x000*/ u8 playerGender; // 00 = male
    /*0x001*/ u8 playerLevel; 
    /*0x002*/ u8 forgeLevelList[6]; // blade, axe, spear, boxglove, drill, bow. 00-09
    /*0x008*/ u16 playerName[0x7];
    /*0x016*/ u16 unk16[0x7];
    /*0x024*/ u16 playerMaxHp; // max = 0x270f, but more is ok
    /*0x026*/ u16 playerCurrentHp;
    /*0x028*/ u16 playerAtkList[4]; // Atk when equip weapon1, weapon2, weapon3, noweapon, max = 03e7
    /*0x030*/ u16 filler30; // always 03e7 in memory, weird
    /*0x032*/ u16 playerDefList[4];
    /*0x03A*/ u16 filler3A;
    /*0x03C*/ s16 playerAglList[4];
    /*0x044*/ u16 filler44;
    /*0x046*/ u8 equipWeaponTypeList[3]; // index of equip weapon1, weapon2, weapon3 max = 0x1D, as one can take up to 30 wepons in the bag
    /*0x049*/ u8 equipItemType;
    /*0x04A*/ u16 unk4A[6];
    /*0x056*/ u16 bonusStats; // synced with 020036BA, void?
    /*0x058*/ u8 unk58;
    /*0x059*/ u8 unk59;
    /*0x05A*/ u16 filler5A;
    /*0x05C*/ u32 playerExp; // max = 00BD95FC
    /*0x060*/ u32 unk60;
    /*0x064*/ struct GuardimalAttrib guardimalAttrib;
    /*0x08C*/ u8 battleAidItemList[4]; // guardimal's equipment. 
    /*0x090*/ struct SB90 unk90[0x15];
    /*0x0E4*/ struct BagWeapon bagWeapon[0x1E]; 
    /*0x42C*/ u8 unk42C[0x1E];
    /*0x44A*/ u8 itemQuantityList[0x32]; // TODO: Find out what's the real data structure. Current array is just for matching. 
    /*0x*/ u8 mineralList[0x28]; // from 1 to 40
    /*0x*/ u32 filler4A4[2];
    /*0x*/ u16 filler4AC;
    /*0x*/ u8 numStorageCell;
    /*0x*/ u8 numThunderScroll;
    /*0x*/ u8 numThunderCrystalSegment;
    /*0x*/ u8 numThunderCrystal;
    /*0x*/ u8 numLighterDevice;
    /*0x*/ u8 numFireScroll;
    /*0x*/ u8 numFireCrystalSegment;
    /*0x*/ u8 numFireCrystal;
    /*0x*/ u8 numCleanWaterTank;
    /*0x*/ u8 numWaterScroll;
    /*0x*/ u8 numWaterCrystalSegment;
    /*0x*/ u8 numWaterCrystal;
    /*0x*/ u8 numElectricFan;
    /*0x*/ u8 numWindScroll;
    /*0x*/ u8 numWindCrystalSegment;
    /*0x*/ u8 numWindCrystal;
    /*0x*/ u8 numBackLight;
    /*0x*/ u8 numShinnyScroll;
    /*0x*/ u8 numBloodSucker;
    /*0x*/ u8 numDarkRustCup;
    /*0x*/ u8 numAccelerateWound;
    /*0x*/ u8 numSuperAccelerator;
    /*0x*/ u8 numLuckScroll;
    /*0x*/ u8 numLuckyLeaf;
    /*0x*/ u8 numToggleSwitch;
    /*0x*/ u8 numEssenceScroll;
    /*0x*/ u8 numBodyArtScroll;
    /*0x*/ u8 numPhysicalModifyBook;
    /*0x*/ u8 numDistributionDevice;
    /*0x*/ u8 numDestroySwitch;
    /*0x*/ u8 numParaPowder;
    /*0x*/ u8 numPoisonPowder;
    /*0x*/ u8 numSleepPowder;
    /*0x*/ u8 numRustPowder;
    /*0x*/ u8 numForceLicense;
    /*0x*/ u8 numDefendLicense;
    /*0x*/ u8 numSuperManLicense;
    /*0x*/ u8 numLegendWound;
    /*0x*/ u8 numMindEyeGlasses;
    /*0x*/ u8 numMartialTutorBook;
    /*0x*/ u8 numStrongLuckAmulet;
    /*0x*/ u8 numHealthBucket;
    /*0x*/ u8 numLegendBamboo;
    /*0x*/ u8 numOldGrindStone;
    /*0x*/ u8 numRepareParts;
    /*0x*/ u8 numLegendIronString;
    /*0x*/ u8 numDareDevelLoveLetter;
    /*0x*/ u8 numSuperMotor;
    /*0x*/ u16 filler4DE;
    /*0x*/ u8 suitRings[0xB]; // TODO: list name. 
    /*0x*/ u8 suitBracelets[0xB];
    /*0x*/ u8 suitShoes[0xB];
    /*0x*/ u8 numMilitantShoe;
    /*0x*/ u8 numEscapeShoe;
    /*0x*/ u8 numNormalExtendRing;
    /*0x*/ u8 numSuperExtendRing;
    /*0x*/ u8 numUltraExtendRing;
    /*0x*/ u8 numSpeedBracelet;
    /*0x*/ u8 numGuardBracelet;
    /*0x*/ u8 numAttackBracelet;
    /*0x*/ u8 numCritEnhanceRing;
    /*0x*/ u8 numMagBracelet;
    /*0x*/ u8 numActiveRing;
    /*0x*/ u8 numAwakeRing;
    /*0x*/ u8 numDetoxifyRing;
    /*0x*/ u8 numGoldenRing;
    /*0x*/ u8 numBossRing1;
    /*0x*/ u8 numBossRing2;
    /*0x*/ u8 numCrafterRing;
    /*0x*/ u8 normalFishPole; // 00 = don't have
    /*0x*/ u8 superFishPole;
    /*0x*/ u8 ultraFishPole;
    /*0x*/ u8 chopTutorial;
    /*0x*/ u8 mysteriouStone;
    /*0x*/ u8 summonStone;
    /*0x*/ u8 lotteryHouseBill;
    /*0x*/ u8 lostCat;
    /*0x*/ u8 craftEntrust1;
    /*0x*/ u8 craftEntrust2;
    /*0x*/ u8 craftEntrust3;
    /*0x*/ u8 craftEntrust4;
    /*0x*/ u8 craftEntrust5;
    /*0x*/ u8 craftEntrust6;
    /*0x*/ u8 craftEntrust7;
    /*0x*/ u8 craftEntrust8;
    /*0x*/ u8 craftEntrust9;
    /*0x*/ u8 jetsEntrust;
    /*0x*/ u8 zaksEntrst;
    /*0x*/ u8 edisEntrust;
    /*0x*/ u8 entrustFail1;
    /*0x*/ u8 entrustFail2;
    /*0x*/ u8 entrustFail3;
    /*0x*/ u8 shifusWeapon;
    /*0x*/ u8 mightBook1;
    /*0x*/ u8 mightBook2;
    /*0x*/ u8 mightBook3;
    /*0x*/ u8 mightBook4;
    /*0x*/ u8 mightBook5;
    /*0x*/ u8 craftMightBook;
    /*0x*/ u8 mightBook6; // looks weird. may need a fix
    /*0x*/ u8 auditionMachine;
    /*0x*/ u8 waterDragonScale;
    /*0x*/ u8 inviteToTheGreatWar;
    /*0x*/ u8 watchingWarInvite;
    /*0x*/ u8 ex1Invite;
    /*0x*/ u8 ex2Invite;
    /*0x*/ u8 jvhuaChaInStory;
    /*0x*/ u8 luggageToSend;
    /*0x*/ u8 goldFaction99Entrust;
    /*0x*/ u8 zaksHammer;
    /*0x*/ u8 jetEntrustFail;
    /*0x*/ u8 zaksEntrustFail; // where's edi?
    /*0x*/ u8 filler53D;
    /*0x*/ u8 filler53E;
    /*0x*/ u8 filler53F;
    /*0x540*/ u8 filler540[0xA];
    /*0x54A*/ u8 unk54A[0x1A];
    /*0x564*/ u8 weaponDexLighted[0x1E]; 
    /*0x*/ u8 filler582; // Weird. Idk why it needs a struct align here. 
    /*0x583*/ u8 weaponSkillDex1[6];
    /*0x*/ u8 weaponSkillDex2[6]; // May be a useless checksum. Need more evidence
    /*0x58F*/ u8 weaponSpecialEffectDex1[5];
    /*0x*/ u8 filler594;
    /*0x*/ u8 weaponSpecialEffectDex2[5];
    /*0x*/ u8 filler59A;
    /*0x59B*/ u8 summonGuardianDex[17];
    /*0x*/ s32 money; // max = 9999999, or 0x0098967F in hex
    /*0x5B0*/ u16 unk5B0[0x13]; // something related to the map. Offset 0xA is a word related to the probability to evade enemies. 
    /*0x*/ u16 fishingPoint;
}; /* size = 0x5D8 */

extern struct SaveBlock1 *gSaveBlock1Ptr;
extern struct SaveBlock1 gSaveBlock1;

extern const struct RoleAttrib *gAttribTablePtr;
extern const struct RoleAttrib gAttribTable[];
extern const u16 gUnk_08B80178[];

extern void sub_080154F0(void);
extern u8 GetWeaponType(u8 a);
extern u8 sub_080639E8(u8 a);
extern u16 GetWeaponMaxDur(u8 a);
extern u16 GetPlayerMaxHp(void);
extern u8 sub_080189BC(u8 a);
extern void sub_08018298(u8 a, u8 b);

#endif
