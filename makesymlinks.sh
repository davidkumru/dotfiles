#!/bin/bash

dir=~/dotfiles
olddir=~/.dotfiles_old

files=".zshrc .vimrc .tmux.conf .gitconfig"

echo "Creating $olddir"
mkdir -p $olddir
echo "Done"

echo "Changing to $dir directory"
cd $dir
echo "Done"

for file in $files; do
  echo "Moving existing file to $olddir"
  mv ~/$file $olddir
  echo "Creating symlink to $file"
  ln -s $dir/$file ~/$file
  echo "Done"
done
