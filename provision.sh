#!/usr/bin/env bash

echo "--- Provisioning..."

echo "--- Updating..."
apt-get update

echo "--- Upgrading..."
apt-get -y upgrade

echo "--- Installing..."
apt-get -y install

echo "--- Autoremoving..."
apt-get -y autoremove

# echo "--- Cleaning..."
# apt-get -y clean

echo "--- Finished..."
