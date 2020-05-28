# Managing CCI Kiosk

## Introduction
There is a certain amount of management capability built into CCI Kiosk. While you could easily use a paid service like Ubuntu Landscape from Canonical, CCI Kiosk uses the Red Hat sponsored [cockpit](https://cockpit-project.org/) for management. 


## Accessing Cockpit
On your local network, you can access the management console for your kiosk by typing in the hostname of your kiosk, a semi-colon, and then 9090. For example, if your kiosk is called cci-kiosk, you can type https://cci-kiosk:9090 into a browser window, and you will be able to access the console. You will likely have to go past some scary ssl warning to get there. You should be able to log in with the admin credentials you set during the install. In addition, if you are using Linux (and you really should be :) ), you can install cockpit on your local machine and then add the machines to your own dashboard so you do not need to have each machine bookmarked.

## Using Cockpit
Although cockpit has many useful features, the most useful in this application is the terminal. Being able to pull up a terminal on your kiosk will enable you to troubleshoot and diagnose issues you are having with your kiosks. In addition, Cockpit allows you to perform administrative tasks like updating your computer, forcing a restart, or adding it to a domain. 

