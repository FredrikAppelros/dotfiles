#!/bin/sh

# Create the docker group and add myself
sudo usermod -aG docker $(whoami)

# Start on boot
if [ $(lsb_release -r | grep -oP "Release:\s\K\d+") -gt 14 ]; then
  sudo systemctl enable docker
fi
