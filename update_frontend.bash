#!/bin/bash
SCREEN_NAME="flowback-test-frontend"

screen -XS "${SCREEN_NAME}" quit

git pull https://github.com/lokehagberg/flowback-frontend.git
npm install
screen -S "${SCREEN_NAME}" -dm bash -c "yarn run dev"