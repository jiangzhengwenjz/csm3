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
/* The structure of this func is the same to the upper one. But after checking the memory, unk16 is not where the name array lays. */

void sub_08017BB4(u8 r0)
{
    gSaveBlock1Ptr->playerGender = r0;
    sub_08012F0C(0x182,r0); // This apprears in main. Maybe I should figure out what this func does. 
}

void sub_08017BD4(u8 r0)
{
    gSaveBlock1Ptr->playerLevel = r0;
}

void sub_08017BE0(u8 r0, u8 r1)
{
    gSaveBlock1Ptr->forgeLevelList[r0] = r1;
}

void sub_08017BF4(u16 r0)
{
    gSaveBlock1Ptr->playerMaxHp = r0;
}

void sub_08017C00(u16 r0)
{
    if (r0 > gSaveBlock1Ptr->playerMaxHp)
    {
        gSaveBlock1Ptr->playerCurrentHp = gSaveBlock1Ptr->playerMaxHp;
    }
    else
    {
        gSaveBlock1Ptr->playerCurrentHp = r0;
    }
}

void sub_08017C20(u32 r0)
{
    struct SaveBlock1 *sb1 = gSaveBlock1Ptr;
    if (r0 > 99999999)
    {
        r0 = 99999999;
    }
    sb1->playerExp = r0;
}
/* The really first one. It keeps showing bhi until I switched the order of if else. Then I realize I can directly use r0 instead of a new variable to remove else. Finally, it matched. */
