#!/bin/sh

# Store the directory path in a variable
media_dir=~/Downloads/Media

# Run fzf to get the selected movie / show
selection=$(ls "$media_dir" | ~/scripts/fzfmenu.sh)

# Check if a directory was selected
if [ -n "$selection" ]; then
  # Construct the full path to the selected file or directory
  selection_path="$media_dir/$selection"
  # Open the selected directory in Nautilus
  mpv "$selection_path"
fi
