$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Art
PRODUCT_RUNTIMES := runtime_libart_default

# Audio
PRODUCT_COPY_FILES += \
     	device/huawei/hi6210sft/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += audio.a2dp.default

# Chromium
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so

# Dalvik
$(call inherit-product-if-exists, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)

# Gatord
PRODUCT_PACKAGES += gatord

# Grallock
PRODUCT_PACKAGES += gralloc.hikey

# HW Clock
PRODUCT_PACKAGES += hwclock

# ION tests
PRODUCT_PACKAGES += iontest \
                    ion-unit-tests

# Libion for new double-buffering HDLCD driver
PRODUCT_PACKAGES += libion

# OpenSSh
PRODUCT_PACKAGES += ssh sftp scp sshd ssh-keygen sshd_config start-ssh uim wpa_supplicant

# Power HAL
PRODUCT_PACKAGES += \
    power.hi6210sft

# USB 
PRODUCT_PACKAGES += UsbSpeedSwitch

# Zygote
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_PACKAGES += libGLES_android

# Hardware
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
       frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
       frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
       frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
        frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
        frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml)

$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    	$(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# WPA
PRODUCT_COPY_FILES += \
       device/huawei/hi6210sft/bt-wifi-firmware-util/TIInit_11.8.32.bts:system/etc/firmware/ti-connectivity/TIInit_11.8.32.bts \
       device/huawei/hi6210sft/bt-wifi-firmware-util/TIInit_11.8.32.bts:system/etc/firmware/TIInit_11.8.32.bts \
       device/huawei/hi6210sft/bt-wifi-firmware-util/wl18xx-fw-4.bin:system/etc/firmware/ti-connectivity/wl18xx-fw-4.bin 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft
