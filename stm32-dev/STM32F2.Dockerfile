FROM cwljohnson/stm32-dev-base

RUN mkdir -p /opt/stm32
RUN cd /opt/stm32 && git clone --recursive https://github.com/STMicroelectronics/STM32CubeF2.git
ENV CUBE_F2="/opt/stm32/STM32CubeF2"

# Pull in CMake Driver Components
COPY ./stm32f2_ll.cmake /opt/stm32/STM32CubeF2/Drivers/
COPY ./stm32f2_hal.cmake /opt/stm32/STM32CubeF2/Drivers/
COPY ./stm32f2_mid_freertos.cmake /opt/stm32/STM32CubeF2/Middlewares/
COPY ./stm32f2_mid_usb.cmake /opt/stm32/STM32CubeF2/Middlewares/

# Set work directory
WORKDIR /
