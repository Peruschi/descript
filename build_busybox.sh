find . -print0 | cpio --null --format=newc -ov | gzip -9 > ../ramdisk.img
