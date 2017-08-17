#!/bin/sh

NVMDIR="$(readlink -e "$(dirname $0)/nvm.symlink")"

# Checkout latest version
cd $NVMDIR && git checkout "$(git describe --abbrev=0 --tags)"

# Initialize nvm for the rest of this session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Install latest node version
nvm install node

# Set node as default version
nvm alias default node
