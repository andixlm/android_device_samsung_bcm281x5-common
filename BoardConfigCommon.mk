USE_CAMERA_STUB := true

# Board
TARGET_BOARD_PLATFORM := capri

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := capri

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

# Hardware rendering
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/galaxys2plus-common/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DCAPRI_HWC

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4404019200
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 mem=832M@0xA2000000 androidboot.console=ttyS0 vc-cma-mem=0/176M@0xCB000000
BOARD_KERNEL_BASE := 0xa2000000
BOARD_KERNEL_PAGESIZE := 4096

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/galaxys2plus-common/recovery/recovery_keys.c
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Hardware
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/galaxys2plus-common/cmhw/

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/galaxys2plus-common/ril/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/galaxys2plus-common/include

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/galaxys2plus-common/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/galaxys2plus-common/bluetooth

# Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI             := true
BOARD_WLAN_DEVICE                   := bcmdhd
BOARD_WLAN_DEVICE_REV               := bcm4330
WPA_SUPPLICANT_VERSION              := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER         := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB    := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                := NL80211
BOARD_HOSTAPD_PRIVATE_LIB           := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM           := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA             := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP              := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH             := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME             := "dhd"
WIFI_DRIVER_MODULE_ARG              := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                           := 802_11_ABG

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.capri

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_RES := device/samsung/galaxys2plus-common/res/charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# SkTextBox for libtvout
BOARD_USES_SKTEXTBOX := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/galaxys2plus-common/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts
