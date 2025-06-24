#!/bin/sh

layout="--reverse"

[ "$1" = "--input-only" ] && {
  input_only="--print-query --height=1 --info=hidden --header='Enter URL' --header-label='what is going on'"
  foot_size="-w 1200x200"
  layout=""
}

foot -c ~/.config/foot/footfzf.ini $foot_size --app-id=foot-fzf -e sh -c "fzf --border --no-multi $layout $input_only $prompt < /proc/$$/fd/0 > /proc/$$/fd/1"
