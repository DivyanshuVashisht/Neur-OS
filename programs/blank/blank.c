#include "neuros.h"
#include "stdlib.h"
#include "stdio.h"

int main(int argc, char** argv){
    print("Hello how are you?\n");
    print(itoa(8763));
    putchar('Z');
    void* ptr = malloc(512);
    free (ptr);

    while(1){
        if (getkey() != 0){
            print("Key was pressed\n");
        }
    };
    return 0;
}