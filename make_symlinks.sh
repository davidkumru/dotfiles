#!/bin/bash

dir=~/dotfiles
old_dir=~/.dotfiles_old
files=".gitconfig .gitignore .npmrc .zshrc"

echo "Creating $old_dir"
mkdir -p $old_dir
echo "Done"

echo "Changing to $dir directory"
cd $dir || exit
echo "Done"

for file in $files; do
  echo "Moving existing file to $old_dir"
  mv ~/"$file" $old_dir
  echo "Creating symlink to $file"
  ln -s $dir/"$file" ~/"$file"
done

echo "Done"
