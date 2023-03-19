#!/bin/bash

curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install nodejs
sudo apt install build-essential
sudo npm install --global yarn