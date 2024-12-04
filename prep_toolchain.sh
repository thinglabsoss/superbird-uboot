#!/bin/bash
set -e
Green='\033[0;32m'        # Green
Color_Off='\033[0m'       # Text Reset

echo -e "${Green}This script will download the GCC toolchain needed for compiling to /opt."
read -p "Continue? [y/n]" -r
echo -e "${Color_Off}"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e "${Green}Root is needed to extract to /opt. Please enter your password${Color_Off}"
    sudo echo -e "${Green}Got sudo permissions${Color_Off}"
    echo -e "${Green}Downloading toolchain from releases.linaro.org to /tmp${Color_Off}"
    wget -O /tmp/gcc-aarch64-toolchain.tar.xz "https://releases.linaro.org/archive/13.11/components/toolchain/binaries/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux.tar.xz" 
    echo -e "${Green}Extracting toolchain to /opt/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/${Color_Off}"
    sudo tar -xf /tmp/gcc-aarch64-toolchain.tar.xz -C /opt/
    rm -rf /tmp/gcc-aarch64-toolchain.tar.xz
    echo -e "${Green}Done!${Color_Off}"
else
    echo "Exiting"
fi
