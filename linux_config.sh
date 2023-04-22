#!/bin/bash
#
# Setup linux config
# sudo required
# 
# uage:
# 	chmod +x linux_config.sh
# 	sudo ./linux_config.sh

# install some software
dnf install -y \
	busybox \
	qemu \
	gcc gdb clang make cmake llvm kernel-devel ncurses-devel elfutils-libelf-devel bison flex \

# install some rust software
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
rustup update

