# Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../native_app_glue

LOCAL_MODULE := offscreen_render_executable
LOCAL_SRC_FILES := main.cpp
LOCAL_SRC_FILES += ../../native_app_glue/android_native_app_glue.c

LOCAL_LDLIBS := -lz -llog -landroid

include $(BUILD_EXECUTABLE)
