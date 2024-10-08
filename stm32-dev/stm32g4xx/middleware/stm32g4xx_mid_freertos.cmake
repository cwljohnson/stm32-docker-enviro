include_guard()
message("STM32G4XX_MID_FREERTOS component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/croutine.c
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/list.c
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/queue.c
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/tasks.c
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/timers.c

    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/include
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
)

if(FREERTOS_HEAP_1)
target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_1.c
)
elseif(FREERTOS_HEAP_2)
target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_2.c
)
elseif(FREERTOS_HEAP_3)
target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_3.c
)
elseif(FREERTOS_HEAP_4)
target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
)
elseif(FREERTOS_HEAP_5)
target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeG4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_5.c
)
else()
    message(WARNING "No FreeRTOS heap has been selected!")
endif()