# Bash Script for Mounting a Partition

Hello! This is a simple bash script I wrote for mounting a specific partition to a designated folder. It was designed to run on an Linux system and was optimized for running as a cron job.

## How it Works

The script operates by performing the following steps:

1. Checking if the designated partition exists.
2. Checking if the partition is already mounted.
3. Ensuring the target mount folder exists, and creating it if necessary.
4. Attempting to mount the partition to the specified folder.
5. Providing feedback on the success or failure of these operations through a log file.

The paths to `echo`, `grep`, `mkdir`, and `mount` commands are explicitly specified to ensure reliability when the script is run as a cron job.

## Usage

1. Clone the repository containing the script.

2. Open the script with a text editor and set the `PARTITION`, `MOUNT_FOLDER`, and `LOG_FILE` variables to suit your needs.

3. Save and close the script.

4. Set the script to be executable by running `chmod +x ./Mount.sh` from the command line.

5. Test the script by running `./Mount.sh` from the command line.

6. If the script runs without errors, you can add it to your crontab for automatic execution at your preferred intervals.

## Warning

This script is intended to be run with root privileges due to the use of the `mount` command. Please be aware that running scripts with root privileges can pose a risk if the scripts contain harmful commands. Always review and understand the scripts before running them as root.

## Feedback

If you encounter any issues or have any suggestions for improvements, please feel free to open an issue in this repository.
