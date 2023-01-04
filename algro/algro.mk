FILENAME := algro
INCLUDES_ALORO = -Ialgro/inc

# amulti.o : algro/src/amulti.c
# 	$(CC) $(CFLAGS) $(INCLUDES_ALORO) -o $@ $<
# asum.o : algro/src/asum.c
# 	$(CC) $(CFLAGS) $(INCLUDES_ALORO) -o $@ $<

./obj/%.o: algro/src/%.c
	$(CC) $(CFLAGS) $(INCLUDES_ALORO) -o $@ $<
