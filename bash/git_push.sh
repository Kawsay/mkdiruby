#! /bin/bash

# Check/get arguments
  # $# = nb_argv
  # -eq = equal
if [ $# -eq 0 ] 
then
  #IFS= = escape whitespaces
  # -r = raw, -p = promt
  IFS= read -r -p "Comment: " comment
  git add .
  git commit -m "$comment"
  git push
  git status
else
  git add .
  # Ugly way to use a 9 word long argv ?
  git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9"
  git push
  git status
fi