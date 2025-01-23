#!/bin/bash

echo "Check disk usage in Linux system for /dev/sda5"

disk_size=$(df -h | grep "/dev/sda5" | awk '{print $5}' | cut -d '%' -f 1)

echo "$disk_size% of /dev/sda5 disk is filled"

if [ $disk_size -gt 80 ]; then
    echo "Disk is utilized more than 80%, expand disk or delete files soon"
else
    echo "Enough disk is available"
fi