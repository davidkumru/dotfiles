#!/usr/bin/env bash

echo "--- Installing Zsh..."
sudo apt-get -y install zsh

echo "--- Make default shell..."
sudo chsh -s $(which zsh) vagrant

echo "--- Cloning dotfiles and syntax highlighting..."
git clone https://github.com/davidkumru/dotfiles.git ~/dotfiles
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh/zsh-syntax-highlighting

echo "--- Creating symlink..."
ln -s ~/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc

echo "--- Finished..."
