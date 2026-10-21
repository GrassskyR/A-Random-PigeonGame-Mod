#ifndef PHIGROS_PRACTICE_CLOCK_H
#define PHIGROS_PRACTICE_CLOCK_H
#include <stdint.h>
// Match Seek's clock reset, but anchor it to the SCHEDULED playback epoch.
// A paused Seek's DSP epoch is stale by the time the countdown finishes.
static inline void practice_reset_clock(void *audio, double scheduled_dsp,
                                       double scheduled_mono) {
    char *a = (char *)audio;
    float target = *(float *)(a + 0x38);
    *(float *)(a + 0x40) = target;
    *(float *)(a + 0x78) = target;
    *(double *)(a + 0x50) = target;
    *(double *)(a + 0x58) = target;
    *(double *)(a + 0x60) = scheduled_mono;
    *(double *)(a + 0x68) = scheduled_dsp - target;
    *(double *)(a + 0x70) = target;
    *(int *)(a + 0x88) = 1;
    char *samples = *(char **)(a + 0x80);
    if (samples && *(int *)(samples + 0x18) > 0)
        *(float *)(samples + 0x20) = target;
}
#endif
