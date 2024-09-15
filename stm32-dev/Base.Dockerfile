FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Australia/Brisbane

# Install base dependencies
RUN apt-get update && apt-get install -y unzip build-essential git curl nano libncursesw5 ruby

# Install dependencies - signing keys
RUN apt-get update && apt-get install -y ca-certificates gpg wget

# Install latest cmake - https://apt.kitware.com/
RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
RUN echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null
RUN apt-get update && rm /usr/share/keyrings/kitware-archive-keyring.gpg && apt-get install -y kitware-archive-keyring
RUN apt-get update && apt-get install -y cmake

# Download and install ARM toolchain
RUN mkdir /opt/arm-gnu-toolchain
RUN wget -O /opt/arm-gnu-toolchain/arm-gnu.tar.xz "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz"
RUN tar xvf /opt/arm-gnu-toolchain/arm-gnu.tar.xz --strip-components=1 -C /opt/arm-gnu-toolchain
RUN rm /opt/arm-gnu-toolchain/arm-gnu.tar.xz
ENV ARM_TOOLCHAIN="/opt/arm-gnu-toolchain/bin"
ENV ARMGCC_DIR="/opt/arm-gnu-toolchain"

# Add ARM binaries to path
ENV PATH="${ARM_TOOLCHAIN}:${PATH}"

# Install Python 3.8 from source (this is a requirement for arm-none-eabi-gdb for some reason)
ENV PYTHON_VERSION=3.8
RUN apt-get update && apt-get install -y zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev
RUN mkdir /opt/pythontmp
RUN wget -O /opt/pythontmp/pythonsource.tgz https://www.python.org/ftp/python/3.8.17/Python-3.8.17.tgz
RUN tar xvzf /opt/pythontmp/pythonsource.tgz --strip-components=1 -C /opt/pythontmp/
WORKDIR /opt/pythontmp
RUN ./configure --prefix=/opt/python/python${PYTHON_VERSION} --enable-shared --enable-optimizations --enable-ipv6 LDFLAGS=-Wl,-rpath=/opt/python/python${PYTHON_VERSION}/lib,--disable-new-dtags
RUN make -j 16
RUN make install
RUN rm -rf /opt/pythontmp

# update path
ENV PATH="/opt/python/python${PYTHON_VERSION}/bin:${PATH}"
ENV PYTHONHOME="/opt/python/python${PYTHON_VERSION}"

# Install Ceedling
RUN gem install ceedling

# Pull in toolchain file
RUN mkdir -p /opt/stm32
COPY ./stm32_gcc.cmake /opt/stm32/

# Install dependencies - sudo
RUN apt-get update && apt-get install -y sudo

# Create user
ARG USERNAME=developer
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} \
    # Add sudo support
    && echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}

# Set work directory
WORKDIR /

# Create STM32 folder to store sdk
RUN mkdir -p /opt/stm32
RUN chmod -R 777 /opt/stm32

# Set default user
USER ${USERNAME}