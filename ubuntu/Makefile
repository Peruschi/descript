# Author: Peruschi
# Description:
# 	The sample Makefile of Kernel module

MODULE_NAME := module


PWD := $(shell pwd)
KVERSION := $(shell uname -r)
KERNEL_DIR := 


KMOD_SRC := $(PWD)/src
KMOD_INC := $(PWD)/include


obj-m += $(MODULE_NAME).o


.PHONY : all
all: $(MODULE_NAME).ko

.PHONY : clean
clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD)/src clean


$(NODULE_NAME).ko: $(wildcard $(KMOD_SRC)/*.c) 
