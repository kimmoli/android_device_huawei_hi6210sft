$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product-if-exists, vendor/huawei/hi6210sft/hi6210sft-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/hi6210sft/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Ramdisk
PRODUCT_COPY_FILES += \
	device/generic/goldfish/fstab.goldfish:root/fstab.goldfish \
	device/huawei/hi6210sft/ramdisk/init.5801.rc:root/init.5801.rc \
	device/huawei/hi6210sft/ramdisk/init.6165.rc:root/init.6165.rc \
	device/huawei/hi6210sft/ramdisk/init.10106.rc:root/init.10106.rc \
	device/huawei/hi6210sft/ramdisk/init.51054.rc:root/init.51054.rc \
	device/huawei/hi6210sft/ramdisk/init.102173.rc:root/init.102173.rc \
	device/huawei/hi6210sft/ramdisk/init.142782.rc:root/init.142782.rc \
	device/huawei/hi6210sft/ramdisk/init.audio.rc:root/init.audio.rc \
	device/huawei/hi6210sft/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
	device/huawei/hi6210sft/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
	device/huawei/hi6210sft/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
	device/huawei/hi6210sft/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
	device/huawei/hi6210sft/ramdisk/init.device.rc:root/init.device.rc \
	device/huawei/hi6210sft/ramdisk/init.environ.rc:root/init.environ.rc \
	device/huawei/hi6210sft/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
	device/huawei/hi6210sft/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
	device/huawei/hi6210sft/ramdisk/init.hisi.rc:root/init.hisi.rc \
	device/huawei/hi6210sft/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
	device/huawei/hi6210sft/ramdisk/init.performance.rc:root/init.performance.rc \
	device/huawei/hi6210sft/ramdisk/init.platform.rc:root/init.platform.rc \
	device/huawei/hi6210sft/ramdisk/init.protocol.rc:root/init.protocol.rc \
	device/huawei/hi6210sft/ramdisk/init.tee.rc:root/init.tee.rc \
	device/huawei/hi6210sft/ramdisk/init.trace.rc:root/init.trace.rc \
	device/huawei/hi6210sft/ramdisk/init.usb.rc:root/init.usb.rc \
	device/huawei/hi6210sft/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
	device/huawei/hi6210sft/ramdisk/init.zygote64_32.rc:root/init.zygote64_32.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \
	device/huawei/hi6210sft/ramdisk/ueventd.rc:root/ueventd.rc

# Recovery
PRODUCT_COPY_FILES += \
	device/huawei/hi6210sft/recovery/agnsscontrol:system/bin/agnsscontrol \
	device/huawei/hi6210sft/ramdisk/fstab.hi6210sft:recovery/root/fstab.hi6210sft \
	device/huawei/hi6210sft/recovery/gnss_engine:system/bin/gnss_engine \
	device/huawei/hi6210sft/recovery/hisi_connectivity.sh:system/bin/hisi_connectivity.sh \
	device/huawei/hi6210sft/recovery/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
	device/huawei/hi6210sft/recovery/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc  \
	device/huawei/hi6210sft/recovery/octty:system/bin/octty

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
	gatord \
	gralloc.hikey \
	hwclock \
	iontest \
	ion-unit-tests \
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
	uim-sysfs \
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

# NFC packages
PRODUCT_PACKAGES += \
    	libnfc-nci \
    	libnfc_nci_jni \
    	NfcNci \
    	Tag \
    	com.android.nfc_extras

# NFCEE access control
NFCEE_ACCESS_PATH := device/huawei/hi6210sft/nfc/nfcee_access.xml

# NFC firmware
PRODUCT_COPY_FILES += \
    	$(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
    	device/huawei/hi6210sft/nfc/libnfc-brcm-alice.conf:system/etc/libnfc-brcm-alice.conf \
    	device/huawei/hi6210sft/nfc/libnfc-nxp-alice.conf:system/etc/libnfc-nxp-alice.conf \
    	device/huawei/hi6210sft/nfc/bcm2079xB4_firmware_20793.ncd:system/vendor/firmware/bcm2079xB4_firmware_20793.ncd \
   	device/huawei/hi6210sft/nfc/bcm2079xB4_pre_firmware_20793.ncd:system/vendor/firmware/bcm2079xB4_pre_firmware_20793.ncd

# NFC permissions
PRODUCT_COPY_FILES += \
   	device/huawei/hi6210sft/nfc/com.gsma.services.nfc.xml:system/etc/permissions/com.gsma.services.nfc.xml \
    	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

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

$(call inherit-product, build/target/product/full.mk)

# WPA
PRODUCT_COPY_FILES += \
       device/huawei/hi6210sft/bt-wifi-firmware-util/TIInit_11.8.32.bts:system/etc/firmware/ti-connectivity/TIInit_11.8.32.bts \
       device/huawei/hi6210sft/bt-wifi-firmware-util/TIInit_11.8.32.bts:system/etc/firmware/TIInit_11.8.32.bts \
       device/huawei/hi6210sft/bt-wifi-firmware-util/wl18xx-fw-4.bin:system/etc/firmware/ti-connectivity/wl18xx-fw-4.bin 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft
