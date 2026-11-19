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

dropdb --if-exists "$POSTGRES_DB"
dropuser "$POSTGRES_USER"

createuser "$POSTGRES_USER"
createdb "$POSTGRES_DB" --owner="$POSTGRES_USER"

# rm app/app_name/migrations/0001_initial.py

python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --noinput --username user --email user@email.com

# python manage.py dumpdata app_name.ModelName -o app/fixtures/model_names.json --indent 2

# python manage.py loaddata app/fixtures/model_names.json
