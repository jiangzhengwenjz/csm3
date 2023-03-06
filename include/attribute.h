#ifndef GUARD_ATTRIBUTE_H
#define GUARD_ATTRIBUTE_H

#include "global.h"

struct RoleAttrib
{
    u8 filler0[0x78];
};

struct BagWeapon
{
    u8 filler0; //something related to reforge
    u8 weaponType;
    u8 weaponSpecialEffect;
    u8 weaponSkill;
    u8 firstEnhanceItem; //null = 0xff
    u8 secondEnhanceItem;
    u8 thirdEnhanceItem;
    u8 weaponTec;
    u16 weaponAtk;
    u16 weaponDef;
    u16 weaponAgl;
    u16 weaponInitAtk; //Atk when not enhanced or boosted
    u16 weaponInitDef;
    u16 weaponInitAgl;
    u16 weaponCurrentDur;
    u16 weaponMaxDur;
    u16 weaponInitDur;
    u16 isGoodWeapon;
}; /* size = 0x1C */

struct SaveBlock1
{
    u8 playerGender; //00 = male
    u8 playerLevel; 
    u8 bladeForgeLevel; //00-09
    u8 axeForgeLevel;
    u8 spearForgeLevel;
    u8 boxGloveForgeLevel;
    u8 bowForgeLevel;
    u16 filler8[0xE]; //Something related to player name
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
    u8 filler66[0xE]; //Something related to guardimal name
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
    u8 filler90[0x54];
    struct BagWeapon bagWeapon[0x1E]; 
    u8 filler42C[0x1E];
    u8 numWoundBand;
    u8 numJvhuaCha; // TODO:rename this
    u8 numGoodPotion;
    u8 numSoftBoiledEgg;
    u8 numEggFryRice;
    u8 numSpicyCurry;
    u8 numEmergencyBag;
    u8 numNeedleStone;
    u8 numMiddleStone;
    u8 numHardStone;
    u8 numMemoDiary;
    u8 numEntryTranstone;
    u8 numEnemyEvadeScroll;
    u8 numEnemySummonScroll;
    u8 numJvhuaFruit;
    u8 numOilFruit;
    u8 numSweetFruit;
    u8 numSlimyTreeLiquid;
    u8 numMatureFruit;
    u8 numSoftStone;
    u8 numWierdStone;
    u8 numWeed;
    u8 numSoftGrass;
    u8 numGoodPaper;
    u8 numFitStick;
    u8 numCleanCloth;
    u8 numSmellyOnion;
    u8 numSweetHoney;
    u8 numSoftSkin;
    u8 numSolidSkin;
    u8 numGoodSkin;
    u8 numSpicySeasoning;
    u8 numSecretCorn;
    u8 numGoodPureWater;
    u8 numSecretEgg;
    u8 numBeautifulEgg;
    u8 numSmallEarthworm;
    u8 numTaroBall;
    u8 numDryShrimp;
    u8 numCarrotBit;
    u8 numGoodShell;
    u8 numSmallBomb;
    u8 numMiddleBomb;
    u8 numBigBomb;
    u8 numPoisonBomb;
    u8 numParalyzeBomb;
    u8 numSleepBomb;
    u8 numLottery;
    u8 null; //probably for struct align
    u8 mineralList[0x28]; //from 1 to 40
    u32 filler4A4[2];
    u16 filler4AC;
    u8 numStorageCell;
    u8 numThunderScroll;
    u8 numThunderCrystalSegment;
    u8 numThunderCrystal;
    u8 numLighterDevice;
    u8 numFireScroll;
    u8 numFireCrystalSegment;
    u8 numFireCrystal;
    u8 numCleanWaterTank;
    u8 numWaterScroll;
    u8 numWaterCrystalSegment;
    u8 numWaterCrystal;
    u8 numElectricFan;
    u8 numWindScroll;
    u8 numWindCrystalSegment;
    u8 numWindCrystal;
    u8 numBackLight;
    u8 numShinnyScroll;
    u8 numBloodSucker;
    u8 numDarkRustCup;
    u8 numAccelerateWound;
    u8 numSuperAccelerator;
    u8 numLuckScroll;
    u8 numLuckyLeaf;
    u8 numToggleSwitch;
    u8 numEssenceScroll;
    u8 numBodyArtScroll;
    u8 numPhysicalModifyBook;
    u8 numDistributionDevice;
    u8 numDestroySwitch;
    u8 numPayaPowder;
    u8 numPoisonPowder;
    u8 numSleepPowder;
    u8 numRustPowder;
    u8 numForceLicense;
    u8 numDefendLicense;
    u8 numSuperManLicense;
    u8 numLegendWound;
    u8 numMindEyeGlasses;
    u8 numMartialTutorBook;
    u8 numStrongLuckAmulet;
    u8 numHealthBucket;
    u8 numLegendBamboo;
    u8 numOldGrindStone;
    u8 numRepareParts;
    u8 numLegendIronString;
    u8 numDareDevelLoveLetter;
    u8 numSuperMotor;
    u16 filler4DE;
    u8 suitRings[0xB]; // TODO:list name.
    u8 suitBracelets[0xB];
    u8 suitShoes[0xB];
    u8 numMilitantShoe;
    u8 numEscapeShoe;
    u8 numNormalExtendRing;
    u8 numSuperExtendRing;
    u8 numUltraExtendRing;
    u8 numSpeedBracelet;
    u8 numGuardBracelet;
    u8 numAttackBracelet;
    u8 numCritEnhanceRing;
    u8 numMagBracelet;
    u8 numActiveRing;
    u8 numAwakeRing;
    u8 numDetoxifyRing;
    u8 numGoldenRing;
    u8 numBossRing1;
    u8 numBossRing2;
    u8 numCrafterRing;
    u8 normalFishPole; //00 = don't have
    u8 superFishPole;
    u8 ultraFishPole;
    u8 chopTutorial;
    u8 mysteriouStone;
    u8 summonStone;
    u8 lotteryHouseBill;
    u8 lostCat;
    u8 craftEntrust1;
    u8 craftEntrust2;
    u8 craftEntrust3;
    u8 craftEntrust4;
    u8 craftEntrust5;
    u8 craftEntrust6;
    u8 craftEntrust7;
    u8 craftEntrust8;
    u8 craftEntrust9;
    u8 jetsEntrust;
    u8 zaksEntrst;
    u8 edisEntrust;
    u8 entrustFail1;
    u8 entrustFail2;
    u8 entrustFail3;
    u8 shifusWeapon;
    u8 mightBook1;
    u8 mightBook2;
    u8 mightBook3;
    u8 mightBook4;
    u8 mightBook5;
    u8 craftMightBook;
    u8 mightBook6; // looks wierd.maybe need a fix
    u8 auditionMachine;
    u8 waterDragonScale;
    u8 inviteToTheGreatWar;
    u8 watchingWarInvite;
    u8 ex1Invite;
    u8 ex2Invite;
    u8 jvhuaChaInStory;
    u8 luggageToSend;
    u8 goldFaction99Entrust;
    u8 zaksHammer;
    u8 jetEntrustFail;
    u8 zaksEntrustFail; // where's edi?
    u8 filler53D;
    u8 filler53E;
    u8 filler53F;
    u8 filler540[0x24];
    u8 weaponDex[0x1E]; // This is a bit field. 1 = dex lighted, 0 = not lighted.
    u8 filler582; // wierd
    u8 weaponSkillDex1[6];
    u8 weaponSkillDex2[6]; //maybe a useless checksum, need more evidence
    u8 weaponSpecialEffectDex1[5];
    u8 filler594;
    u8 weaponSpecialEffectDex2[5];
    u8 filler59A;
    u8 summonGuardianDex[17];
    u32 money; // max = 0x0098967F
    u8 filler5B0[0x14]; //something related to the map.
    u32 filler5C4; //something related to the probability of collision with an enemy.
    u8 filler5C8[0xE];
    u16 fishingPoint;
}; /* size = 0x5D8 */

extern struct SaveBlock1 *gSaveBlock1Ptr; 
extern struct SaveBlock1 gSaveBlock1;

extern const struct RoleAttrib *gAttribTablePtr;
extern const struct RoleAttrib gAttribTable[];

extern void sub_080154F0(void);

#endif
