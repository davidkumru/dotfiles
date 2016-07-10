#!/bin/bash

dir=~/dotfiles
olddir=~/.dotfiles_old
# vagrantdir=~/vagrant
neovimdir=~/.config/nvim

files=".zshrc .profile .vimrc .tmux.conf"
# vagrant="Vagrantfile"
neovim="init.vim"

echo "Creating $olddir"
mkdir -p $olddir
echo "Done"

# echo "Creating $vagrantdir"
# mkdir -p $vagrantdir
# echo "Done"

echo "Creating $neovimdir"
mkdir -p $neovimdir
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

# for file in $vagrant; do
#     echo "Moving existing file to $olddir"
#     mv $vagrantdir/$file $olddir
#     echo "Creating symlink to $file"
#     ln -s $dir/$file $vagrantdir/$file
#     echo "Done"
# done

for file in $neovim; do
  echo "Moving existing file to $olddir"
  mv $neovimdir/$file $olddir
  echo "Creating symlink to $file"
  ln -s $dir/$file $neovimdir/$file
  echo "Done"
done
