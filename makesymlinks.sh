#!/bin/bash

dir=~/dotfiles
olddir=~/.dotfiles_old
vagrantdir=~/vagrant
files=".zshrc .profile .vimrc .tmux.conf"
vagrant="Vagrantfile"

echo "Creating $olddir"
mkdir -p $olddir
echo "done"

echo "Creating $vagrantdir"
mkdir -p $vagrantdir
echo "done"

echo "Changing to $dir directory"
cd $dir
echo "done"

for file in $files; do
    echo "Moving existing file to $olddir"
    mv ~/$file $olddir
    echo "Creating symlink to $file"
    ln -s $dir/$file ~/$file
done

for file in $vagrant; do
    echo "Moving existing file to $olddir"
    mv $vagrantdir/$file $olddir
    echo "Creating symlink to $file"
    ln -s $dir/$file $vagrantdir/$file
done
