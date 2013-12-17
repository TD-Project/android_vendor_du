# Inherit AOSP device configuration for hercules.
$(call inherit-product, device/samsung/skyrocket/full_hurcules.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/du/configs/gsm.mk)

# hurcules overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/hurcules

# Setup device specific product configuration.
PRODUCT_NAME := du_hurcules
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := hurcules
PRODUCT_MODEL := SGH-I727
PRODUCT_MANUFACTURER := Samsung


PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.4/KRT16M/UCMC1:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.4 KRT16M UCMC1 release-keys"


PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip \
  #  vendor/du/hybrid/hybrid_hdpi.conf:system/etc/beerbong/properties.conf
