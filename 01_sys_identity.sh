#!/bin/bash

# Script Name: 01_sys_identity.sh
# Author: Anand Minejes
# Course: Open Source Software
# Description: Displays a system identity report for the Open Source Audit project.

# Clear the screen for a clean presentation
clear

echo "=========================================================="
echo "          SYSTEM IDENTITY REPORT: OPEN SOURCE AUDIT       "
echo "=========================================================="

# Extract the Pretty Name of the OS from /etc/os-release
# We use grep to find the line and cut to extract the value between quotes
OS_NAME=$(grep 'PRETTY_NAME' /etc/os-release | cut -d '"' -f 2)

# Get the kernel version using uname -r
KERNEL_VERSION=$(uname -r)

# Identify the currently logged-in user
CURRENT_USER=$(whoami)

# Get the home directory path for the current user
USER_HOME=$HOME

# Capture system uptime (simplified for readability)
UPTIME_STATUS=$(uptime -p)

# Get the current date and time in a student-friendly format
CURRENT_TIME=$(date '+%Y-%m-%d %H:%M:%S')

# Display the gathered information to the user
echo "OS Distribution: $OS_NAME"
echo "Kernel Version:  $KERNEL_VERSION"
echo "Logged-in User:  $CURRENT_USER"
echo "Home Directory:  $USER_HOME"
echo "System Uptime:   $UPTIME_STATUS"
echo "Current Time:    $CURRENT_TIME"

echo "----------------------------------------------------------"
# Python Context: Final project-specific message
echo "Host OS Open Source License: GPL | Target Audit Software: Python (PSF License)"
echo "=========================================================="
