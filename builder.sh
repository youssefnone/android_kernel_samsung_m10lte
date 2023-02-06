#!/bin/bash env

# get defconfig
make ARCH=arm64 ANDROID_PLATFORM_VERSION=10 ANDROID_MAJOR_VERSION=q CROSS_COMPILE=$(pwd)/build/aarch64-linux-android/bin/aarch64-linux-android-  exynos7870-m10lte_defconfig

# build
make ARCH=arm64 ANDROID_PLATFORM_VERSION=10 ANDROID_MAJOR_VERSION=q CROSS_COMPILE=$(pwd)/build/aarch64-linux-android/bin/aarch64-linux-android-

# place Image to right path and make a flashable file
mv arch/arm64/boot/Image build/AK
cd build/AK
zip * PKernel.zip
mv PKernel.zip ../..
cd ../..
