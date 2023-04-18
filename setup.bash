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
