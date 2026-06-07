# scripts/format.ps1
param([string]$VenvDir = ".venv")

if (Test-Path "$VenvDir\Scripts\Activate.ps1") {
    & "$VenvDir\Scripts\Activate.ps1"
}

Write-Host "Formatting code with black and isort..." -ForegroundColor Cyan
black --line-length 88 app tests
isort app tests
Write-Host "✓ Code formatted" -ForegroundColor Green