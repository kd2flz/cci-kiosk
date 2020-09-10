#! /bin/bash

#Run git pull
echo "Updating CCI Kiosk"
git pull https://github.com/kd2flz/cci-Kiosk

#Update the server
sudo apt update

#Upgrade the server
sudo apt upgrade -y

#Copy autostart file to /etc/xdg/openbox
sudo cp autostart /etc/xdg/openbox/
sudo chmod +x /etc/xdg/openbox/autostart

#Copy openbox configuration to kiosk home directory
sudo cp rc.xml /home/kiosk/.config/openbox

#Set up autologin (works with GDM3)
sudo cp custom.conf /etc/gdm3/

#Setup in-house time sync for using local NTP Servers 
#Will still fall back to Ubuntu time servers
#Comment out below if you wish to use the default NTP servers
#Copy timesyncd.conf to /etc/systemd for in-house time sync
sudo cp timesyncd.conf /etc/systemd/timesyncd.conf

#Setup Time Sync
sudo timedatectl set-ntp false
sudo timedatectl set-ntp on