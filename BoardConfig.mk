#
# Copyright 2017 The Android Open Source Project
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

DEVICE_PATH := device/huawei/madrid
ALLOW_MISSING_DEPENDENCIES=true



# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci slub_min_objects=12 unmovable_isolate1=2:192M,3:224M,4:256M androidboot.selinux=enforcing buildvariant=user
BOARD_KERNEL_CMDLINE += androidboot.super_partition=system
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --header_version 1
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# Resolution
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1560

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 

# Platform
TARGET_BOARD_PLATFORM := mt6765
TARGET_BOOTLOADER_BOARD_NAME := mt6765
TARGET_NO_BOOTLOADER := true
PLATFORM_SDK_VERSION = 28

# TWRP
TW_DEVICE_VERSION := $(shell date -u +"%Y%m%d")
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := hwservicemanager keymaster-3-0
TW_CRYPTO_SYSTEM_VOLD_MOUNT := vendor

# Vendor
PLATFORM_SECURITY_PATCH := 2099-12-31
TARGET_COPY_OUT_VENDOR := vendor
PLATFORM_VERSION := 99.99.99

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
