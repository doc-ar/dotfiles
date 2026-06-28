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
[[ -e "$HOME/.config/zsh/aliases.zsh" ]] && source $HOME/.config/zsh/aliases.zsh
[[ -e "$HOME/.config/zsh/exports.zsh" ]] && source $HOME/.config/zsh/exports.zsh
[[ -e "$HOME/.config/zsh/functions.zsh" ]] && source $HOME/.config/zsh/functions.zsh
[[ -e "$HOME/.config/zsh/hooks.zsh" ]] && source $HOME/.config/zsh/hooks.zsh


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
