FROM cwljohnson/stm32-dev-base

RUN mkdir -p /opt/stm32
RUN cd /opt/stm32 && git clone --recursive https://github.com/STMicroelectronics/STM32CubeF0.git
ENV CUBE_F0="/opt/stm32/STM32CubeF0"

# Pull in CMake Driver Components
COPY ./stm32f0_ll.cmake /opt/stm32/STM32CubeF0/Drivers/
COPY ./stm32f0_hal.cmake /opt/stm32/STM32CubeF0/Drivers/

# Set work directory
WORKDIR /
