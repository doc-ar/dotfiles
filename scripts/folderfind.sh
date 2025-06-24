#!/bin/bash

# Run fzfmenu.sh to get the selected directory
selected_dir=$(fd --type directory --hidden . ~ | ~/scripts/fzfmenu.sh)
program=$(
  printf "1 Dolphin\n2 Terminal Tmux" |
    ~/scripts/fzfmenu.sh |
    awk '{print $1}'
)

# Check if a directory was selected
if [ -n "$selected_dir" ]; then
  # Open directory in file explorer
  if [ "$program" = "1" ]; then
    dolphin "$selected_dir"
  # Open direcotry in neovim under tmux session
  elif [ "$program" = "2" ]; then
    foot --working-directory "$selected_dir" -e sh -c "tmux -u new-session"
  fi
fi
