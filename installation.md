# Installing CCI-Kiosk

CCI Kiosk is built to be installed on top of an existing Linux distribution. I've mostly been testing it with Ubuntu. I would recommend using the latest long-term-support (LTS) release, as these are supported for many years. However, it can also be installed on top of Debian, and probably any Debian based distro. In addition, with a bit of tweaking the script should work on any Linux distro.

## Ubuntu
Here's how to install CCI-Kiosk on Ubuntu
1. Download [Ubuntu](https://ubuntu.com/download). You will want to pick the LTS release. Note that if you are trying to use lower-spec hardware, it may be better to use an Ubuntu spin like Xubuntu that uses less resources
2. Flash the OS to a USB drive. The easiest tool to use is [Etcher](https://www.balena.io/etcher/). This is self explanatory but it is critical that you chose the right disk and that you have no critical data on it as it WILL be deleted.
3. Install Ubuntu. It's fairly straightforward, but you can follow [this](https://ubuntu.com/tutorials/tutorial-install-ubuntu-desktop#1-overview) tutorial. You will need to boot the computer off your installation USB. This may require changing the BIOS settings. Go ahead and overwrite whatevery you have on the disk.
4. 