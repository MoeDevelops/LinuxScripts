#!/bin/bash

# Check if the script is running with root
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

# Backup sources.list
cp /etc/apt/sources.list /etc/apt/sources.list.backup

# Replace debian version with testing
sed -i 's/trixie/testing/g' /etc/apt/sources.list
sed -i 's/bookworm/testing/g' /etc/apt/sources.list
sed -i 's/bullseye/testing/g' /etc/apt/sources.list
sed -i 's/buster/testing/g' /etc/apt/sources.list
sed -i 's/stretch/testing/g' /etc/apt/sources.list
sed -i 's/jessie/testing/g' /etc/apt/sources.list

echo "Script completed successfully. Please update and upgrade now."