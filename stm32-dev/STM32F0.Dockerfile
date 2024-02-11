FROM cwljohnson/stm32-dev-base

RUN mkdir /opt/stm32
RUN cd /opt/stm32 && git clone --recursive https://github.com/STMicroelectronics/STM32CubeF0.git
ENV CUBE_F0="/opt/stm32/STM32CubeF0"

# Set work directory
WORKDIR /
