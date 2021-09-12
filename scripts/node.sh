#!/bin/sh

echo "==> 📜 Installing Volta"

# Run Volta install script
curl https://get.volta.sh | bash

# Source Volta to run now
# shellcheck disable=SC1091
. "$HOME/.volta/bin"

echo "==> 📜 Installing latest Node and global packages"

# Install latest LTS Node
volta install node

# Install global packages
volta install yarn
volta install npm-check-updates
volta install npm-check
volta install changelog
volta install splash-cli
volta install lungo-cli
volta install retry-cli
volta install gulp-cli
volta install stylelint
volta install eslint
volta install nodemon
volta install serve
volta install emoj
volta install yo
