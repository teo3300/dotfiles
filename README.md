# dotfiles
Repo to easily manage my dotfiles using chezmoi

## Chezmoi usage

> Install chezmoi and dotfiles

Install chezmoi and the tracked dotfiles
```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply teo3300
```

> Update dotfiles
To automatically update tracked files use
```sh
chezmoi update
```

## First install

> Base setup

To install needed packages, as well as zsh and its plugins, run the setup script
```sh
~/.config/base_setup/stage0
```
