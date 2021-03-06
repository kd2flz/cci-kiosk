#####################################
# Copy Qemu Image to Physical Disk  #
#                                   #
# David Rhoads                      #
# May 25, 2020                      #
#####################################

#!/bin/bash

#You will need to set /dev/sbX to the correct disk number (eg sdb or sdc)
echo This program writes a virtual disk image to a physical drive
echo CAUTION it will erase the contents of that drive
echo enter the path to the drive eg /dev/sdX
read path_to_drive
echo enter the path to the disk image you wish to convert eg /home/user/diskimage.qcow2
read path_to_qcow
qemu-img convert -O raw $path_to_qcow $path_to_drive
