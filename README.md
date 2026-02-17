# Dotfiles

My development environment configuration, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's Included

| Package    | Description                          |
|------------|--------------------------------------|
| `nvim`     | Neovim config with Lazy.nvim plugins |
| `ghostty`  | Ghostty terminal emulator config     |
| `zsh`      | Zsh shell configuration              |
| `git`      | Git config and aliases               |

## Installation

```bash
git clone https://github.com/isaac-levine/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The install script checks for GNU Stow (installs via Homebrew if needed), then symlinks each package into `$HOME`.

## Manual Setup

```bash
# Symlink individual packages
stow nvim      # ~/.config/nvim → dotfiles/nvim/.config/nvim
stow ghostty   # ~/.config/ghostty → dotfiles/ghostty/.config/ghostty
stow zsh       # ~/.zshrc → dotfiles/zsh/.zshrc
stow git       # ~/.gitconfig → dotfiles/git/.gitconfig
```

## Requirements

- macOS (Homebrew) or Linux
- GNU Stow
