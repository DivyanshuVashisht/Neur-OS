[BITS 32]

global _start
extern c_start
extern neuros_exit

section .asm

_start:
    call c_start
    call neuros_exit
    ret