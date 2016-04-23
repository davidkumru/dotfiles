#!/usr/bin/env bash

# echo "--- Provisioning..."
# 
# echo "--- Updating..."
# apt-get update
# 
# echo "--- Upgrading..."
# apt-get -y upgrade
# 
# echo "--- Installing..."
# apt-get -y install git #curl cmake
 
echo "--- Installing Ruby..."
sudo apt-get -y install libssl-dev libreadline-dev zlib1g-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rm ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
# or zshrc?
source ~/.bashrc

rbenv install 2.3.0
rbenv global 2.3.0

# echo "--- Autoremoving..."
# apt-get -y autoremove
# 
# # echo "--- Cleaning..."
# # apt-get -y clean
# 
# echo "--- Cloning dotfiles..."
# # not needed?
# 
# echo "--- Finished..."
