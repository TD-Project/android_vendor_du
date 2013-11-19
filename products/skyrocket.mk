# Inherit AOSP device configuration for hercules.
$(call inherit-product, device/samsung/skyrocket/full_skyrocket.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/du/configs/gsm.mk)

# skyrocket overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/du/overlay/skyrocket

# Setup device specific product configuration.
PRODUCT_NAME := du_skyrocket
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := skyrocket
PRODUCT_MODEL := SGH-I727
PRODUCT_MANUFACTURER := Samsung


PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I727 TARGET_DEVICE=SGH-I727 BUILD_FINGERPRINT="samsung/SGH-I727/SGH-I727:4.4/KRT16M/UCMC1:user/release-keys" PRIVATE_BUILD_DESC="SGH-I727-user 4.4 KRT16M UCMC1 release-keys"


PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip \
  #  vendor/du/hybrid/hybrid_hdpi.conf:system/etc/beerbong/properties.conf
