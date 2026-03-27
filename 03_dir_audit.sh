#!/bin/bash

# Script Name: 03_dir_audit.sh
# Author: Anand Minejes
# Course: Open Source Software
# Description: Checks the existsnce, permissions, and size of critical system directories.

# Define an array of system and Python environment directories to audit
DIR_ARRAY=("/etc" "/var/log" "/usr/bin" "/usr/lib/python3" "/tmp")

echo "--- Disk and Permission Auditor ---"
echo "Auditing important directories for open-source health."

# Loop through each directory in the array
for TARGET_DIR in "${DIR_ARRAY[@]}"; do
    # Check if the directory exists using -d
    if [ -d "$TARGET_DIR" ]; then
        # If it exists, extract permissions in human-readable format (e.g., drwxr-xr-x)
        # ls -ld shows directory info, awk extracts the first field
        PERMS=$(ls -ld "$TARGET_DIR" | awk '{print $1}')
        
        # Calculate the total size in human-readable format (e.g., 2.4M)
        # du -sh summarizes the size, cut extracts the first field
        SIZE=$(du -sh "$TARGET_DIR" 2>/dev/null | cut -f 1)
        
        # Print the audit result for the existing directory
        echo "[EXISTS] $TARGET_DIR | Permissions: $PERMS | Size: $SIZE"
    else
        # If the directory does not exist on this specific Linux environment
        echo "[FAILED] $TARGET_DIR does not exist on this host."
    fi
done

echo "----------------------------------------------------------"
echo "Audit Complete: Verified critical Python and Linux directories."
