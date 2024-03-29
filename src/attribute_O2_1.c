#include "global.h"
#include "attribute.h"
#include "data.h"
#include "functions.h"

const u8 gUnk_080BABCA[] = { 1, 2, 3, 4, 5, 6, 7 };

void InitAttribTablePointer(void)
{
    gSaveBlock1Ptr = &gSaveBlock1;  
    gAttribTablePtr = gAttribTable;
    sub_080154F0();  
}

void SetPlayerName(u16 *nameBuffer)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u16 i;

    for (i = 0; ; ++i)
    {
        sb1->playerName[i] = nameBuffer[i];
        if (!nameBuffer[i]) break;
    }
}

/* The same as SetPlayerName but uses unk16. */
void sub_08017B7C(u16 *buffer)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u16 i;

    for (i = 0; ; ++i)
    {
        sb1->unk16[i] = buffer[i];
        if (!buffer[i]) break;
    }
}

void SetPlayerGender(u8 gender)
{
    gSaveBlock1Ptr->playerGender = gender;
    sub_08012F0C(0x182, gender); // This appears in main. 
}

void SetPlayerLevel(u8 level)
{
    gSaveBlock1Ptr->playerLevel = level;
}

void SetForgeLevel(u8 type, u8 level)
{
    gSaveBlock1Ptr->forgeLevelList[type] = level;
}

void SetPlayerMaxHp(u16 hp)
{
    gSaveBlock1Ptr->playerMaxHp = hp;
}

void SetPlayerCurrentHp(u16 hp)
{
    if (hp > gSaveBlock1Ptr->playerMaxHp)
    {
        gSaveBlock1Ptr->playerCurrentHp = gSaveBlock1Ptr->playerMaxHp;
    }
    else
    {
        gSaveBlock1Ptr->playerCurrentHp = hp;
    }
}

void SetPlayerExp(u32 exp)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    if (exp > 99999999)
    {
        exp = 99999999;
    }
    sb1->playerExp = exp;
}

void sub_08017C40(u32 r0)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    if (r0 > 99999999)
    {
        r0 = 99999999;
    }
    sb1->unk60 = r0;
}

void SetPlayerAtk(u8 index, u16 atk)
{
    gSaveBlock1Ptr->playerAtkList[index] = atk;
}

void SetPlayerDef(u8 index, u16 def)
{
    gSaveBlock1Ptr->playerDefList[index] = def;
}

void SetPlayerAgl(u8 index, u16 agl)
{
    gSaveBlock1Ptr->playerAglList[index] = agl;
}

void sub_08017C9C(u8 r0)
{
    gSaveBlock1Ptr->unk58 = r0;
}

void SetPlayerEquipWeaponType(u8 index, u8 type)
{
    gSaveBlock1Ptr->equipWeaponTypeList[index] = type;
}

void SetPlayerEquipItemType(u8 type)
{
    gSaveBlock1Ptr->equipItemType = type;
}

void sub_08017CD0(u8 r0)
{
    gSaveBlock1Ptr->unk59 = r0;
}

u8 sub_08017CE0(u16 r5)
{
    u8 arr1[7];
    s32 r4;
    u8 r6;
    u8 temp;
    memcpy(arr1, gUnk_080BABCA, 7);
    r6 = 0;

#ifndef NONMATCHING
    asm("":::"r4");
#endif
    for (r4 = 0; r4 < 30; r4 += 3)
    {
        ++r5; --r5;
        temp = GetWeaponType(r4);
        if (temp != 0xff)
        {
            if (temp <= 0xef)
            {
                if (sub_080639E8(temp) == arr1[r5]) 
                {
                    r6 = 1;
                    break;
                }
            }
        }
        ++r5; --r5;
        temp = GetWeaponType(r4 + 1);
        if (temp != 0xff)
        {
            if (temp <= 0xef)
            {
                if (sub_080639E8(temp) == arr1[r5]) 
                {
                    r6 = 1;
                    break;
                }
            }
        }
        ++r5; --r5;
        temp = GetWeaponType(r4 + 2);
        if (temp != 0xff)
        {
            if (temp <= 0xef)
            {
                if (sub_080639E8(temp) == arr1[r5]) 
                {
                    r6 = 1;
                    break;
                }
            }
        }
    }
    return r6;
}

void sub_08017D84(u8 r0, u16 r1)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    if (r1 > gUnk_08B80178[9])
    {
        r1 = gUnk_08B80178[9];
    }
    sb1->unk4A[r0] = r1;
}

void SetBonusStats(u16 stats)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    if (stats > 9999)
    {
        stats = 9999;
    }
    sb1->bonusStats = stats;
}

