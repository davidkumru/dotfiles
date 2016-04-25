#!/usr/bin/env bash

echo "--- Installing Ruby..."
sudo apt-get -y install libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rm ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

rbenv install 2.3.0
rbenv global 2.3.0

echo "--- Installing Rails..."
gem install rails -v 4.2.6
sudo npm install -g live-server

echo "--- Finished..."
