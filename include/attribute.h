#ifndef GUARD_ATTRIBUTE_H
#define GUARD_ATTRIBUTE_H

#include "global.h"

/* Array index defines. Used in itemQuantityList */
// Below are usable items. 
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

#define ITEM_QUANTITY_NULL1_IDX 49
// I don't know why this null item is needed. Below are minerals. 
#define ITEM_QUANTITY_IRON_ORE_IDX 50
#define ITEM_QUANTITY_SLENDER_CRYSTAL_IDX 51
#define ITEM_QUANTITY_CUTTING_ORE_IDX 52
#define ITEM_QUANTITY_AKINEEL_ORE_IDX 53
#define ITEM_QUANTITY_LARGE_ORE_IDX 54
#define ITEM_QUANTITY_ERUVINE_CRYSTAL_IDX 55
#define ITEM_QUANTITY_WING_FOSSIL_IDX 56
#define ITEM_QUANTITY_IRON_CUTTING_ORE_IDX 57
#define ITEM_QUANTITY_LARGE_IRON_ORE_IDX 58
#define ITEM_QUANTITY_HEAVY_GOLD_ORE_IDX5 59
#define ITEM_QUANTITY_RANGER_ORE_IDX 60
#define ITEM_QUANTITY_ELEGANT_ORE_IDX 61
#define ITEM_QUANTITY_CUTE_CRYSTAL_IDX 62
#define ITEM_QUANTITY_SHELL_FOSSIL_IDX 63
#define ITEM_QUANTITY_BLACK_ORE_IDX 64
#define ITEM_QUANTITY_ILLUSION_ORE_IDX 65
#define ITEM_QUANTITY_COMMON_CRYSTAL_IDX 66
#define ITEM_QUANTITY_BANISH_ORE_IDX 67
#define ITEM_QUANTITY_SASH_ORE_IDX 68
#define ITEM_QUANTITY_GAUL_ORE_IDX 69
#define ITEM_QUANTITY_KITCHEN_ORE_IDX 70
#define ITEM_QUANTITY_IRON_BLADE_STONE_IDX 71
#define ITEM_QUANTITY_NOVILLE_CRYSTAL_IDX 72
#define ITEM_QUANTITY_TWIN_SNAKE_ORE_IDX 73
#define ITEM_QUANTITY_SPLENDID_ORE_IDX 74
#define ITEM_QUANTITY_EXCELLENT_ORE_IDX 75
#define ITEM_QUANTITY_WOOD_FOSSIL_IDX 76
#define ITEM_QUANTITY_RESISTOR_CRYSTAL_IDX 77
#define ITEM_QUANTITY_YUUBISU_ORE_IDX 78
#define ITEM_QUANTITY_CONCEALED_STONE_IDX 79
#define ITEM_QUANTITY_MAD_GHOST_ORE_IDX 80
#define ITEM_QUANTITY_WISE_BLADE_ORE_IDX 81
#define ITEM_QUANTITY_STEELFANG_CRYSTAL_IDX 82
#define ITEM_QUANTITY_GARDEN_ORE_IDX 83
#define ITEM_QUANTITY_EVIL_NINJA_ORE_IDX 84
#define ITEM_QUANTITY_PAW_FOSSIL_IDX 85
#define ITEM_QUANTITY_MECHA_CRYSTAL_IDX 86
#define ITEM_QUANTITY_BLOOD_LOTUS_ORE_IDX 87
#define ITEM_QUANTITY_CURSED_ORE_IDX 88
#define ITEM_QUANTITY_GEM_OF_LIGHT_IDX 89
// idk why they put nulls here. 
#define ITEM_QUANTITY_NULL2_IDX 90
#define ITEM_QUANTITY_NULL3_IDX 91
#define ITEM_QUANTITY_NULL4_IDX 92
#define ITEM_QUANTITY_NULL5_IDX 93
#define ITEM_QUANTITY_NULL6_IDX 94
#define ITEM_QUANTITY_NULL7_IDX 95
#define ITEM_QUANTITY_NULL8_IDX 96
#define ITEM_QUANTITY_NULL9_IDX 97
#define ITEM_QUANTITY_NULL10_IDX 98
#define ITEM_QUANTITY_NULL11_IDX 99
// Below are items for weapon enhancement
#define ITEM_QUANTITY_STORAGE_CELL_IDX 100
#define ITEM_QUANTITY_THUNDER_SCROLL_IDX 101
#define ITEM_QUANTITY_THUNDER_CRYSTAL_SEGMENT_IDX 102
#define ITEM_QUANTITY_THUNDER_CRYSTAL_IDX 103
#define ITEM_QUANTITY_LIGHTER_DEVICE_IDX 104
#define ITEM_QUANTITY_FIRE_SCROLL_IDX 105
#define ITEM_QUANTITY_FIRE_CRYSTAL_SEGMENT_IDX 106
#define ITEM_QUANTITY_FIRE_CRYSTAL_IDX 107
#define ITEM_QUANTITY_CLEAN_WATER_TANK_IDX 108
#define ITEM_QUANTITY_WATER_SCROLL_IDX 109
#define ITEM_QUANTITY_WATER_CRYSTAL_SEGMENT_IDX 110
#define ITEM_QUANTITY_WATER_CRYSTAL_IDX 111
#define ITEM_QUANTITY_ELECTRIC_FAN_IDX 112
#define ITEM_QUANTITY_WIND_SCROLL_IDX 113
#define ITEM_QUANTITY_WIND_CRYSTAL_SEGMENT_IDX 114
#define ITEM_QUANTITY_WIND_CRYSTAL_IDX 115
#define ITEM_QUANTITY_BACK_LIGHT_IDX 116
#define ITEM_QUANTITY_SHINNY_SCROLL_IDX 117
#define ITEM_QUANTITY_BLOOD_SUCKER_IDX 118
#define ITEM_QUANTITY_DARK_RUST_CUP_IDX 119
#define ITEM_QUANTITY_ACCELERATE_WOUND_IDX 120
#define ITEM_QUANTITY_SUPER_ACCELERATOR_IDX 121
#define ITEM_QUANTITY_LUCK_SCROLL_IDX 122
#define ITEM_QUANTITY_LUCKY_LEAF_IDX 123
#define ITEM_QUANTITY_TOGGLE_SWITCH_IDX 124
#define ITEM_QUANTITY_ESSENCE_SCROLL_IDX 125
#define ITEM_QUANTITY_BODY_ART_SCROLL_IDX 126
#define ITEM_QUANTITY_PHYSICAL_MODIFY_BOOK_IDX 127
#define ITEM_QUANTITY_DISTRIBUTION_DEVICE_IDX 128
#define ITEM_QUANTITY_DESTROY_SWITCH_IDX 129
#define ITEM_QUANTITY_PARA_POWDER_IDX 130
#define ITEM_QUANTITY_POISON_POWDER_IDX 131
#define ITEM_QUANTITY_SLEEP_POWDER_IDX 132
#define ITEM_QUANTITY_RUST_POWDER_IDX 133
#define ITEM_QUANTITY_FORCE_LICENSE_IDX 134
#define ITEM_QUANTITY_DEFEND_LICENSE_IDX 135
#define ITEM_QUANTITY_SUPER_MAN_LICENSE_IDX 136
#define ITEM_QUANTITY_LEGEND_WOUND_IDX 137
#define ITEM_QUANTITY_MIND_EYE_GLASSES_IDX 138
#define ITEM_QUANTITY_MARTIAL_TUTOR_BOOK_IDX 139
#define ITEM_QUANTITY_STRONG_LUCK_AMULET_IDX 140
#define ITEM_QUANTITY_HEALTH_BUCKET_IDX 141
#define ITEM_QUANTITY_LEGEND_BAMBOO_IDX 142
#define ITEM_QUANTITY_OLD_GRIND_STONE_IDX 143
#define ITEM_QUANTITY_REPARE_PARTS_IDX 144
#define ITEM_QUANTITY_LEGEND_IRON_STRING_IDX 145
#define ITEM_QUANTITY_DARE_DEVEL_LOVE_LETTER_IDX 146
#define ITEM_QUANTITY_SUPER_MOTOR_IDX 147