void SetBagWeaponAtk(u8 wpIndex, s16 atk)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (atk > 999)
    {
        atk = 999;
    }
    else if (atk < 0)
    {
        atk = 0;
    }
    bw[wpIndex].weaponAtk = atk;
}

void SetBagWeaponDef(u8 wpIndex, s16 def)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (def > 999)
    {
        def = 999;
    }
    else if (def < 0)
    {
        def = 0;
    }
    bw[wpIndex].weaponDef = def;
}

void SetBagWeaponAgl(u8 wpIndex, s16 agl)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (agl > 999)
    {
        agl = 999;
    }
    else if (agl < -0x80)
    {
        agl = -0x80;
    }
    bw[wpIndex].weaponAgl = agl;
}

void SetBagWeaponCurrentDur(u8 wpIndex, s16 r1)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (r1 > GetWeaponMaxDur(wpIndex))
    {
        r1 = GetWeaponMaxDur(wpIndex);
    }
    else if (r1 < 0)
    {
        r1 = 0;
    }
    bw[wpIndex].weaponCurrentDur = r1;
}

void SetBagWeaponMaxDur(u8 wpIndex, s16 dur)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (dur > 999)
    {
        dur = 999;
    }
    else if (dur <= 0)
    {
        dur = 1;
    }
    bw[wpIndex].weaponMaxDur = dur;
}

/* Why do they use a s16 argument to set a u8's value? Is this just copying and pasting? */
void SetBagWeaponTec(u8 wpIndex, s16 tec)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (tec > 255)
    {
        tec = 255;
    }
    else if (tec < 0)
    {
        tec = 0;
    }
    bw[wpIndex].weaponTec = tec;
}

void SetBagWeaponInitAtk(u8 wpIndex, s16 initAtk)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (initAtk > 999)
    {
        initAtk = 999;
    }
    else if (initAtk < 0)
    {
        initAtk = 0;
    }
    bw[wpIndex].weaponInitAtk = initAtk;
}

void SetBagWeaponInitDef(u8 wpIndex, s16 initDef)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (initDef > 999)
    {
        initDef = 999;
    }
    else if (initDef < 0)
    {
        initDef = 0;
    }
    bw[wpIndex].weaponInitDef = initDef;
}

void SetBagWeaponInitAgl(u8 wpIndex, s16 initAgl)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (initAgl > 999)
    {
        initAgl = 999;
    }
    else if (initAgl < -0x80)
    {
        initAgl = -0x80;
    }
    bw[wpIndex].weaponInitAgl = initAgl;
}

void SetBagWeaponInitDur(u8 wpIndex, s16 initDur)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (initDur > 999)
    {
        initDur = 999;
    }
    else if (initDur < 0)
    {
        initDur = 0;
    }
    bw[wpIndex].weaponInitDur = initDur;
}

void sub_0801806C(u8 r0, u8 r1, s8 a3)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (a3 == 1)
    {
        bw[r0].unk0 |= r1;
    }
    else if (a3 == 0)
    {
        bw[r0].unk0 &= ~r1;
    }
}

void SetBagWeaponSpecialEffect(u8 wpIndex, u8 specialEffect)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    bw[wpIndex].weaponSpecialEffect = specialEffect;
}

void SetBagWeaponSkill(u8 wpIndex, u8 skill)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    bw[wpIndex].weaponSkill = skill;
}

void SetBagWeaponEnhanceItem(u8 wpIndex, u8 itemIndex, u8 itemType)
{
    gSaveBlock1Ptr->bagWeapon[wpIndex].enhanceItemList[itemIndex] = itemType;
}

void sub_08018118(void)
{
    u16 temp = GetPlayerMaxHp();
    s32 count;
    u8 r4, var;
    if (temp > gSaveBlock1Ptr->playerMaxHp)
    {
        gSaveBlock1Ptr->playerCurrentHp = gSaveBlock1Ptr->playerMaxHp;
    }
    else
    {
        gSaveBlock1Ptr->playerCurrentHp = temp;
    }
    for (count = 0; count <= 0x14; count += 3)
    {
        r4 = count;
        var = sub_080189BC(r4);
        sub_08018298(r4, var);
        r4 = count + 1;
        var = sub_080189BC(r4);
        sub_08018298(r4, var);
        r4 = count + 2;
        var = sub_080189BC(r4);
        sub_08018298(r4, var);
    }
}

void SetGuardimalName(u16 *nameBuffer)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u16 i = 0;

    memcpy(&sb1->guardimalAttrib.guardimalName[0], &nameBuffer[0], sizeof(nameBuffer[0])); // cannot match with for loop like SetPlayerName.
    ++sb1; --sb1;
    while (nameBuffer[i])
    {
        ++i;
        sb1->guardimalAttrib.guardimalName[i] = nameBuffer[i];
    }
}

