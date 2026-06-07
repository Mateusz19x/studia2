# scripts/test.ps1
param([string]$VenvDir = ".venv")

if (Test-Path "$VenvDir\Scripts\Activate.ps1") {
    & "$VenvDir\Scripts\Activate.ps1"
}

Write-Host "Running tests..." -ForegroundColor Cyan
pytest -v --tb=short