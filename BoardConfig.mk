-include device/semc/msm7x27-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := shakira
TARGET_SPECIFIC_HEADER_PATH := device/semc/shakira/include

TARGET_OTA_ASSERT_DEVICE := X8i,X8a,shakira

-include device/semc/msm7x27-common/Android.mk
