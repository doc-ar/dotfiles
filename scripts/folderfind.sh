#!/bin/bash

# Run fzfmenu.sh to get the selected directory
selected_dir=$(fd --type directory --hidden . ~ | ~/scripts/fzfmenu.sh)
program=$(
  printf "1 Terminal Tmux\n2 Dolphin" |
    ~/scripts/fzfmenu.sh |
    awk '{print $1}'
)

# Check if a directory was selected
if [ -n "$selected_dir" ]; then
  # Open direcotry in neovim under tmux session
  if [ "$program" = "1" ]; then
    foot --working-directory "$selected_dir" -e sh -c "tmux -u new-session"
  # Open directory in file explorer
  elif [ "$program" = "2" ]; then
    dolphin "$selected_dir"
  fi
fi
