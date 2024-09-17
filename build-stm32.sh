#!/bin/bash

# any error codes will cause the script to exit
set -e

# download compiler toolchain if it doesn't already exist
if [ ! -f stm32-dev/arm-gnu-toolchain-13.2.rel1.tar.xz ]; then
    echo "Downloading ARM toolchain"
    wget -O stm32-dev/arm-gnu-toolchain-13.2.rel1.tar.xz "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz"
fi

docker build stm32-dev/ -f ./stm32-dev/Base.Dockerfile -t cwljohnson/stm32-dev-base
docker build stm32-dev/ -f ./stm32-dev/STM32G4.Dockerfile -t cwljohnson/stm32-dev-g4
docker build stm32-dev/ -f ./stm32-dev/STM32F0.Dockerfile -t cwljohnson/stm32-dev-f0
docker build stm32-dev/ -f ./stm32-dev/STM32F2.Dockerfile -t cwljohnson/stm32-dev-f2