#define ITEM_QUANTITY_NULL12_IDX 148
#define ITEM_QUANTITY_NULL13_IDX 149
// Below are equipments. 
#define ITEM_QUANTITY_METAL_RING_IDX 150
#define ITEM_QUANTITY_CUTTING_RING_IDX 151
#define ITEM_QUANTITY_STEEL_RING_IDX 152
#define ITEM_QUANTITY_SLICE_RING_IDX 153
#define ITEM_QUANTITY_SURVIVAL_RING_IDX 154
#define ITEM_QUANTITY_SHELL_RING_IDX 155
#define ITEM_QUANTITY_COMMON_RING_IDX 156
#define ITEM_QUANTITY_GAUL_RING_IDX 157
#define ITEM_QUANTITY_CELEB_RING_IDX 158
#define ITEM_QUANTITY_HIGH_RING_IDX 159
#define ITEM_QUANTITY_RUNE_RING_IDX 160
#define ITEM_QUANTITY_METAL_BRACELET_IDX 161
#define ITEM_QUANTITY_CUTTING_BRACELET_IDX 162
#define ITEM_QUANTITY_STEEL_BRACELET_IDX 163
#define ITEM_QUANTITY_SLICE_BRACELET_IDX 164
#define ITEM_QUANTITY_SURVIVAL_BRACELET_IDX 165
#define ITEM_QUANTITY_SHELL_BRACELET_IDX 166
#define ITEM_QUANTITY_COMMON_BRACELET_IDX 167
#define ITEM_QUANTITY_GAUL_BRACELET_IDX 168
#define ITEM_QUANTITY_CELEB_BRACELET_IDX 169
#define ITEM_QUANTITY_HIGH_BRACELET_IDX 170
#define ITEM_QUANTITY_RUNE_BRACELET_IDX 171
#define ITEM_QUANTITY_METAL_BOOTS_IDX 172
#define ITEM_QUANTITY_CUTTING_BOOTS_IDX 173
#define ITEM_QUANTITY_STELL_BOOTS_IDX 174
#define ITEM_QUANTITY_SLICE_BOOTS_IDX 175
#define ITEM_QUANTITY_SURVIVAL_BOOTS_IDX 176
#define ITEM_QUANTITY_SHELL_BOOTS_IDX 177
#define ITEM_QUANTITY_COMMON_BOOTS_IDX 178
#define ITEM_QUANTITY_GAUL_BOOTS_IDX 179
#define ITEM_QUANTITY_CELEB_BOOTS_IDX 180
#define ITEM_QUANTITY_HIGH_BOOTS_IDX 181
#define ITEM_QUANTITY_RUNE_BOOTS_IDX 182
#define ITEM_QUANTITY_WAR_BOOTS_IDX 183
#define ITEM_QUANTITY_ESCAPE_BOOTS_IDX 184
#define ITEM_QUANTITY_EXTEND_RING_IDX 185
#define ITEM_QUANTITY_RE_EXTEND_RING_IDX 186
#define ITEM_QUANTITY_LONG_STAY_RING_IDX 187
#define ITEM_QUANTITY_SPEED_BRACELET_IDX 188
#define ITEM_QUANTITY_DEF_BRACELET_IDX 189
#define ITEM_QUANTITY_ATTACK_BRACELET_IDX 190
#define ITEM_QUANTITY_CRIT_ENHANCE_RING_IDX 191
#define ITEM_QUANTITY_MAGIC_BRACELET_IDX 192
#define ITEM_QUANTITY_VITALITY_RING_IDX 193
#define ITEM_QUANTITY_INSOMNIA_RING_IDX 194
#define ITEM_QUANTITY_DETOX_RING_IDX 195
#define ITEM_QUANTITY_COATING_RING_IDX 196
#define ITEM_QUANTITY_BOSS_RING_1_IDX 197
#define ITEM_QUANTITY_BOSS_RING_2_IDX 198
#define ITEM_QUANTITY_CRAFTLORD_RING_IDX 199

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
    /*0x42C*/ u8 unk42C[0x1E]; // content: from 00 to 1d, the same as their index. no idea why they need this.
    /*0x44A*/ u8 itemQuantityList[0xC8]; // TODO: Find out what's the real data structure. Current array is just for matching. 
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
    /*0x5AC*/ s32 money; // max = 9999999, or 0x0098967F in hex
    /*0x5B0*/ u16 unk5B0[0x13]; // something related to the map. Offset 0xA is a word related to the probability to evade enemies. 
    /*0x5D6*/ u16 fishingPoint;
}; /* size = 0x5D8 */

extern struct SaveBlock1 *gSaveBlock1Ptr;
extern struct SaveBlock1 gSaveBlock1;

extern const struct RoleAttrib *gAttribTablePtr;
extern const struct RoleAttrib gAttribTable[];
extern const u16 gUnk_08B80178[];
extern const u8 gUnk_08B7CFA4[];
extern const u8 gUnk_08B7D007[];
extern const u8 gUnk_08B7D06A[];
extern const u8 gUnk_08B7D0CD[];

extern void sub_080154F0(void);
extern u8 GetWeaponType(u8 a);
extern u8 sub_080639E8(u8 a);
extern u16 GetWeaponMaxDur(u8 a);
extern u16 GetPlayerMaxHp(void);
extern u8 sub_080189BC(u8 a);
extern void sub_08018298(u8 a, u8 b);
extern u8 sub_08063868(u16 a);

#endif
