#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Starting Homebrew setup."

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install packages

PACKAGES=(
    git
    grep
    pyenv
    rsync
    tmux
    tree
    wget
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

# Install Casks
echo "Installing cask..."
brew tap homebrew/cask

# Install apps
CASKS=(
    1password
    alfred
    atom
    google-chrome
    google-backup-and-syn
    iterm2
    notion
    rstudio
    slack
    spotify
    visual-studio-code
    zoom
)
echo "Installing cask apps..."
brew cask install ${CASKS[@]}

# Remove outdated versions from the cellar.
echo "Cleaning up..."
brew cleanup
