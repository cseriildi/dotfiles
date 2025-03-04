#!/bin/bash

DIR="$(realpath "$(dirname "$BASH_SOURCE")")"

backup_and_create_link() {
  if [ -e "$HOME/$1" ]; then
    if ! diff "$HOME/$1" "$DIR/$1" > /dev/null; then
      mv "$HOME/$1" "$HOME/${1}_backup"
    else
      rm "$HOME/$1"
    fi
  fi
  ln -s "$DIR/$1" "$HOME/$1"
  ls -la "$HOME/$1"
}

backup_and_create_link .zshrc
if [ ! -d "$HOME/.zsh" ]; then
  mkdir "$HOME/.zsh"
fi
backup_and_create_link .zsh/functions.zsh
backup_and_create_link .zsh/aliases.zsh
