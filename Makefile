CC = gcc
INCLUDES_MAIN = -Ialgro/inc
CFLAGS = -c -Wall -Werror -g -ggdb -std=gnu99 -coverage

OBJECTS_MAIN = main.o amulti.o asum.o amemalloc.o

main : $(OBJECTS_MAIN)
	$(CC) $(CFLAGS) -o $@ $(OBJECTS_MAIN)

main.o : %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

include algro/algro.mk
include utils/utils.mk

.PHONY : clean
clean :
	rm -rf *.o
	rm -rf *.gcno

# 1. 多makefile 如何引用其他makefile的objects