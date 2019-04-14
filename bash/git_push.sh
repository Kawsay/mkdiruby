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
  git add .
  git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9"
  git push
  git status
fi