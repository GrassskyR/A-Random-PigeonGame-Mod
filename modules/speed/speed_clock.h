#ifndef PHIGROS_SPEED_CLOCK_H
#define PHIGROS_SPEED_CLOCK_H
// Pitch-mode clock model. The chart timeline must run `speed` times faster
// than the audio object's internal clock, which itself advances with real
// time. speed_warp_time converts it into the chart timeline
// after the original AddressableAudioSource.Update has updated its clock.
typedef struct {
    float speed;    // playback rate, 1 = original
    float anchor_w; // warped time that matched anchor_r
    float anchor_r; // raw internal time when the anchor was taken
} speed_warp;

static inline float speed_warp_time(const speed_warp *w, float raw) {
    return w->anchor_w + (raw - w->anchor_r) * w->speed;
}

static inline void speed_warp_rebase(speed_warp *w, float raw_now, float warped_now) {
    w->anchor_r = raw_now;
    w->anchor_w = warped_now;
}

#endif
