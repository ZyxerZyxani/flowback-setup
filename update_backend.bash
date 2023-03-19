#!/bin/bash
SCREEN_NAME="flowback-test-backend"
BACKEND_PORT="8000"

screen -XS "${SCREEN_NAME}" quit
source venv/bin/activate
git pull https://github.com/lokehagberg/flowback-backend.git
python3.10 -m pip install -r requirements.txt
python3.10 manage.py migrate
deactivate

# TODO add a way to insert port
screen -S "${SCREEN_NAME}" -dm bash -c "source venv/bin/activate; python manage.py runserver localhost:${BACKEND_PORT}"
caddy reload --config /etc/caddy/Caddyfile