#!/usr/bin/env bash

echo "--- Installing Node.js and npm..."
echo "--- Installing prerequisites..."
sudo apt-get -y install build-essential libssl-dev

rm ~/.bashrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.bashrc

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

source ~/.bashrc

nvm install node
npm install -g eslint
npm install -g live-server

echo "--- Installing Ruby and Rails..."
echo "--- Installing prerequisites..."
sudo apt-get -y install libreadline-dev zlib1g-dev libsqlite3-dev

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

source ~/.bashrc

rbenv install 2.3.1
rbenv global 2.3.1
gem install rubocop

echo "--- Installing Rails..."
gem install rails -v 4.2.6

# echo "--- Installing Python..."
# sudo apt-get -y install python-pip
# sudo pip install flake8

echo "--- Finished..."
