#ifndef GUARD_VCOUNT_H
#define GUARD_VCOUNT_H

struct Unk_030031D0_1
{
    u16 *unk0;
    u16 unk4;
    u16 unk6;
};
/* size = 0x8 */

struct Unk_030031D0
{
    struct Unk_030031D0_1 unk0[4];
};
/* size = 0x20*/

extern u16 gUnk_03003230;
extern struct Unk_030031D0 gUnk_030031D0[];

#endif
