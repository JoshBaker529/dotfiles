#!/bin/bash

if [ -d "$HOME/.config/" ]; then
  cp "../nvim/" "$HOME/.config/nvim/"
  echo "Copied neovim successfully."
else
  echo "Creating ~/.config/  ..."
  mkdir "$HOME/.config"
  echo "Done."
  cp "../nvim/" "~/.config/nvim/"
  echo "Copied Neovim successfully"
fi

cp "../tmux/.tmux.conf" "$HOME/"
echo "Copied tmux config successfully."

cp "../yabai/.yabairc" "$HOME/"

echo "Copied yabai config successfully."
