#!/usr/bin/env bash

set -euo pipefail

if [ ! -d ".venv" ]; then
    echo "Virtual environment not found. Run: init" >&2
    exit 1
fi

source .venv/bin/activate

set -a
source .env
set +a

python manage.py runserver

#python manage.py collectstatic --no-input

#python -m gunicorn --workers=1
