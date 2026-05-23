# push_v3.2.0.ps1
# Run this from PowerShell on your local Windows machine.
# Pushes the v3.2.0 commit + tag from C:\Users\amirw\HydroCarbons\contexai-agents-v3
# to https://github.com/DataJinipk/contexai-consulting-agents

$ErrorActionPreference = "Stop"

$repoPath = "C:\Users\amirw\HydroCarbons\contexai-agents-v3"
Set-Location -Path $repoPath

Write-Host ""
Write-Host "==================== ContexAi v3.2.0 push ====================" -ForegroundColor Cyan
Write-Host "Repo:   $repoPath"
Write-Host "Remote: $(git remote get-url origin 2>$null)"
Write-Host "Tag:    v3.2.0"
Write-Host ""

# Show what's about to be pushed
Write-Host "[1/4] Pending commits not yet on remote:" -ForegroundColor Yellow
git log origin/main..HEAD --oneline
Write-Host ""

Write-Host "[2/4] Local tag list:" -ForegroundColor Yellow
git tag --list | Select-String "v3"
Write-Host ""

# Push main
Write-Host "[3/4] Pushing main..." -ForegroundColor Yellow
git push origin main
Write-Host "  done." -ForegroundColor Green
Write-Host ""

# Push the new tag
Write-Host "[4/4] Pushing tag v3.2.0..." -ForegroundColor Yellow
git push origin v3.2.0
Write-Host "  done." -ForegroundColor Green
Write-Host ""

Write-Host "==================== Push complete ====================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Verify at:"
Write-Host "  https://github.com/DataJinipk/contexai-consulting-agents/releases/tag/v3.2.0"
Write-Host ""
Write-Host "If your repo URL is different, edit the 'origin' remote first:"
Write-Host "  git remote set-url origin https://github.com/<your-org>/contexai-consulting-agents.git"
Write-Host ""
