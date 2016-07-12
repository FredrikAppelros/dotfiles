#!/bin/zsh

PREZTODIR="$(readlink -e "$(dirname $0)/prezto")"

# Symlink Prezto
setopt EXTENDED_GLOB
for rcfile in "$PREZTODIR"/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
ln -s "$PREZTODIR" "${ZDOTDIR:-$HOME}/.zprezto"

# Change default shell
chsh -s /bin/zsh
