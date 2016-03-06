# Android Open Source Project Base System
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Android Packages
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
	runtime_libart_default \
	setup_fs \
	uim-sysfs \
	UsbSpeedSwitch \
	VisualizationWallpapers

# AAPT Settings
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Blobs
$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# BT
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)

# Chromium 
PRODUCT_COPY_FILES := \
	device/huawei/hi6210sft/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so

# Device Path
LOCAL_PATH := device/huawei/hi6210sft

# HiSilicon 6210 Packages
PRODUCT_PACKAGES := \
	camera.hi6210sft \
	gralloc.hi6210sft \
	hwcomposer.hi6210sft \
	libGLES_android \
	libGLES_mali \
	keystore.hi6210sft \
	memtrack.hi6210sft \
	power.hi6210sft \
	sensors.hi6210sft	

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk & Recovery init.*.rc Files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
	$(LOCAL_PATH)/ramdisk/init:root/init \
	$(LOCAL_PATH)/ramdisk/init.5801.rc:root/init.5801.rc \
	$(LOCAL_PATH)/ramdisk/init.6165.rc:root/init.6165.rc \
	$(LOCAL_PATH)/ramdisk/init.10106.rc:root/init.10106.rc \
	$(LOCAL_PATH)/ramdisk/init.51054.rc:root/init.51054.rc \
	$(LOCAL_PATH)/ramdisk/init.102173.rc:root/init.102173.rc \
	$(LOCAL_PATH)/ramdisk/init.142782.rc:root/init.142782.rc \
	$(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc \
	$(LOCAL_PATH)/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
	$(LOCAL_PATH)/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
	$(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
	$(LOCAL_PATH)/ramdisk/init.device.rc:root/init.device.rc \
	$(LOCAL_PATH)/ramdisk/init.environ.rc:root/init.environ.rc \
	$(LOCAL_PATH)/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
	$(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/init.hisi.rc:root/init.hisi.rc \
	$(LOCAL_PATH)/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
	$(LOCAL_PATH)/ramdisk/init.performance.rc:root/init.performance.rc \
	$(LOCAL_PATH)/ramdisk/init.platform.rc:root/init.platform.rc \
	$(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc \
	$(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/init.tee.rc:root/init.tee.rc \
	$(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
	$(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
	$(LOCAL_PATH)/ramdisk/init.zygote64_32.rc:root/init.zygote64_32.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft
