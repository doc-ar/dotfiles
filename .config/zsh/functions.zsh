# Function to search and install packages using pacman
pacf() {
	pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
}

# Function to search and install packages using yay
yayf() {
	yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S
}

# Function to search and install packages using paru
paruf() {
	paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S
}

# Function to search and remove packages using pacman
pacrm() {
	pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns
}

# Function to quickly compose down and compose up with changes
docker-reload() {
  docker compose down --rmi local && docker compose up
}

# Function to quickly compose down and compose up with changes
docker-reload-volumes() {
  docker compose down -v --rmi local && docker compose up
}
