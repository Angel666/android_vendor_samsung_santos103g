# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/samsung/santos103g

VENDOR_BIN := $(wildcard $(LOCAL_PATH)/proprietary/bin/**)
VENDOR_FRW := $(wildcard $(LOCAL_PATH)/proprietary/firmware/**)
VENDOR_LIBS := $(wildcard $(LOCAL_PATH)/proprietary/lib/**)
VENDOR_LIBS_DRM := $(wildcard $(LOCAL_PATH)/proprietary/lib/drm/**)
VENDOR_LIBS_EGL := $(wildcard $(LOCAL_PATH)/proprietary/lib/egl/**)
VENDOR_LIBS_HW := $(wildcard $(LOCAL_PATH)/proprietary/lib/hw/**)

PRODUCT_COPY_FILES += \
$(foreach i, $(VENDOR_BIN), $(i):system/vendor/bin/$(notdir $(i))) \
$(foreach i, $(VENDOR_FRW), $(i):system/vendor/firmware/$(notdir $(i))) \
$(foreach i, $(VENDOR_LIBS), $(i):system/vendor/lib/$(notdir $(i))) \
$(foreach i, $(VENDOR_LIBS_DRM), $(i):system/vendor/lib/drm/$(notdir $(i))) \
$(foreach i, $(VENDOR_LIBS_EGL), $(i):system/vendor/lib/egl/$(notdir $(i))) \
$(foreach i, $(VENDOR_LIBS_HW), $(i):system/vendor/lib/hw/$(notdir $(i))) 

#ETC
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/proprietary/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
$(LOCAL_PATH)/proprietary/etc/audio_policy.conf:system/vendor/etc/audio_policy.conf

