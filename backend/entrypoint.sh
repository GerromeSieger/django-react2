
#!/bin/bash

cd /app4

python3 manage.py migrate

python3 manage.py collectstatic --no-input

gunicorn backend.wsgi:application --bind 0.0.0.0:8000
