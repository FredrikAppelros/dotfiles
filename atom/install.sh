#!/bin/sh

TMPPATH=$(mktemp)

# Download latest package
wget -q -O $TMPPATH https://atom.io/download/deb

# Install package
sudo dpkg -i $TMPPATH
