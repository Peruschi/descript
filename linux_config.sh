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
	qemu \
	gcc gdb clang make llvm ncurses-devel

# install some rust software
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

