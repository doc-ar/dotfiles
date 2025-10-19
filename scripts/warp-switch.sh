#!/bin/bash

# function
notification() {
  notify-send $1 -a "Cloudflare Warp"
}

warp-cli status | grep -qi "disconnected" && {
  warp-cli connect && notification "Connecting..."
  for i in $(seq 1 30); do
    sleep 0.5
    warp-cli status | grep -qi "connected" &&
      notification "Connected Successfully" && exit 0
  done
  warp-cli disconnect && notification "Failed to Connect" && exit 1
} || {
  warp-cli disconnect && notification "Disconnected Successfully"
}
