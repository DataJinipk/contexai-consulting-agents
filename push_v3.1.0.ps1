# Push v3.1.0 (Portfolio QA Scorecard) to GitHub.
# Run from inside C:\Users\amirw\HydroCarbons\contexai-agents-v3
Write-Host "==> Pushing main branch..." -ForegroundColor Cyan
git push origin main
if ($LASTEXITCODE -ne 0) { Write-Host "Push to main failed" -ForegroundColor Red; exit 1 }

Write-Host "==> Pushing v3.1.0 tag..." -ForegroundColor Cyan
git push origin v3.1.0
if ($LASTEXITCODE -ne 0) { Write-Host "Push tag failed" -ForegroundColor Red; exit 1 }

Write-Host "" -ForegroundColor Green
Write-Host "Done. Verify at: https://github.com/DataJinipk/contexai-consulting-agents/releases" -ForegroundColor Green
Write-Host "                 https://github.com/DataJinipk/contexai-consulting-agents/blob/main/examples/07-portfolio-qa-scorecard.md" -ForegroundColor Green
