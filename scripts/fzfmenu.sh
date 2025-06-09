#!/bin/sh

foot -c ~/.config/foot/footfzf.ini -e sh -c "fzf --reverse --border --no-multi < /proc/$$/fd/0 > /proc/$$/fd/1"
