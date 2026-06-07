# scripts/create_venv.ps1
param([string]$VenvDir = ".venv")

Write-Host "Creating virtual environment at $VenvDir..." -ForegroundColor Cyan
python -m venv $VenvDir

if (Test-Path "$VenvDir\Scripts\Activate.ps1") {
    & "$VenvDir\Scripts\Activate.ps1"
}

python -m pip install --upgrade pip setuptools wheel

if (Test-Path "requirements.txt") {
    pip install -r requirements.txt
} elseif (Test-Path "pyproject.toml") {
    pip install -e ".[dev]" -ErrorAction SilentlyContinue
    if ($LASTEXITCODE -ne 0) {
        pip install -e .
    }
}

Write-Host "✓ Virtual environment ready at $VenvDir" -ForegroundColor Green