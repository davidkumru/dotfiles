#!/usr/bin/env bash

echo "--- Provisioning..."

echo "--- Updating..."
apt-get update

echo "--- Upgrading..."
apt-get -y upgrade

echo "--- Installing..."
apt-get -y install git

echo "--- Autoremoving..."
apt-get -y autoremove

echo "--- Cloning dotfiles..."
git clone https://github.com/davidkumru/dotfiles.git ~/dotfiles

echo "--- Finished..."
