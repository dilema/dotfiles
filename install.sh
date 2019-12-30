#!/bin/bash

DOTFILES_DIR="$( cd -P "$( dirname "$0" )" && pwd )"

if [ ! -d "$DOTFILES_DIR/backup" ]
then
  mkdir "$DOTFILES_DIR/backup"
fi


# GIT CONFING INSTALLATION
# ========================
echo "Trying to install git config file..."

if [ -e "$HOME/.gitconfig" ]
then
  mv "$HOME/.gitconfig" "$DOTFILES_DIR/backup/.gitconfig"
fi

if [ -e "$DOTFILES_DIR/private/.gitconfig" ]
then
  cat "$DOTFILES_DIR/private/.gitconfig" >> "$DOTFILES_DIR/.gitconfig"
fi

ln -hfs "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
echo "Installation complete."

