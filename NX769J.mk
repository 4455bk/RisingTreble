TARGET_GAPPS_ARCH := arm64
include build/make/target/product/aosp_arm64.mk
$(call inherit-product, device/phh/treble/base.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, vendor/lineage/config/BoardConfigSoong.mk)
$(call inherit-product, device/lineage/sepolicy/common/sepolicy.mk)
include vendor/lineage/build/core/config.mk

PRODUCT_NAME := NX769J
PRODUCT_DEVICE := NX769J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX769J
PRODUCT_SYSTEM_BRAND := RedMagic
PRODUCT_SYSTEM_NAME := RedMagic 9 Pro
PRODUCT_SYSTEM_DEVICE := RedMagic 9 Pro

# Rising stuff
RISING_MAINTAINER=Runds
RISING_BATTERY := 6500 mAh
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_BATTERY="6500 mAh" \
    RISING_CHIPSET="Snapdragon 8 Gen 3" \
    RISING_MAINTAINER="Runds"

TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true

# Rising GMS
WITH_GMS := true
TARGET_CORE_GMS := true
#Uncomment for core+ build
#TARGET_CORE_GMS_EXTRAS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := device

PRODUCT_PACKAGES += \
    Gboard \
    GoogleGallery \
    AGC
