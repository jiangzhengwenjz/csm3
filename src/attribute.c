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
    u16 i = 0;

    sb1->playerName[0] = nameBuffer[0];
    while (nameBuffer[i])
    {
        ++i;
        sb1->playerName[i] = nameBuffer[i];
    }
}

/* The same as SetPlayerName but uses unk16. */
void sub_08017B7C(u16 *buffer)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    u16 i = 0;

    sb1->unk16[0] = buffer[0];
    while (buffer[i])
    {
        ++i;
        sb1->unk16[i] = buffer[i];
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
        temp = sub_08018728(r4);
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
        temp = sub_08018728(r4 + 1);
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
        temp = sub_08018728(r4 + 2);
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
    else if (agl < ~127)
    {
        agl = ~127;
    }
    bw[wpIndex].weaponAgl = agl;
}

void sub_08017EA0(u8 r0, s16 r1)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (r1 > sub_080187B4(r0))
    {
        r1 = sub_080187B4(r0);
    }
    else if (r1 < 0)
    {
        r1 = 0;
    }
    bw[r0].weaponCurrentDur = r1;
}

void sub_08017EEC(u8 r0, s16 r1)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (r1 > 999)
    {
        r1 = 999;
    }
    else if(r1 <= 0)
    {
        r1 = 1;
    }
    bw[r0].weaponMaxDur = r1;
}

/* Why do they use a s16 argument to set a u8's value? Is this just copying and pasting? */
void sub_08017F2C(u8 r0, s16 r1)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (r1 > 255)
    {
        r1 = 255;
    }
    else if(r1 < 0)
    {
        r1 = 0;
    }
    bw[r0].weaponTec = r1;
}

void sub_08017F64(u8 r0, s16 r1)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (r1 > 999)
    {
        r1 = 999;
    }
    else if(r1 < 0)
    {
        r1 = 0;
    }
    bw[r0].weaponInitAtk = r1;
}

void sub_08017FA4(u8 r0, s16 r1)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (r1 > 999)
    {
        r1 = 999;
    }
    else if(r1 < 0)
    {
        r1 = 0;
    }
    bw[r0].weaponInitDef = r1;
}

void sub_08017FE4(u8 r0, s16 r1)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (r1 > 999)
    {
        r1 = 999;
    }
    else if(r1 < ~127)
    {
        r1 = ~127;
    }
    bw[r0].weaponInitAgl = r1;
}

void sub_0801802C(u8 r0, s16 r1)
{
    struct BagWeapon *bw = gSaveBlock1Ptr->bagWeapon;
    if (r1 > 999)
    {
        r1 = 999;
    }
    else if(r1 < 0)
    {
        r1 = 0;
    }
    bw[r0].weaponInitDur = r1;
}
