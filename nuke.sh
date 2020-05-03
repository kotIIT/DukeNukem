#!/bin/bash
read -p "Enter git repo to be nuked (git@github.com:Username/repo.git) > " repo
echo $repo

read -p "Enter random file to commit > " filename
read -p "Enter commit message > "  msg

mkdir nuke
cd nuke
git init
git remote add origin $repo

touch $filename.md
git add $filename.md


git commit -m "$msg"

git push --set-upstream origin master --force

cd ..
rm -rf nuke