# push_to_github.ps1 — PowerShell equivalent of push_to_github.sh
# Run from inside the contexai-agents-v3 folder.
#
# Prerequisites (one-time):
#   1. Install gh CLI:  winget install GitHub.cli
#   2. Authenticate:    gh auth login   (browser flow, no PAT needed)
#
# Usage:   .\push_to_github.ps1 [-RepoName <name>] [-Visibility public|private]
#
# Example: .\push_to_github.ps1
#          .\push_to_github.ps1 -RepoName my-agents -Visibility private

param(
    [string]$RepoName   = "contexai-consulting-agents",
    [ValidateSet("public","private")]
    [string]$Visibility = "public"
)

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "Repository: $RepoName ($Visibility)" -ForegroundColor Cyan
Write-Host ""

# Sanity check: gh available?
if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Host "ERROR: GitHub CLI (gh) not found." -ForegroundColor Red
    Write-Host "Install with:  winget install GitHub.cli" -ForegroundColor Yellow
    exit 1
}

# Sanity check: are we authenticated?
$ghAuth = & gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Not authenticated with GitHub." -ForegroundColor Red
    Write-Host "Run:  gh auth login" -ForegroundColor Yellow
    exit 1
}

# Sanity check: is this a git repo?
if (-not (Test-Path .git)) {
    Write-Host "Initialising git repo..." -ForegroundColor Yellow
    git init -b main
    git add .
    git -c "user.email=amir.wahmed@gmail.com" -c "user.name=Amir W. Ahmed" `
        commit -m "Initial commit - ContexAi Consulting Agents v3 (5.00/5.00 portfolio score)"
}

# Create the repo and push
Write-Host "Creating GitHub repo and pushing..." -ForegroundColor Cyan
gh repo create $RepoName `
    --$Visibility `
    --source=. `
    --remote=origin `
    --push `
    --description "Six specialist consulting agents for downstream oil, gas & petrochemicals - built and benchmarked by ContexAi Consultancy"

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "Pushed to GitHub. Opening browser..." -ForegroundColor Green
    gh repo view --web
} else {
    Write-Host ""
    Write-Host "Push failed. Check the error above." -ForegroundColor Red
    exit 1
}
