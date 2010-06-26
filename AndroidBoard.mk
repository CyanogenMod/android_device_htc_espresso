LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

ifeq ($(TARGET_PREBUILT_RECOVERY_KERNEL),)
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery_kernel
endif

file := $(INSTALLED_RECOVERY_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_RECOVERY_KERNEL) | $(ACP)
       $(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.espresso.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.espresso.rc | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/h2w_headset.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/h2w_headset.kl | $(ACP)
$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/latte-keypad-v0.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/latte-keypad-v0.kl | $(ACP)
$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/latte-keypad-v1.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/latte-keypad-v1.kl | $(ACP)
$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/latte-keypad-v2.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/latte-keypad-v2.kl | $(ACP)
$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/qwerty.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/qwerty.kl | $(ACP)
$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/lib/libhtc_acoustic.so
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/libhtc_acoustic.so | $(ACP)
$(transform-prebuilt-to-target)

file := $(TARGET_OUT)/lib/libaudioeq.so
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/proprietary/libaudioeq.so | $(ACP)
$(transform-prebuilt-to-target)


# This will install the file in /system/etc
#
include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := AudioFilter.csv
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := AudioPreProcess.csv
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := AudioPara4.csv
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := AudioPara4_WB.csv
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := vold.conf
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := gps.conf
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libgps.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudiopolicy.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcamera.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libhtc_ril.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

# WiFi driver and firmware
local_target_dir := $(TARGET_OUT_ETC)/firmware

include $(CLEAR_VARS)
LOCAL_MODULE := wl1271.bin
LOCAL_MODULE_TAGS := user
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libmm-adspsvc.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxH264Dec.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxMpeg4Dec.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxVidEnc.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

file := $(TARGET_RECOVERY_ROOT_OUT)/etc/fstab
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/recovery_fstab | $(ACP)
	$(transform-prebuilt-to-target)
	
file := $(TARGET_OUT)/etc/fstab
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/boot_fstab | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := qwerty.kcm.bin
include $(BUILD_KEY_CHAR_MAP)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := qwerty2.kcm.bin
include $(BUILD_KEY_CHAR_MAP)

# Prebuilt Modules
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \
$(LOCAL_PATH)/sdio.ko:system/lib/modules/sdio.ko 

# Extra Keypad Binaries
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/latte-keypad-v0.kcm.bin:system/usr/keychars/latte-keypad-v0.kcm.bin \
$(LOCAL_PATH)/latte-keypad-v1.kcm.bin:system/usr/keychars/latte-keypad-v1.kcm.bin \
$(LOCAL_PATH)/latte-keypad-v2.kcm.bin:system/usr/keychars/latte-keypad-v2.kcm.bin

# Proprietary GPS
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/proprietary/T-Mobile_USA_Intermediate_CA_01.der:system/etc/T-Mobile_USA_Intermediate_CA_01.der \
$(LOCAL_PATH)/proprietary/T-Mobile_USA_Issuer_CA_01.der:system/etc/T-Mobile_USA_Issuer_CA_01.der \
$(LOCAL_PATH)/proprietary/T-Mobile_USA_Issuer_CA_02.der:system/etc/T-Mobile_USA_Issuer_CA_02.der \
$(LOCAL_PATH)/proprietary/T-Mobile_USA_Root_CA.der:system/etc/T-Mobile_USA_Root_CA.der \

# Proprietary
# See README on how to get the proprietary pack
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/proprietary/libGLES_android.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/proprietary/libspeech.so:system/lib/libspeech.so \
    $(LOCAL_PATH)/proprietary/akmd:system/bin/akmd \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    $(LOCAL_PATH)/proprietary/pvasflocal.cfg:system/etc/pvasflocal.cfg \
    $(LOCAL_PATH)/proprietary/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so\
    $(LOCAL_PATH)/proprietary/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so\
    $(LOCAL_PATH)/proprietary/libpvasfcommon.so:system/lib/libpvasfcommon.so \
    $(LOCAL_PATH)/proprietary/libpvasflocalpbreg.so:system/lib/libpvasflocalpbreg.so \
    $(LOCAL_PATH)/proprietary/libpvasflocalpb.so:system/lib/libpvasflocalpb.so \
    $(LOCAL_PATH)/proprietary/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so \
    $(LOCAL_PATH)/proprietary/gralloc.default.so:system/lib/hw/gralloc.default.so \
    $(LOCAL_PATH)/proprietary/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    $(LOCAL_PATH)/proprietary/sensors.espresso.so:system/lib/hw/sensors.espresso.so \
    $(LOCAL_PATH)/proprietary/lights.msm7k.so:system/lib/hw/lights.msm7k.so

