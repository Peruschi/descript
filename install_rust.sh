#!/bin/bash
#
# install rust
# 
# uage:
# 	chmod +x install_rust.sh
# 	./install_rust.sh

# install some rust software
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

