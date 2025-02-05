#!/bin/bash

# Writes npm run dev in current space
tmux send-keys "npm run dev" Enter

# Split the tmux window horizontally
tmux split-window -h

# Run npm run dev in the new pane
tmux send-keys -t {right} "npm run vite" Enter

tmux split-window -v
tmux send-keys "npm run tailwind" Enter

