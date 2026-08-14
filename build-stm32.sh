#!/bin/bash

# any error codes will cause the script to exit
set -e

TOOLCHAIN="https://gitlab.arm.com/api/v4/projects/tooling%2Fgnu-toolchains-for-arm/packages/generic/gnu-toolchain/15.3.rel1/arm-gnu-toolchain-15.3.rel1-x86_64-arm-none-eabi.tar.xz"

# download compiler toolchain if it doesn't already exist
if [ ! -f stm32-dev/toolchain-cache/arm-gnu-toolchain-15.3.rel1.tar.xz ]; then
    echo "Downloading ARM toolchain"
    wget -O stm32-dev/toolchain-cache/arm-gnu-toolchain-15.3.rel1.tar.xz "$TOOLCHAIN"
fi

docker build stm32-dev/ -f ./stm32-dev/Base.Dockerfile -t cwljohnson/stm32-dev-base
docker build stm32-dev/ -f ./stm32-dev/STM32G4.Dockerfile -t cwljohnson/stm32-dev-g4
# docker build stm32-dev/ -f ./stm32-dev/STM32F0.Dockerfile -t cwljohnson/stm32-dev-f0
# docker build stm32-dev/ -f ./stm32-dev/STM32F2.Dockerfile -t cwljohnson/stm32-dev-f2