#!/usr/bin/env bash

echo "--- Updating..."
apt-get update

echo "--- Upgrading..."
apt-get -y upgrade

echo "--- Installing system applications..."
apt-get -y install htop git

echo "--- Autoremoving..."
apt-get -y autoremove

echo "--- Finished..."
