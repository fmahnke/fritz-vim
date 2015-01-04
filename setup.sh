#!/bin/bash

files=( .vim .vimrc )

for var in "${files[@]}"
do
  if [ -e ~/${var} ]
  then
    echo "Will not overwrite existing ~/${var}"
  else
    cp -R ${var} ~
  fi
done

if [ -d ~/.vim/bundle/Vundle.vim ]
then
  echo "Removing existing Vundle installation."
  rm -rf ~/.vim/bundle/Vundle.vim
fi

echo "Cloning Vundle.vim plugin from github."
git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
