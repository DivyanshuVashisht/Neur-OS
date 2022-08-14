#ifndef NEUROS_H
#define NEUROS_H

#include <stddef.h>

void print(const char* message);
int getkey();
void neuros_putchar(char c);
void* neuros_malloc(size_t size);
void neuros_free(void* ptr);

#endif