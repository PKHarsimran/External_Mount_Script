#!/bin/bash

# Full path to commands
ECHO="/bin/echo"
GREP="/bin/grep"
MKDIR="/usr/bin/mkdir"
MOUNT="/bin/mount"

# Set partition, mount folder and log file
PARTITION="/dev/sda2"
MOUNT_FOLDER="/ReplaceItWithYourMountFolder"
LOG_FILE="/var/log/my_cron.log"

# Check if the partition exists
if [ ! -e $PARTITION ]; then
    $ECHO "Error: $PARTITION does not exist" >> $LOG_FILE
    exit 1
fi

# Check if the partition is already mounted
if $MOUNT | $GREP -q $PARTITION; then
    $ECHO "Error: $PARTITION is already mounted" >> $LOG_FILE
    exit 1
fi

# Make sure the folder exists
$MKDIR -p $MOUNT_FOLDER

if [ ! -d $MOUNT_FOLDER ]; then
    $ECHO "Error: Failed to create directory $MOUNT_FOLDER" >> $LOG_FILE
    exit 1
fi

# Mount the partition
$MOUNT $PARTITION $MOUNT_FOLDER >> $LOG_FILE 2>&1

if [ $? -ne 0 ]; then
    $ECHO "Error: Failed to mount $PARTITION to $MOUNT_FOLDER" >> $LOG_FILE
    exit 1
fi

# Print a message to confirm the mount was successful
$ECHO "Successfully mounted $PARTITION to $MOUNT_FOLDER" >> $LOG_FILE
