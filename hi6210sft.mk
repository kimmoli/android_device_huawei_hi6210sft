$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

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

# TWRP Recovery
PRODUCT_COPY_FILES += \
 	device/huawei/hi6210sft/twrp/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p8litekirin
PRODUCT_DEVICE := p8litekirin
