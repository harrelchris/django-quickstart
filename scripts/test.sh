#!/usr/bin/env bash

set -euo pipefail

if [ ! -d ".venv" ]; then
    echo "Virtual environment not found. Run: init" >&2
    exit 1
fi

source .venv/bin/activate

exec python -m pytest "$@"
