# Installing CCI-Kiosk

CCI Kiosk is built to be installed on top of an existing Linux distribution. I've mostly been testing it with Ubuntu. I would recommend using the latest long-term-support (LTS) release, as these are supported for many years. However, it can also be installed on top of Debian, and probably any Debian based distro. In addition, with a bit of tweaking the script should work on any Linux distro.

## Ubuntu
Here's how to install CCI-Kiosk on Ubuntu
1. Download [Ubuntu Server](https://ubuntu.com/download/server/). You will want to pick the LTS release. 
2. Flash the OS to a USB drive. The easiest tool to use is [Etcher](https://www.balena.io/etcher/). This is self explanatory but it is important that you chose the right disk and that you have no critical data on it as it WILL be deleted.
3. Install Ubuntu. It's fairly straightforward, but you can follow [this](https://ubuntu.com/tutorials/tutorial-install-ubuntu-server#1-overview) tutorial. You will need to boot the computer off your installation USB. This may require changing the BIOS settings. Go ahead and overwrite whatever you have on the disk.
4. Once the installation is complete, make sure Git is installed (it should be). After you log in, Type the following command: `sudo apt install -y git` You will need to type your password when prompted.
5. Clone the cci-kiosk repository: `git clone https://github.com/kd2flz/cci-kiosk`. This should clone the repository into your current directory. Do a `ls` command to make sure that "cci-kiosk" shows up as a folder.
6. Switch into the cci-kiosk directory with the following command: `cd cci-kiosk`
7. Make the install_ubuntu.sh script executable with the following command: `chmod +x install_ubuntu.sh`. Note that pressing tab autocompletes commands (this will help speed up the process if you're trying to type this all).
8. Run the installation script with the following command: `./install_ubuntu.sh`. Be sure to answer yes to any questions it asks. At the end of this script, you will have to create a password for the new "kiosk" user it creates.
9. Drink a glass of something good.
10. After the installation is complete, restart your system with `sudo reboot`
11. Click on the gear icon (should be either right below the password window or in the bottom right of your screen, depending on which version of Gnome Desktop you're running). Select "Openbox" as your desktop session.
12. Log back into your user, and go to system settings. The best is to press the windows key to search and then type "settings."
13. Go to "users", and click "unlock". You will need to enter your password. Go to the settings for the "kiosk" user and toggle autologin to on
14. While your still logged in, you will likely want the ip address of the machine for managing later. The easiest way to do this is to go to "Network" in settings, and click the gear icon by your primary network connection. Your IP address should be listed.
15. When you're ready, reboot your machine and it should automatically pull up the Github site for this project. This can be changed! See the [management](management.md) page. 