#!/bin/sh

TMPPATH=$(mktemp)

# Download latest git archive
wget -q -O $TMPPATH https://github.com/git/git/archive/master.zip

# Extract git archive
unzip $TMPPATH -d /tmp

# Make diff-highlight
make -C /tmp/git-master/contrib/diff-highlight

# Install diff-highlight
cp /tmp/git-master/contrib/diff-highlight/diff-highlight "$DOTFILESDIR/bin"

TMPPATH=$(mktemp)

# Get latest version of hub
version=$(curl -s https://github.com/github/hub/releases/latest | grep -oP "(\d\.?)+")

# Download hub archive
wget -q -O $TMPPATH "https://github.com/github/hub/releases/download/v$version/hub-linux-amd64-$version.tgz"

# Extract hub archive
tar xzf $TMPPATH -C /tmp

# Install hub
cp /tmp/hub-linux-amd64-$version/bin/hub "$DOTFILESDIR/bin"
