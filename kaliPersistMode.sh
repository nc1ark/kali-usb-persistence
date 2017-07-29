#!/bin/bash

mkdir -p /mnt/UUI
sleep 1
mount /dev/sdb2 /mnt/UUI
sleep 1
echo "/ union" >> /mnt/UUI/persistence.conf
sleep 1
umount /dev/sdb2
sleep 1
reboot
