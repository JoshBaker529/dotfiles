#!/bin/bash

if [ -d "$HOME/.config/" ]; then
  mv "../nvim/" "$HOME/.config/nvim/"
  echo "Copied Neovim successfully"
else
  echo "Creating ~/.config/  ..."
  mkdir "$HOME/.config"
  echo "Done."
  mv "../nvim/" "~/.config/nvim/"
  echo "Copied Neovim successfully"

fi
