#!/bin/bash

# Install Postgres
sudo apt update
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql.service
