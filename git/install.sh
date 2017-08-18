#!/bin/sh

TMPPATH=$(mktemp)

# Get latest diff-so-fancy
wget -q -O $TMPPATH https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy

# Make diff-so-fancy executable
chmod +x $TMPPATH

# Install diff-so-fancy
cp $TMPPATH "$DOTFILESDIR/bin/diff-so-fancy"

TMPPATH=$(mktemp)

# Get latest version of hub
version=$(curl -s https://github.com/github/hub/releases/latest | grep -oP "(\d\.?)+")

# Download hub archive
wget -q -O $TMPPATH "https://github.com/github/hub/releases/download/v$version/hub-linux-amd64-$version.tgz"

# Extract hub archive
tar xzf $TMPPATH -C /tmp

# Install hub
cp /tmp/hub-linux-amd64-$version/bin/hub "$DOTFILESDIR/bin"
