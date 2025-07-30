#!/bin/bash

# This file is used to start everything necessary at login.
# Speifically, programs that have specific commands

# Starts yabai, window manager
yabai --start-service

yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
sudo yabai --load-sa

# .. more yabai startup stuff

# Sets the layout to be bsp.
# Alternative options: float
# bsp: Tiling windows, no overlap
# float: similar to default
yabai -m config layout bsp

# Set all padding and gaps to 10pt (default: 0)
yabai -m config top_padding 25
yabai -m config bottom_padding 10
yabai -m config left_padding 10
yabai -m config right_padding 10
yabai -m config window_gap 10

# Window Opacity
yabai -m config window_opacity on
yabai -m config active_window_opacity 0.9
#yabai -m config normal_window_opacity 0.90

# Start a Tmux session named main, or join the main session if it already exists
tmux new-session -A -s main || tmux attach-session -t main

# Starts skhd - keybind editor
skhd --start-service
