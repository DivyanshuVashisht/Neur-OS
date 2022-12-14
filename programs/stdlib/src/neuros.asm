[BITS 32]

section .asm

global print:function
global neuros_getkey:function
global neuros_putchar: function
global neuros_malloc:function
global neuros_free:function
global neuros_process_load_start:function
global neuros_process_get_arguments:function
global neuros_system:function
global neuros_exit: function

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

; int neuros_system(struct command_argument* arguments)
neuros_system:
    push ebp
    mov ebp, esp
    mov eax, 7 ; Command 7 process_system (runs a system command based on the arguments)
    push dword[ebp+8]
    int 0x80
    add esp, 4
    pop ebp
    ret

; void neuros_process_get_arguments(struct process_arguments* arguments)
neuros_process_get_arguments:
    push ebp
    mov ebp, esp
    mov eax, 8 ; Command 8
    push dword[ebp+8] ; Variable arguments
    int 0x80
    add esp, 4
    pop ebp
    ret

; void neuros_exit()
neuros_exit:
    push ebp
    mov ebp, esp
    mov eax, 9 ; Command 9 process exit
    int 0x80
    pop ebp
    ret