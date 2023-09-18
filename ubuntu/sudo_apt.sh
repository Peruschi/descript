#!/bin/bash
#
# Setup linux config
# sudo required
# 
# uage:
# 	chmod +x sudo_apt.sh
# 	sudo ./sudo_apt.sh


COMMAND = install
PARAMETER = -y


# update packets information
apt updade
apt upgrade
# text editor
apt $COMMAND $PARAMETER vim
# read file
apt $COMMAND $PARAMETER bat
# read directory
apt $COMMAND $PARAMETER tree
# read system information
apt $COMMAND $PARAMETER htop
# read hardware information
apt $COMMAND $PARAMETER lshw neofetch
# c, c++ language compiler
apt $COMMAND $PARAMETER gcc g++ clang
# linker
apt $COMMAND $PARAMETER lld
# compile optimizer
apt $COMMAND $PARAMETER llvm
# debuger
apt $COMMAND $PARAMETER gdb
# trace kernel
apt $COMMAND $PARAMETER trace-cmd
# compilation record
apt $COMMAND $PARAMETER make
# make interface
apt $COMMAND $PARAMETER libncurses-dev
# network tools (network information)
apt $COMMAND $PARAMETER net-tools
# check server(host) port
apt $COMMAND $PARAMETER nmap
