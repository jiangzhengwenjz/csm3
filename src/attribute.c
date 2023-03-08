#include "global.h"
#include "attribute.h"
#include "data.h"
#include "functions.h"

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
    sub_08012F0C(0x182,gender); // This appears in main. 
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
