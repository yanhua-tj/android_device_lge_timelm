#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from timelm device
$(call inherit-product, device/lge/timelm/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_timelm
PRODUCT_DEVICE := timelm
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-V600

# TODO: What is this
# PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=timelm \
    PRODUCT_NAME=timelm \
    PRIVATE_BUILD_DESC="timelm-user 11 RKQ1.201105.002 2120114401c44 release-keys"

BUILD_FINGERPRINT := lge/timelm/timelm:11/RKQ1.201105.002/2120114401c44:user/release-keys