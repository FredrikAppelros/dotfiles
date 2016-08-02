#!/bin/sh

TMPPATH=$(mktemp)

# Get latest version
version=$(curl -s https://github.com/github/hub/releases/latest | grep -oP "(\d\.?)+")

# Download archive
wget -q -O $TMPPATH "https://github.com/github/hub/releases/download/v$version/hub-linux-amd64-$version.tgz"

# Extract archive
tar xzf $TMPPATH -C /tmp

# Install hub
cp /tmp/hub-linux-amd64-$version/bin/hub "$DOTFILESDIR/bin"
