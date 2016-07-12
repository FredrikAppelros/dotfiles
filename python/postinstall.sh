#!/bin/sh

PYDIR="$(readlink -e "$(dirname $0)")"

# Install modern Python
pyenv install 3.5.2
pyenv global 3.5.2

# Upgrade pip
pip install --upgrade pip

# Install Python packages
pip install -r "$PYDIR/requirements.txt"
