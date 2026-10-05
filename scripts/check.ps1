# PowerShell script to run repository validation checks
$ErrorActionPreference = "Stop"

Write-Host "==> Checking code formatting (ruff format --check)..." -ForegroundColor Cyan
uv run ruff format --check .

Write-Host "==> Running linter (ruff check)..." -ForegroundColor Cyan
uv run ruff check .

Write-Host "==> Running test suite (pytest)..." -ForegroundColor Cyan
uv run pytest

Write-Host "`nAll environment checks passed successfully!" -ForegroundColor Green
