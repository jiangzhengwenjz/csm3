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
