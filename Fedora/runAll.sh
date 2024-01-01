#!/bin/bash

# Go to home directory
cd ~/linux-scripts/Fedora

./uninstallPackages.sh
./installPackages.sh

./add/devtools.sh
./add/firacode.sh
./add/games.sh
./add/mullvad.sh
./add/multimedia
./add/snap.sh
./add/vscode.sh
./add/zsh.sh