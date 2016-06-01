#!/usr/bin/env bash

echo "--- Updating..."
sudo apt-get update

echo "--- Upgrading..."
sudo apt-get -y upgrade

echo "--- Installing system applications..."
sudo apt-get -y install htop git curl

echo "--- Removing applications..."
sudo apt-get -y purge tumbler tumbler-common libtumbler-1-0 blueman light-locker xfce4-taskmanager

echo "--- Installing core applications..."
sudo apt-get -y install synaptic apt-xapian-index tree xscreensaver xcape redshift

echo "--- Installing applications..."
sudo apt-get -y install

echo "--- Cloning dotfiles and creating symlinks..."
git clone https://github.com/davidkumru/dotfiles.git ~/dotfiles
~/dotfiles/./makesymlinks.sh

# virtualbox/vagrant

echo "--- Finished..."
