CC = gcc
CFLAGS = -c -Wall -Werror -g -ggdb -std=gnu99

SRCS = $(wildcard ./*.c)
SRCS += $(wildcard ./algro/**/*.c)
SRCS += $(wildcard ./utils/**/**/*.c)
OBJS_FP = $(patsubst %.c,%.o,$(SRCS))
OBJS = $(addprefix ./obj/, $(notdir $(OBJS_FP)))

main : $(OBJS)
	$(CC) -o $@ $(OBJS)

./obj/%.o : ./%.c
	$(CC) $(CFLAGS) -o $@ $<

include algro/algro.mk
include utils/utils.mk

.PHONY : clean
clean :
	rm -rf *.o
	rm -rf *.gcno
	rm -rf main
	rm -rf ./obj/*

log :
	@echo $(OBJS_FP)
	@echo $(OBJS)

# 1. 多makefile 如何引用其他makefile的objects
# 2. defconfig
# 3. 条件编译