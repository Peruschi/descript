#!/bin/bash
#
# Setup linux config
# sudo required
# 
# uage:
# 	chmod +x linux_config.sh
# 	sudo ./linux_config.sh

# install some software
# default
dnf install -y	gcc gdb make glibc
# busybox
dnf install -y 	glibc-static
# linux
dnf install -y	kernel-devel ncurses-devel binutils
# c2rust
dnf install -y	clang llvm lld
