#!/bin/bash

dot_dir="$( cd -P "$( dirname "$0" )" && pwd )"

if [ ! -d "$dot_dir/backup" ]
then
  mkdir "$dot_dir/backup"
fi


# GIT CONFING INSTALLATION
# ========================
echo "Trying to install git config file..."

if [ -e "$HOME/.gitconfig" ]
then
  mv "$HOME/.gitconfig" "$DOTFILES_DIR/backup/.gitconfig"
fi

if [ -e "$dot_dir/private/.gitconfig" ]
then
  cat "$dot_dir/private/.gitconfig" >> "$dot_dir/.gitconfig"
fi

ln -hfs "$dot_dir/.gitconfig" "$HOME/.gitconfig"
echo "Installation complete."

