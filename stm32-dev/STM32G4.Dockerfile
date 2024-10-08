FROM cwljohnson/stm32-dev-base

RUN cd /opt/stm32 && git clone --recursive https://github.com/STMicroelectronics/STM32CubeG4.git
ENV CUBE_G4="/opt/stm32/STM32CubeG4"

# Pull in CMake Driver Components
COPY stm32g4xx/drivers/* /opt/stm32/STM32CubeG4/Drivers/
COPY stm32g4xx/middleware/* /opt/stm32/STM32CubeG4/Middlewares/

# Set work directory
WORKDIR /
