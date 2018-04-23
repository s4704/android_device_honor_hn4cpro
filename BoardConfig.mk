LOCAL_PATH := device/honor/hn4cpro

BLOCK_BASED_OTA := false

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6735
TARGET_BOOTLOADER_BOARD_NAME := mt6735

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

ifeq ($(BOARD_USES_MTK_HARDWARE),true)
    mtk_flags := -DMTK_HARDWARE

    TARGET_GLOBAL_CFLAGS += $(mtk_flags)
    TARGET_GLOBAL_CPPFLAGS += $(mtk_flags)
    CLANG_TARGET_GLOBAL_CFLAGS += $(mtk_flags)
    CLANG_TARGET_GLOBAL_CPPFLAGS += $(mtk_flags)

    2ND_TARGET_GLOBAL_CFLAGS += $(mtk_flags)
    2ND_TARGET_GLOBAL_CPPFLAGS += $(mtk_flags)
    2ND_CLANG_TARGET_GLOBAL_CFLAGS += $(mtk_flags)
    2ND_CLANG_TARGET_GLOBAL_CPPFLAGS += $(mtk_flags)
endif

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board 1450352440

# Prebuilt kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/recovery.fstab

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11592531968
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400                                    
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
TARGET_HAS_LEGACY_LP_CAM := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

USE_OPENGL_RENDERER:=true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

BOARD_EGL_CFG := $(LOCAL_PATH)/prebuilt/egl.cfg

# Bootanimation
TARGET_BOOTANIMATION_NAME := 720
TARGET_BOOTANIMATION_HALF_RES := true

# RIL
BOARD_PROVIDES_RILD := true
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# System.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

# Seccomp filter
BOARD_SECCOMP_POLICY := $(LOCAL_PATH)/seccomp

# Include
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Force linking shim
LINKER_FORCED_SHIM_LIBS := /system/lib/libgui.so|libshim_gui.so:/system/lib64/libgui.so|libshim_gui.so:/system/lib/libmedia.so|libshim_snd.so:/system/lib64/libmedia.so|libshim_snd.so:/system/lib/libui.so|libshim_ui.so:/system/lib64/libui.so|libshim_ui.so:/system/lib/liblog.so|libshim_xlog.so:/system/lib64/liblog.so|libshim_xlog.so
