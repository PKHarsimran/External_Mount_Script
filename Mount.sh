#!/bin/bash

# Check if the partition exists
if [ ! -e /dev/sda2 ]; then
    echo "Error: /dev/sda2 does not exist"
    exit 1
fi

# Check if the partition is already mounted
if mount | grep /dev/sda2 > /dev/null; then
    echo "Error: /dev/sda2 is already mounted"
    exit 1
fi

# Make sure the folder exists
sudo mkdir -p /ReplaceItWithYourBashFile

# Mount the partition
sudo mount /dev/sda2 /ReplaceItWithYourBashFile

# Print a message to confirm the mount was successful
echo "Successfully mounted /dev/sda2 to /ReplaceItWithYourBashFile"
