#!/usr/bin/env bash

echo "--- Cleaning up..."
rm ~/.bashrc
rm -rf ~/tmp

echo "--- Autoremoving..."
sudo apt-get -y autoremove
sudo apt-get -y clean

echo "--- Finished..."
