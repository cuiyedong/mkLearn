#include <stdio.h>
#include <stdlib.h>
#include "algro/inc/amulti.h"
#include "algro/inc/asum.h"
#include "utils/memcpy/inc/amemalloc.h"

int main(void)
{
    int a = 3;
    int b = 4;
    // char* src = "hello world";

    printf("a + b is %d\n", asum(a,b));
    printf("a * b is %d\n", amulti(a,b));

    char* pmem = amemAlloc(10);
    if (pmem)
    {
        printf("mem alloc successed \n");
    }
    else
    {
        printf("mem alloc failed \n");
    }
}