# Background

This page explains my thought process in choosing the software and installation method I ended up with.

## Navigation

[Read Me](README.md)

[Installation](installation.md)

[Management](management.md)

## Software Selection

### OS

To begin, I need to choose which OS will be used for this process. 

#### Enter Linux

Linux is the perfect solution to this problem for several reasons.

1. It can be very light weight. There is a few great options for light weight desktop environments
2. It is almost infinately customizable. This is perfect for a situation where the user has specific requirements for the user interface
3. It is free. As the saying goes, free, as in beer, and free, as in freedom. This means that the software can be used, re-used, and distributed at will with no worries about infringing licenses. It also means you don't have to pay for it.

#### But Which Distribution

Now that I'm clear on using Linux, I have to decide which version of Linux to use. These versions are called distributions. Since Linux is open-source software, each distribution can choose exactly how their version of the OS works. I want to go with Debian or Ubuntu based distributions, since I am familiar with those. In addition, I would prefer to use a distribution that will be supported for a long time, and preferably one that offers long-time support.

I have several options that I want to investigate

Peppermint OS

- Peppermint OS is an Ubuntu derivative that is optimized for web applications. It uses a tool called Ice SSB (Site Specific Browsers) to create an isolated browser window that appears as an app listed in the application menu.
- This is perfect for a thin client. Certain websites (like the Citrix login gateway) could be setup as apps. 
- The OS is also very light. I set it up in a testing environment and it was running on average at 500-600 megs of RAM.
- The issue with this OS is there is no obvious way to lock down the desktop. While you can easily disable keyboard shortcuts and customize the panel to include no application menu and only the desired launchers, the user can easily modify the panel or open the settings panel by right clicking.
- I will continue testing Peppermint, but luckily Ice SSB is available via a .deb file in other Debian based distributions from [Launchpad] (https://launchpad.net/~peppermintos/+archive/ubuntu/p10-release/+files/ice_6.0.6_all.deb)

Kubuntu

- KDE Plasma is a great desktop environment, and offers a large amount of flexibility. In addition, it has built in [kiosk configurations.] (https://techbase.kde.org/Projects/Plasma/Kiosk)
- Positives: KDE is a sleek and light desktop environment. In addition, the support and assurance offered by Ubuntu is hard to match for an enterprise setting
- Negatives: The very customization which makes KDE so flexible also poses some risks in this situation. For this particular application, I want to make sure there are no hidden settings the user can access.

Zorin OS Lite

- Zorin OS is a world class operating system, and their relatively new Lite operating offers the polish of Zorin's flagship Ultimate Edition with a light-weight XFCE desktop.
- Positives: Zorin is based on Ubuntu, offering all of the software in the Ubuntu Repos. It also offers on a slower release schedule, offering longer-term support
- Negatives: The XFCE desktop environment poses the same problems as Peppermint's desktop with regards to locking it down. There is theoretically a way to lock down XFCE, but I never got it to work.

- MX Linux
- What attracts me to MX Linux is that they have a lot of useful built in tooling. Specifically, I'm thinking of their snapshot tool which makes a bootable ISO of your current system. This could be handy for distribution purposes. 
- Although MX does have a good sized community surrounding it, it is not supported quite on the level of Ubuntu or even Zorin OS. 

- Build from Scratch 
- While researching options for this project, I came across Alan D. Moore's blog on building a Kiosk. While this blog is dated (it's from 2011 with updates in 2012), the software it references is all fairly current. In addition, Oli Warner describes a similar solution in a [2014 blog post] (https://thepcspy.com/read/building-a-kiosk-computer-ubuntu-1404-chrome/) and Novaspirit tech in a [2018 video] (https://www.youtube.com/watch?v=I2laR5G5FFo).

## Distribution/ Installation

So far, I've found the following software for creating a live system from an existing Linux install:

### Linux Respin

- Although this project recently got a website upgrade, their Launchpad has seen no new aditions to the software since 2016, so I'm not very keen to use this

### [Linux Live Kit](https://www.linux-live.org/#explore)

- This project seems fairly active. I've never used it, but it looks like it's worth investigating

### Scripts

- This is the distribution method I ended up with. By using an installation script, you don't have to worry about distributing ISO files. In addition, if an organization did want an ISO for their image they could make a custom ISO with the tweeks they wanted to make to their system. The easiest way to do this would be to configure a VM and then make an image of that. This image could then be restored onto hard drives.
