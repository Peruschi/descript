#!/bin/bash
#
# Fedora Script after Setup
# sudo required
#
# usge:
# 	chmod +x sudo_script.sh
# 	sudo ./sudo_script.sh

# add to dnf config file
echo "fastestmirror=True" >> /etc/dnf/dnf.conf
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf

# update system
dnf upgrade  --refresh
dnf update

# install some software
dnf install -y \
	git \
	vim code bat \
	htop neofetch \
	timeshift

# add flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# update flatpak
flatpak update


# Notice
echo "Notice:"
echo "timeshift need to manually configure timeshift !!!"
echo ""
