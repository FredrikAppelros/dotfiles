#!/bin/sh

NVMDIR="$(readlink -e '$(dirname $0))/nvm.symlink'"

# Checkout latest version
cd $NVMDIR && git checkout "$(git describe --abbrev=0 --tags)"
