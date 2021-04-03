# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

$(call inherit-product, device/alps/imoz7/device_imoz7.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := imoz7
PRODUCT_NAME := cm_imoz7
PRODUCT_BRAND := alps
PRODUCT_MODEL := imoz7
PRODUCT_MANUFACTURER := alps
