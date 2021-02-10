
kernel64:
	make -C linux bcmrpi3_defconfig Image modules dtbs

kernel32:
	make -C linux bcm2709_defconfig Image modules dtbs

kernel_install:
	make -C linux INSTALL_MOD_PATH=$(MY_OUT_DIR) modules_install

