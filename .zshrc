###################
#### FastFetch ####
###################

# Run fastfetch on startup
# clear; sleep 0.05; fastfetch

#################
#### Sources ####
#################

# Source fzf extra fucntions
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

###################
#### Functions ####
###################

# Function to search and install packages using pacman
pacf() {
	pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
}

# Function to search and install packages using paru
paruf() {
	paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S
}

# Function to search and remove packages using pacman
pacrm() {
	pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns
}

# Function to search and remove packages using paru
parurm() {
	paru -Qq | fzf --multi --preview 'paru -Qi {1}' | xargs -ro paru -Rns
}

#################
#### Aliases ####
#################

alias ls="ls --color=auto"
alias warp="warp-cli"
alias mediastow="stow . -t ~/dotfiles/scripts/medialinks"
alias hypr="cd ~/.config/hypr"
alias insta="instaloader --no-captions --no-metadata-json --no-compress-json --no-profile-pic"
alias tmux="tmux -u"
alias ttach="tmux attach-session -t"
alias tkill="tmux kill-session -t"

#################
#### Plugins ####
#################

# Load zsh plugin manager zinit
source /usr/share/zinit/zinit.zsh
# List zinit plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# pnpm
export PNPM_HOME="/home/docar/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
