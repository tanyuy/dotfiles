
#!/usr/bin/env bash

echo "Starting mac setup..."

## pull
cd $HOME/git_repos/dotfiles && git pull master

# install xcode CLI
xcode-select —-install

# install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install apps and binaries with Brew
source brew.sh

# Create symlinks for dotfiles
source link-dotfiles.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source macos.sh

echo "Mac setup completed!"
