#!/bin/sh
set -o errexit -o nounset

echo "Setting up oh-my-zsh"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  NONINTERACTIVE=true sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi