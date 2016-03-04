# Android Open Source Project Base System
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# AAPT Settings
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Blobs
$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Chromium 
PRODUCT_COPY_FILES := \
	device/huawei/hi6210sft/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so

# HI6210SFT Packages
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
	libbt-vendor \
	libc2dcolorconvert \
	libdashplayer \
	librs_jni \
	libsrec_jni \
	LiveWallpapers \
	LiveWallpapersPicker \
	make_ext4fs \
	minivold \
	power.hi6210sft \
	setup_fs \
	uim-sysfs \
	VisualizationWallpapers

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay

# Ramdisk & Recovery init.*.rc Files
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
	device/huawei/hi6210sft/ramdisk/init:root/init \
	device/huawei/hi6210sft/ramdisk/init.5801.rc:root/init.5801.rc \
	device/huawei/hi6210sft/ramdisk/init.6165.rc:root/init.6165.rc \
	device/huawei/hi6210sft/ramdisk/init.10106.rc:root/init.10106.rc \
	device/huawei/hi6210sft/ramdisk/init.51054.rc:root/init.51054.rc \
	device/huawei/hi6210sft/ramdisk/init.102173.rc:root/init.102173.rc \
	device/huawei/hi6210sft/ramdisk/init.142782.rc:root/init.142782.rc \
	device/huawei/hi6210sft/ramdisk/init.audio.rc:root/init.audio.rc \
	device/huawei/hi6210sft/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
	device/huawei/hi6210sft/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
	device/huawei/hi6210sft/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
	device/huawei/hi6210sft/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
	device/huawei/hi6210sft/ramdisk/init.device.rc:root/init.device.rc \
	device/huawei/hi6210sft/ramdisk/init.environ.rc:root/init.environ.rc \
	device/huawei/hi6210sft/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
	device/huawei/hi6210sft/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
	device/huawei/hi6210sft/ramdisk/init.hisi.rc:root/init.hisi.rc \
	device/huawei/hi6210sft/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
	device/huawei/hi6210sft/ramdisk/init.performance.rc:root/init.performance.rc \
	device/huawei/hi6210sft/ramdisk/init.platform.rc:root/init.platform.rc \
	device/huawei/hi6210sft/ramdisk/init.protocol.rc:root/init.protocol.rc \
	device/huawei/hi6210sft/ramdisk/init.rc:root/init.rc \
	device/huawei/hi6210sft/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
	device/huawei/hi6210sft/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
	device/huawei/hi6210sft/ramdisk/init.tee.rc:root/init.tee.rc \
	device/huawei/hi6210sft/ramdisk/init.trace.rc:root/init.trace.rc \
	device/huawei/hi6210sft/ramdisk/init.usb.rc:root/init.usb.rc \
	device/huawei/hi6210sft/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
	device/huawei/hi6210sft/ramdisk/init.zygote64_32.rc:root/init.zygote64_32.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.rc:root/ueventd.rc \
	device/huawei/hi6210sft/ramdisk/sbin/adbd:root/sbin/adbd \
	device/huawei/hi6210sft/ramdisk/sbin/check_root:root/sbin/check_root \
	device/huawei/hi6210sft/ramdisk/sbin/e2fsck_s:root/sbin/e2fsck_s \
	device/huawei/hi6210sft/ramdisk/sbin/emmc_partation:root/sbin/emmc_partation \
	device/huawei/hi6210sft/ramdisk/sbin/hdbd:root/sbin/hdbd \
	device/huawei/hi6210sft/ramdisk/sbin/healthd:root/sbin/healthd \
	device/huawei/hi6210sft/ramdisk/sbin/kmsgcat:root/sbin/kmsgcat \
	device/huawei/hi6210sft/ramdisk/sbin/logctl_service:root/sbin/logctl_service \
	device/huawei/hi6210sft/ramdisk/sbin/ntfs-3gd:root/sbin/ntfs-3gd \
	device/huawei/hi6210sft/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
	device/huawei/hi6210sft/ramdisk/sbin/teecd:root/sbin/teecd \
	device/huawei/hi6210sft/ramdisk/sbin/ueventd:root/sbin/ueventd \
	device/huawei/hi6210sft/ramdisk/sbin/watchdogd:root/sbin/watchdogd 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft

