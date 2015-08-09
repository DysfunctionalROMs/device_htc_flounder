# boot
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH  := 1536

# Release name
PRODUCT_RELEASE_NAME := flounder

# Inherit some common stuff.
$(call inherit-product, vendor/broken/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)
$(call inherit-product-if-exists, vendor/htc/flounder/device-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flounder \
    BUILD_FINGERPRINT=google/volantis/flounder:5.1.1/LMY47X/1849464:user/release-keys \
    PRIVATE_BUILD_DESC="flounder-user 5.1.1 LMY47X 1849464 release-keys"

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flounder
PRODUCT_NAME := broken_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := htc

PRODUCT_RESTRICT_VENDOR_FILES := false
