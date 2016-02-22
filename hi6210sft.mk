# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)


DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

LOCAL_PATH := device/huawei/hi6210sft

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi


# Chromium
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so

PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/recovery/ueventd.hi6210sft.rc:recovery/root/ueventd.hi6210sft.rc \
    	$(LOCAL_PATH)/recovery/fstab.hi6210sft:recovery/root/fstab.hi6210sft \
    	$(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_COPY_FILES += \
   	 $(LOCAL_PATH)/recovery/system/bin/linker:recovery/root/system/bin/linker \
   	 $(LOCAL_PATH)/recovery/system/lib/oamdrv.ko:recovery/root/system/lib/oamdrv.ko \
    	 $(LOCAL_PATH)/recovery/system/lib/wifi.ko:recovery/root/system/lib/wifi.ko \
	
PRODUCT_COPY_FILES += \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/batt_level_scale.png:recovery/root/res/images/720x1280/batt_level_scale.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/batt_level_top.png:recovery/root/res/images/720x1280/batt_level_top.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/bg.png:recovery/root/res/images/720x1280/bg.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/empty_charge.png:recovery/root/res/images/720x1280/empty_charge.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/err_charge.png:recovery/root/res/images/720x1280/err_charge.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/full_charge.png:recovery/root/res/images/720x1280/full_charge.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_0.png:recovery/root/res/images/720x1280/number_0.png \
    	$(LOCAL_PATH)/recovery/res/images/720x1280/number_1.png:recovery/root/res/images/720x1280/number_1.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_2.png:recovery/root/res/images/720x1280/number_2.png \
    	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_3.png:recovery/root/res/images/720x1280/number_3.png \
    	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_4.png:recovery/root/res/images/720x1280/number_4.png \
    	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_5.png:recovery/root/res/images/720x1280/number_5.png \
    	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_6.png:recovery/root/res/images/720x1280/number_6.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_7.png:recovery/root/res/images/720x1280/number_7.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_8.png:recovery/root/res/images/720x1280/number_8.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/number_9.png:recovery/root/res/images/720x1280/number_9.png \
    	$(LOCAL_PATH)/recovery/res/images/720x1280/percent_5.png:recovery/root/res/images/720x1280/percent_5.png \
    	$(LOCAL_PATH)/recovery/res/images/720x1280/percent_10.png:recovery/root/res/images/720x1280/percent_10.png \
   	 $(LOCAL_PATH)/recovery/res/images/720x1280/percent_sign.png:recovery/root/res/images/720x1280/percent_sign.png


# Set zygote config
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft

$(call inherit-product-if-exists, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)
