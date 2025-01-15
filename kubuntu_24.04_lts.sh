#!/bin/bash

sudo snap remove firefox firmware-updater gnome-42-2204 gtk-common-themes thunderbird
sudo snap remove bare core22
sudo snap remove snapd

sudo apt remove -y elisa fcitx5 fcitx5-config-qt haruna im-config kmahjongg kmines konversation kpat ksudoku ksystemlog neochat plasma-discover-backend-snap skanlite skanpage snapd vim

sudo apt install -y flatpak plasma-discover-backend-flatpak

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y org.mozilla.firefox
