# Specify phone tech before including full_phone
$(call inherit-product, vendor/du/configs/gsm.mk)

$(call inherit-product, vendor/du/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.3/JWR66V/737497:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.3 JWR66V 737497 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Device naming
PRODUCT_NAME := du_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

