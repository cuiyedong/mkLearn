#include <stdio.h>
#include <stdlib.h>
#include "algro/inc/amulti.h"
#include "algro/inc/asum.h"
#include "utils/memcpy/inc/amemalloc.h"
#include <string.h>
#ifdef CFG_ENABLE_MEMCPY
    #include "utils/memcpy/inc/amemcpy.h"
#endif

int main(int argc,char* argv[])
{
    int a = 3;
    int b = 4;

    printf("a + b is %d\n", asum(a,b));
    printf("a * b is %d\n", amulti(a,b));

    a += 4;
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

    for (int i = 0; i < argc; i++)
    {
        printf("%s",argv[i]);
    }

#ifdef CFG_ENABLE_MEMCPY
    if(pmem)
    {
        char* src = "hello world";
        char des[128] = {0};

        amemcpy(des, src, strlen(src));
        printf("des is %s\n",des);
    }
#endif
}