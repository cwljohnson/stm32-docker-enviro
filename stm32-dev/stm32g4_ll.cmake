include_guard()
message("STM32G4 LL component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_adc.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_comp.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_cordic.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_crc.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_crs.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dac.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dma.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_exti.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_fmac.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_gpio.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_hrtim.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_i2c.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_lptim.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_lpuart.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_opamp.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_pwr.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_rcc.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_rng.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_rtc.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_spi.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_tim.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_ucpd.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_usart.c
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_utils.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Inc
    /opt/stm32/STM32CubeG4/Drivers/CMSIS/Device/ST/STM32G4xx/Include
    /opt/stm32/STM32CubeG4/Drivers/CMSIS/Include
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
    USE_FULL_LL_DRIVER
)