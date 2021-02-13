
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
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
BOARD_USES_QCOM_FBE_DECRYPTION := true

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe \
    tzdata_twrp

PRODUCT_PACKAGES += \
    nano

# Security Patch Hack to prevent Anti Rollback
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31

TW_EXCLUDE_TWRPAPP := true
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true

TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0 bootctrl.sdm660 android.hardware.boot@1.0-impl libicuuc libxml2 libion libhardware_legacy android.system.suspend@1.0 libandroidicu libicui18n libashmemd_client ashmemd_aidl_interface-cpp vendor.display.config@1.0 device_manifest.xml system_manifest.xml

TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/twrp/recovery/root/system/etc/recovery.wipe
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/twrp/recovery/root/system/etc/recovery.fstab

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw

TW_DEVICE_VERSION := Nebrassy

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/jasmine_sprout/system/lib64/android.system.suspend@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/android.system.suspend@1.0.so \
    $(OUT_DIR)/target/product/jasmine_sprout/system/lib64/ashmemd_aidl_interface-cpp.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/ashmemd_aidl_interface-cpp.so \
    $(OUT_DIR)/target/product/jasmine_sprout/obj/SHARED_LIBRARIES/libandroidicu_intermediates/libandroidicu.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libandroidicu.so \
    $(OUT_DIR)/target/product/jasmine_sprout/system/lib64/libhardware_legacy.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libhardware_legacy.so \
    $(OUT_DIR)/target/product/jasmine_sprout/system/lib64/libion.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libion.so \
    $(OUT_DIR)/target/product/jasmine_sprout/system/lib64/libashmemd_client.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libashmemd_client.so \
    $(OUT_DIR)/target/product/jasmine_sprout/system/lib64/libicui18n.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libicui18n.so \
    $(OUT_DIR)/target/product/jasmine_sprout/system/etc/vintf/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/vintf/manifest.xml \
    $(OUT_DIR)/target/product/jasmine_sprout/system/lib64/libxml2.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libxml2.so \
    $(OUT_DIR)/target/product/jasmine_sprout/vendor/lib64/libicuuc.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libicuuc.so \
    $(OUT_DIR)/target/product/jasmine_sprout/vendor/lib64/vendor.display.config@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/vendor.display.config@1.0.so \
    $(OUT_DIR)/target/product/jasmine_sprout/vendor/etc/vintf/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/etc/vintf/manifest.xml \
    vendor/xiaomi/wayne-common/proprietary/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/android.hardware.gatekeeper@1.0-service-qti \
    vendor/xiaomi/wayne-common/proprietary/vendor/bin/hw/android.hardware.keymaster@3.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/android.hardware.keymaster@3.0-service-qti \
    vendor/xiaomi/wayne-common/proprietary/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    vendor/xiaomi/wayne-common/proprietary/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libdiag.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libdiag.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libdrmfs.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libdrmfs.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libdrmtime.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libdrmtime.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libdsutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libdsutils.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libGPreqcancel.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libGPreqcancel.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libGPreqcancel_svc.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libGPreqcancel_svc.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libidl.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libidl.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libkeymasterdeviceutils.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libmdmdetect.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libmdmdetect.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libqisl.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libqisl.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libqmi_cci.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libqmi_cci.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libqmi_encdec.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libqmi_encdec.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libqmi_client_helper.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libqmi_client_helper.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libqmi_client_qmux.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libqmi_client_qmux.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libqmi_common_so.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libqmi_common_so.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libqmiservices.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libqmiservices.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libQSEEComAPI.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libQSEEComAPI.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/librpmb.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/librpmb.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libsecureui.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libsecureui.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libsecureui_svcsock.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libsecureui_svcsock.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libssd.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libssd.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libStDrvInt.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libStDrvInt.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/libtime_genoff.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libtime_genoff.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/lib64/vendor.qti.hardware.tui_comm@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/vendor.qti.hardware.tui_comm@1.0.so \
    vendor/xiaomi/sdm660-common/proprietary/vendor/bin/qseecomd:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/qseecomd \
    vendor/xiaomi/sdm660-common/proprietary/vendor/bin/time_daemon:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/time_daemon

PRODUCT_PACKAGES += \
    magiskboot_arm \
    resetprop

