#!/usr/bin/env bash

echo "--- Installing applications..."
sudo apt-get -y install synaptic apt-xapian-index tree xscreensaver xcape redshift

# virtualbox/vagrant

echo "--- Removing applications..."
sudo apt-get -y purge tumbler tumbler-common libtumbler-1-0 blueman light-locker xfce4-taskmanager

echo "--- Finished..."
