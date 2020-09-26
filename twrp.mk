
# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)/twrp

ALLOW_MISSING_DEPENDENCIES := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXTRA_LANGUAGES := true
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INCLUDE_NTFS_3G := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_SCREEN_BLANK_ON_BOOT := true

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# Crypto
TW_INCLUDE_CRYPTO := false

TW_EXCLUDE_TWRPAPP := true

AB_OTA_UPDATER := true
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true


TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0 bootctrl.sdm660 android.hardware.boot@1.0-impl android.hardware.boot@1.0-service

TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/twrp/recovery/root/system/etc/recovery.wipe
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/twrp/recovery/root/system/etc/recovery.fstab

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/jasmine_sprout/vendor/bin/hw/android.hardware.boot@1.0-service:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/android.hardware.boot@1.0-service

    PRODUCT_PACKAGES += \
    magiskboot_arm
