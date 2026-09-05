FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Australia/Brisbane

# Install base dependencies
RUN apt-get update && apt-get install -y unzip build-essential git curl nano ruby sudo python3 gdb

# Install dependencies - signing keys
RUN apt-get update && apt-get install -y ca-certificates gpg wget

# Install latest cmake - https://apt.kitware.com/
RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
RUN echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ noble main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null
RUN apt-get update && rm /usr/share/keyrings/kitware-archive-keyring.gpg && apt-get install -y kitware-archive-keyring
RUN apt-get update && apt-get install -y cmake

# Download and install ARM toolchain
RUN mkdir /opt/arm-gnu-toolchain
COPY toolchain-cache/arm-gnu-toolchain-15.3.rel1.tar.xz /opt/arm-gnu-toolchain/arm-gnu.tar.xz
# RUN wget -O /opt/arm-gnu-toolchain/arm-gnu.tar.xz "https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz"
RUN tar xvf /opt/arm-gnu-toolchain/arm-gnu.tar.xz --strip-components=1 -C /opt/arm-gnu-toolchain && rm /opt/arm-gnu-toolchain/arm-gnu.tar.xz
ENV ARM_TOOLCHAIN="/opt/arm-gnu-toolchain/bin"
ENV ARMGCC_DIR="/opt/arm-gnu-toolchain"

# Add ARM binaries to path
ENV PATH="${ARM_TOOLCHAIN}:${PATH}"

# Install Ceedling
RUN gem install --no-document ceedling -v 1.1.7

# Create STM32 folder to store sdk
RUN mkdir -p /opt/stm32
RUN chmod -R 777 /opt/stm32

# Pull in toolchain file
COPY ./stm32_gcc.cmake /opt/stm32/

# Remove default ubuntu user, required for ubuntu docker images after 23
RUN userdel -r ubuntu

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

# Set default user
USER ${USERNAME}