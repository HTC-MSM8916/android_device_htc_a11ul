# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, device/htc/a11ul/full_a11ul.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_a11ul
BOARD_VENDOR := htc
PRODUCT_DEVICE := a11ul

TARGET_VENDOR_PRODUCT_NAME := a11ul
TARGET_VENDOR_DEVICE_NAME := a11ul
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=a11ul PRODUCT_NAME=a11ul

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=htc/htc_europe/htc_a11ul:4.4.3/KTU84L/407309.2:user/release-keys \
    PRIVATE_BUILD_DESC="1.51.401.2 CL407309 release-keys"
endif
