#!/bin/sh

TMPPATH=/tmp/hub.tgz

# Get latest version
version=$(curl -s https://github.com/github/hub/releases/latest | grep -oP "(\d\.?)+")

# Download archive
wget -O $TMPPATH "https://github.com/github/hub/releases/download/v$version/hub-linux-amd64-$version.tgz"

# Extract archive
tar xzf $TMPPATH -C /tmp

# Install hub
cp /tmp/hub-linux-amd64-$version/bin/hub "$DOTFILESDIR/bin"
