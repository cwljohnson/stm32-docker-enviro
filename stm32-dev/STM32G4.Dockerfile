FROM cwljohnson/stm32-dev-base

RUN cd /opt/stm32 && git clone --recursive https://github.com/STMicroelectronics/STM32CubeG4.git
ENV CUBE_F2="/opt/stm32/STM32CubeG4"

# Pull in CMake Driver Components
COPY ./stm32g4_ll.cmake /opt/stm32/STM32CubeG4/Drivers/
COPY ./stm32g4_hal.cmake /opt/stm32/STM32CubeG4/Drivers/

# Set work directory
WORKDIR /
