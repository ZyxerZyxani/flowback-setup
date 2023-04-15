#!/bin/bash

package = "nodejs"

# Check if package is already installed
if dpkg-query -Wf'${db:Status-abbrev}' "$package" 2>/dev/null | grep -q '^i'; then
    printf 'The package "%s" _is_ installed!\nSkipping.\n' "$package"
    sudo npm install --global yarn
else
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt install nodejs
    sudo npm install --global yarn
fi
