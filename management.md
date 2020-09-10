# Managing CCI Kiosk
CCI-Kiosk is a Linux-based thin client.

## Navigation
[Read Me](README.md)

[Installation](installation.md)

Management


## Introduction
There is a certain amount of management capability built into CCI Kiosk. While you could easily use a paid service like Ubuntu Landscape from Canonical, CCI Kiosk uses the Red Hat sponsored [cockpit](https://cockpit-project.org/) for management. 


## Accessing Cockpit
On your local network, you can access the management console for your kiosk by typing in the hostname of your kiosk, a semi-colon, and then 9090. For example, if your kiosk is called cci-kiosk, you can type https://cci-kiosk:9090 into a browser window, and you will be able to access the console. You will likely have to go past some scary ssl warning to get there. You should be able to log in with the admin credentials you set during the install. In addition, if you are using Linux (and you really should be :) ), you can install cockpit on your local machine and then add the machines to your own dashboard so you do not need to have each machine bookmarked.

## Using Cockpit
Although cockpit has many useful features, the most useful in this application is the terminal. Being able to pull up a terminal on your kiosk will enable you to troubleshoot and diagnose issues you are having with your kiosks. In addition, Cockpit allows you to perform administrative tasks like updating your computer, forcing a restart, or adding it to a domain. 

## Managing CCI-Kiosk
Once you have accessed cockpit, you are ready to get your kiosk running. 

### Basic Use of the Autostart Script
The autostart script tells the kiosk which applications to run on boot. In addition, it can disable screen blanking and any sort of screen saver. I've left screen blanking on, because there are situations where you will want it on, and turning it off could damage monitors if it was left for too long. However, just uncommenting `#xset s noblank` will disable it.

By default, the script starts up a Chromium window in kiosk mode, which points to the GitHub site for this project. 

`chromium-browser --disable-infobars --kiosk 'https://kd2flz.github.io/cci-kiosk'  #Change this URL to desired web address`

If your kiosk just needs to open up a web page, change the address to point to the desired address, for instance
`chromium-browser --disable-infobars --kiosk 'https://forecast.weather.gov/MapClick.php?x=107&y=210&site=okx&zmx=&zmy=&map_x=107&map_y=210' `
would pull up the National Weather Service forcast for JFK Airport in New York. 

**NOTE:** After every change in the autostart script, you will have to re-run install_ubuntu.sh. This recopies the file to 

### Adding additional programs
Setting more programs to run on start is as simple as adding an `&` after the last program in the autostart script and then typing the command. As an example, I've added Remmina in my config - uncommenting it will run the program on boot. 