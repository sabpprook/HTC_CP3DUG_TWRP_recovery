## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := cp3dugu

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/cp3dug/device_cp3dug.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cp3dug
PRODUCT_NAME := omni_cp3dug
PRODUCT_BRAND := htc
PRODUCT_MODEL := X515e
PRODUCT_MANUFACTURER := htc