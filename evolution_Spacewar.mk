#
# Copyright (C) 2022 evolution-x
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit from evolution-x configuration.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Bootanimation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# evolution-x stuff
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true
FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
EXTRA_UDFPS_ANIMATIONS := true
EVO_BUILD_TYPE := Released_By_CRUECY

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := Spacewar
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A063
PRODUCT_NAME := evolution_Spacewar
PRODUCT_SYSTEM_DEVICE := Spacewar
PRODUCT_SYSTEM_NAME := Spacewar

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
    
BUILD_FINGERPRINT := Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1669043157:user/release-keys
