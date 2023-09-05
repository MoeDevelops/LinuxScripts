#!/bin/bash/
sudo apt install -y kde-plasma-desktop flatpak plasma-discover-backend-flatpak spectacle yakuake
sudo apt remove -y zutty kwalletmanagersudo
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub -y kdenlive okular gwenview kcalc elisa kamoso brave