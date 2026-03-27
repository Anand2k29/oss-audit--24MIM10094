#!/bin/bash

# Script Name: 02_pkg_inspector.sh
# Author: Anand Minejes
# Course: Open Source Software
# Description: Checks if specific open-source packages are installed and prints philosophy notes.

# Define the package to check. If an argument is provided, use it; otherwise default to 'python3'
PKG_NAME=${1:-"python3"}

echo "--- FOSS Package Inspector: $PKG_NAME ---"

# Check if the package is installed using dpkg-query (standard on Ubuntu/Debian)
# -W shows the package status, -f defines the output format
if dpkg-query -W -f='${Status}' "$PKG_NAME" 2>/dev/null | grep -q "ok installed"; then
    # If installed, retrieve and print the version string
    VERSION=$(dpkg-query -W -f='${Version}' "$PKG_NAME")
    echo "[FOUND] $PKG_NAME is installed. Version: $VERSION"
else
    # If not found or status is not 'installed'
    echo "[MISSING] $PKG_NAME is not installed on this system."
fi

echo "----------------------------------------------------------"
echo "Philosophy Note for Audit Core Packages:"

# Case statement to match common open-source tools with their impact/philosophy
case "$PKG_NAME" in
    "python3")
        echo "Nature: The swiss-army knife of AI, ML, and FastAPI backend development."
        ;;
    "apache2")
        echo "Nature: The grandfather of the open-web, powering millions of servers."
        ;;
    "git")
        echo "Nature: The decentralized heart of open-source collaboration and version control."
        ;;
    "mysql-server")
        echo "Nature: A reliable, scalable relational database that stores the world's data."
        ;;
    *)
        echo "Nature: An open-source tool contributing to the global software ecosystem."
        ;;
esac
echo "----------------------------------------------------------"
