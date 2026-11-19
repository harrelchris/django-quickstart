#!/usr/bin/env bash

set -euo pipefail

if [ ! -d ".venv" ]; then
    "$PYTHON" -m venv .venv
fi

source .venv/bin/activate

python -m pip install --upgrade pip
python -m pip install -r requirements-dev.txt

mkdir -p .media .static

if [ ! -f ".env" ]; then
  cp envs/local.env .env
fi
