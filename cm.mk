# Inherit device configuration for p4vzw.
$(call inherit-product, device/samsung/p4vzw/p4vzw.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_p4vzw
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4vzw
PRODUCT_MODEL := SCH-I905
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I905 BUILD_ID=HMJ37 BUILD_FINGERPRINT=samsung/SCH-I905/SCH-I905:3.1/HMJ37/EH04:user/release-keys PRIVATE_BUILD_DESC="SCH-I905-user 3.1 HMJ37 EH04 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := p4vzw
