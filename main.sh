export MY_TOP_DIR=`pwd`

# Pi3, 64bit
#export KERNEL=kernel8
#export ARCH=arm64
#export CROSS_COMPILE=aarch64-linux-gnu-

# Pi3, 32bit
export KERNEL=kernel7
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

# Install Configuration
export MY_OUT_DIR=$MY_TOP_DIR/out
export MY_BOOT_DIR=/media/ttaem/boot
export MY_ROOTFS_DIR=/media/ttaem/rootfs


export KERNEL_DIR=$MY_TOP_DIR/linux


export MY_DEPLOY_DIR="pi@192.168.4.125:/home/pi/work"
