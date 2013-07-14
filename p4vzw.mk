# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# APNs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/apns/apns-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, device/samsung/p4-common/p4-common.mk)

$(call inherit-product-if-exists, vendor/samsung/p4vzw/p4vzw-vendor.mk)

# Cameradata
PRODUCT_COPY_FILES += \
    device/samsung/p4-common/camera/cameradata/back_camera_test_pattern.yuv:system/cameradata/back_camera_test_pattern.yuv \
    device/samsung/p4-common/camera/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
    device/samsung/p4-common/camera/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
    device/samsung/p4-common/camera/cameradata/front_camera_test_pattern.yuv:system/cameradata/front_camera_test_pattern.yuv

# Hdmi
PRODUCT_COPY_FILES += \
    device/samsung/p4-common/hdmi/dectable1.dat:system/etc/hdmi/dectable1.dat \
    device/samsung/p4-common/hdmi/dectable.dat:system/etc/hdmi/dectable.dat

# Wifi mfg
PRODUCT_COPY_FILES += \
    device/samsung/p4-common/wifi/bcmdhd_mfg.bin:system/etc/wifi/bcmdhd_mfg.bin

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

$(call inherit-product, build/target/product/telephony.mk)

# Override
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps.conf:system/etc/gps.conf

# GPS config
PRODUCT_PROPERTY_OVERRIDES += \
  my.gps=vzw

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := p4vzw
PRODUCT_DEVICE := p4vzw
PRODUCT_MODEL := p4vzw
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
