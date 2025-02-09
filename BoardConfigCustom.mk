#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Build the 32 bit targets
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a76

# Enable 64-bit for non-zygote.
ZYGOTE_FORCE_64 := true

# Add before redbull BoardConfigCustom.mk
BOOT_KERNEL_MODULES += ftm5.ko

include device/google/redbull/BoardConfigCustom.mk

BOOT_SECURITY_PATCH := 2023-11-05
VENDOR_SECURITY_PATCH := 2023-11-05

include vendor/google/bramble/BoardConfigVendor.mk
