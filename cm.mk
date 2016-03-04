# Release name
PRODUCT_RELEASE_NAME := p8litekirin

# Inherit device configuration
$(call inherit-product, device/huawei/hi6210sft/hi6210sft.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hi6210sft
PRODUCT_NAME := cm_hi6210sft
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := ALE-L21
PRODUCT_MANUFACTURER := Huawei
