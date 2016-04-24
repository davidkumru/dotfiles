#!/usr/bin/env bash

echo "--- Installing Zsh..."
sudo apt-get -y install zsh

echo "--- Make default shell..."
sudo chsh -s $(which zsh) vagrant

echo "--- Cloning syntax highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh/zsh-syntax-highlighting

echo "--- Creating symlink..."
ln -s ~/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc

echo "--- Finished..."
