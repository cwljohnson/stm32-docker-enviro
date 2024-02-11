include_guard()
message("STM32F0 HAL component is included.")

target_sources(${PROJECT_NAME} PRIVATE
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_adc.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_adc_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_can.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_cec.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_comp.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_cortex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_crc.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_crc_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_dac.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_dac_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_dma.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_exti.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_flash.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_flash_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_gpio.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_i2c.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_i2c_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_i2s.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_irda.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_iwdg.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_msp_template.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_pcd.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_pcd_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_pwr.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_pwr_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_rcc.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_rcc_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_rtc.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_rtc_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_smartcard.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_smartcard_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_smbus.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_spi.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_spi_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_tim.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_tim_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_timebase_rtc_alarm_template.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_timebase_rtc_wakeup_template.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_timebase_tim_template.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_tsc.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_uart.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_uart_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_usart.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_usart_ex.c
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Src/stm32f0xx_hal_wwdg.c
)

target_include_directories(${PROJECT_NAME} PUBLIC
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Inc
    /opt/stm32/STM32CubeF0/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy
    /opt/stm32/STM32CubeF0/Drivers/CMSIS/Device/ST/STM32F0xx/Include
    /opt/stm32/STM32CubeF0/Drivers/CMSIS/Include
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
    USE_HAL_DRIVER
)