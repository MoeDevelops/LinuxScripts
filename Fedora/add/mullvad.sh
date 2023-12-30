#!/bin/bash

sudo dnf -y config-manager --add-repo https://repository.mullvad.net/rpm/stable/mullvad.repo

dnf check-update
sudo dnf -y install mullvad-vpn
