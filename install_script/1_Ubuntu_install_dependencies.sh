#!/bin/bash

# Update System
sudo apt update
sudo apt -y dist-upgrade

# Install prerequisites for Anaconda3
sudo apt -y install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

# Install DeepFaceLab Dependencies
sudo apt -y install ffmpeg cmake build-essential git
