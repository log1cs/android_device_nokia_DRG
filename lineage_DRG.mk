#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/nokia/DRG/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Nokia
PRODUCT_DEVICE := DRG
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_MODEL := Nokia 6.1 Plus
PRODUCT_NAME := lineage_DRG

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Dragon_00WW 10 QKQ1.190828.002 00WW_4_150 release-keys" \
    BuildFingerprint=Nokia/Dragon_00WW/DRG_sprout:10/QKQ1.190828.002/00WW_4_150:user/release-keys \
    DeviceProduct=DRG_sprout
