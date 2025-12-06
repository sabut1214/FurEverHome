# Script to push fresh project without old history

Write-Host "=== Creating Fresh Git History ===" -ForegroundColor Cyan

# Remove old git history
Write-Host "Step 1: Removing old .git folder..." -ForegroundColor Yellow
Remove-Item -Recurse -Force .git -ErrorAction SilentlyContinue

# Initialize fresh git repo
Write-Host "Step 2: Initializing fresh git repository..." -ForegroundColor Yellow
git init

# Add all files
Write-Host "Step 3: Adding all files..." -ForegroundColor Yellow
git add .

# Create initial commit
Write-Host "Step 4: Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: FurEverHome project with updated login/signup pages"

# Add remote
Write-Host "Step 5: Setting remote..." -ForegroundColor Yellow
git remote add origin https://github.com/sabut1214/sdcfurever.git

# Rename to main
Write-Host "Step 6: Setting branch to main..." -ForegroundColor Yellow
git branch -M main

# Push with force (this will overwrite old history)
Write-Host "Step 7: Pushing to GitHub (this will replace old history)..." -ForegroundColor Yellow
Write-Host "You may need to authenticate..." -ForegroundColor Red
git push -u origin main --force

Write-Host ""
Write-Host "=== Done! ===" -ForegroundColor Green
Write-Host "Your repository now only has the current project." -ForegroundColor Cyan
Write-Host "Check: https://github.com/sabut1214/sdcfurever" -ForegroundColor Cyan
