#!/bin/sh

mkdir -p proprietary

adb pull /system/bin/akmd proprietary/akmd
chmod 755 proprietary/akmd

adb pull /system/etc/firmware/wl1271.bin proprietary/wl1271.bin
adb pull /system/etc/AudioPara4.csv proprietary/AudioPara4.csv
adb pull /system/etc/AudioPara4_WB.csv proprietary/AudioPara4_WB.csv
adb pull /system/etc/AudioFilter.csv proprietary/AudioFilter.csv
adb pull /system/etc/AudioPreProcess.csv proprietary/AudioPreProcess.csv

adb pull /system/lib/egl/libEGL_adreno200.so proprietary/libEGL_adreno200.so
adb pull /system/lib/egl/libGLES_android.so proprietary/libGLES_android.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so proprietary/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libGLESv2_adreno200.so proprietary/libGLESv2_adreno200.so

adb pull /system/lib/libgps.so proprietary/libgps.so
adb pull /system/etc/T-Mobile_USA_Intermediate_CA_01.der proprietary/T-Mobile_USA_Intermediate_CA_01.der
adb pull /system/etc/T-Mobile_USA_Issuer_CA_01.der proprietary/T-Mobile_USA_Issuer_CA_01.der
adb pull /system/etc/T-Mobile_USA_Issuer_CA_02.der proprietary/T-Mobile_USA_Issuer_CA_02.der
adb pull /system/etc/T-Mobile_USA_Root_CA.der proprietary/T-Mobile_USA_Root_CA.der

adb pull /system/lib/libaudioeq.so proprietary/libaudioeq.so
adb pull /system/lib/libgps.so proprietary/libgps.so
adb pull /system/lib/libhtc_acoustic.so proprietary/libhtc_acoustic.so
adb pull /system/lib/libhtc_ril.so proprietary/libhtc_ril.so
adb pull /system/lib/libmm-adspsvc.so proprietary/libmm-adspsvc.so
adb pull /system/lib/libmmclient.so proprietary/libmmclient.so
adb pull /system/lib/libcamera.so proprietary/libcamera.so
adb pull /system/lib/libOmxH264Dec.so proprietary/libOmxH264Dec.so
adb pull /system/lib/libOmxMpeg4Dec.so proprietary/libOmxMpeg4Dec.so
adb pull /system/lib/libOmxVidEnc.so proprietary/libOmxVidEnc.so
adb pull /system/lib/libspeech.so proprietary/libspeech.so

adb pull /system/etc/pvasflocal.cfg proprietary/pvasflocal.cfg
adb pull /system/lib/libomx_wmadec_sharedlibrary.so proprietary/libomx_wmadec_sharedlibrary.so
adb pull /system/lib/libomx_wmvdec_sharedlibrary.so proprietary/libomx_wmvdec_sharedlibrary.so
adb pull /system/lib/libpvasfcommon.so proprietary/libpvasfcommon.so
adb pull /system/lib/libpvasflocalpbreg.so proprietary/libpvasflocalpbreg.so
adb pull /system/lib/libpvasflocalpb.so proprietary/libpvasflocalpb.so

adb pull /system/lib/hw/copybit.msm7k.so proprietary/copybit.msm7k.so
adb pull /system/lib/hw/gralloc.default.so proprietary/gralloc.default.so
adb pull /system/lib/hw/gralloc.msm7k.so proprietary/gralloc.msm7k.so
adb pull /system/lib/hw/sensors.espresso.so proprietary/sensors.espresso.so
adb pull /system/lib/hw/lights.msm7k.so proprietary/lights.msm7k.so
