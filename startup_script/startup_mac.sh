#!/bin/bash

# This file is used to start everything necessary at login.
# Speifically, programs that have specific commands

# sleep 1s

# Starts yabai, window manager

YABAI=/Users/joshbaker/.local/bin/yabai

$YABAI --start-service

sleep 0.2s # Was having weird issues with this running before yabai finished starting
$YABAI -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
sudo $YABAI --load-sa

# Sets the layout to be bsp.
# Alternative options: float
# bsp: Tiling windows, no overlap
# float: similar to default
$YABAI -m config layout bsp

# Set all padding and gaps to 10pt (default: 0)
$YABAI -m config top_padding 25
$YABAI -m config bottom_padding 10
$YABAI -m config left_padding 10
$YABAI -m config right_padding 10
$YABAI -m config window_gap 10

# Window Opacity
$YABAI -m config window_opacity on
$YABAI -m config active_window_opacity 0.9
$YABAI -m config normal_window_opacity 0.90
# .. more yabai startup stuff

# Starts skhd - keybind editor
skhd --start-service

###############################################################################
#         Setting up my spaces
###############################################################################

# Jump to space 2
$YABAI -m space --focus 2

# Jump to the first space
$YABAI -m space --focus 1

# Start a Tmux session named main, or join the main session if it already exists
# tmux new-session -A -s home || tmux attach-session -t home

# tmux split-pane -h
# tmux split-pane -h
# tmux split-pane -v
# tmux split-pane -v

# tmux select-layout "bec2,180x44,0,0{90x44,0,0[90x27,0,0,0,90x16,0,28,5],44x44,91,0,2,44x44,136,0[44x22,136,0,3,44x21,136,23,4]}"
# layout 43eb,88x44,0,0{59x44,0,0[59x27,0,0,0,59x16,0,28,5],13x44,60,0,2,14x44,74,0[14x22,74,0,3,14x21,74,23,4]}

# Current idea:
# Two tmux sessions to start with.
# First one for the home page
# Another for work, auto opened on space 2.
