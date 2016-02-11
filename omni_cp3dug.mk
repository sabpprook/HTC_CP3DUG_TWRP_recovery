# Inherit device configuration
$(call inherit-product, device/htc/cp3dug/device.mk)

# Release name
PRODUCT_RELEASE_NAME := cp3dug

# Inherit some common DU stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cp3dug
PRODUCT_NAME := omni_cp3dug
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTC Desire 600
