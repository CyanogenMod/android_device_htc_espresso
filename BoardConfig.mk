#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
# TARGET_ARCH_VARIANT := 
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := espresso
TARGET_OTA_ASSERT_DEVICE := espresso

#HARDWARE_OMX := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_DEVICE := tiwlan0
BOARD_WLAN_TI_STA_DK_ROOT := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

BOARD_USES_GENERIC_AUDIO := false
BOARD_USE_HTC_LIBSENSORS := true
BOARD_HTC_LIBSENSORS_NAME := sensors.espresso.so
BOARD_KERNEL_CMDLINE := "mem=75M console=ttyMSM2,115200n8"
BOARD_HAVE_BLUETOOTH := true
BOARD_GL_TEX_POW2_DIMENSION_REQUIRED := false
TARGET_HARDWARE_3D := true
BOARD_GPS_LIBRARIES := libgps
USE_PV_WINDOWS_MEDIA := false

# Image sizes todo
BOARD_BOOTIMAGE_MAX_SIZE := 
BOARD_RECOVERYIMAGE_MAX_SIZE := 
BOARD_SYSTEMIMAGE_MAX_SIZE := 
BOARD_USERDATAIMAGE_MAX_SIZE := 
# The size of a block that can be marked bad.
# BOARD_FLASH_BLOCK_SIZE := 

# Check accuracy of kernel base
BOARD_KERNEL_BASE := 0x00000000
USE_CAMERA_STUB := false
BOARD_EGL_CFG := vendor/htc/espresso-open/egl.cfg

ENABLE_ANIMATED_GIF := true
ALLOW_LGPL := true

