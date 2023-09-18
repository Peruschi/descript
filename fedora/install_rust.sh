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


# Rust-for-linux
# install a specific version of rustc
rustup override set $(scripts/min-tool-version.sh rustc)
# install rustc-src (standard library)
rustup component add rust-src
# install bindgen
cargo install --locked --version $(scripts/min-tool-version.sh bindgen) bindgen
# compile Rust-for-linux
make LLVM=1 allnoconfig qemu-busybox-min.config rust.config
