#!/bin/bash
#
# install rust
# 
# uage:
# 	chmod +x install_rust.sh
# 	./install_rust.sh


# install rust tools
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh
# refresh bash
source $HOME/.cargo/env

# installation location is at ~/.cargo/bin
# References: 
# 	https://www.rust-lang.org/tools/install
