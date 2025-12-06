#!/bin/bash
# Script to commit and push entire project to GitHub

echo "Step 1: Adding all files..."
git add .

echo "Step 2: Checking for uncommitted changes..."
if ! git diff --cached --quiet || ! git diff-files --quiet; then
    echo "Committing all changes..."
    git commit -m "feat: initial commit - FurEverHome project with updated login/signup pages"
else
    echo "No new changes to commit"
fi

echo "Step 3: Checking current branch..."
git branch --show-current

echo "Step 4: Ensuring main branch exists..."
git checkout -b main 2>/dev/null || git checkout main 2>/dev/null || echo "Already on main or branch exists"

echo "Step 5: Pushing to GitHub..."
git push -u origin main --force

echo "Step 6: Pushing all branches..."
git push origin --all

echo "Done! Check your repository at: https://github.com/sabut1214/sdcfurever"
