#
# Copyright (C) 2009 The Android Open Source Project
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

## Inherit from the following products.
# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

# stuff common to all Android phones
$(call inherit-product, build/target/product/full_base.mk)

DEVICE_PACKAGE_OVERLAYS := device/htc/espresso/overlay

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

# Keychars / Keylayout
PRODUCT_COPY_FILES += \
    device/htc/espresso/keylayout/latte-keypad-v0.kl:system/usr/keylayout/latte-keypad-v0.kl \
    device/htc/espresso/keylayout/latte-keypad-v1.kl:system/usr/keylayout/latte-keypad-v1.kl \
    device/htc/espresso/keylayout/latte-keypad-v2.kl:system/usr/keylayout/latte-keypad-v2.kl \
    device/htc/espresso/keychars/latte-keypad-v0.kcm.bin:system/usr/keychars/latte-keypad-v0.kcm.bin \
    device/htc/espresso/keychars/latte-keypad-v1.kcm.bin:system/usr/keychars/latte-keypad-v1.kcm.bin \
    device/htc/espresso/keychars/latte-keypad-v2.kcm.bin:system/usr/keychars/latte-keypad-v2.kcm.bin \
    device/htc/espresso/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/espresso/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/espresso/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

PRODUCT_COPY_FILES += \
    device/htc/espresso/init.latte.rc:root/init.latte.rc \
    device/htc/espresso/ueventd.latte.rc:root/ueventd.latte.rc

# GSM Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libhtc_ril.so \
    ro.ril.gprsclass = 10 \
    ro.ril.hsxpa=2 \
    ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
    wifi.interface = tiwlan0 \
    wifi.supplicant_scan_interval = 15 \
    ro.sf.lcd_density = 160 \
    ro.opengles.version=131072

# Default network type.
# 0 => WCDMA preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# For the agps default value
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.def.agps.mode = 2 

# For 7227 projects, default enable AMR-Wideband
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.amr.wideband = 1

# For emmc phone storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.phone_storage = 0

# This is a 512MB device, so 32mb heapsize
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=32m

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/espresso/espresso-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-tmobile-us \
    ro.com.google.clientidbase.vs=android-hms-tmobile-us \
    ro.com.google.clientidbase.ms=android-hms-tmobile-us \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    dalvik.vm.dexopt-flags=m=y

# Capabilities
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Packages
PRODUCT_PACKAGES += \
    librs_jni \
    lights.latte \
    gralloc.msm7k \
    libOmxCore \
    copybit.msm7k \
    sensors.latte \
    gps.liberty

PRODUCT_COPY_FILES += \
    device/htc/espresso/vold.fstab:system/etc/vold.fstab \
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/espresso/gps.conf:system/etc/gps.conf
# GPS Certificates
PRODUCT_COPY_FILES += \
    device/htc/espresso/certs/T-Mobile_USA_Intermediate_CA_01.der:system/etc/T-Mobile_USA_Intermediate_CA_01.der \
    device/htc/espresso/certs/T-Mobile_USA_Issuer_CA_01.der:system/etc/T-Mobile_USA_Issuer_CA_01.der \
    device/htc/espresso/certs/T-Mobile_USA_Issuer_CA_02.der:system/etc/T-Mobile_USA_Issuer_CA_02.der \
    device/htc/espresso/certs/T-Mobile_USA_Root_CA.der:system/etc/T-Mobile_USA_Root_CA.der

# Kernel Target
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/espresso/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Prebuilt kernel modules
PRODUCT_COPY_FILES += \
    device/htc/espresso/prebuilt/sdio.ko:/system/lib/modules/sdio.ko \
    device/htc/espresso/prebuilt/tiwlan_drv.ko:/system/lib/modules/tiwlan_drv.ko \
    device/htc/espresso/prebuilt/cifs.ko:/system/lib/modules/2.6.29.6-cyanogenmod/kernel/fs/cifs/cifs.ko \
    device/htc/espresso/prebuilt/nfs.ko:/system/lib/modules/2.6.29.6-cyanogenmod/kernel/fs/cifs/nfs.ko

# media profiles and capabilities spec
PRODUCT_COPY_FILES += \
    device/htc/espresso/media_profiles.xml:system/etc/media_profiles.xml
$(call inherit-product, device/htc/espresso/media_a1026.mk)

PRODUCT_NAME := generic_espresso
PRODUCT_DEVICE := espresso