void SetGuardimalType(u8 r4)
{
    gSaveBlock1Ptr->guardimalAttrib.guardimalType = r4;
    sub_08012F0C(0x183, (s8)r4); // UB
    if (r4 != 0xff)
    {
        sub_08012F0C(0x176, (s8)r4); // UB
    }
}

void SetGuardimalLevel(u8 r0)
{
    struct GuardimalAttrib *gap = &gSaveBlock1Ptr->guardimalAttrib;
    gap->guardimalLevel = r0;
}

void sub_08018210(u16 r0)
{
    struct GuardimalAttrib *gap = &gSaveBlock1Ptr->guardimalAttrib;
    if (r0 > gap->guardimalHp)
    {
        gap->unk12 = gap->guardimalHp;
    }
    else
    {
        gap->unk12 = r0;
    }
}

void SetGuardimalHp(u16 r0)
{
    struct GuardimalAttrib *gap = &gSaveBlock1Ptr->guardimalAttrib;
    gap->guardimalHp = r0;
}

void SetGuardimalMag(u16 r0)
{
    struct GuardimalAttrib *gap = &gSaveBlock1Ptr->guardimalAttrib;
    gap->guardimalMag = r0;
}

void SetGuardimalAtk(u16 r0)
{
    struct GuardimalAttrib *gap = &gSaveBlock1Ptr->guardimalAttrib;
    gap->guardimalAtk = r0;
}

void SetGuardimalDef(u16 r0)
{
    struct GuardimalAttrib *gap = &gSaveBlock1Ptr->guardimalAttrib;
    gap->guardimalDef = r0;
}

void SetGuardimalAgl(u16 r0)
{
    struct GuardimalAttrib *gap = &gSaveBlock1Ptr->guardimalAttrib;
    gap->guardimalAgl = r0;
}

void sub_08018284(u8 r0, u8 r1)
{
    gSaveBlock1Ptr->unk90[r0].unk0 = r1;
}

void sub_08018298(u8 r0, u8 r1)
{
    gSaveBlock1Ptr->unk90[r0].unk2 = r1;
}

void sub_080182AC(u8 r0, u8 r1)
{
    gSaveBlock1Ptr->unk90[r0].unk3 = r1;
}

void SetBattleAidItem(u8 index, u8 item)
{
    gSaveBlock1Ptr->battleAidItemList[index] = item;
}

void SetGuardimalExp(u32 exp)
{
    struct GuardimalAttrib *ga1 = &gSaveBlock1Ptr->guardimalAttrib;
    if(exp > 99999999)
    {
        exp = 99999999;
    }
    ga1->guardimalExp = exp;
}

void SetGuardimalNextExp(u32 exp)
{
    struct GuardimalAttrib *ga1 = &gSaveBlock1Ptr->guardimalAttrib;
    if(exp > 99999999)
    {
        exp = 99999999;
    }
    ga1->guardimalNextExp = exp;
}

void sub_08018314(u16 r0)
{
    struct GuardimalAttrib *ga1 = &gSaveBlock1Ptr->guardimalAttrib;
    if (r0 > 9999)
    {
        r0 = 9999;
    }
    ga1->unk1C = r0;
}

void SetItemQuantity(u16 idx, u8 num)
{
    gSaveBlock1Ptr->itemQuantityList[idx] = num;
}

void SetMoney(s32 money1)
{
    if (money1 > 9999999)
    {
        money1 = 9999999;
    }
    else if (money1 < 0)
    {
        money1 = 0;
    }
    gSaveBlock1Ptr->money = money1;
}

void SetFishingPoint(u32 point)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    if (point > 0xffff)
    {
        point = 0xffff;
    }
    sb1->fishingPoint = point;
}

void sub_080183AC(u16 *r5)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u16 i;

    CpuFill16(0, sb1->unk5B0, sizeof(sb1->unk5B0));
    for (i = 0; ; ++i)
    {
        sb1->unk5B0[i] = r5[i];
        if (!r5[i]) break;
    }
}

u16* GetSavedPlayerName(void)
{
    return gSaveBlock1Ptr->playerName;
}

u16* sub_08018414(void)
{
    return gSaveBlock1Ptr->unk16;
}

u8 GetPlayerGender(void)
{
    return gSaveBlock1Ptr->playerGender;
}

u8 GetForgeLevel(u8 idx)
{
    return gSaveBlock1Ptr->forgeLevelList[idx];
}

