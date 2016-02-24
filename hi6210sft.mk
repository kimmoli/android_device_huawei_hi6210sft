$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

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
PRODUCT_TAGS += dalvik.gc.type-precise
                  

# Hi6210SFT Packages
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
	hwclock \
	iontest \
	ion-unit-tests \
	gatord \
	gralloc.hikey \
    	libion \
	libc2dcolorconvert \
        libdashplayer \
	librs_jni \
	libsrec_jni \
	libbt-vendor \
	LiveWallpapers \
	LiveWallpapersPicker \
	make_ext4fs \
	minivold \
    	power.hi6210sft \
	runtime_libart_default \
	scp \
	setup_fs \
	sftp \
	ssh \
	sshd \
	sshd_config \
	ssh-keygen \
	start-ssh \
	uim \
	uim-sysfs
	UsbSpeedSwitch \
	VisualizationWallpapers \
	wpa_supplicant

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.manufacturer=HUAWEI \
    ro.product.model=ALE-L21 \
    ro.build.selinux=0 \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-rtsp=true \
    media.stagefright.enable-record=true \
    net.rmnet0.dns1=8.8.8.8 \
    net.rmnet0.dns2=8.8.4.4 \
    net.dns1=8.8.8.8 \
    net.dns2=8.8.4.4 \
    wifi.interface=wlan0 \
    ap.interface=wlan1 \
    persist.sys.usb.config=mtp,adb \
    ro.zygote.disable_gl_preload=1 \
    ro.opengles.version=131072 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    debug.hwui.render_dirty_regions=false \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.config.hw_flashless=true \
    ro.config.modem_hsic=true \
    ro.config.hisi_soc_type=true \
    ro.config.hisi_rpt_mode=0 \
    balong.debug.on=true \
    ro.config.fm_type=libbcmfm_if \
    ro.bt.bdaddr_path=/data/misc/bluedroid/macbt \
    ro.thmodem.type=sprd \
    ro.modem.type=6260 \
    ril.gsm.deviceid=-1 \
    ril.cdma.deviceid=-1 \
    ril.gsm.rssi=-1 \
    ril.cdma.rssi=-1 \
    persist.sys.logsystem.neversend=0 \
    modify_ram_show=true \
    persist.sys.phb.enable=1 \
    persist.sys.phb.debug.enable=1 \
    persist.sys.actualpoweron=true \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.config.incall_notify_mms=true \
    ro.config.hw_allow_ums_and_mtp=true \
    ro.camera.sound.forced=1 \
    keyguard.no_require_sim=true \
    ro.config.hw_dolby=true \
    ro.dolbywithheadset.enable=1 \
    ro.streaming.video.drs=true \
    media.aac_51_output_enabled=true \
    ro.config.vdf_apn_switch=true \
    ro.config.hw_show_network_icon=true \
    persist.telephony.mpdn=false \
    ro.cellbroadcast.emergencyids=919,4371 \
    ro.config.vm_prioritymode=2 \
    ro.product.aac.softaac2ffmpeg=true \
    ro.config.helix_enable=true \
    af.resampler.quality=4 \
    ro.config.widevine_level3=true \
    drm.service.enabled=true

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
