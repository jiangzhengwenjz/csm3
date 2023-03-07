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

