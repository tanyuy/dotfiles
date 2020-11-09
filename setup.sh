#!/usr/bin/env bash

echo "Starting mac setup..."

## Pull latest version of remote master
echo "Pulling latest version of dotfiles..."
cd $HOME/Repos/dotfiles && git pull origin master

# install xcode CLI
xcode-select —-install

# Install apps and binaries with Brew
source brew.sh

# [WIP] oh-my-zsh config
# source zsh.sh

# Create symlinks for dotfiles
source link-dotfiles.sh

# Set macOS preferences
# We will run this last because this will reload the shell
# You only want to run this once during setup. Additional runs may reset changes you make manually.
echo "Skipping MacOS setup. Please do it manually"
# source .macos

echo "Mac setup completed!"
