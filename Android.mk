LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Selfie
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := $(DEFAULT_SYSTEM_DEV_CERTIFICATE)

LOCAL_OVERRIDES_PACKAGES := Camera2

LOCAL_MODULE_TARGET_ARCH := arm64
LOCAL_SRC_FILES := prebuilt/selfie.apk

LOCAL_OPTIONAL_USES_LIBRARIES := \
       androidx.camera.extensions.impl \
       androidx.window.extensions \
       androidx.window.sidecar

include $(BUILD_PREBUILT)
