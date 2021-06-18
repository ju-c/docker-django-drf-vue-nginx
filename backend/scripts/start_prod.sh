#!/bin/bash

cd backend
python3 manage.py makemigrations
python3 manage.py migrate --no-input
gunicorn backend.wsgi -b 0.0.0.0:8000