#!/bin/bash

# Install Python 3.10
sudo apt update && sudo apt upgrade
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install python3.10 python3-pip python3.10-venv -y
sudo apt install libpq-dev
