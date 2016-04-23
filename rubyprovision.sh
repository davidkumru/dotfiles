#!/usr/bin/env bash

echo "--- Installing Ruby/Rails..."
sudo apt-get -y install libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev nodejs

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rm ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
# or zshrc?

rbenv install 2.3.0
rbenv global 2.3.0
gem install rails -v 4.2.6

echo "--- Finished..."
