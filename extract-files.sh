#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

VENDOR=semc
DEVICE=shakira

rm -r ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary

# Prebuilt kl keymaps
adb pull /system/usr/keylayout/shakira_keypad.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/systemconnector.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/shakira_keypad.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/systemconnector.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary

## RIL related stuff 
adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/port-bridge ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdll.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libuim.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary

## Camera proprietaries
adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary 
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary

## OMX proprietaries
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxQcelpDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary

## FIRMWARE
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/TIInit_7.2.31.bts ../../../vendor/$VENDOR/$DEVICE/proprietary

## WIFI & BT TI1271
adb pull /system/bin/hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/tiwlan.ini ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/wpa_supplicant.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/tiwlan_firmware.bin ../../../vendor/$VENDOR/$DEVICE/proprietary

## Adreno 200 files
adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgsl.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary

## Other libraries and proprietary binaries
adb pull /system/lib/libaudioeq.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/sensors.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/akmd2 ../../../vendor/$VENDOR/$DEVICE/proprietary

#offline charger
adb pull /system/bin/chargemon ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/semc_chargalg ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/updatemiscta ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmiscta.so ../../../vendor/$VENDOR/$DEVICE/proprietary

#hw
adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/hal_seport.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libsystemconnector/libuinputdevicejni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libsystemconnector_hal_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary


./setup-makefiles.sh

