#!/bin/bash

WDIR=$(pwd)

make O=out ARCH=arm64 CC=clang CROSS_COMPILE=aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CROSS_COMPILE_ARM32=arm-linux-gnueabi- LLVM=1 LLVM_IAS=1 nethunter_defconfig

mkdir -p $WDIR/out/hal/phydm/
cp drivers/staging/rtl8192eu/hal/phydm/phydm.mk $WDIR/out/hal/phydm/

make -j16 O=out ARCH=arm64 CC=clang CROSS_COMPILE=aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CROSS_COMPILE_ARM32=arm-linux-gnueabi- LLVM=1 LLVM_IAS=1
