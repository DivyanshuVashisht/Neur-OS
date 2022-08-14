#ifndef NEUROS_H
#define NEUROS_H

#include <stddef.h>
#include <stdbool.h>

void print(const char* message);
int neuros_getkey();
void neuros_putchar(char c);
void* neuros_malloc(size_t size);
void neuros_free(void* ptr);

int neuros_getkeyblock();
void neuros_terminal_readline(char* out, int max, bool output_while_typing);

#endif