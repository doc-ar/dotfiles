#!/bin/bash

download_link=$(echo | ~/scripts/fzfmenu.sh --input-only)
download_directory=$(fd --type directory --hidden . ~ | ~/scripts/fzfmenu.sh)

foot --hold -c ~/.config/foot/footfzf.ini -e sh -c "aria2c -d '$download_directory' -x 10 '$download_link'"
