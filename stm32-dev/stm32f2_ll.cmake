include_guard()
message("STM32F2 LL component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_adc.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_crc.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_dac.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_dma.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_exti.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_fsmc.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_gpio.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_i2c.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_pwr.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_rcc.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_rng.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_rtc.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_sdmmc.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_spi.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_tim.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_usart.c
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_utils.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeF2/Drivers/STM32F2xx_HAL_Driver/Inc
    /opt/stm32/STM32CubeF2/Drivers/CMSIS/Device/ST/STM32F2xx/Include
    /opt/stm32/STM32CubeF2/Drivers/CMSIS/Include
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
    USE_FULL_LL_DRIVER
)