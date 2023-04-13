#!/bin/bash

package = "caddy"
# Check if caddy is already installed
if dpkg-query -Wf'${db:Status-abbrev}' "$package" 2>/dev/null | grep -q '^i'; then
    printf 'The package "%s" _is_ installed!\nSkipping.\n' "$package"
else
    # Install Caddy if Caddy is not installed
    sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
    sudo apt update
    sudo apt install caddy
fi
