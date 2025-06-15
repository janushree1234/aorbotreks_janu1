#!/usr/bin/env bash
# build.sh

# Exit immediately if a command exits with a non-zero status.
set -o errexit

# Install Python dependencies
pip install -r requirements.txt

# Collect static files for deployment
python manage.py collectstatic --no-input

# Apply database migrations
python manage.py migrate
