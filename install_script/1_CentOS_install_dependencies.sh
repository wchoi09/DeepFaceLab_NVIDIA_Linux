#!/bin/bash

# install epel-release
sudo dnf -y install epel-release
sudo dnf config-manager --set-enabled PowerTools

# Confirm EPEL installation
sudo dnf repolist epel

# Update System
sudo dnf check-update
sudo dnf -y update

# Install prerequisites for Anaconda3
sudo dnf -y install libXcomposite libXcursor libXi libXtst libXrandr alsa-lib mesa-libEGL libXdamage mesa-libGL libXScrnSaver
