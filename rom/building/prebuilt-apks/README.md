# Documentation - Prebuilt APKs

## How To

Right now, [*katsuna-build-gradle*](https://github.com/Katsuna/build_scripts/blob/master/build_server/katsuna-build-gradle) handles the gradle building of all Katsuna Apps (KApps) and moves the produced binaries inside the correct directories under the repository [*katsuna/vendor_kapps*](https://github.com/Katsuna/vendor_kapps). You can check that repository about the structure of the folders and the Android.mk, besides the instructions below.

Generally, you need to:

1. Update **Android.mk** and change the name accordingly:
```
include $(CLEAR_VARS)
LOCAL_MODULE := KatsunaCallsPrebuilt
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)
```
2. Update **products/common.mk** and add the new file below the last one, in an alphabetical order. **NOTICE**: Every line besides the last one needs the **\\** character in the end:
```
PRODUCT_PACKAGES += \
    KatsunaCallsPrebuilt \
    KatsunaContactsPrebuilt
```
3. Add the **apks into the vendor/kapps** directory.
