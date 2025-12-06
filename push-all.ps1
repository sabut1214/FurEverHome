# PowerShell script to commit and push entire project to GitHub

Write-Host "Step 1: Adding all files..." -ForegroundColor Green
git add .

Write-Host "Step 2: Checking for uncommitted changes..." -ForegroundColor Green
$status = git status --porcelain
if ($status) {
    Write-Host "Committing all changes..." -ForegroundColor Yellow
    git commit -m "feat: initial commit - FurEverHome project with updated login/signup pages"
} else {
    Write-Host "No new changes to commit" -ForegroundColor Cyan
}

Write-Host "Step 3: Checking current branch..." -ForegroundColor Green
git branch --show-current

Write-Host "Step 4: Ensuring main branch exists..." -ForegroundColor Green
git checkout -b main 2>$null
if ($LASTEXITCODE -ne 0) {
    git checkout main 2>$null
}

Write-Host "Step 5: Pushing to GitHub..." -ForegroundColor Green
git push -u origin main --force

Write-Host "Step 6: Pushing all branches..." -ForegroundColor Green
git push origin --all

Write-Host "`nDone! Check your repository at: https://github.com/sabut1214/sdcfurever" -ForegroundColor Cyan
