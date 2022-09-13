#!/bin/bash

# export
export PLATFORM_VERSION=10
export ANDROID_MAJOR_VERSION=q
export ARCH=arm64

# defconfig
export ANDROID_MAJOR_VERSION=q
make m10lte_defconfig

# build
export ANDROID_MAJOR_VERSION=q
make -j40

# final format AK
mv arch/arm64/boot/Image AK/
zip kernel.zip AK/*
