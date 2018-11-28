//
// Created by pim on 16-1-18.
//

#include <random>
#include "stdlib.h"
#include "util.h"

uint32_t random_int(uint32_t min, uint32_t max) {
    return rand() % (max - min + 1) + min;
}

double random_probability() {
    return ((double) rand() / (RAND_MAX + 1.0));
}

bool random_bool() {
    return rand() / (RAND_MAX + 1.0) < 0.5;
}