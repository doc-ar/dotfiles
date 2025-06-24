# Setup

## Requirements

Install the dependancies for setting up the dotfiles (Note: This guide uses arch linux package manager pacman)

```
sudo pacman -Sy
sudo pacman -S git stow
```

Now install the configured applications themselves

```
sudo pacman -S neovim mpv foot fastfetch tmux yazi qbittorrent
```

## Setting up the dotfiles

Clone the This repo in your home directory and use stow to create symlinks

```
cd ~
git clone --recurse-submodules https://github.com/doc-ar/dotfiles.git
cd ./dotfiles
stow .
```

## Setting up a nerd font

Install a nerd font from their [website](https://www.nerdfonts.com/) or using pacman/aur

```
sudo pacman -S ttf-jetbrains-mono-nerd
```

Add the font font `JetBrainsMono Nerd Font` in your terminal emulator of choice

> The font is already added in foot terminal's config files

## Setting Up zsh

First make zsh your default shell using:

```bash
chsh -s $(which zsh)
```

Then install Zinit, a plugin manager for zsh. The easiest way to install Zinit is to execute:

```zsh
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

This will install Zinit in `~/.local/share/zinit/zinit.git`. `.zshrc` will be updated with three lines of code that will
be added to the bottom. The lines will be sourcing `zinit.zsh` and setting up completion for command `zinit`.

Refresh zsh config using:

```zsh
exec zsh
```

After installing and reloading the shell, compile Zinit via:

```zsh
zinit self-update
```

## Setting up tmux

While inside a tmux environment, run the following command

```zsh
tmux source ~/.config/tmux/tmux.conf
```

Press `prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin

> By default the prefix in tmux is `ctrl` + <kbd>b</kbd>

> I have set up the prefix tmux.conf as `ctrl` + <kbd>space</kbd>

## Setting up mpv

MPV is all setup except it requires a additional font for displaying icons. The **Material Design Iconic Font** can be installed either manually or through the AUR.

```zsh
paru -S ttf-material-design-iconic-font
```

# Notes

1. ~~The lf file manager is configured to show image previews using sixel. If your terminal emulator does not support sixel it will not work. For example: kitty terminal emulator uses its own protocol called kitty~~
2. lf file manager was replaced by yazi which does most of the things I configured in lf
