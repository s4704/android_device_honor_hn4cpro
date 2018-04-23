# Inherit some common CM stuff.
$(call inherit-product, vendor/viper/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/honor/hn4cpro/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Honor 4c Pro

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hn4cpro
PRODUCT_NAME := viper_hn4cpro
PRODUCT_BRAND := Honor
PRODUCT_MODEL := Honor 4c Pro
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_LOCALES := ru_RU en_US
PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION   := RU

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

