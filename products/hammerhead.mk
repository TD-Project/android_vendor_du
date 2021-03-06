# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/common.mk)

# Inherit common product files.
$(call inherit-product, vendor/du/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := du_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT="google/hammerhead/hammerhead:4.4/KRT16M/893803:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 4.4 KRT16M 893803 release-keys"

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk
