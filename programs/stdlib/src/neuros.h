#ifndef NEUROS_H
#define NEUROS_H

#include <stddef.h>
#include <stdbool.h>

struct command_argument{
    char argument[512];
    struct command_argument* next;
};

struct process_arguments{
    int argc;
    char** argv;
};

void print(const char* message);
int neuros_getkey();
void neuros_putchar(char c);
void* neuros_malloc(size_t size);
void neuros_free(void* ptr);

struct command_argument* neuros_parse_command(const char* command, int max);
int neuros_getkeyblock();
void neuros_terminal_readline(char* out, int max, bool output_while_typing);
int neuros_system(struct command_argument* arguments);
void neuros_process_load_start(const char* filename);
void neuros_process_get_arguments(struct process_arguments* arguments);
int neuros_system_run(const char* command);
void neuros_exit();

#endif