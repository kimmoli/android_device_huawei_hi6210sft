#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/huawei/hi6210sft

# AAPT
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth
$(call inherit-product-if-exists, hardware/ti/wpan/ti-wpan-products.mk)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bluetooth/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf  \
        $(LOCAL_PATH)/bluetooth/TIInit_11.8.32.bts:system/etc/firmware/ti-connectivity/TIInit_11.8.32.bts \
        $(LOCAL_PATH)/bluetooth/TIInit_11.8.32.bts:system/etc/firmware/TIInit_11.8.32.bts \
        $(LOCAL_PATH)/bluetooth/wl18xx-fw-4.bin:system/etc/firmware/ti-connectivity/wl18xx-fw-4.bin

# Blobs
$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Charger
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
	$(LOCAL_PATH)/charger/battery_scale.png:root/res/images/charger/battery_scale.png

# Chromium
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so 

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
PRODUCT_TAGS += dalvik.gc.type-precise

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Hardware
PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
        frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
        frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml)

# Hi6210SFT Packages
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	gatord \
	hwclock \
	ion-unit-tests \
	iontest \
	libGLES_android \
	libion \
	runtime_libart_default \
	scp \
	sftp \
	ssh-keygen \
	sshd_config  \
	sshd \
	ssh \
	start-ssh \
	uim \
  	UsbSpeedSwitch \
 	wpa_supplicant

# OpenGL
ro.opengles.version=131072

# Overlay
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Ramdisk
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

# Recovery
PRODUCT_RECOVERY_FILES := \
	$(LOCAL_PATH)/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc
