#!/bin/bash

# Check if the script is running with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

# Install necessary packages using apt
apt update
apt install -y kde-plasma-desktop
apt install spectacle yakuake plasma-discover-backend-flatpak

# Remove unwanted packages using apt
apt remove -y zutty kwalletmanager konqueror

# Install Flatpak
apt install -y flatpak

# Add Flathub repository
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install Flatpak packages
flatpak install flathub -y kdenlive okular gwenview kcalc elisa kamoso brave

# Cleanup
apt autoremove -y
apt clean

echo "Script completed successfully. Please reboot now."
