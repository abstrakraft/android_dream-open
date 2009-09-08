LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ALL_PREBUILT += $(TARGET_OUT_INTERMEDIATE_LIBRARIES)/libOmxCore.so
$(TARGET_OUT_INTERMEDIATE_LIBRARIES)/libOmxCore.so : $(LOCAL_PATH)/libOmxCore.so | $(ACP)
	$(transform-prebuilt-to-target)
