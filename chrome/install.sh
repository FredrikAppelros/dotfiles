#!/bin/sh

TMPPATH=$(mktemp)

# Download latest package
wget -q -O $TMPPATH https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install package
sudo dpkg -i $TMPPATH
