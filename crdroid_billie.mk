#
# Copyright (C) 2020 The CarterOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from billie device
$(call inherit-product, device/oneplus/billie/device.mk)

# Inherit some common CarterOS stuff.
$(call inherit-product, vendor/crdroid/config/common_full_phone.mk)

# Set shipping API level (Indicates the first api level, device has been commercially launched on)
PRODUCT_SHIPPING_API_LEVEL := 29

# Device identifiers.
PRODUCT_NAME := crdroid_billie
PRODUCT_DEVICE := billie
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := Nord N10 5G

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlusN10-user 10 QKQ1.200830.002 2103251959 release-keys" \
    PRODUCT_DEVICE=OnePlusN10 \
    PRODUCT_NAME=OnePlusN10

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := OnePlusN10-user-10-QKQ1.200830.002-2103251959-release-keys
