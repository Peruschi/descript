mkdir -pv {bin, sbin, etc, dev, proc, sys, mnt, tmp, usr/{bin,sbin}}


touch etc/fstab
echo "
# <file system>	<mount point>	<type>	<optios>	<dump>	<pass>
proc		/proc		proc	defaults	0	0
tmpfs		/tmp		tmpfs	defaults	0	0
sysfs		/sys		sysfs	defaults	0	0
" >> etc/fstab

mkdir etc/init.d
touch rcS
echo "
#!/bin/sh
PATH=/sbin:/bin:/usr/sbin:/usr/bin:$PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib:/usr/lib
export PATH LD_LIBRARY_PATH
mount -a
mkdir /dev/pts
mount -t devpts devpts /dev/pts
echo /sbin/mdev > /proc/sys/kernel/hotplug
mdev -s
" >> etc/init.d/rcS

touch inittab
echo "
#etc/inittab
::stsinit:/etc/init.d/rcS
console::askfirst:-/bin/sh
::restart:/sbin/init
::ctrlaltdel:/sbin/reboot
::shutdown:/bin/umount -a -r
::shutdown:/sbin/swapoff -a
" >> etc/inittab


find . -print0 | cpio --null --format=newc -ov | gzip -9 > ../ramdisk.img
