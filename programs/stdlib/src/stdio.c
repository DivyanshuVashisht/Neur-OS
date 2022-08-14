#include "stdio.h"
#include "neuros.h"

int putchar(int c){
    neuros_putchar((char)c);
    return 0;
}