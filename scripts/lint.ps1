# scripts/lint.ps1
param([string]$VenvDir = ".venv")

if (Test-Path "$VenvDir\Scripts\Activate.ps1") {
    & "$VenvDir\Scripts\Activate.ps1"
}

Write-Host "Running pylint..." -ForegroundColor Cyan
pylint app tests
Write-Host "✓ Linting complete" -ForegroundColor Green