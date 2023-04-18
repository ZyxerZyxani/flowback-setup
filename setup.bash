#!/bin/bash

sudo apt install git curl build-essential
cd resources
ls | xargs -I % sh -c 'sudo chmod +x % && ./%'
cd flowback
ls | xargs -I % sh -c 'sudo chmod +x %'
install_files = "$PWD"
mkdir -p /opt/flowback
cd /opt/flowback
find $install_files| xargs -I % sh -c '%'
cp $install_file/../../update_backend.bash backend/
cp $install_file/../../update_frontend.bash frontend/
cp $install_file/../templates/flowback/backend/.flowback_pgpass backend/
printf 'Setup almost finnished. Modify /opt/flowback/backend/.flowback_pgpass and modify /opt/flowback/backend/update_backend.bash and /opt/flowback/frontend/update_frontend.bash for customisation.'
