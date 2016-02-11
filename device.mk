LOCAL_PATH := device/htc/cp3dug

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    device/htc/a51tuhl/kernel:kernel

PRODUCT_PACKAGES += \
    chargeled

$(call inherit-product, build/target/product/full.mk)
