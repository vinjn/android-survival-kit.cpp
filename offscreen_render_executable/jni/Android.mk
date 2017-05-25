# Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../3rdparty/native_app_glue

LOCAL_MODULE := offscreen_render_executable
LOCAL_SRC_FILES := main.cpp
LOCAL_SRC_FILES += ../../3rdparty/native_app_glue/android_native_app_glue.c

LOCAL_LDLIBS := -lz -llog -landroid -lGLESv3 -lEGL

include $(BUILD_EXECUTABLE)
