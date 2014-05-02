#!/bin/bash

# Create a symlink for dotfiles under version control
# Inspired by Eric Young at http://elouisyoung.blogspot.com/

#TODO: rewrite this script in Ruby

DOTFILES="$HOME/dotfiles"
SYMFILES=( .vim .vimrc )


for SYMFILE in ${SYMFILES[@]}
do
  echo "Working on $SYMFILE --"
  if [ -e "$HOME/$SYMFILE" ]
  then
    "echo that file already exists, is it a symlink?"
    if [ -L "$HOME/$SYMFILE" ]
    then
      echo "Yep, it's a symlink, assuming it's what you want"
      echo "You already have $SYMFILE symlinked, doing nothing"
    else
      echo "Nope, it's a not a symlink, backing it up and linking the sym from .files"
      echo "Your pre-existing $SYMFILE file is being moved to ~/$SYMFILE.moved"
      mv "$HOME/$SYMFILE" "$HOME/$SYMFILE.moved"
      ln -s "$HOME/.files/$SYMFILE" $HOME
    fi
  else
    echo "$SYMFILE was not linked, doing it now"
    ln -s "$HOME/.files/$SYMFILE" $HOME
  fi
done
