#!/bin/sh

CCACHEBIN="$(which ccache)"

# Create symbolic links to make ccache masquerade as C/C++ compilers
ln -s "$CCACHEBIN" /usr/local/bin/gcc
ln -s "$CCACHEBIN" /usr/local/bin/g++
ln -s "$CCACHEBIN" /usr/local/bin/cc
ln -s "$CCACHEBIN" /usr/local/bin/c++
