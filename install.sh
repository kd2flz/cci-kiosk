#!/bin/bash

#Installation file for CCI-Kiosk
#By David Rhoads
#April 2020

#Sample installation file, your Kiosk user must be named kiosk for this to work
#Special thanks to Oli Warner https://thepcspy.com, Alan D Moore http://alandmoore.com, and NovaSpirit Tech https://www.novaspirit.com/
#Update the server
sudo apt update

#Upgrade the server
sudo apt upgrade -y

#install x server, openbox display manager, chromium browser (open source version of Chrome), and pulse audio, for sound
#--no-install-recommends prevents package manager from installing unnecessary packages wanted by the target packages
sudo apt install -y --no-install-recommends xorg openbox chromium-browser pulseaudio

#Uncommment below to install Cockpit for remote management - note, if you are using a non-ubuntu based system, like Debian, you will have to change this command
sudo apt install -y cockpit

#Uncomment below to install Citrix Workspace App and Remmina for remote desktop connections
#!Please! Make sure you replace this link with the link to the latest Citrix Workspace App .deb download
#wget https://downloads.citrix.com/16914/icaclient_19.12.0.19_amd64.deb?__gda__=1585861582_d3571872a714920c2bb3de2ac903c99e
#sudo apt install -y --no-install-recommends ./icaclient_19.12.0.19_amd64.deb
#sudo apt install -y remmina

#Install alsa for sound
sudo apt install -y alsa
sudo apt install alsa-utils
#Now you can adjust volume using the alsamixer command

#Install gdm3 display manager
sudo apt install --no-install-recommends gdm3

#Install tint2 task manager
sudo apt install -y tint2

#Add user "Kiosk"
sudo adduser kiosk &&

#Adds Kiosk user to audio group
sudo usermod -a -G audio kiosk

#Copy configuration scripts to correct directories
#sudo cp kiosk.conf /etc/init.d/
#sudo cp kiosk.sh /opt/
sudo cp autostart /etc/xdg/openbox/
sudo chmod +x /etc/xdg/openbox/autostart
#This enables autologin for the gdm3 display manager
#sudo cp custom.conf /etc/gdm3/

#Change grub options
#Use this option with caution IT MAY BREAK YOUR BOOTLOADER
#Uncomment below to disable text on screen at boot
sudo cp grub /etc/default
sudo update-grub