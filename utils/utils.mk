INCLUDES_UTILS = -Iutils/memcpy/inc

OBJECTS_UTILS = amemalloc.o

# amemalloc.o : utils/memcpy/src/amemalloc.c
# 	$(CC) $(INCLUDES_UTILS) -c $<

# amemcpy.o : utils/memcpy/src/amemcpy.c
# 	$(CC) $(INCLUDES_UTILS) -c $<

./obj/%.o: utils/memcpy/**/%.c
	$(CC) $(CFLAGS) $(INCLUDES_UTILS) -o $@ $<
