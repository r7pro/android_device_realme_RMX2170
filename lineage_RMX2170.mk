#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2170 device
$(call inherit-product, device/realme/RMX2170/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := lineage_RMX2170
PRODUCT_DEVICE := RMX2170
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 7 Pro
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX2170
PRODUCT_SYSTEM_DEVICE := RMX2170

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="atoll-user 11 RKQ1.200903.002 1621946429926 release-keys" \
    BuildFingerprint=realme/RMX2170/RMX2170L1:11/RKQ1.200903.002/1621946429926:user/release-keys \
    DeviceName=RMX2170 \
    DeviceProduct=RMX2170 \
    SystemDevice=RMX2170 \
    SystemName=RMX2170

# Audio mods (set any to true to enable: viper | dolby)
WITH_AUDIO_VIPER := false
WITH_AUDIO_DOLBY := false

# Support legacy stocked firmware
PRODUCT_FULL_TREBLE_OVERRIDE := true

# OMX
TARGET_SUPPORTS_OMX_SERVICE := false

# Target
TARGET_SUPPORTS_QUICK_TAP := true
