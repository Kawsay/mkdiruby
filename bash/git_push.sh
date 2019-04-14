#! /bin/bash

read -p "Lovely comment here : " comment

git add .
git commit -m $comment
git push
git status