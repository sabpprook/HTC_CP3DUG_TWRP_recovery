USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/cp3dug/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME :=
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := 8625Q
TARGET_BOARD_PLATFORM_GPU := qcom-adreno203

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true


# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=cp3dug
BOARD_KERNEL_BASE := 0x03b00000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x04f08000
TARGET_PREBUILT_KERNEL := device/htc/cp3dug/kernel

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00fffc00
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00fffe00
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x77fffc00
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x138000000
BOARD_FLASH_BLOCK_SIZE := 131072

# Use power button as select in recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Recovery: set depending on recovery being built for. (CWM or TWRP)
# both init scripts can be found in the recovery folder
TARGET_RECOVERY_INITRC := device/htc/cp3dug/recovery/init-twrp.rc

# Allow Power Button To Be Select In Recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP Specific
DEVICE_RESOLUTION := 540x960
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INCLUDE_DUMLOCK := true
TW_INCLUDE_JB_CRYPTO := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_HTC_LED := true

