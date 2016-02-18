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

# Audio
PRODUCT_PACKAGES += audio.a2dp.default

PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/audio/audio_policy.conf:system/etc/audio_policy.conf

# Chromium
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so

# Media
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/media/media_codecs.xml:system/etc/media_codecs.xml \
	device/huawei/hi6210sft/media/media_profiles.xml:system/etc/media_profiles.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_p8litekirin
PRODUCT_DEVICE := p8litekirin