u8 GetPlayerLevel(void)
{
    return gSaveBlock1Ptr->playerLevel;
}

u16 GetPlayerMaxHp(void)
{
    return gSaveBlock1Ptr->playerMaxHp;
}

u16 GetPlayerCurrentHp(void)
{
    return gSaveBlock1Ptr->playerCurrentHp;
}

u32 GetPlayerExp(void)
{
    return gSaveBlock1Ptr->playerExp;
}

u32 sub_08018470(void)
{
    return gSaveBlock1Ptr->unk60;
}

u16 GetPlayerAtk(u8 idx)
{
    return gSaveBlock1Ptr->playerAtkList[idx];
}

u16 GetPlayerDef(u8 idx)
{
    return gSaveBlock1Ptr->playerDefList[idx];
}

s16 GetPlayerAgl(u8 idx)
{
    return gSaveBlock1Ptr->playerAglList[idx];
}

u8 sub_080184BC(void)
{
    return gSaveBlock1Ptr->unk58;
}

u8 GetEquipWeapon(u8 idx)
{
    return gSaveBlock1Ptr->equipWeaponTypeList[idx];
}

u8 GetEquipItem(void)
{
    return gSaveBlock1Ptr->equipItemType;
}

u8 sub_080184F0(void)
{
    return gSaveBlock1Ptr->unk59;
}

u16 sub_08018500(u8 idx)
{
    return gSaveBlock1Ptr->unk4A[idx];
}

u16 GetBonusStats(void)
{
    return gSaveBlock1Ptr->bonusStats;
}

u16 sub_08018524(u8 a)
{
    if (a > 9)
    {
        a = 9;
    }
    return gUnk_08B80178[a];
}

u8 GetPlayerWeaponQuantity(void)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u32 i;
    u32 sum = 0;
    struct BagWeapon *bwBase, *bw;

    for (i = 0, bwBase = sb1->bagWeapon; i < 30; i += 5)
    {
        bw = bwBase;
        if (bw->weaponType != 0xff) sum++;
        bw = bwBase + 1;
        if (bw->weaponType != 0xff) sum++;
        bw = bwBase + 2;
        if (bw->weaponType != 0xff) sum++;
        bw = bwBase + 3;
        if (bw->weaponType != 0xff) sum++;
        bw = bwBase + 4;
        if (bw->weaponType != 0xff) sum++;
        bwBase += 5;
    }
    return sum;
}

u8 sub_08018598(void)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u32 i;
    u32 sum = 0;
    struct BagWeapon *bwBase, *bw, *bwBase2;

    for (i = 0, bwBase = sb1->bagWeapon; i < 30; i += 5)
    {
        bwBase2 = bwBase;
        bw = *&bwBase2; // TODO: Fix fake match
        if (bw->weaponType != 0xff && !(bw->unk0 & 1)) sum++;
        bw = bwBase2 + 1;
        if (bw->weaponType != 0xff && !(bw->unk0 & 1)) sum++;
        bw = bwBase2 + 2;
        if (bw->weaponType != 0xff && !(bw->unk0 & 1)) sum++;
        bw = bwBase2 + 3;
        if (bw->weaponType != 0xff && !(bw->unk0 & 1)) sum++;
        bw = bwBase2 + 4;
        if (bw->weaponType != 0xff && !(bw->unk0 & 1)) sum++;
        bwBase += 5;
    }
    return sum;
}

u8 sub_08018624(void)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u32 i;
    u32 sum = 0;
    struct BagWeapon *bwBase, *bw, *bwBase2;
    for (i = 0, bwBase = sb1->bagWeapon; i < 30; i += 5)
    {
        bwBase2 = bwBase;
        bw = *&bwBase2; // TODO: Fix fake match
        if (bw->weaponType != 0xff && bw->unk0 & 1) sum++;
        bw = bwBase2 + 1;
        if (bw->weaponType != 0xff && bw->unk0 & 1) sum++;
        bw = bwBase2 + 2;
        if (bw->weaponType != 0xff && bw->unk0 & 1) sum++;
        bw = bwBase2 + 3;
        if (bw->weaponType != 0xff && bw->unk0 & 1) sum++;
        bw = bwBase2 + 4;
        if (bw->weaponType != 0xff && bw->unk0 & 1) sum++;
        bwBase += 5;
    }
    return sum;
}

