#!/usr/bin/env bash

echo "--- Updating packages..."

sudo apt-get -y update && sudo apt-get -y upgrade

echo "--- Installing Git..."

sudo apt-get -y install git

echo "--- Installing Erlang..."
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

rm erlang-solutions_1.0_all.deb

sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get -y install esl-erlang

echo "--- Installing Elixir..."

curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s

echo '[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"' >> ~/.bashrc

source ~/.bashrc

kiex install 1.4.2

kiex use 1.4.2

kiex default 1.4.2

echo "--- Installing Phoenix..."

yes | mix local.hex

yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

echo "--- Installing Node.js..."

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

source ~/.bashrc

nvm install node

echo "--- Installing PostgreSQL..."

sudo apt-get -y install postgresql postgresql-contrib

sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

sudo service postgresql restart

echo "--- Installing inotify-tools..."

sudo apt-get -y install inotify-tools

echo "--- Done."
