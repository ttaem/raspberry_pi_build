
kernel64:
	make -C linux bcmrpi3_defconfig Image modules dtbs

kernel32:
	make -C linux bcm2709_defconfig zImage modules dtbs

kernel_module_install:
	make -C linux INSTALL_MOD_PATH=$(MY_ROOTFS_DIR) modules_install

kernel_install:
	cp linux/arch/arm/boot/zImage $(MY_BOOT_DIR)/$(KERNEL).img
	cp linux/arch/arm/boot/dts/*.dtb $(MY_BOOT_DIR)/
	cp linux/arch/arm/boot/dts/overlays/*.dtb* $(MY_BOOT_DIR)/overlays/
	cp linux/arch/arm/boot/dts/overlays/README $(MY_BOOT_DIR)/overlays/
	

