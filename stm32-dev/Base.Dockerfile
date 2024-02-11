FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Australia/Brisbane

# Install base dependencies
RUN apt-get update && apt-get install -y unzip build-essential git python3 python3-pip curl nano libncursesw5 ruby

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
# COPY ./arm-gnu-toolchain-13.2-arm-none-eabi.tar.xz /opt/arm-gnu-toolchain/arm-gnu.tar.xz
RUN tar xvf /opt/arm-gnu-toolchain/arm-gnu.tar.xz --strip-components=1 -C /opt/arm-gnu-toolchain
RUN rm /opt/arm-gnu-toolchain/arm-gnu.tar.xz
ENV ARM_TOOLCHAIN="/opt/arm-gnu-toolchain/bin"
ENV ARMGCC_DIR="/opt/arm-gnu-toolchain"

# Add ARM binaries to path
ENV PATH="${ARM_TOOLCHAIN}:${PATH}"

# Install Ceedling
RUN gem install ceedling

# Set work directory
WORKDIR /