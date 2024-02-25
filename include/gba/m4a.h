#ifndef GUARD_M4A_INTERNAL_H
#define GUARD_M4A_INTERNAL_H

#include "gba/gba.h"

// ASCII encoding of 'Smsh' in reverse
// This is presumably short for SMASH, the developer of MKS4AGB.
#define ID_NUMBER 0x68736D53

#define C_V 0x40 // center value for PAN, BEND, and TUNE

#define SOUND_MODE_REVERB_VAL   0x0000007F
#define SOUND_MODE_REVERB_SET   0x00000080
#define SOUND_MODE_MAXCHN       0x00000F00
#define SOUND_MODE_MAXCHN_SHIFT 8
#define SOUND_MODE_MASVOL       0x0000F000
#define SOUND_MODE_MASVOL_SHIFT 12
#define SOUND_MODE_FREQ_05734   0x00010000
#define SOUND_MODE_FREQ_07884   0x00020000
#define SOUND_MODE_FREQ_10512   0x00030000
#define SOUND_MODE_FREQ_13379   0x00040000
#define SOUND_MODE_FREQ_15768   0x00050000
#define SOUND_MODE_FREQ_18157   0x00060000
#define SOUND_MODE_FREQ_21024   0x00070000
#define SOUND_MODE_FREQ_26758   0x00080000
#define SOUND_MODE_FREQ_31536   0x00090000
#define SOUND_MODE_FREQ_36314   0x000A0000
#define SOUND_MODE_FREQ_40137   0x000B0000
#define SOUND_MODE_FREQ_42048   0x000C0000
#define SOUND_MODE_FREQ         0x000F0000
#define SOUND_MODE_FREQ_SHIFT   16
#define SOUND_MODE_DA_BIT_9     0x00800000
#define SOUND_MODE_DA_BIT_8     0x00900000
#define SOUND_MODE_DA_BIT_7     0x00A00000
#define SOUND_MODE_DA_BIT_6     0x00B00000
#define SOUND_MODE_DA_BIT       0x00B00000
#define SOUND_MODE_DA_BIT_SHIFT 20

struct WaveData
{
    /*0x00*/ u16 type;
    /*0x02*/ u16 status;
    /*0x04*/ u32 freq;
    /*0x08*/ u32 loopStart;
    /*0x0C*/ u32 size; // number of samples
    /*0x10*/ s8 data[1]; // samples
}; /*size = not determined*/

#define TONEDATA_TYPE_CGB    0x07
#define TONEDATA_TYPE_FIX    0x08
#define TONEDATA_TYPE_SPL    0x40 // key split
#define TONEDATA_TYPE_RHY    0x80 // rhythm

#define TONEDATA_P_S_PAN    0xc0
#define TONEDATA_P_S_PAM    TONEDATA_P_S_PAN

struct ToneData
{
    /*0x0*/ u8 type;
    /*0x1*/ u8 key;
    /*0x2*/ u8 length; // sound length (compatible sound)
    /*0x3*/ u8 pan_sweep; // pan or sweep (compatible sound ch. 1)
    /*0x4*/ struct WaveData *wav;
    /*0x8*/ u8 attack;
    /*0x9*/ u8 decay;
    /*0xA*/ u8 sustain;
    /*0xB*/ u8 release;
}; /*size = 0xC*/

struct CgbChannel
{
    /*0x00*/ u8 sf;
    /*0x01*/ u8 ty;
    /*0x02*/ u8 rightVolume;
    /*0x03*/ u8 leftVolume;
    /*0x04*/ u8 at;
    /*0x05*/ u8 de;
    /*0x06*/ u8 su;
    /*0x07*/ u8 re;
    /*0x08*/ u8 ky;
    /*0x09*/ u8 ev;
    /*0x0A*/ u8 eg;
    /*0x0B*/ u8 ec;
    /*0x0C*/ u8 echoVolume;
    /*0x0D*/ u8 echoLength;
    /*0x0E*/ u8 d1;
    /*0x0F*/ u8 d2;
    /*0x10*/ u8 gt;
    /*0x11*/ u8 mk;
    /*0x12*/ u8 ve;
    /*0x13*/ u8 pr;
    /*0x14*/ u8 rp;
    /*0x15*/ u8 d3[3];
    /*0x18*/ u8 d5;
    /*0x19*/ u8 sg;
    /*0x1A*/ u8 n4;
    /*0x1B*/ u8 pan;
    /*0x1C*/ u8 panMask;
    /*0x1D*/ u8 mo;
    /*0x1E*/ u8 le;
    /*0x1F*/ u8 sw;
    /*0x20*/ u32 fr;
    /*0x24*/ u32 *wp;
    /*0x28*/ u32 cp;
    /*0x2C*/ u32 tp;
    /*0x30*/ u32 pp;
    /*0x34*/ u32 np;
    /*0x38*/ u8 d4[8];
}; /*size = 0x40*/

