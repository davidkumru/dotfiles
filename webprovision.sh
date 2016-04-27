#!/usr/bin/env bash

echo "--- Installing Prerequisites..."
sudo apt-get -y install build-essential libssl-dev
sudo apt-get -y install libreadline-dev zlib1g-dev libsqlite3-dev

echo "--- Installing Node.js and npm..."
rm ~/.bashrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.bashrc

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

source ~/.bashrc

nvm install node
npm install -g live-server

echo "--- Installing Ruby and Rails..."
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

source ~/.bashrc

# rbenv install 2.3.1
# rbenv global 2.3.1
# 
# echo "--- Installing Rails..."
# gem install rails -v 4.2.6

# echo "--- Installing Python..."
# sudo apt-get -y install python-pip

echo "--- Finished..."
