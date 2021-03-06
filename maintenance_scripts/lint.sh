#!/usr/bin/env bash
set -euo pipefail

echo Flake8:
flake8 pikaur pikaur.py pikaur_test

echo PyLint:
pylint pikaur.py pikaur pikaur_test

echo MyPy:
mypy --ignore-missing-imports pikaur.py pikaur_test

echo Vulture:
./maintenance_scripts/vulture.sh

echo == GOOD!
