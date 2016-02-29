USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/hi6210sft/BoardConfigVendor.mk

# 64 Bit
ANDROID_64=true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USES_64_BIT_BINDER := true
TARGET_USES_HISI_DTIMAGE := true

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage

# Architecture
ifneq ($(FORCE_32_BIT),true)
TARGET_BOARD_SUFFIX := _64
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

else
TARGET_BOARD_SUFFIX := _32
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
endif

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# Blobs
-include vendor/huawei/hi6210sft/BoardConfigVendor.mk

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/hi6210sft/bluetooth

# Board
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOOTLOADER_BOARD_NAME := p8litekirin
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false
TARGET_NO_RPC := true
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

# Camera
BOARD_CAMERA_HAVE_ISO := true
COMMON_GLOBAL_CFLAGS += -DHAVE_ISO

# Chromium
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# EGL
ANDROID_ENABLE_RENDERSCRIPT := true
BOARD_EGL_CFG := device/huawei/hi6210sft/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_BOARD_PLATFORM_GPU := mali-450mp
TARGET_HARDWARE_3D := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
USE_OPENGL_RENDERER := true

# Global CFlags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp -DDEFAULT_DRM_FB_WIDTH=720 -DDEFAULT_DRM_FB_HEIGHT=1280 -DHISILICON_HI6210SFT
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp 

# Hardware
BOARD_HAL_STATIC_LIBRARIES += libhealthd.hi6210sft
HISI_TARGET_PRODUCT := hi6210sft
TARGET_USE_PAN_DISPLAY := true


# Kernel
KERNEL_CONFIG = arch/arm64/configs/defconfig android/configs/android-base.cfg  android/configs/android-recommended.cfg
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
ifneq ($(FORCE_32_BIT),true)
TARGET_KERNEL_CONFIG := hisi_hi6210sft_defconfig
else
TARGET_KERNEL_CONFIG := hisi_hi6210sft_defconfig
endif
ifneq ($(FORCE_32_BIT),true)
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_UNCOMPRESSED_KERNEL := true
endif
TARGET_KERNEL_SOURCE := kernel/huawei/hi6210sft


# Partitionsizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

# CWM Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB := device/huawei/hi6210sft/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true


# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
CONFIG_DRIVER_NL80211 := y
CONFIG_DRIVER_WEXT :=y
WPA_SUPPLICANT_VERSION := VER_0_8_X

# TWRP
# DEVICE_RESOLUTION := 720x1280
# BOARD_RECOVERY_SWIPE := true
# RECOVERY_GRAPHICS_USE_LINELENGTH := true
# RECOVERY_SDCARD_ON_DATA := true
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/hi6210sft/recovery/graphics.c
# TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
# TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
# TW_CRYPTO_FS_TYPE := "ext4"
# TW_CRYPTO_MNT_POINT := "/data"
# TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/hi_mci.0/by-name/userdata"
# TW_INCLUDE_JB_CRYPTO := true
# TW_MAX_BRIGHTNESS := 255

