# cc-client
CC-Client is a Linux-based thin client for use with Citrix, RDP, and VNC.

## Introduction
This project came about because an organization I am a part of was looking at upgrading their thin clients which currently use Windows 7. Many of these machines are old, and would have issues running Windows 10. Since Windows 7 has passed it's end-of-life they would like to find a way to update without throwing away all these machines.

### Criteria for this project
1. Simple - The UI must be intuitive
2. Sturdy - The user must not have the ability to make customizations or changes to the endpoint
3. Standard - If one breaks you can plug another one in and it will work
4. Standalone - They don't need to be on the corporate network to work

### But Why Thin Clients?
Many organizations face a common dilemma: How do they distribute software to employees on various devices spread out around the globe. The thin client allows these organizations to offer a competetive computing experience on budget hardware. A solution like Citrix not only allows virtual desktops, but also app streaming, providing a secure means of accessing company apps and services on any device, regardless of operating system, specs, or locale. That's what enables organizations to upgrade Windows 7 Thin Clients to Linux with neglible changes for users. 

## Software Selection
### OS
To begin, I need to choose which OS will be used for this process. 
### Enter Linux 
Linux is the perfect solution to this problem for several reasons.

1. It can be very light weight. There is a few great options for light weight desktop environments
2. It is almost infinately customizable. This is perfect for a situation where the user has specific requirements for the user interface
3. It is free. As the saying goes, free, as in beer, and free, as in freedom. This means that the software can be used, re-used, and distributed at will with no worries about infringing licenses. It also means you don't have to pay for it.
### But Which Distribution
