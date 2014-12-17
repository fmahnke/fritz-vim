#!/bin/bash

files=( .vim .vimrc )

for var in "${files[@]}"
do
  if [ -e ~/${var} ]
  then
    echo "Will not overwrite existing ~/${var}"
  else
    ln -s $(pwd)/${var} ~
  fi
done
