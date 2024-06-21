Welcome! This is my full setup on any device. It includes my dotfiles, which are configurations for various programs such as Neovim, Alacritty, Tmux, and Zsh. I use GNU Stow to manage my dotfiles, which creates symlinks to the configuration files in this repository.

# Recommended Font

I recommend using the [Meslo Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip).

_You have to download the Mono Version, otherwise the default configuration will look weird._

If you don't want to use the Meslo Nerd Font Mono, you can change the font in the Alacritty configuration file.

[Nerd Fonts](https://www.nerdfonts.com/font-downloads)

# Requirements

## This includes alacritty, git, stow, neovim, tmux, zsh, and neofetch.

### alacritty: A fast, cross-platform, OpenGL terminal emulator.

### git: A distributed version control system.

### stow: A symlink farm manager.

### neovim: A highly customizable text editor.

### tmux: A terminal multiplexer.

### zsh: A shell designed for interactive use.

### neofetch: A command-line system information tool.

```
// Debian / Ubuntu
sudo apt install alacritty
sudo apt install git
sudo apt install stow
sudo apt install neovim
sudo apt install tmux
sudo apt install zsh
sudo apt install neofetch

// Fedora
sudo dnf install alacritty
sudo dnf install git
sudo dnf install stow
sudo dnf install neovim
sudo dnf install tmux
sudo dnf install zsh
sudo dnf install neofetch

// Arch
sudo pacman -S alacritty
sudo pacman -S git
sudo pacman -S stow
sudo pacman -S neovim
sudo pacman -S tmux
sudo pacman -S zsh
sudo pacman -S neofetch

// MacOS
brew install alacritty
brew install git
brew install stow
brew install neovim
brew install tmux
brew install zsh
brew install neofetch
```

## Switching Default Shell to Zsh

```
chsh -s $(which zsh)
```

### Reboot your system to apply the changes.

# OMZ and P10K

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

# Installation

```
git clone https://github.com/justin-huiyun-lee/.dotfiles
cd .dotfiles
```

Then delete the default configuration files in your home directory and create symlinks to the configuration files in this repository.

```
rm -rf ~/.config/nvim
rm -rf ~/.config/alacritty
rm -rf ~/.config/tmux
rm ~/.zshrc
rm ~/.p10k.zsh
stow .
```

Stow will automatically ignore the README.md file and create symlinks for all other files.

### Oh My Zsh Configuration

```
4 1 2 n 1 1 n 3
```
