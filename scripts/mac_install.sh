#!/bin/bash

if [ -d "$HOME/.config/" ]; then
  cp "../nvim/" "$HOME/.config/nvim/"
  echo "Copied Neovim successfully"
else
  echo "Creating ~/.config/  ..."
  mkdir "$HOME/.config"
  echo "Done."
  cp "../nvim/" "~/.config/nvim/"
  echo "Copied Neovim successfully"

fi
