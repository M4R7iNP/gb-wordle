#ifndef _OTHER_WORDS_H
#define _OTHER_WORDS_H

#include <stdbool.h>
#include <gbdk/platform.h>

bool is_valid_word(unsigned char search[6]) BANKED;
bool search_between(unsigned char search[6], uint16_t start, uint16_t end) BANKED;
extern const uint8_t other_word_tree[10974];
extern const uint16_t index[26];

#endif
