#ifndef _OTHER_WORDS2_H
#define _OTHER_WORDS2_H

#include <stdbool.h>
#include <gbdk/platform.h>

bool is_valid_word2(unsigned char search[6]) BANKED;
bool search_between2(unsigned char search[6], uint16_t start, uint16_t end) BANKED;
extern const uint8_t other_word_tree2[10379];

#endif
