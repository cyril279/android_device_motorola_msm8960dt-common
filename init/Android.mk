ifeq ($(TARGET_BOARD_PLATFORM),msm8960)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CPPFLAGS := \
    -Wall \
    -Werror -Wno-error=deprecated-declarations \
    -Wno-unused-parameter \
    -DANDROID_TARGET=\"$(TARGET_BOARD_PLATFORM)\"
LOCAL_SRC_FILES := \
    init_msm.cpp \
    init_$(TARGET_BOARD_PLATFORM).cpp

LOCAL_MODULE := libinit_msm
include $(BUILD_STATIC_LIBRARY)

endif
