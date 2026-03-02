# I don't do much (if any) node development, but in the rare case I do I want a sane setup

set -euo pipefail

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

# Needs to be manually set in the install script, also in .bashrc
# `nvm` is a function so needs to be sourced.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set to latest LTS (24 at time of writing)
# Can also do `--lts` but I want to be explicit
nvm install 24
nvm use 24
