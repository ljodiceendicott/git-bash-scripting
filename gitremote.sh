#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Usage: $0 <directory> <repository_name> <account name>"
  exit 1
fi

# Get the directory location and repository name from the command-line parameters
directory="$1"
reponame="$2"

# Change to the specified directory
cd "$directory" || exit

git remote add origin https://github.com/"$accountname"/"$reponame".git
git branch -M main
git push -u origin main
