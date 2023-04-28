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

# enable rpmfusion
sudo dnf install -y \
     	https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y \
	https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# update system
dnf upgrade --refresh
dnf update

# install some software
dnf install -y \
	discord \
	vim bat tree \
	htop neofetch lshw\
	timeshift

# add flathub
 flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# update flatpak
flatpak update


# Notice
echo "Notice:"
echo "Timeshift: need to manually configure timeshift !!!"
echo "Discord: need to manually log in !!!"
echo ""
