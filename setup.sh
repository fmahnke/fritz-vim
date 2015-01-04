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
