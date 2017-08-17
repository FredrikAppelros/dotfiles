#!/bin/sh

PYDIR="$(readlink -e "$(dirname $0)")"

# Initialize pyenv for the rest of this session
PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# Install modern Python
pyenv install 3.6.1
pyenv global 3.6.1

# Upgrade pip
pip install --upgrade pip

# Install Python packages
pip install -r "$PYDIR/requirements.txt"
