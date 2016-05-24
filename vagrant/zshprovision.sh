#!/usr/bin/env bash

echo "--- Installing Zsh..."
sudo apt-get -y install zsh

echo "--- Make default shell..."
chsh -s $(which zsh) vagrant
# sudo chsh -s $(which zsh) vagrant

echo "--- Cloning dotfiles and syntax highlighting..."
git clone https://github.com/davidkumru/dotfiles.git ~/dotfiles
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

echo "--- Creating symlinks..."
~/dotfiles/./makesymlinks.sh

echo "--- Finished..."
