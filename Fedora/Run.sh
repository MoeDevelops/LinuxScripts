#!/bin/bash

# Check if the script is running using sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script using sudo."
  exit 1
fi

# Paths
rpm_install="~/LinuxScripts/Fedora/config/rpm_install.txt"
rpm_remove="~/LinuxScripts/Fedora/config/rpm_remove.txt"
flatpak_install="~/LinuxScripts/Fedora/config/flatpak_install.txt"
before_execution="~/LinuxScripts/Fedora/config/before_execution.txt"
after_execution="~/LinuxScripts/Fedora/config/after_execution.txt"

# Go to home directory
cd ~

while IFS= read -r command || [[ -n "$before_execution" ]]; do
    "command"
done < "$before_execution"

dnf check-update