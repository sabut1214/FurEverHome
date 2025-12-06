Write-Host "=== Pushing sdc folder to GitHub ===" -ForegroundColor Cyan
Write-Host ""

# Check current directory
Write-Host "Current directory: $(Get-Location)" -ForegroundColor Yellow
Write-Host ""

# Check if git repo exists
if (Test-Path .git) {
    Write-Host "✓ Git repository found" -ForegroundColor Green
} else {
    Write-Host "✗ Not a git repository. Initializing..." -ForegroundColor Red
    git init
}

Write-Host ""
Write-Host "=== Checking Git Status ===" -ForegroundColor Cyan
git status

Write-Host ""
Write-Host "=== Adding all files ===" -ForegroundColor Cyan
git add .

Write-Host ""
Write-Host "=== Committing changes ===" -ForegroundColor Cyan
git commit -m "Initial commit: FurEverHome complete project with updated login/signup pages" 2>&1

Write-Host ""
Write-Host "=== Setting remote ===" -ForegroundColor Cyan
git remote remove origin 2>$null
git remote add origin https://github.com/sabut1214/sdcfurever.git
git remote -v

Write-Host ""
Write-Host "=== Checking branches ===" -ForegroundColor Cyan
git branch
git branch -M main 2>$null

Write-Host ""
Write-Host "=== Pushing to GitHub ===" -ForegroundColor Cyan
Write-Host "This may ask for your GitHub credentials..." -ForegroundColor Yellow
git push -u origin main --force

Write-Host ""
Write-Host "=== Done! ===" -ForegroundColor Green
Write-Host "Check your repository: https://github.com/sabut1214/sdcfurever" -ForegroundColor Cyan
