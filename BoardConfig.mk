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
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_ARCH_VARIANT_CPU := generic
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := generic


TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/hi6210sft/bluetooth

# Board
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_BOARD_PLATFORM := kirin930
TARGET_BOOTLOADER_BOARD_NAME := p8litekirin
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RPC := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USE_HISI_BIONIC_OPTIMIZATION := true
USE_DEVICE_SPECIFIC_HISI_PROPRIETARY:= true

# Chromium
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# EGL
ANDROID_ENABLE_RENDERSCRIPT := true
BOARD_EGL_CFG := device/huawei/hi6210sft/configs/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_BOARD_PLATFORM_GPU := mali-450mp
TARGET_HARDWARE_3D := true

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true

# Global CFlags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp -DDEFAULT_DRM_FB_WIDTH=720 -DDEFAULT_DRM_FB_HEIGHT=1280
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp 

# Hardware
BOARD_HAL_STATIC_LIBRARIES += libhealthd.hi6210sft
HISI_TARGET_PRODUCT := hi6210sft
TARGET_BOARD_SUFFIX := _32

# Init
TARGET_UNIFIED_DEVICE := true

# Kernel
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000
TARGET_PREBUILT_KERNEL := device/huawei/hi6210sft/kernel

# Liblight
TARGET_PROVIDES_LIBLIGHT := true

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 1280*720

# Partitionsizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

# Power HAL
TARGET_POWERHAL_VARIANT := hi6210sft

# Recovery
BOARD_HAS_LOCKED_BOOTLOADER := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT 	:= \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# TWRP
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/hi6210sft/graphics.c
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := true
TW_USE_TOOLBOX := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/huawei/hi6210sft/sepolicy

BOARD_SEPOLICY_UNION += \
	bluetooth.te \
	debuggered.te \
	device.te \
	dhcp.te \
	domain.te \
	file_contexts \
	file.te \
	genfs_contexts \
	healthd.te \
	init.te \
	init_shell.te \
	kernel.te \
	mediaserver.te \
	netd.te \
	rild.te \
	system.te \
	vold.te

