#!/bin/sh

TMPPATH=/tmp/atom.deb

# Download latest package
wget -q -O $TMPPATH https://atom.io/download/deb

# Install package
sudo dpkg -i $TMPPATH
