#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/k3gxx

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/k3gxx/k3gxx-vendor.mk)


# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.universal5422 \
    libtinycompress

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf


# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_steps=30 \
    ro.config.vc_call_vol_steps=20 \
    audio_hal.force_voice_config=wide

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    libhwjpeg

# Display
PRODUCT_PACKAGES += \
    SamsungServiceMode

# SHIM LIBS
PRODUCT_PACKAGES += \
    libshim

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/SuplRootCert:system/etc/SuplRootCert \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

# GRAPHICS
# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi 

# HW composer
PRODUCT_PACKAGES += \
    libion_exynos \
    libfimg \
    gralloc.exynos5 \
    hwcomposer.exynos5

# CONSUMERIR
PRODUCT_PACKAGES += \
    consumerir.universal5422

# Lights
PRODUCT_PACKAGES += \
    lights.universal5422

# libstlport
# M removes libstlport, but some of our binary-only prebuilts need it, so we'll
# add it back
PRODUCT_PACKAGES += \
    libxml2 \
    libstlport

# Power
PRODUCT_PACKAGES += \
    power.universal5422

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.universal5422 \
    NfcNci \
    Tag \
    com.android.nfc_extras
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.sec_hal=true

# NFCEE access control + configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-sec.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
	$(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.ecg.xml:system/etc/permissions/android.hardware.sensor.heartrate.ecg.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml
	
# Browser
PRODUCT_PACKAGES += \
    Gello

# Apache Hack
PRODUCT_COPY_FILES += \
    prebuilts/sdk/org.apache.http.legacy/org.apache.http.legacy.jar:/system/framework/org.apache.http.legacy.jar

# Power
PRODUCT_PACKAGES += \
    power.universal5422
	
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5422 \
    init.recovery.universal5422.rc \
	init.baseband.rc \
    init.samsung.rc \
    init.universal5422.rc \
    init.universal5422.usb.rc \
    init.wifi.rc \
    ueventd.universal5422.rc \
    init.rc \
    recovery.fstab \
    adb_keys \
    init.goldfish.sh

#Samsung Doze
PRODUCT_PACKAGES += \
    SamsungDoze

###########################################################
### TOUCHSCREEN
###########################################################

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/keylayout/gpio_keys_8.kl:system/usr/keylayout/gpio_keys_8.kl \
	$(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
	$(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:/system/usr/idc/Synaptics_HID_TouchPad.idc

PRODUCT_PACKAGES += \
        libsecril-client \
        libsecril-client-sap \
        modemloader \
        libxml2 \
        libprotobuf-cpp-full

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

# MTP
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    keystore.exynos5

# WIFI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf 
        
PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    wifiloader \
    hostapd \
    hostapd_default.conf \
    libwpa_client \
    wpa_supplicant

 # Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd \
    fingerprint.universal5422 \
    ValidityService

# Widevine
PRODUCT_PACKAGES += \
   libshim_gpsd

# Enable multi-window by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true


# Legacy stagefright media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    persist.adb.notify=0 \
    ro.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    persist.sys.isUsbOtgEnabled=true

# adb and apps
ADDITIONAL_BUILD_PROPERTIES += \
    persist.sys.root_access=3

$(call inherit-product-if-exists, build/target/product/full.mk)
# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5422/exynos5422.mk)

PRODUCT_NAME := full_k3gxx
PRODUCT_DEVICE := k3gxx
