#!/usr/bin/env bash
set -o errexit

pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
