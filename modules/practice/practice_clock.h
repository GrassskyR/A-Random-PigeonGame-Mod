#ifndef PHIGROS_PRACTICE_CLOCK_H
#define PHIGROS_PRACTICE_CLOCK_H
#include <stdint.h>
#include "phigros_version.h"
// Match Seek's clock reset, but anchor it to the SCHEDULED playback epoch.
// A paused Seek's DSP epoch is stale by the time the countdown finishes.
static inline void practice_reset_clock(void *audio, double scheduled_dsp,
                                       double scheduled_mono) {
    char *a = (char *)audio;
    float target = *(float *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_STARTTIME);
    *(float *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_TIME) = target;
    *(float *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_INTERNALTIME) = target;
    *(double *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_LASTFRAMEDSPTIME) = target;
    *(double *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_TARGETLASTFRAMEDSPTIME) = target;
    *(double *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_LASTFRAMEMONOTIME) = scheduled_mono;
    *(double *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_DSPTIMEOFFSET) = scheduled_dsp - target;
    *(double *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_DSPTIME) = target;
    *(int *)(a + PH_F_ADDRESSABLEAUDIOSOURCE_DSPVALUEFRAMECOUNT) = 1;
    char *samples = *(char **)(a + PH_F_ADDRESSABLEAUDIOSOURCE_LASTFRAMEDSPTIMELIST);
    if (samples && *(int *)(samples + PH_F_ARRAY_LENGTH) > 0)
        *(float *)(samples + PH_F_ARRAY_DATA) = target;
}
#endif
