#!/bin/bash

# Dotfiles installer using GNU Stow
# Run from the dotfiles directory: ./install.sh

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Check for stow
if ! command -v stow &> /dev/null; then
  echo "GNU Stow not found. Installing via Homebrew..."
  brew install stow
fi

cd "$DOTFILES_DIR"

# Stow each package
# --adopt will move existing files into the dotfiles repo and replace them with symlinks
# Remove --adopt if you want stow to fail on conflicts instead
packages=(nvim ghostty zsh git)

for pkg in "${packages[@]}"; do
  echo "Stowing $pkg..."
  stow -v --target="$HOME" "$pkg"
done

echo "Done! All configs are symlinked."
