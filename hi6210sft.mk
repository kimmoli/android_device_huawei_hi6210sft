# Android Open Source Base System
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full.mk)

# Android Packages
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.r_submix.default \
	audio.usb.default \
	com.android.future.usb.accessory \
	gatord \
	hwclock \
	iontest \
	ion-unit-tests \
	libbt-vendor \
	libc2dcolorconvert \
	libdashplayer \
	libion \
	librs_jni \
	libsrec_jni \
	LiveWallpapers \
	LiveWallpapersPicker \
	runtime_libart_default \
	scp \
	sftp \
	ssh \
	ssh-keygen \
	start-ssh \
	sshd_config \
	sshd \
	uim wpa_supplicant \
	UsbSpeedSwitch \
	VisualizationWallpapers

# AAPT Settings
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


# Blobs
$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# BT
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
	$(LOCAL_PATH)/charger/battery_scale.png:root/res/images/charger/battery_scale.png

# Chromium 
PRODUCT_COPY_FILES := \
	$(LOCAL_PATH)/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so

# Device Path
LOCAL_PATH := device/huawei/hi6210sft

# File System
PRODUCT_PACKAGES += \
	e2fsck \
	make_ext4fs \
	minivold \
	setup_fs 

# HiSilicon 6210 Packages
PRODUCT_PACKAGES += \
	camera.hi6210sft \
	gralloc.hi6210sft \
	hwcomposer.hi6210sft \
	libGLES_android \
	libGLES_mali \
	keystore.hi6210sft \
	memtrack.hi6210sft \
	power.hi6210sft \
	sensors.hi6210sft

# Kernel, My Own Cannabis :D 
# ifeq ($(TARGET_PREBUILT_KERNEL),)
# 	LOCAL_KERNEL := device/huawei/hi6210sft/kernel
# else
# 	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
# endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

# keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	$(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	$(LOCAL_PATH)/keylayout/Vendor_0b05_Product_4500.kl:system/usr/keylayout/Vendor_0b05_Product_4500.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1bad_Product_f016.kl:system/usr/keylayout/Vendor_1bad_Product_f016.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1bad_Product_f023.kl:system/usr/keylayout/Vendor_1bad_Product_f023.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1bad_Product_f027.kl:system/usr/keylayout/Vendor_1bad_Product_f027.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1bad_Product_f036.kl:system/usr/keylayout/Vendor_1bad_Product_f036.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1d79_Product_0009.kl:system/usr/keylayout/Vendor_1d79_Product_0009.kl \
	$(LOCAL_PATH)/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
	$(LOCAL_PATH)/keylayout/Vendor_12bd_Product_d015.kl:system/usr/keylayout/Vendor_12bd_Product_d015.kl \
	$(LOCAL_PATH)/keylayout/Vendor_18d1_Product_2c40.kl:system/usr/keylayout/Vendor_18d1_Product_2c40.kl \
	$(LOCAL_PATH)/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
	$(LOCAL_PATH)/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c21d.kl:system/usr/keylayout/Vendor_046d_Product_c21d.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c219.kl:system/usr/keylayout/Vendor_046d_Product_c219.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
	$(LOCAL_PATH)/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
	$(LOCAL_PATH)/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
	$(LOCAL_PATH)/keylayout/Vendor_0079_Product_0011.kl:system/usr/keylayout/Vendor_0079_Product_0011.kl \
	$(LOCAL_PATH)/keylayout/Vendor_0583_Product_2060.kl:system/usr/keylayout/Vendor_0583_Product_2060.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1038_Product_1412.kl:system/usr/keylayout/Vendor_1038_Product_1412.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1689_Product_fd00.kl:system/usr/keylayout/Vendor_1689_Product_fd00.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1689_Product_fd01.kl:system/usr/keylayout/Vendor_1689_Product_fd01.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1689_Product_fe00.kl:system/usr/keylayout/Vendor_1689_Product_fe00.kl \
	$(LOCAL_PATH)/keylayout/Vendor_1949_Product_0401.kl:system/usr/keylayout/Vendor_1949_Product_0401.kl \
	$(LOCAL_PATH)/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl \
	$(LOCAL_PATH)/keylayout/Vendor_2378_Product_1008.kl:system/usr/keylayout/Vendor_2378_Product_1008.kl 

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml	

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/sbin/adbd:root/sbin/adbd \
	$(LOCAL_PATH)/ramdisk/sbin/check_root:root/sbin/check_root \
	$(LOCAL_PATH)/ramdisk/sbin/e2fsck_s:root/sbin/e2fsck_s \
	$(LOCAL_PATH)/ramdisk/sbin/emmc_partation:root/sbin/emmc_partation \
	$(LOCAL_PATH)/ramdisk/sbin/hdbd:root/sbin/hdbd \
	$(LOCAL_PATH)/ramdisk/sbin/healthd:root/sbin/healthd \
	$(LOCAL_PATH)/ramdisk/sbin/kmsgcat:root/sbin/kmsgcat \
	$(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/sbin/logctl_service \
	$(LOCAL_PATH)/ramdisk/sbin/ntfs-3gd:root/sbin/ntfs-3gd \
	$(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
	$(LOCAL_PATH)/ramdisk/sbin/teecd:root/sbin/teecd \
	$(LOCAL_PATH)/ramdisk/sbin/ueventd:root/sbin/ueventd \
	$(LOCAL_PATH)/ramdisk/sbin/watchdogd:root/sbin/watchdogd/ \
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

# Sepolicy Configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/sepolicy/file_contexts:root/file_contexts \
	$(LOCAL_PATH)/sepolicy/property_contexts:root/property_contexts \
	$(LOCAL_PATH)/sepolicy/seapp_contexts:root/seapp_contexts \
	$(LOCAL_PATH)/sepolicy/service_contexts:root/service_contexts 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_hi6210sft
PRODUCT_DEVICE := hi6210sft
