# Broken Os Specific Changes

# Boot animation
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Camera
PRODUCT_PACKAGES += \
    Snap

# Inherit some common broken stuff.
$(call inherit-product, vendor/broken/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

$(call inherit-product-if-exists, vendor/htc/flounder/device-vendor.mk)

# Extra Packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flounder \
    BUILD_FINGERPRINT=google/volantis/flounder:6.0.1/MMB29V/2554798:user/release-keys \
    PRIVATE_BUILD_DESC="volantis-user 6.0.1 MMB29V 2554798 release-keys" \
    BUILD_ID=MMB29V

# Broken Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Ninja_Box" 


## Device identifier. This must come after all inclusions
PRODUCT_NAME := broken_flounder
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
