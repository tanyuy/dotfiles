# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
echo "Linking dotfiles..."

rm -rf $HOME/.zshrc
ln -s $HOME/Repos/dotfiles/.zshrc $HOME/.zshrc

rm -rf $HOME/.gitignore_global
ln -s $HOME/Repos/dotfiles/.gitignore_global $HOME/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

rm -rf $HOME/.gitconfig
ln -s $HOME/Repos/dotfiles/.gitconfig $HOME/.gitconfig

echo "Linked dotfiles."
