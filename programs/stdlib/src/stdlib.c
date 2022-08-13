#include "stdlib.h"
#include "neuros.h"

void* malloc(size_t size){
    return neuros_malloc(size);
}

void free(void* ptr){

}