#!/bin/sh

# Store the media directory path in a variable
# The media directory contains symlinks from all media folders
# Symlinks were created using stow
media_dir=~/scripts/medialinks

# Run fzf to get the selected movie / show
selection=$(ls -R "$media_dir" | ~/scripts/fzfmenu.sh)

# Check if a directory was selected
if [ -n "$selection" ]; then
  # Construct the full path to the selected file or directory
  selection_path="$media_dir/$selection"
  # Open the selected directory in Nautilus
  mpv "$selection_path"
fi
