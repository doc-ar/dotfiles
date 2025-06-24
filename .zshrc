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
# Load pyenv automatically by appending
# the following to 
# ~/.zprofile (for login shells)
# and ~/.zshrc (for interactive shells) :

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Created by `pipx` on 2025-05-22 10:14:30
export PATH="$PATH:/home/docar/.local/bin"

