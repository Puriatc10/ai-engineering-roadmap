"""Environment smoke test to verify test runner and Python runtime baseline."""

import sys


def test_python_version() -> None:
    """Verify that Python runtime satisfies minimum required version (>= 3.11)."""
    assert sys.version_info >= (3, 11), f"Expected Python >= 3.11, got {sys.version}"


def test_environment_smoke() -> None:
    """Smoke test to confirm test runner executes cleanly."""
    assert 1 + 1 == 2
