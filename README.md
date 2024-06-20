Welcome! This is the 5nsou dotfiles repository. Here you will find my personal configuration files for various programs and tools that I use on a daily basis. Feel free to use them as a reference or copy them to your own system.

# Requirements

## Git

```
// Debian / Ubuntu
sudo apt install git

// Fedora
sudo dnf install git

// Arch
sudo pacman -S git

// MacOS
brew install git
```

## Stow

```
// Debian / Ubuntu
sudo apt install stow

// Fedora
sudo dnf install stow

// Arch
sudo pacman -S stow

// MacOS
brew install stow
```

# Installation

```
$ git clone https://github.com/justin-huiyun-lee/.dotfiles
$ cd .dotfiles
```

Then, use GNU stow to create symlinks for the desired configuration files.

```
$ stow .
```

Stow will automatically ignore the README.md file and create symlinks for all other files in the repository.
