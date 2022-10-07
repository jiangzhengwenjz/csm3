#include "global.h"

extern void sub_08001B20(void);
extern void sub_08001B14(void);
extern void sub_08001A1C(void);
extern void sub_08001AEC(int);
extern void sub_08001C30(void);

extern int gUnk_03002968;

void sub_08001C98(void)
{
    sub_08001B20();
    gUnk_03002968=0;
    sub_08001B14();

    while (1)
    {
        sub_08001A1C();
        sub_08001AEC(1);
        sub_08001C30();
    }

}
