include_guard()
message("STM32G4XX_LL_RTC component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_rtc.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Inc
    /opt/stm32/STM32CubeG4/Drivers/CMSIS/Device/ST/STM32G4xx/Include
    /opt/stm32/STM32CubeG4/Drivers/CMSIS/Include
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
    USE_FULL_LL_DRIVER
)