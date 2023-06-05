#!/bin/bash

# Check if both directory and repository name parameters are provided
# if [ $# -ne 2 ]; then
if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory> <repository_name>"
  exit 1
fi

# Get the directory location and repository name from the command-line parameters
directory="$1"
# repository_name="$2"

# Change to the specified directory
cd "$directory" || exit

# Initialize the Git repository with the provided name
git init

# Add all files to the staging area
git add .

# Display the status of the repository
git status

#commit them localy
git commit -m 'adding files'
