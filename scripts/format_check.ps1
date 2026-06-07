# scripts/format_check.ps1
param([string]$VenvDir = ".venv")

if (Test-Path "$VenvDir\Scripts\Activate.ps1") {
    & "$VenvDir\Scripts\Activate.ps1"
}

Write-Host "Checking code formatting..." -ForegroundColor Cyan
black --check --line-length 88 app tests
isort --check-only app tests
Write-Host "✓ Code formatting is correct" -ForegroundColor Green