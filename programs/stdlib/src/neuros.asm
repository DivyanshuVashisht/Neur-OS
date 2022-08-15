[BITS 32]

section .asm

global print:function
global neuros_getkey:function
global neuros_putchar: function
global neuros_malloc:function
global neuros_free:function
global neuros_process_load_start:function

; void print(const char* message)
print:
    push ebp
    mov ebp, esp
    push dword[ebp+8]
    mov eax, 1 ; Command print
    int 0x80
    add esp, 4
    pop ebp
    ret

; int getkey()
neuros_getkey:
    push ebp
    mov ebp, esp
    mov eax, 2 ; Command getkey
    int 0x80
    pop ebp
    ret

; void neuros_putchar(char c)
neuros_putchar:
    push ebp
    mov ebp, esp
    mov eax, 3 ; Command putchar
    push dword[ebp+8] ; Variable "c"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void* neuros_malloc(size_t size)
neuros_malloc:
    push ebp
    mov ebp, esp
    mov eax, 4 ; Command malloc (Allocates memory for the process)
    push dword[ebp+8] ; Variable "size"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void neuros_free(void* ptr)
neuros_free:
    push ebp
    mov ebp, esp
    mov eax, 5 ; Command 5 free (Frees the allocated memory for this process)
    push dword[ebp+8] ; variable "ptr"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void neuros_process_load_start(const char* filename)
neuros_process_load_start:
    push ebp
    mov ebp, esp 
    mov eax, 6 ; Command 6 process load start (starts a process)
    push dword[ebp+8] ; Variable "filename"
    int 0x80
    add esp, 4
    pop ebp
    ret