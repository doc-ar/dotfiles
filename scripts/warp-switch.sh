#!/bin/bash

status=$(
  warp-cli status |
    head -n 1 |
    cut -d ' ' -f 3
)

if [ $status = "Connected" ]; then
  warp-cli disconnect
  notify-send "Warp is Disconnected" -a "Cloudflare Warp" --expire-time 2000
else
  warp-cli connect
  notify-send "Warp is Connecting" -a "Cloudflare Warp" --expire-time 2000
fi
