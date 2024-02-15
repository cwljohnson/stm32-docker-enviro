include_guard()
message("FreeRTOS Middleware component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/croutine.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/list.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/queue.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/tasks.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/timers.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3/port.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/include
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2
    /opt/stm32/STM32CubeF2/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
    
)