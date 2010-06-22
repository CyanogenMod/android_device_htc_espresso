#
# Copyright (C) 2009 The Android Open-Source Project
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

# This is the list of apps included in the generic AOSP build

DEVICE_PACKAGE_OVERLAYS := vendor/htc/espresso-open/overlay

PRODUCT_PROPERTY_OVERRIDES += \
		ro.config.ringtone=Innovation.mp3 \
		ro.config.notification_sound=Color.mp3 \
		ro.config.alarm_alert=Light.mp3 \
		ro.config.cal_notification=Vector.mp3 \
		ro.config.msg_notification=Ascend.mp3 \
		ro.com.android.wifi-watchlist=GoogleGuest \
		ro.error.receiver.system.apps=com.google.android.feedback \
		ro.setupwizard.enterprise_mode=1 \
		ro.com.google.clientidbase=android-tmobile-{country} \
		ro.com.google.locationfeatures=1 \
		ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
		ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
		ro.setupwizard.mode=OPTIONAL \
		ro.setupwizard.enable_bypass=1 \
		ro.media.enc.file.format       = 3gp,mp4 \
		ro.media.enc.vid.codec         = m4v,h263 \
		ro.media.enc.vid.h263.width    = 176,640 \
		ro.media.enc.vid.h263.height   = 144,480 \
		ro.media.enc.vid.h263.bps      = 64000,1600000 \
		ro.media.enc.vid.h263.fps      = 1,30 \
		ro.media.enc.vid.m4v.width     = 176,640 \
		ro.media.enc.vid.m4v.height    = 144,480 \
		ro.media.enc.vid.m4v.bps       = 64000,1600000 \
		ro.media.enc.vid.m4v.fps       = 1,30 \
		ro.media.dec.jpeg.memcap 	= 20000000 \
		ro.media.dec.aud.wma.enabled=1 \
		ro.media.dec.vid.wmv.enabled=1 \
		dalvik.vm.dexopt-flags=m=y \
		net.bt.name=Android \
		ro.config.sync=yes \
		dalvik.vm.stack-trace-file=/data/anr/traces.txt \
		ro.ril.def.agps.mode = 1 \
		ro.sf.lcd_density = 160 \
		ro.ril.hsdpa.category=8 \
		ro.ril.hsupa.category=5 \
		ro.ril.gprsclass = 12 \
		ro.ril.hsxpa=2 \
		ro.ril.def.agps.mode=1 \
		ro.ril.def.agps.feature=1 \
		ro.ril.disable.fd.plmn.prefix=23402,23410,23411
