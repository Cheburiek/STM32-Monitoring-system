#ifndef __OBITSTRING_H__
#define __OBITSTRING_H__

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include "stm32f4xx_hal.h"

/**
 * @brief Splits a string based on specified start and end characters and their frequencies.
 *
 * This function extracts a substring from the input string (`str_in`) starting after the `frequency_char_begin`th occurrence 
 * of `char_begin` and ending at the `frequency_char_end`th occurrence of `char_end`.
 *
 * @param str_in Input string to be processed.
 * @param size_str_in Size of the input string.
 * @param char_begin Character marking the beginning of the substring.
 * @param frequency_char_begin Number of occurrences of the beginning character to skip.
 * @param char_end Character marking the end of the substring.
 * @param frequency_char_end Number of occurrences of the ending character to stop at.
 * @param str_out Output buffer to store the resulting substring.
 * @param size_str_out Size of the output buffer.
 */
void obit_split_string(uint8_t *str_in, uint8_t size_str_in, uint8_t char_begin, uint8_t frequency_char_begin, uint8_t char_end, uint8_t frequency_char_end, uint8_t *str_out, uint8_t size_str_out);

/**
 * @brief Compares two strings to determine if they match.
 *
 * This function compares the `str_real` string to the `str_expected` string and returns 1 if they are identical,
 * or 0 if they differ. The comparison considers the size of both strings.
 *
 * @param str_expected Expected string for comparison.
 * @param size_str_expected Size of the expected string.
 * @param str_real Real string to compare against the expected.
 * @param size_str_real Size of the real string.
 * @return 1 if strings match, 0 otherwise.
 */
int obit_strcmp(uint8_t *str_expected, uint8_t size_str_expected, uint8_t *str_real, uint8_t size_str_real);

#endif /* __OBITSTRING_H__ */