
kernel64:
	make -C $(KERNEL_DIR) bcmrpi3_defconfig Image modules dtbs

kernel32:
	make -C $(KERNEL_DIR) bcm2709_defconfig zImage modules dtbs

kernel_module_install:
	make -C $(KERNEL_DIR)  INSTALL_MOD_PATH=$(MY_ROOTFS_DIR) modules_install

kernel_install:
	cp $(KERNEL_DIR)arch/arm/boot/zImage $(MY_BOOT_DIR)/$(KERNEL).img
	cp $(KERNEL_DIR)/arch/arm/boot/dts/*.dtb $(MY_BOOT_DIR)/
	cp $(KERNEL_DIR)/arch/arm/boot/dts/overlays/*.dtb* $(MY_BOOT_DIR)/overlays/
	cp $(KERNEL_DIR)/arch/arm/boot/dts/overlays/README $(MY_BOOT_DIR)/overlays/
	

