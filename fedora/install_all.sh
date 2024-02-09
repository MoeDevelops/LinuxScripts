#!/bin/bash

# - Add repos -

# Librewolf
sudo dnf -y config-manager --add-repo https://rpm.librewolf.net/librewolf-repo.repo
dnf -y check-update

# RPM Fusion
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Mullvad
sudo dnf -y config-manager --add-repo https://repository.mullvad.net/rpm/stable/mullvad.repo

# Snap
touch ~/.hidden
echo "snap" > ~/.hidden

# Flathub
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-delete fedora

# - Remove packages -
sudo dnf remove -y akregator kio-gdrive firefox kmahjongg kmines kmouth kontact konversation kpat libreoffice-calc libreoffice-draw libreoffice-impress libreoffice-writer

sudo dnf autoremove -y

# - Install packages -

# dnf
sudo dnf install -y --allowerasing librewolf kdenlive libreoffice neofetch yakuake kate code godot mullvad-vpn zsh snapd ffmpeg gimp steam-devices

# Flatpak
flatpak install flathub -y com.github.tchx84.Flatseal com.discordapp.Discord com.usebottles.bottles io.github.shiftey.Desktop com.valvesoftware.Steam com.atlauncher.ATLauncher com.heroicgameslauncher.hgl org.tenacityaudio.Tenacity com.obsproject.Studio

# Codecs
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin --allowerasing
sudo dnf groupupdate -y sound-and-video

# - Install fonts -

# Fira Code
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
unzip FiraCode.zip -d firacode
sudo mv firacode /usr/share/fonts/truetype/

sudo dnf update -y