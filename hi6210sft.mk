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
	device/huawei/hi6210sft/ramdisk/init.audio.rc:root/init.audio.rc \
	device/huawei/hi6210sft/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
	device/huawei/hi6210sft/ramdisk/init.environ.rc:root/init.environ.rc \
	device/huawei/hi6210sft/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
	device/huawei/hi6210sft/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
	device/huawei/hi6210sft/ramdisk/init.hisi.rc:root/init.hisi.rc \
	device/huawei/hi6210sft/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
	device/huawei/hi6210sft/ramdisk/init.performance.rc:root/init.performance.rc \
	device/huawei/hi6210sft/ramdisk/init.platform.rc:root/init.platform.rc \
	device/huawei/hi6210sft/ramdisk/init.protocol.rc:root/init.protocol.rc \
	device/huawei/hi6210sft/ramdisk/init.rc:root/init.rc \
	device/huawei/hi6210sft/ramdisk/init.trace.rc:root/init.trace.rc \
	device/huawei/hi6210sft/ramdisk/init.usb.rc:root/init.usb.rc 


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft

