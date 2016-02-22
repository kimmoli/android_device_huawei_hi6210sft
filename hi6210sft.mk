$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Chromium
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so

# init
PRODUCT_PACKAGES += \
    	p8litekirin

# Add openssh support for remote debugging and job submission
PRODUCT_PACKAGES += \
	gatord \
	gralloc.hikey \
	hwclock \
	ion-unit-tests \
	iontest \
	libion \
	libGLES_android \
	libGLES_mali \
	libskia \
	runtime_libart_default \
	ssh \
	sftp \
	scp \
	sshd \
	ssh-keygen \
	sshd_config \
	start-ssh \
	uim \
	UsbSpeedSwitch \
	wpa_supplicant

# Charger
PRODUCT_PACKAGES += \
      	charger_res_images 

# Filesystem management tools
PRODUCT_PACKAGES += \
    	e2fsck \
    	make_ext4fs \
    	resize2fs \
    	setup_fs \
    	ext4_resize \
    	resize_ext4 \
    	superumount 	



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
