#!/usr/bin/env bash

echo "--- Installing Vim..."
sudo apt-get -y install vim

echo "--- Installing vim-plug..."
sudo apt-get -y install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "--- Installing YouCompleteMe..."
sudo apt-get -y install build-essential cmake
sudo apt-get -y install python-dev python3-dev

# after :PlugInstall
# cd ~/.vim/plugged/youcompleteme
# ./install.py --tern-completer

echo "--- Installing Syntastic..."

sudo npm install -g eslint

gem install rubocop

sudo pip install flake8

echo "--- Finished..."
