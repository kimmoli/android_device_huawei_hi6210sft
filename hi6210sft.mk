$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio
# PRODUCT_PACKAGES += audio.a2dp.default

# PRODUCT_COPY_FILES += \
# 	device/huawei/hi6210sft/audio/audio_policy.conf:system/etc/audio_policy.conf

# Chromium
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/chromium/libwebviewchromium.so:system/lib/libwebviewchromium.so

# init
PRODUCT_PACKAGES += \
    p8litekirin

# Media
# PRODUCT_COPY_FILES += \
# 	device/huawei/hi6210sft/media/media_codecs.xml:system/etc/media_codecs.xml \
# 	device/huawei/hi6210sft/media/media_profiles.xml:system/etc/media_profiles.xml

# PRODUCT_COPY_FILES += \
#     	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml 
#    	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml 
#        frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

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

# Overlays
# DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay

# Ramdisk
# PRODUCT_COPY_FILES += \
#  	device/huawei/hi6210sft/ramdisk/init.5801.rc:root/init.5801.rc \
#  	device/huawei/hi6210sft/ramdisk/init.6165.rc:root/init.6165.rc \
#  	device/huawei/hi6210sft/ramdisk/init.10106.rc:root/init.10106.rc \
#  	device/huawei/hi6210sft/ramdisk/init.51054.rc:root/init.51054.rc \
#  	device/huawei/hi6210sft/ramdisk/init.102173.rc:root/init.102173.rc \
#  	device/huawei/hi6210sft/ramdisk/init.142782.rc:root/init.142782.rc \
#  	device/huawei/hi6210sft/ramdisk/init.audio.rc:root/init.audio.rc \
#  	device/huawei/hi6210sft/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
#  	device/huawei/hi6210sft/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
#  	device/huawei/hi6210sft/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
#  	device/huawei/hi6210sft/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
#  	device/huawei/hi6210sft/ramdisk/init.device.rc:root/init.device.rc \
#  	device/huawei/hi6210sft/ramdisk/init.environ.rc:root/init.environ.rc \
#  	device/huawei/hi6210sft/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
#  	device/huawei/hi6210sft/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
#  	device/huawei/hi6210sft/ramdisk/init.hisi.rc:root/init.hisi.rc \
#  	device/huawei/hi6210sft/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
#  	device/huawei/hi6210sft/ramdisk/init.performance.rc:root/init.performance.rc \
#  	device/huawei/hi6210sft/ramdisk/init.platform.rc:root/init.platform.rc \
#  	device/huawei/hi6210sft/ramdisk/init.protocol.rc:root/init.protocol.rc \
#  	device/huawei/hi6210sft/ramdisk/init.rc:root/init.rc \
#  	device/huawei/hi6210sft/ramdisk/init:root/init \
#  	device/huawei/hi6210sft/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
#  	device/huawei/hi6210sft/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
#  	device/huawei/hi6210sft/ramdisk/init.tee.rc:root/init.tee.rc \
#  	device/huawei/hi6210sft/ramdisk/init.trace.rc:root/init.trace.rc \
#  	device/huawei/hi6210sft/ramdisk/init.usb.rc:root/init.usb.rc \
#  	device/huawei/hi6210sft/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
#  	device/huawei/hi6210sft/ramdisk/init.zygote64_32.rc:root/init.zygote64_32.rc \
#  	device/huawei/hi6210sft/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc \
#  	device/huawei/hi6210sft/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc \
#  	device/huawei/hi6210sft/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc \
#  	device/huawei/hi6210sft/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc \
#  	device/huawei/hi6210sft/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc \
#  	device/huawei/hi6210sft/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc \
#  	device/huawei/hi6210sft/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \
#  	device/huawei/hi6210sft/ramdisk/ueventd.rc:root/ueventd.rc 

# Set zygote config
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.secure=0 \
         ro.adb.secure=0

PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

# Wi-Fi
# PRODUCT_PACKAGES += \
#     hostapd_hisi.conf \
#     wpa_supplicant \
#     wpa_supplicant.conf

# PRODUCT_COPY_FILES += \
# 	device/huawei/hi6210sft/wifi/hostpad_hisi.conf:system/etc/wifi/hostpad_hisi.conf \
# 	device/huawei/hi6210sft/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
# 	device/huawei/hi6210sft/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
# 	device/huawei/hi6210sft/wifi/wpa_supplicant_hisi.conf:system/etc/wifi/wpa_supplicant_hisi.conf \
# 	device/huawei/hi6210sft/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft

$(call inherit-product-if-exists, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)
