#!/usr/bin/env bash

echo "--- Updating..."
sudo apt-get update

echo "--- Upgrading..."
sudo apt-get -y upgrade

echo "--- Installing system applications..."
sudo apt-get -y install htop git curl

echo "--- Cloning dotfiles and creating symlinks..."
git clone https://github.com/davidkumru/dotfiles.git ~/dotfiles
~/dotfiles/./makesymlinks.sh

echo "--- Removing applications..."
sudo apt-get -y purge tumbler tumbler-common libtumbler-1-0 blueman light-locker xfce4-taskmanager gigolo gnome-software mugshot orage onboard xfce4-dict parole xfburn thunderbird gnome-mines gnome-sudoku xfce4-notes wbritish

echo "--- Installing core applications..."
sudo apt-get -y install synaptic apt-xapian-index tree xscreensaver xcape gtk-redshift

echo "--- Installing applications..."
sudo apt-get -y install libreoffice-style-sifr chromium-browser vlc keepassx python-gtk2

# python-gtk2 is a dropbox dependency

echo "--- Finished..."
