#include "global.h"
#include "attribute.h"
#include "gba/syscall.h"
#include "data.h"
#include "functions.h"

void InitAttribTablePointer(void)
{
    gUnk_03006994 = &gUnk_02001000;  
    gpAttribTable = gAttribTable;
    sub_080154F0();  
}
