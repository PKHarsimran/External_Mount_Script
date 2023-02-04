sda2 Mount Script

A bash script to mount the /dev/sda2 partition to /ReplaceItWithYourBashFile.
Prerequisites

    The /dev/sda2 partition should exist.
    The /ReplaceItWithYourBashFile folder should be created.

Usage

    Make the script executable:

bash

chmod +x <script-name>.sh

    Run the script:

php

./<script-name>.sh

Output

The script will output the following messages:

    If the /dev/sda2 partition does not exist, it will output Error: /dev/sda2 does not exist.
    If the /dev/sda2 partition is already mounted, it will output Error: /dev/sda2 is already mounted.
    If the mount is successful, it will output Successfully mounted /dev/sda2 to /ReplaceItWithYourBashFile.
