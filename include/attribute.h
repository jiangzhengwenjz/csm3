#ifndef GUARD_ATTRIBUTE_H
#define GUARD_ATTRIBUTE_H

#include "global.h"

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
    u16 isGoodWeapon;
}; /* size = 0x1C */

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
    /*0x03C*/ u16 playerAglList[4];
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
    /*0x064*/ u8 guardimalType; // 00-04
    /*0x065*/ u8 guardimalLevel;
    /*0x066*/ u16 unk66[0x7]; // Something related to guardimal name
    /*0x074*/ u16 guardimalHp;
    /*0x076*/ u16 filler76;
    /*0x078*/ u16 guardimalMag;
    /*0x07A*/ u16 guardimalAtk;
    /*0x07C*/ u16 guardimalDef;
    /*0x07E*/ u16 guardimalAgl;
    /*0x080*/ u32 filler80;
    /*0x084*/ u32 guardimalExp;
    /*0x088*/ u32 guardimalNextExp;
    /*0x08C*/ u8 battleItemOne;
    /*0x08D*/ u8 battleItemTwo;
    /*0x08E*/ u8 battleItemThree;
    /*0x08F*/ u8 battleItemFour;
    /*0x090*/ u8 filler90[0x54];
    /*0x0E4*/ struct BagWeapon bagWeapon[0x1E]; 
    /*0x42C*/ u8 filler42C[0x1E];
    /*0x*/ u8 numWoundBand;
    /*0x*/ u8 numJvhuaCha; // TODO: rename this
    /*0x*/ u8 numGoodPotion;
    /*0x*/ u8 numSoftBoiledEgg;
    /*0x*/ u8 numEggFryRice;
    /*0x*/ u8 numSpicyCurry;
    /*0x*/ u8 numEmergencyBag;
    /*0x*/ u8 numNeedleStone;
    /*0x*/ u8 numMiddleStone;
    /*0x*/ u8 numHardStone;
    /*0x*/ u8 numMemoDiary;
    /*0x*/ u8 numEntryTranstone;
    /*0x*/ u8 numEnemyEvadeScroll;
    /*0x*/ u8 numEnemySummonScroll;
    /*0x*/ u8 numJvhuaFruit;
    /*0x*/ u8 numOilFruit;
    /*0x*/ u8 numSweetFruit;
    /*0x*/ u8 numSlimyTreeLiquid;
    /*0x*/ u8 numMatureFruit;
    /*0x*/ u8 numSoftStone;
    /*0x*/ u8 numWeirdStone;
    /*0x*/ u8 numWeed;
    /*0x*/ u8 numSoftGrass;
    /*0x*/ u8 numGoodPaper;
    /*0x*/ u8 numFitStick;
    /*0x*/ u8 numCleanCloth;
    /*0x*/ u8 numSmellyOnion;
    /*0x*/ u8 numSweetHoney;
    /*0x*/ u8 numSoftSkin;
    /*0x*/ u8 numSolidSkin;
    /*0x*/ u8 numGoodSkin;
    /*0x*/ u8 numSpicySeasoning;
    /*0x*/ u8 numSecretCorn;
    /*0x*/ u8 numGoodPureWater;
    /*0x*/ u8 numSecretEgg;
    /*0x*/ u8 numBeautifulEgg;
    /*0x*/ u8 numSmallEarthworm;
    /*0x*/ u8 numTaroBall;
    /*0x*/ u8 numDryShrimp;
    /*0x*/ u8 numCarrotBit;
    /*0x*/ u8 numGoodShell;
    /*0x*/ u8 numSmallBomb;
    /*0x*/ u8 numMiddleBomb;
    /*0x*/ u8 numBigBomb;
    /*0x*/ u8 numPoisonBomb;
    /*0x*/ u8 numParalyzeBomb;
    /*0x*/ u8 numSleepBomb;
    /*0x*/ u8 numRustBomb;
    /*0x*/ u8 numLottery;
    /*0x*/ u8 null; // probably for struct align
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
    /*0x*/ u8 filler540[0x24];
    /*0x*/ bool8 weaponDexLighted[0x1E]; 
    /*0x*/ u8 filler582; // weird
    /*0x*/ u8 weaponSkillDex1[6];
    /*0x*/ u8 weaponSkillDex2[6]; // May be a useless checksum. Need more evidence
    /*0x*/ u8 weaponSpecialEffectDex1[5];
    /*0x*/ u8 filler594;
    /*0x*/ u8 weaponSpecialEffectDex2[5];
    /*0x*/ u8 filler59A;
    /*0x*/ u8 summonGuardianDex[17];
    /*0x*/ u32 money; // max = 9999999, or 0x0098967F in hex
    /*0x*/ u8 filler5B0[0x14]; // something related to the map. 
    /*0x*/ u32 filler5C4; // something related to the probability of collision with an enemy. 
    /*0x*/ u8 filler5C8[0xE];
    /*0x*/ u16 fishingPoint;
}; /* size = 0x5D8 */

extern struct SaveBlock1 *gSaveBlock1Ptr; 
extern struct SaveBlock1 gSaveBlock1;

extern const struct RoleAttrib *gAttribTablePtr;
extern const struct RoleAttrib gAttribTable[];
extern const u16 gUnk_08B80178[];

extern void sub_080154F0(void);
extern u8 sub_08018728(u8 a);
extern u8 sub_080639E8(u8 a);
extern u16 sub_080187B4(u8 a);
extern u16 sub_0801844C(void);
extern u8 sub_080189BC(u8 a);
extern void sub_08018298(u8 a, u8 b);

#endif
