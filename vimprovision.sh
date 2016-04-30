#!/usr/bin/env bash

echo "--- Installing Vim and tmux..."
sudo apt-get -y install vim tmux

echo "--- Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "--- Installing YouCompleteMe..."
sudo apt-get -y install cmake
sudo apt-get -y install python-dev python3-dev

# after :PlugInstall. make sure virtual machine has sufficient memory, and that Node.js is installed
# ~/.vim/plugged/youcompleteme/./install.py --tern-completer

echo "--- Finished..."
