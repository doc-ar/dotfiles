#!/bin/bash

local pid

pid="$(
  ps -ef |
    sed 1d |
    awk '{print $1,$2,$8,$9}' |
    ~/scripts/fzfmenu.sh |
    awk '{print $2}'
)" || return

kill -"${1:-9}" "$pid"
