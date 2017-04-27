# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# for specific
$(call inherit-product, vendor/motorola/potter/potter-vendor.mk)

#Inherit device configuration
$(call inherit-product, device/motorola/potter/full_potter.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := potter
PRODUCT_NAME := carbon_potter
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/potter/potter:7.0/NPN25.137-35/37:user/release-keys \
    PRIVATE_BUILD_DESC="potter-7.0/NPN25.137-35/37:user/release-keys" \
    PRODUCT_NAME="Moto G5 Plus"
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="vishal-android-freak"
    
