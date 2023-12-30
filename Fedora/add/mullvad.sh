#!/bin/bash

sudo dnf config-manager --add-repo https://repository.mullvad.net/rpm/stable/mullvad.repo

dnf check-update
sudo dnf install mullvad-vpn
