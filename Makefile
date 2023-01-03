CC = gcc
INCLUDES_MAIN = -Ialgro/inc
VPATH = algro/src:utils/memcpy/src
CFLAGS = -c -Wall -Werror -g -ggdb -std=gnu99 -coverage

OBJECTS_MAIN = main.o amulti.o asum.o amemalloc.o

main : $(OBJECTS_MAIN)
	$(CC) $(CFLAGS) -o $@ $(OBJECTS_MAIN)

main.o : main.c
	$(CC) $(CFLAGS) -c main.c

include algro/Makefile
include utils/Makefile

.PHONY : clean
clean :
	rm -rf *.o
	rm -rf *.gcno

# 1. 多makefile 如何引用其他makefile的objects