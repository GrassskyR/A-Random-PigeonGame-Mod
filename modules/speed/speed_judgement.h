#ifndef PHIGROS_SPEED_JUDGEMENT_H
#define PHIGROS_SPEED_JUDGEMENT_H

#include <stdint.h>

// Per-sample literal loads for Drag, Flick and Hold. No Unity objects accessed.
int speed_install_judgement_gates(uintptr_t base);
void speed_set_judgement_gates(float speed);

#endif