struct MusicPlayerTrack;

struct SoundChannel
{
    /*0x00*/ u8 status;
    /*0x01*/ u8 type;
    /*0x02*/ u8 rightVolume;
    /*0x03*/ u8 leftVolume;
    /*0x04*/ u8 attack;
    /*0x05*/ u8 decay;
    /*0x06*/ u8 sustain;
    /*0x07*/ u8 release;
    /*0x08*/ u8 ky;
    /*0x09*/ u8 ev;
    /*0x0A*/ u8 er;
    /*0x0B*/ u8 el;
    /*0x0C*/ u8 echoVolume;
    /*0x0D*/ u8 echoLength;
    /*0x0E*/ u8 d1;
    /*0x0F*/ u8 d2;
    /*0x10*/ u8 gt;
    /*0x11*/ u8 mk;
    /*0x12*/ u8 ve;
    /*0x13*/ u8 pr;
    /*0x14*/ u8 rp;
    /*0x15*/ u8 d3[3];
    /*0x18*/ u32 ct;
    /*0x1C*/ u32 fw;
    /*0x20*/ u32 freq;
    /*0x24*/ struct WaveData *wav;
    /*0x28*/ u32 cp;
    /*0x2C*/ struct MusicPlayerTrack *track;
    /*0x30*/ u32 pp;
    /*0x34*/ u32 np;
    /*0x38*/ u32 d4;
    /*0x3C*/ u16 xpi;
    /*0x3E*/ u16 xpc;
}; /*size = 0x40*/

#define MAX_DIRECTSOUND_CHANNELS 12

#define PCM_DMA_BUF_SIZE 1584 // size of Direct Sound buffer

struct SoundInfo
{
    // This field is normally equal to ID_NUMBER but it is set to other
    // values during sensitive operations for locking purposes.
    // This field should be volatile but isn't. This could potentially cause
    // race conditions.
    u32 ident;

    vu8 pcmDmaCounter;

    // Direct Sound
    u8 reverb;
    u8 maxChans;
    u8 masterVolume;
    u8 freq;

    u8 mode;
    u8 c15;
    u8 pcmDmaPeriod; // number of V-blanks per PCM DMA
    u8 maxLines;
    u8 gap[3];
    s32 pcmSamplesPerVBlank;
    s32 pcmFreq;
    s32 divFreq;
    struct CgbChannel *cgbChans;
    u32 func;
    u32 intp;
    void (*CgbSound)(void);
    void (*CgbOscOff)(u8);
    u32 (*MidiKeyToCgbFreq)(u8, u8, u8);
    u32 MPlayJumpTable;
    void *plynote;
    void (*ExtVolPit)(void);
    u8 gap2[16];
    struct SoundChannel chans[MAX_DIRECTSOUND_CHANNELS];
    s8 pcmBuffer[PCM_DMA_BUF_SIZE];
};

struct SongHeader
{
    /*0x0*/ u8 trackCount;
    /*0x1*/ u8 blockCount;
    /*0x2*/ u8 priority;
    /*0x3*/ u8 reverb;
    /*0x4*/ struct ToneData *tone;
    /*0x8*/ u8 *part[1];
};

#define MPT_FLG_VOLSET 0x01
#define MPT_FLG_VOLCHG 0x03
#define MPT_FLG_PITSET 0x04
#define MPT_FLG_PITCHG 0x0C
#define MPT_FLG_START  0x40
#define MPT_FLG_EXIST  0x80

struct MusicPlayerTrack
{
    /*0x00*/ u8 flags;
    /*0x01*/ u8 wait;
    /*0x02*/ u8 patternLevel;
    /*0x03*/ u8 repN;
    /*0x04*/ u8 gateTime;
    /*0x05*/ u8 key;
    /*0x06*/ u8 velocity;
    /*0x07*/ u8 runningStatus;
    /*0x08*/ u8 keyM;
    /*0x09*/ u8 pitM;
    /*0x0A*/ s8 keyShift;
    /*0x0B*/ s8 keyShiftX;
    /*0x0C*/ s8 tune;
    /*0x0D*/ u8 pitX;
    /*0x0E*/ s8 bend;
    /*0x0F*/ u8 bendRange;
    /*0x10*/ u8 volMR;
    /*0x11*/ u8 volML;
    /*0x12*/ u8 vol;
    /*0x13*/ u8 volX;
    /*0x14*/ s8 pan;
    /*0x15*/ s8 panX;
    /*0x16*/ s8 modM;
    /*0x17*/ u8 mod;
    /*0x18*/ u8 modT;
    /*0x19*/ u8 lfoSpeed;
    /*0x1A*/ u8 lfoSpeedC;
    /*0x1B*/ u8 lfoDelay;
    /*0x1C*/ u8 lfoDelayC;
    /*0x1D*/ u8 priority;
    /*0x1E*/ u8 echoVolume;
    /*0x1F*/ u8 echoLength;
    /*0x20*/ struct SoundChannel *chan;
    /*0x24*/ struct ToneData tone;
    /*0x30*/ u8 gap[10];
    /*0x3A*/ u16 unk_3A;
    /*0x3C*/ u32 unk_3C;
    /*0x40*/ u8 *cmdPtr;
    /*0x44*/ u8 *patternStack[3];
}; /*size = 0x50*/

