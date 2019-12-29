#!/bin/bash

DOTFILES_DIR="$(dirname "$(readlink "$0")")"

if [ ! -d "$DOTFILES_DIR/backup" ]
then
  mkdir "$DOTFILES_DIR/backup"
fi

