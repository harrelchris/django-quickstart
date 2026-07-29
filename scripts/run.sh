#!/usr/bin/env bash

set -e

source .venv/bin/activate

python manage.py runserver

#python manage.py collectstatic --no-input

#python -m gunicorn --workers=1
