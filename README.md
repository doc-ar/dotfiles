# Setup

## Requirements

Install the dependancies for setting up the dotfiles (Note: This guide uses arch linux package manager pacman)

```
sudo pacman -Sy
sudo pacman -S git stow
```

Now install the configured applications themselves

```
sudo pacman -S neovim mpv foot lf fastfetch tmux libsixel chafa
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

Zinit is a plugin manager for zsh. The easiest way to install Zinit is to execute:

```bash
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

This will install Zinit in `~/.local/share/zinit/zinit.git`. `.zshrc` will be updated with three lines of code that will
be added to the bottom. The lines will be sourcing `zinit.zsh` and setting up completion for command `zinit`.

After installing and reloading the shell, compile Zinit via:

```zsh
zinit self-update
```

To reload the zsh rc file ush the following command:

```zsh
exec zsh
```

## Setting up tmux

While inside a tmux environment, run the following command

```
tmux source ~/.config/tmux/tmux.conf
```

Press `prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin

> By default the prefix in tmux is `ctrl` + <kbd>b</kbd>

> I have set up the prefix tmux.conf as `ctrl` + <kbd>space</kbd>

# Notes

1. The lf file manager is configured to show image previews using sixel. If your terminal emulator does not support sixel it will not work. For example: kitty terminal emulator uses its own protocol called kitty
