qemu \
	-m 4G \
	-a "nokaslr" \
	-smp $(nproc) \
	-kernel bzImage \
	-initrd ramdisk.img \
	-nographic
