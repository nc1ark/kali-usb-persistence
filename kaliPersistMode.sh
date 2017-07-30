#!/bin/bash

#Before this script will work you need to partition a usb.
#Here are the steps to do this using MiniTool Partition Wizard:

#Launch app(free version)>click on partition>partition move/resize>
#change size>click new partition(unallocated)>right click, create yes>
#label persistence>create as primary>file sys ext4>apply>
#boot to kali persistence mode>run script

#Device may be sdc2 so modify the script or better yet
#find a way to code for both possiblities.

mkdir -p /mnt/UUI
sleep 1
mount /dev/sdb2 /mnt/UUI
sleep 1
echo "/ union" >> /mnt/UUI/persistence.conf
sleep 1
umount /dev/sdb2
sleep 1
reboot
