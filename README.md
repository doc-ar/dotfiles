# Requirements

Install the dependancies for setting up the dotfiles (Note: This guide uses arch linux package manager pacman)

```
sudo pacman -Sy
sudo pacman -S git stow
```

Now install the configured applications themselves

```
sudo pacman -S neovim mpv foot lf fastfetch tmux
```

# Setting up the dotfiles

Clone the This repo in your home directory and use stow to create symlinks

```
cd ~
git clone git@github.com:doc-ar/dotfiles.git
cd ./dotfiles
stow .
```

# Setting up a nerd font

Install a nerd font from their [website](https://www.nerdfonts.com/) or using pacman/aur

```
sudo pacman -S ttf-jetbrains-mono-nerd
```

Add the font font `JetBrainsMono Nerd Font` in your terminal emulator of choice

> The font is already added in foot terminal's config files

# Setting Up zsh

The .zshrc file contains all of the setup except the zsh plugin manager. Install zsh plugin manager using an AUR helper.

```
yay -S zinit
```

```
paru -S zinit
```

# Setting up tmux

While inside a tmux environment, run the following command

```
tmux source ~/.config/tmux/tmux.conf
```

Press `prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin

> By default the prefix in tmux is `ctrl` + <kbd>b</kbd>
> I have set up the prefix tmux.conf as `ctrl` + <kbd>space</kbd>
