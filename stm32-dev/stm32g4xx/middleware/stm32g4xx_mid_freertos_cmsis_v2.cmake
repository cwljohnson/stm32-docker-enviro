include_guard()
message("STM32G4XX_MID_FREERTOS CMSIS_V2 component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
)

include(stm32g4xx_mid_freertos)