#!/bin/bash

local pid

pid="$(
  ps -ef |
    sed 1d |
    fzf -m |
    awk '{print $2}'
)" || return

kill -"${1:-9}" "$pid"
