#!/bin/sh

FONTDIR=$HOME/.fonts
FONTFILE=FontAwesome.otf

# Create font directory
mkdir -p $FONTDIR

# Download latest font
wget -q -O $FONTDIR/$FONTFILE https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/fonts/$FONTFILE

# Rebuild font cache
fc-cache -f $FONTDIR