u8 GetCertainWeaponQuantity(u8 type)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u32 i;
    u32 sum = 0;
    struct BagWeapon *bwBase, *bw;
    for (i = 0, bwBase = sb1->bagWeapon; i < 30; i += 5)
    {
        bw = bwBase;
        if (bw->weaponType == type) sum++;
        bw = bwBase + 1;
        if (bw->weaponType == type) sum++;
        bw = bwBase + 2;
        if (bw->weaponType == type) sum++;
        bw = bwBase + 3;
        if (bw->weaponType == type) sum++;
        bw = bwBase + 4;
        if (bw->weaponType == type) sum++;
        bwBase += 5;
    }
    return sum;
}

u8 sub_0801870C(u8 a)
{
    return gSaveBlock1Ptr->unk42C[a];
}

u8 GetWeaponType(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponType;
}

s16 GetWeaponAtk(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponAtk;
}

s16 GetWeaponDef(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponDef;
}

s16 GetWeaponAgl(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponAgl;
}


u16 GetWeaponCurrentDur(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponCurrentDur;
}

u16 GetWeaponMaxDur(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponMaxDur;
}

s16 GetWeaponInitAtk(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponInitAtk;
}

s16 GetWeaponInitDef(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponInitDef;
}

s16 GetWeaponInitAgl(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponInitAgl;
}

u16 GetWeaponInitDur(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponInitDur;
}

u8 GetWeaponTec(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponTec;
}

u8 sub_0801885C(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].unk0;
}

u8 GetWeaponSpecialEffect(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponSpecialEffect;
}

u8 GetWeaponSkill(u8 index)
{
    return gSaveBlock1Ptr->bagWeapon[index].weaponSkill;
}

u8 GetWeaponEnhanceItem(u8 wpIdx, u8 itemIdx)
{
    return gSaveBlock1Ptr->bagWeapon[wpIdx].enhanceItemList[itemIdx];
}

u8 sub_080188D0(u8 a)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    return bw[a].isGoodWeapon;
}

struct BagWeapon *sub_080188EC(u8 a)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    return &bw[a];
}

u16 *sub_08018908(void)
{
    return gSaveBlock1Ptr->guardimalAttrib.guardimalName;
}

u8 sub_08018914(void)
{
    return gSaveBlock1Ptr->guardimalAttrib.guardimalType;
}

u8 sub_08018924(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->guardimalLevel;
}

u16 sub_08018934(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->unk12;
}

u16 sub_08018944(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->guardimalHp;
}

u16 sub_08018954(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->guardimalMag;
}

u16 sub_08018964(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->guardimalAtk;
}

u16 sub_08018974(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->guardimalDef;
}

s16 sub_08018984(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->guardimalAgl;
}

u8 sub_08018994(u8 a)
{
    return gSaveBlock1Ptr->unk90[a].unk0;
}

u8 sub_080189A8(u8 a)
{
    return gSaveBlock1Ptr->unk90[a].unk2;
}

u8 sub_080189BC(u8 a)
{
    return gSaveBlock1Ptr->unk90[a].unk3;
}

u8 sub_080189D0(u8 a)
{
    return gSaveBlock1Ptr->battleAidItemList[a];
}

u32 sub_080189E4(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->guardimalExp;
}

u32 sub_080189F4(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->guardimalNextExp;
}

u16 sub_08018A04(void)
{
    struct GuardimalAttrib *ga = &gSaveBlock1Ptr->guardimalAttrib;
    return ga->unk1C;
}

bool32 sub_08018A14(u8 wpIdx)
{
    if (wpIdx <= 0xef && (!(gSaveBlock1Ptr->weaponDexLighted[wpIdx / 8] >> (wpIdx & 7) & 1)))
    {
        return FALSE;
    }
    return TRUE;
}

bool32 sub_08018A50(u8 idx, u8 r1)
{
    if (gSaveBlock1Ptr->weaponSkillDex1[idx / 8 + r1 * 6] >> (idx & 7) & 1)
        return TRUE;
    return FALSE;
}

bool32 sub_08018A94(u8 idx, u8 r1)
{
    if (gSaveBlock1Ptr->weaponSpecialEffectDex1[idx / 8 + r1 * 6] >> (idx & 7) & 1)
        return TRUE;
    return FALSE;
}

bool32 sub_08018AD8(u8 idx)
{
    if (gSaveBlock1Ptr->unk54A[idx / 8] >> (idx & 7) & 1)
        return TRUE;
    return FALSE;
}

bool32 sub_08018B10(u16 idx)
{
    idx += 0xff9c;
    if ((gSaveBlock1Ptr->summonGuardianDex[idx / 8] >> (idx & 7) & 1))
    {
        return TRUE;
    }
    return FALSE;
}

u8 sub_08018B50(u16 itemIdx)
{
    return gSaveBlock1Ptr->itemQuantityList[itemIdx];
}
