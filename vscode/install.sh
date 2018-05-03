#!/bin/sh

TMPPATH=$(mktemp)

# Download latest package
wget -q -O $TMPPATH https://go.microsoft.com/fwlink/?LinkID=760868

# Install package
sudo dpkg -i $TMPPATH
