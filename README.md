# superbird-uboot
This is a fork of the Spotify U-Boot repository which can be found [here](https://github.com/spsgsb/uboot)\
You can find the original README in [README_spotify.md](README_spotify.md)

This requires almost no dependencies other than the ARM toolchain, which you can get by running [prep_toolchain.sh](prep_toolchain.sh)

Alternatively, you can get the toolchain from [here](https://releases.linaro.org/archive/13.11/components/toolchain/binaries/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux.tar.xz) and extract it to /opt

You can run one of the following commands to compile U-Boot:
```
./mk superbird_development
./mk superbird_production