qemu \
	-m 4G \
	-smp $(nproc) \
	-kernel bzImage \
	-initrd ramdisk.img \
	-nographic