#define MUSICPLAYER_STATUS_TRACK 0x0000ffff
#define MUSICPLAYER_STATUS_PAUSE 0x80000000

#define MAX_MUSICPLAYER_TRACKS 16

#define TEMPORARY_FADE  0x0001
#define FADE_IN         0x0002
#define FADE_VOL_MAX    64
#define FADE_VOL_SHIFT  2

struct MusicPlayerInfo
{
    /*0x00*/ struct SongHeader *songHeader;
    /*0x04*/ u32 status;
    /*0x08*/ u8 trackCount;
    /*0x09*/ u8 priority;
    /*0x0A*/ u8 cmd;
    /*0x0B*/ u8 unk_B;
    /*0x0C*/ u32 clock;
    /*0x10*/ u8 gap[8];
    /*0x18*/ u8 *memAccArea;
    /*0x1C*/ u16 tempoD;
    /*0x1E*/ u16 tempoU;
    /*0x20*/ u16 tempoI;
    /*0x22*/ u16 tempoC;
    /*0x24*/ u16 fadeOI;
    /*0x26*/ u16 fadeOC;
    /*0x28*/ u16 fadeOV;
    /*0x2C*/ struct MusicPlayerTrack *tracks;
    /*0x30*/ struct ToneData *tone;
    /*0x34*/ u32 ident;
    /*0x38*/ u32 func;
    /*0x3C*/ u32 intp;
}; /* size = 0x40 */

struct MusicPlayer
{
    struct MusicPlayerInfo *info;
    struct MusicPlayerTrack *track;
    u8 unk_8;
    u16 unk_A;
};

struct Song
{
    struct SongHeader *header;
    u16 ms;
    u16 me;
};

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];

extern u8 gMPlayMemAccArea[0x10];

extern char SoundMainRAM[];

typedef void (*MPlayFunc)();
extern MPlayFunc gMPlayJumpTable[36];
extern struct MusicPlayerInfo gUnk_030016A0;

typedef void (*XcmdFunc)(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
extern const XcmdFunc gXcmdTable[];

extern struct CgbChannel gCgbChans[4];
extern const u8 gCgb3Vol[];

extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];

extern char gNumMusicPlayers[];
extern char gMaxLines[];

#define NUM_MUSIC_PLAYERS ((u16)gNumMusicPlayers)
#define MAX_LINES ((u32)gMaxLines)

u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void);
void TrackStop(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track);
void MPlayMain(void);
void RealClearChain(void *x);

void MPlayContinue(struct MusicPlayerInfo *mplayInfo);
void MPlayStart(struct MusicPlayerInfo *mplayInfo, struct SongHeader *songHeader);
void MPlayStop(struct MusicPlayerInfo *mplayInfo);
void FadeOutBody(struct MusicPlayerInfo *mplayInfo);
void TrkVolPitSet(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track);
void MPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed);
void Clear64byte(void *addr);
void SoundInit(struct SoundInfo *soundInfo);
void MPlayExtender(struct CgbChannel *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track, u8 a3);
void CgbSound(void);
void CgbOscOff(u8);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void nullsub_141(void);
void MPlyJmpTblCopy(MPlayFunc *);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);
void m4aMPlayAllStop(void);
void m4aSoundVSync(void);
void m4aSoundMain(void);
void m4aSoundInit(void);
void m4aSongNumStartOrChange(u16);
void m4aMPlayFadeIn(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aSongNumStop(u16 n);
void m4aSongNumStart(u16);

void m4aMPlayTempoControl(struct MusicPlayerInfo *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MusicPlayerTrack *track);
void m4aMPlayModDepthSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 lfoSpeed);

// sound command handler functions
void ply_fine(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_goto(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_patt(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_pend(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_rept(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_memacc(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_prio(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_tempo(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_keysh(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_voice(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_vol(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_pan(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_bend(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_bendr(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_lfos(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_lfodl(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_mod(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_modt(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_tune(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_port(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_endtie(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_note(struct MusicPlayerInfo *, struct MusicPlayerTrack *);

// extended sound command handler functions
void ply_xxx(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xwave(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xtype(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xatta(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xdeca(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xsust(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xrele(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xiecv(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xiecl(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xleng(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xswee(struct MusicPlayerInfo *, struct MusicPlayerTrack *);

#endif // GUARD_M4A_INTERNAL_H
