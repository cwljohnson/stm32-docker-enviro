include_guard()
message("STM32G4XX_HAL_OPAMP_EX component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_opamp_ex.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Inc
    /opt/stm32/STM32CubeG4/Drivers/STM32G4xx_HAL_Driver/Inc/Legacy
    /opt/stm32/STM32CubeG4/Drivers/CMSIS/Device/ST/STM32G4xx/Include
    /opt/stm32/STM32CubeG4/Drivers/CMSIS/Include
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
    USE_HAL_DRIVER
)