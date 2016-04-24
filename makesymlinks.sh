#!/bin/bash

# .make.sh
# This script creates symlinks from a directory to any desired dotfiles in ~/dotfiles

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bashrc .zshrc .profile .vimrc .tmux.conf"
vagrant="Vagrantfile"

##########

echo -n "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "done"

echo -n "Changing to the $dir directory"
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the target directories to any files in the ~/dotfiles directory specified in the variables
for file in $files; do
    echo "Moving any existing dotfiles to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file"
    ln -s $dir/$file ~/$file
done

for file in $vagrant; do
    echo "Moving any existing dotfiles to $olddir"
    mv ~/vagrant/$file ~/dotfiles_old/
    echo "Creating symlink to $file"
    ln -s $dir/$file ~/vagrant/$file
done
