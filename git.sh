#!/bin/bash

# Check if a branch name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <branch_name>"
  exit 1
fi

# Check the branch name
branch_name=$1

# Switch to the master branch
git checkout main

# Pull from the specified branch
git pull main

# Switch to the specified branch
git checkout $branch_name

# Pull from the specified branch
git pull $branch_name

# Add all changes to the staging area
git add .

# Commit with branch_name
git commit -m "$branch_name"

# Merge changes from the default branch (assuming it's 'main' or 'master')
#git merge main

# Push changes to the remote repository
git push origin $branch_name

git status

echo "Changes committed and pushed to branch $branch_name"
