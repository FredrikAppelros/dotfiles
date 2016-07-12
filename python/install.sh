#!/bin/sh

# Install pyenv
curl -s -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

# Initialize pyenv for the rest of this session
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
