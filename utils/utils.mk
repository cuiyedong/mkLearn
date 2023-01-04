INCLUDES_UTILS = -Iutils/memcpy/inc

OBJECTS_UTILS = amemalloc.o

amemalloc.o : utils/memcpy/src/amemalloc.c
	$(CC) $(INCLUDES_UTILS) -c $<
