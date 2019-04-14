#! /bin/bash

# Check/get arguments
if [ $# -eq 0 ]
then
  echo "Lovely comment :"
  read -e comment
  git add .
  git commit -m $comment
  git push
  git status
else
  while [ $# -ne 0 ]
    do
      echo "Current Parameter: $1 , Remaining $#"
      #Pass $1 to some bash function or do whatever
      shift
  done
  git add .
  git commit -m $#
  git push
  git status
fi