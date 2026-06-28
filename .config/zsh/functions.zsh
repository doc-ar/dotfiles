# Search and install packages using pacman
pacf() {
	pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
}

# Search and install packages using yay
yayf() {
	yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S
}

# Search and remove packages using pacman
pacrm() {
	pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns
}

# Quickly compose down and compose up with changes
docker-reload() {
  docker compose down --rmi local && docker compose up
}

# Quickly compose down and compose up with changes
docker-reload-volumes() {
  docker compose down -v --rmi local && docker compose up
}

# Generate secure password
pw-gen() {
  openssl rand -base64 14
}

# Automatically activate python env if it exists
chpwd() {
  if [[ -d .venv ]]; then
    source .venv/bin/activate
  elif [[ -d venv ]]; then
    source venv/bin/activate
  elif [[ -n "$VIRTUAL_ENV" ]]; then
    deactivate
  fi
}

# Download files with 16 connections using aria2c
aria16() {
  aria2c -x16 -s16 -k1M -c \
    --file-allocation=trunc \
    --auto-file-renaming=false \
    --timeout=60 \
    --retry-wait=5 \
    --max-tries=0 \
    "$@"
}

# View realtime logs for systemctl services using lnav
syslogs() {
    systemctl list-units --type=service --all --no-legend \
    | awk '{print $1}' \
    | fzf \
        --height=80% \
        --layout=reverse \
        --border \
        --prompt="service> " \
        --preview 'journalctl -u {} -n 100 --no-pager --output=short-iso' \
        --preview-window='right:70%,wrap' \
        --bind 'enter:become(sh -c '\''journalctl -fu "$1" | lnav'\'' sh {})'
}
