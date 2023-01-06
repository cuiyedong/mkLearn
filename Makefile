CC = gcc

CFG_INPUT ?=

# read cfg from defconfig
CFG_GLOBAL = $(CFG_INPUT)
CFG_GLOBAL += -DCFG_FILE
CFLAGS = -c -Wall -Werror -g -ggdb -std=gnu99 $(CFG_GLOBAL)

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
