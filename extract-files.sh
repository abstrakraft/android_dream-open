#!/bin/sh

mkdir -p proprietary
adb pull /system/etc/AudioFilter.csv proprietary/AudioFilter.csv
adb pull /system/etc/AudioPara4.csv proprietary/AudioPara4.csv
adb pull /system/etc/gps.conf proprietary/gps.conf
adb pull /system/bin/akmd proprietary/akmd
adb pull /system/lib/libhtc_ril.so proprietary/libhtc_ril.so
chmod 755 proprietary/akmd

