#include <stdlib.h>
#include "amemcpy.h"

char* amemcpy(char* des,const char* src,int size)
{
    if (des == NULL || src == NULL)
    {
        return NULL;
    }

    char* tar = des;

    for (int i = 0;i < size;i++)
    {
        *des++ = *src++;
    }

    return tar;
}