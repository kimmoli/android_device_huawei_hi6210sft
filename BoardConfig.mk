USE_CAMERA_STUB := true
ANDROID_ENABLE_RENDERSCRIPT := true

# inherit from the proprietary version
-include vendor/huawei/hi6210sft/BoardConfigVendor.mk

# 64 Bit Support
ANDROID_64=true
TARGET_USES_64_BIT_BINDER := true
TARGET_USES_HISI_DTIMAGE := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

# 2nd Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Board
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := kirin930
TARGET_BOOTLOADER_BOARD_NAME := p8litekirin

# Chromium
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Kernel
TARGET_PROVIDES_INIT_RC := true
TARGET_PREBUILT_KERNEL := device/huawei/hi6210sft/kernel
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000

# Partitionsizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
# TARGET_RECOVERY_FSTAB := device/huawei/hi6210sft/ramdisk/twrp/twrp.fstab
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/hi6210sft/graphics.c

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/huawei/hi6210sft/sepolicy

BOARD_SEPOLICY_UNION += \
	file.te \
    	genfs_contexts \
	kernel.te
