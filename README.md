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

# Setting Up

Clone the This repo in your home directory and use stow to create symlinks

```
cd ~
git clone git@github.com:doc-ar/dotfiles.git
cd ./dotfiles
stow .
```

And That completes the setup :)
