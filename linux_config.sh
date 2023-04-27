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
dnf install -y	ncurses-devel binutils
# c2rust
dnf install -y	clang llvm

# install some rust software
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

