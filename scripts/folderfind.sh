#!/bin/bash

#nautilus "$(cat ~/Scripts/directories.txt | env LC_ALL=en_IN.UTF-8 dmenu -i -l 10 -p "Find Folder")"

# Run fzfmenu.sh to get the selected directory
selected_dir=$(cat ~/directories.txt | ~/scripts/fzfmenu.sh)

# Check if a directory was selected
if [ -n "$selected_dir" ]; then
  # Open the selected directory in Nautilus
  dolphin "$selected_dir"
fi
