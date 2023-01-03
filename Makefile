CC = gcc
INCLUDES = -Ialgro/inc

OBJECTS = main.o amulti.o asum.o amemalloc.o

main : $(OBJECTS)
	$(CC) -o $@ $(OBJECTS)

main.o : main.c
	$(CC) -c main.c

amulti.o : algro/src/amulti.c
	$(CC) $(INCLUDES) -c $<

asum.o : algro/src/asum.c
	$(CC) $(INCLUDES) -c $<


include utils/Makefile

.PHONY : clean
clean :
	rm -rf *.o

# 1. 多makefile 如何引用其他makefile的objects