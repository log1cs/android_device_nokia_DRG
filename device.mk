#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Vendor blobs
$(call inherit-product, vendor/nokia/DRG/DRG-vendor.mk)

# Set Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 27

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    AvoidAppsInCutoutOverlay \
    NoCutoutOverlay

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot Animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# FM
PRODUCT_PACKAGES += \
    FM2

$(call soong_config_set_bool,libfmjni,no_fm_firmware,true)

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-hmd

# Init
PRODUCT_PACKAGES += \
    init.DRG.target.rc

# Power
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Inherit from nokia sdm660-common
$(call inherit-product, device/nokia/sdm660-common/common.mk)
