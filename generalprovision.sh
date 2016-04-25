#!/usr/bin/env bash

echo "--- Updating..."
apt-get update

echo "--- Upgrading..."
apt-get -y upgrade

echo "--- Installing..."
apt-get -y install htop git nodejs nodejs-legacy npm

echo "--- Autoremoving..."
apt-get -y autoremove

echo "--- Finished..."
