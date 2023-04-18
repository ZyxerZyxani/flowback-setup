#!/bin/bash

# Install Postgres
sudo apt update
package = "postgres"

# Check if package is already installed
if dpkg-query -Wf'${db:Status-abbrev}' "$package" 2>/dev/null | grep -q '^i'; then
    printf 'The package "%s" _is_ installed!\nSkipping.\n' "$package"
else
    sudo apt install postgresql
fi

package = "postgres-contrib"

# Check if package is already installed
if dpkg-query -Wf'${db:Status-abbrev}' "$package" 2>/dev/null | grep -q '^i'; then
    printf 'The package "%s" _is_ installed!\nSkipping.\n' "$package"
else
    sudo apt install postgresql-contrib
fi

sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service
