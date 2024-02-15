include_guard()
message("USB Middleware component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeF2/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c
    /opt/stm32/STM32CubeF2/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c
    /opt/stm32/STM32CubeF2/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c
    /opt/stm32/STM32CubeF2/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeF2/Middlewares/ST/STM32_USB_Device_Library/Core/Inc
    /opt/stm32/STM32CubeF2/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
    
)