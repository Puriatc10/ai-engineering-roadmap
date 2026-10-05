#!/usr/bin/env bash
set -euo pipefail

echo "==> Checking code formatting (ruff format --check)..."
uv run ruff format --check .

echo "==> Running linter (ruff check)..."
uv run ruff check .

echo "==> Running test suite (pytest)..."
uv run pytest

echo -e "\nAll environment checks passed successfully!"
