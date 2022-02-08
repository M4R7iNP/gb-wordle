#ifndef _WORDLIST_H
#define _WORDLIST_H

// #pragma bank 2

#include <stdbool.h>
#include <gbdk/platform.h>

void pick_random_word(unsigned char *ret) BANKED;
bool is_valid_answer_word(unsigned char search[6]) BANKED;

static const int word_count = 2315;

extern const uint8_t word_tree[5639];
#endif
