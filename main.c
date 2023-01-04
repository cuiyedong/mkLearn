#include <stdio.h>
#include <stdlib.h>
#include "algro/inc/amulti.h"
#include "algro/inc/asum.h"
#include "utils/memcpy/inc/amemalloc.h"
#include "utils/memcpy/inc/amemcpy.h"
#include <string.h>

int main(void)
{
    int a = 3;
    int b = 4;
    char* src = "hello world";
    char des[128] = {0};

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

    if(pmem)
    {
        amemcpy(des, src, strlen(src));
        printf("des is %s\n",des);
    }
}