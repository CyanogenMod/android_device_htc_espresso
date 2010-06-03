# Build configuration for AOSP on T-Mobile myTouch 3G Slide
$(call inherit-product, build/target/product/generic.mk)
$(call inherit-product, vendor/htc/espresso-open/device_espresso.mk)

PRODUCT_PACKAGES += \
    DeskClock \
    DownloadProvider \
    Gallery3D \
    GlobalSearch \
    Launcher2 \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    SoundRecorder \
    VisualizationWallpers \
    VoiceDialer \
    libRS \
    librs_jni

# How this product is called in the build system
PRODUCT_NAME := htc_espresso

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_BRAND := tmobile
PRODUCT_DEVICE := espresso-open

# The user-visible product name
PRODUCT_MODEL := T-Mobile myTouch 3G Slide
PRODUCT_MANUFACTURER := HTC

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

# This is the list of locales included in AOSP builds
PRODUCT_LOCALES := en_US en_GB fr_FR it_IT de_DE es_ES