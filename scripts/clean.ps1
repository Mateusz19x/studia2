# scripts/clean.ps1
Write-Host "Cleaning up..." -ForegroundColor Cyan
Remove-Item -Recurse -Force ".venv" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force "build" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force "dist" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force "*.egg-info" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force ".pytest_cache" -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force ".pylint.d" -ErrorAction SilentlyContinue

Get-ChildItem -Recurse -Directory -Filter "__pycache__" | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
Get-ChildItem -Recurse -File -Filter "*.pyc" | Remove-Item -Force -ErrorAction SilentlyContinue

Write-Host "✓ Clean complete" -ForegroundColor Green