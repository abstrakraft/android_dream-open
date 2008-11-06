LOCAL_PATH := $(call my-dir)

# kernel binary
#
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

# keyboard layouts
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/trout-keypad-v3.kl:system/usr/keylayout/trout-keypad-v3.kl \
	$(LOCAL_PATH)/trout-keypad-qwertz.kl:system/usr/keylayout/trout-keypad-qwertz.kl \
	$(LOCAL_PATH)/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl

# default apns list
#
PRODUCT_COPY_FILES += \
	development/data/etc/apns-conf_sdk.xml:system/etc/apns-conf.xml

# keyboard maps
#
include $(CLEAR_VARS)
LOCAL_SRC_FILES := trout-keypad-v3.kcm
include $(BUILD_KEY_CHAR_MAP)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := trout-keypad-qwertz.kcm
include $(BUILD_KEY_CHAR_MAP)

# board specific init.rc
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.trout.rc:root/init.trout.rc

# prebuilt wifi driver
#
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wlan.ko:system/lib/modules/wlan.ko

# htc proprietary code
#
proprietary := $(LOCAL_PATH)/proprietary

PRODUCT_COPY_FILES += \
	$(proprietary)/libhtc_ril.so:system/lib/libhtc_ril.so \
	$(proprietary)/libaudioeq.so:system/lib/libaudioeq.so \
	$(proprietary)/akmd:system/bin/akmd \
	$(proprietary)/AudioFilter.csv:system/etc/AudioFilter.csv

PRODUCT_COPY_FILES += \
	$(proprietary)/AudioPara4.csv:system/etc/AudioPara4.csv \
	$(proprietary)/gps.conf:system/etc/gps.conf

PRODUCT_COPY_FILES += \
	$(proprietary)/tiwlan.ini:system/etc/wifi/tiwlan.ini \
	$(proprietary)/Fw1251r1c.bin:system/etc/wifi/Fw1251r1c.bin
