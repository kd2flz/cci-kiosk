#!/bin/bash

#Installation file for CCI-Kiosk on CentOS 7
#By David Rhoads
#April 2020

#Sample installation file, your Kiosk user must be named kiosk for this to work
#Special thanks to Oli Warner https://thepcspy.com, Alan D Moore http://alandmoore.com, and NovaSpirit Tech https://www.novaspirit.com/
#Update and upgrade the server
sudo yum update -y
sudo yum install -y epel-release

#Installs snaps so that chromium will work the same on debian and ubuntu
sudo yum install -y snapd
sudo systemctl enable --now snapd.socket
#install x server, openbox display manager, chromium browser (open source version of Chrome), and pulse audio, for sound
#--no-install-recommends prevents package manager from installing unnecessary packages wanted by the target packages
sudo yum groupinstall -y "X Window System" 
sudo yum install -y pulseaudio openbox sddm nano
sudo snap install chromium
#Uncommment below to install Cockpit for remote management - note, if you are using a non-ubuntu based system, like Debian, you will have to change this command
sudo apt install -y cockpit

#Uncomment below to install Citrix Workspace App and Remmina for remote desktop connections
#!Please! Make sure you replace this link with the link to the latest Citrix Workspace App .deb download
#wget https://downloads.citrix.com/16914/icaclient_19.12.0.19_amd64.deb?__gda__=1585861582_d3571872a714920c2bb3de2ac903c99e
#sudo apt install -y --no-install-recommends ./icaclient_19.12.0.19_amd64.deb
sudo yum install -y remmina

#Add user "Kiosk"
sudo adduser kiosk &&

#Adds Kiosk user to audio group
sudo usermod -a -G audio kiosk

#Copy configuration scripts to correct directories
#copy autostart file to /etc/xdg/openbox
sudo cp autostart /etc/xdg/openbox/
sudo chmod +x /etc/xdg/openbox/autostart
#Copy autologin file to /etc/sddm.conf.d/autologin.conf
sudo cp autologin.conf /etc/sddm/

#Change grub options
#Use this option with caution IT MAY BREAK YOUR BOOTLOADER
#Uncomment below to disable text on screen at boot
#sudo cp grub /etc/default
#sudo update-grub