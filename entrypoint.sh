#!/bin/bash

python manage.py collectstatic --noinput --clear

exec gunicorn
