Welcome! This is my full setup on any device. It includes my dotfiles, which are configurations for various programs such as Neovim, Alacritty, Tmux, and Zsh. I use GNU Stow to manage my dotfiles, which creates symlinks to the configuration files in this repository.

# Recommended Font

I recommend using the [Meslo Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip).

_You have to download the Mono Version, otherwise the default configuration will look weird._

If you don't want to use the Meslo Nerd Font Mono, you can change the font in the Alacritty configuration file.

[Nerd Fonts](https://www.nerdfonts.com/font-downloads)

# Requirements

## Alacritty

```
// Debian / Ubuntu
sudo apt install alacritty

// Fedora
sudo dnf install alacritty

// Arch
sudo pacman -S alacritty

// MacOS
brew install alacritty
```

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

## Neovim

```
// Debian / Ubuntu
sudo apt install neovim

// Fedora
sudo dnf install neovim

// Arch
sudo pacman -S neovim

// MacOS
brew install neovim
```

## Tmux

```
// Debian / Ubuntu
sudo apt install tmux

// Fedora
sudo dnf install tmux

// Arch
sudo pacman -S tmux

// MacOS
brew install tmux
```

## Zsh

```
// Debian / Ubuntu
sudo apt install zsh

// Fedora
sudo dnf install zsh

// Arch
sudo pacman -S zsh

// MacOS
brew install zsh
```

## Switching Default Shell to Zsh

```
chsh -s $(which zsh)
```

### Reboot your system to apply the changes.

# Customizations

## Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
```

## Powerlevel10k

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
```

## Neofetch

```
// Debian / Ubuntu
sudo apt install neofetch

// Fedora
sudo dnf install neofetch

// Arch
sudo pacman -S neofetch

// MacOS
brew install neofetch
```

# Installation

```
git clone https://github.com/justin-huiyun-lee/.dotfiles
cd .dotfiles
```

Then, use GNU stow to create symlinks for the desired configuration files.

```
stow --adopt .
```

If the above option does not work:

```
rm -rf ~/.config/nvim
rm -rf ~/.config/alacritty
rm -rf ~/.config/tmux
rm ~/.zshrc
rm ~/.p10k.zsh
```

Stow will automatically ignore the README.md file and create symlinks for all other files in the repository.

### Oh My Zsh Configuration

```
4 1 2 n 1 1 n 3
```
