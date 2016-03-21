#
# Copyright 2014 The Android Open Source Project
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
#

# inherit from common cvtlp-common
-include device/asus/cvtlp-common/BoardConfigCommon.mk

# Cmhw
BOARD_HARDWARE_CLASS := device/asus/T00I/cmhw

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1782579200 # 1.7GByte
BOARD_FLASH_BLOCK_SIZE := 131072

# SELinux
BOARD_SEPOLICY_DIRS += device/asus/T00I/sepolicy

TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# Use the non-open-source parts, if they're present
-include vendor/asus/T00I/BoardConfigVendor.mk
