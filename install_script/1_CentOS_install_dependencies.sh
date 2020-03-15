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

# Install DeepFaceLab Dependencies
sudo dnf -y install ffmpeg gcc gcc-c++ kernel-devel
# sudo dnf -y groupinstall "Development Tools" will install everything above
sudo dnf -y install git
