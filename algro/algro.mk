FILENAME := algro
INCLUDES_ALORO = -Ialgro/inc

amulti.o : algro/src/amulti.c
	$(CC) $(CFLAGS) $(INCLUDES_ALORO) -c $<
asum.o : algro/src/asum.c
	$(CC) $(CFLAGS) $(INCLUDES_ALORO) -c $<

#TODO 子makefile 的静态模式
# algro_OBJECT = algro/src/amulti.o
# algro_OBJECT : %.o: %.c
# 	$(CC) $(CFLAGS) $(INCLUDES_ALORO) -c $< -o $@