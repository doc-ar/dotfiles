###################
#### FastFetch ####
###################

# Run fastfetch on startup
# clear; sleep 0.05; fastfetch

#################
#### Sources ####
#################

# # Source fzf extra fucntions
[[ -e "$HOME/.config/fzf/fzf-extras.zsh" ]] && source $HOME/.config/fzf/fzf-extras.zsh
[[ -e "$HOME/.config/fzf/fzf-extras.bash" ]] && source $HOME/.config/fzf/fzf-extras.bash
# Source fzf key bindings
[[ -e "$HOME/.config/fzf/key-bindings.zsh" ]] && source $HOME/.config/fzf/key-bindings.zsh
# Source Luke Smith's zshrc
[[ -e "$HOME/.config/zsh/lukesmith.zsh" ]] && source $HOME/.config/zsh/lukesmith.zsh

#################
#### Exports ####
#################

# export TERMINAL='foot'
# export EDITOR='nvim'
# export VISUAL='nvim'
# export QT_QPA_PLATFORM=wayland
export WINEESYNC=1
export WINEFSYNC=1

###################
#### Functions ####
###################

# Function to search and install packages using pacman
pacf() {
	pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
}

# Function to search and install packages using yay
yayf() {
	yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S
}

# Function to search and remove packages using pacman
pacrm() {
	pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns
}

# Function to rebuild docker image and run using compose
docker-reload() {
  docker compose down --rmi local && docker compose up
}

# Function to rebuild docker image and run using compose
docker-reload-volumes() {
  docker compose down -v --rmi local && docker compose up
}

#################
#### Aliases ####
#################

alias ls="ls --color=auto"
alias warp="warp-cli"
alias tmux="tmux -u"
alias ttach="tmux attach-session -t"
alias tkill="tmux kill-session -t"

#################
#### Plugins ####
#################

# Load zsh plugin manager zinit
source ~/.local/share/zinit/zinit.git/zinit.zsh
# # List zinit plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/zinit-annex-as-monitor
zinit light zdharma-continuum/zinit-annex-bin-gem-node
zinit light zdharma-continuum/zinit-annex-patch-dl
zinit light zdharma-continuum/zinit-annex-rust

#Add Go path
export PATH="$PATH:/home/docar/go/bin"

# fnm
FNM_PATH="/home/docar/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/docar/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# Created by `pipx` on 2025-05-22 10:14:30
export PATH="$PATH:/home/docar/.local/bin"

