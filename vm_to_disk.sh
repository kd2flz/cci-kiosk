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
read vardrive
qemu-img convert -O raw diskimage.qcow2 $vardrive
