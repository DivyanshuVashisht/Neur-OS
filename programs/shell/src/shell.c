#include "shell.h"
#include "stdio.h"
#include "stdlib.h"
#include "neuros.h"

int main(int argc, char** argv){
    print("Neur-OS v1.0.0\n");
    while(1) {
        print("> ");
        char buf[1024];
        neuros_terminal_readline(buf, sizeof(buf), true);
        print("\n");
        neuros_system_run(buf);
        
        print("\n");
    }
    return 0;
}