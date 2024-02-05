#!/bin/bash

# Install system packages
sudo dnf install -y neofetch yakuake kate

# Add flathub repository
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install flatpaks from flathub
flatpak install flathub -y com.github.tchx84.Flatseal com.discordapp.Discord com.usebottles.bottles org.libreoffice.LibreOffice org.gimp.GIMP com.spotify.Client
