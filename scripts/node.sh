#!/bin/sh

echo "==> 📜 Installing Volta"

# Run Volta install script
curl https://get.volta.sh | bash

# Set Volta variable and add to PATH
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Source Volta to run now
# shellcheck disable=SC1091
. "$HOME/.volta/bin"

echo "==> 📜 Installing latest Node with Volta"

# Install latest LTS Node
volta install node

echo "==> 📜 Installing global Node packages"

volta install yarn
volta install npm-check-updates
volta install npm-check
volta install changelog
volta install @getflywheel/local-cli
volta install wallpaper-cli
volta install retry-cli
volta install gulp-cli
volta install stylelint
volta install eslint
volta install nodemon
volta install serve
volta install emoj
volta install svgo
volta install yo
