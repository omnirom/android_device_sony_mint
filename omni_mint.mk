#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := vendor/omni/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sony/mint/device.mk)

PRODUCT_NAME := omni_mint
PRODUCT_DEVICE := mint
PRODUCT_BRAND := sony
PRODUCT_MODEL := Xperia T
PRODUCT_MANUFACTURER := Sony

# Kernel inline build
TARGET_KERNEL_CONFIG := cm_blue_mint_defconfig
TARGET_VARIANT_CONFIG := cm_blue_mint_defconfig
TARGET_SELINUX_CONFIG := cm_blue_mint_defconfig

# Common Sony Resources
$(call inherit-product, device/sony/common/resources-xhdpi.mk)
