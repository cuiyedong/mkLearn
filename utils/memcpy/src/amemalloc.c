#include <stdlib.h>
#include "amemalloc.h"

char* amemAlloc(int size)
{
    return malloc(size * sizeof(char));
}