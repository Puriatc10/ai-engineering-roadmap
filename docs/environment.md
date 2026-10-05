# Local Development Environment Guide

## 1. Toolchain & Prerequisites

- **Python**: `>=3.11` (Current environment: `3.12.4`)
- **Package & Environment Manager**: `uv`
- **Linter & Code Formatter**: `ruff`
- **Test Runner**: `pytest`

## 2. Setting Up the Environment

1. Clone or open the repository.
2. Synchronize virtual environment and dependencies using `uv`:
   ```bash
   uv sync
   ```
   This will automatically create `.venv` and install developer dependencies (`pytest`, `ruff`).

## 3. Developer Commands

The project uses `uv run` to execute tools within the managed virtual environment without needing manual activation:

- **Code Formatting Check**:
  ```bash
  uv run ruff format --check
  ```
- **Code Auto-formatting**:
  ```bash
  uv run ruff format
  ```
- **Linting**:
  ```bash
  uv run ruff check
  ```
- **Linting (Auto-fix)**:
  ```bash
  uv run ruff check --fix
  ```
- **Run Tests**:
  ```bash
  uv run pytest
  ```
- **Run Full Verification Script (PowerShell)**:
  ```powershell
  .\scripts\check.ps1
  ```

## 4. Environment Variables & Secrets

- Secrets must never be committed to Git.
- A template `.env.example` is provided with variable keys.
- For local runs requiring keys, copy `.env.example` to `.env`:
  ```bash
  cp .env.example .env
  ```
- The `.gitignore` file is configured to exclude all `.env*` files except `.env.example`.

## 5. Development Principles

Per `AGENTS.md`:
- Prefer simple, explicit implementations over heavy framework abstractions.
- Avoid introducing agent/RAG orchestrators (LangChain, LlamaIndex, etc.) before understanding primitives.
- Keep dependencies lean and pinned.
- Keep components modular and testable.
