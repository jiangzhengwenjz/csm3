#ifndef GUARD_ATTRIBUTE_H
#define GUARD_ATTRIBUTE_H

#include "global.h"

struct Roleattrib
{
    u8 filler0[0x78];
};

extern u32 *gUnk_03006994; //TODO:Correct type.
extern u32 gUnk_02001000;
extern const struct Roleattrib *gpAttribTable;
extern const struct Roleattrib gAttribTable[];

/* 
Why can I point a struct pointer to a struct array type? 
I get this from the internet, but I really don't understand. 
Isn't it unable to point something that has a different type? 
Don't understand. 
*/

extern void sub_080154F0();

#endif
