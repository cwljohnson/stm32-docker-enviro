#!/bin/bash

docker build stm32-dev/ -f ./stm32-dev/Base.Dockerfile -t cwljohnson/stm32-dev-base
docker build stm32-dev/ -f ./stm32-dev/STM32F0.Dockerfile -t cwljohnson/stm32-dev-f0