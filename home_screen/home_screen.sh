#!/bin/bash

###############################################################################
#                                 Layout
###############################################################################

tmux split-pane -h
tmux split-pane -h
tmux split-pane -v
tmux split-pane -v
tmux select-layout "45c3,180x47,0,0{50x47,0,0[50x29,0,0,0,50x17,0,30,1],48x47,51,0,2,80x47,100,0[80x19,100,0,3,80x27,100,20,4]}"
#tmux select-layout "bec2,180x44,0,0{90x44,0,0[90x27,0,0,0,90x16,0,28,5],44x44,91,0,2,44x44,136,0[44x22,136,0,3,44x21,136,23,4]}"

# Sleep to make sure everything is set up properly
sleep 0.4s

###############################################################################
#                                 Panes
###############################################################################

# Bottom left corner
tmux send-keys -t 1 "$HOME/Projects/homescreen-cli/build/editor" Enter

# Middle column
tmux send-keys -t 2 "$HOME/Projects/homescreen-cli/build/todo_list" Enter

# Top right corner
tmux send-keys -t 3 "$HOME/Projects/homescreen-cli/build/day_view" Enter

# Bottom right corner
tmux send-keys -t 4 "$HOME/Projects/homescreen-cli/build/calendar" Enter

# Top let corner
asciiquarium
