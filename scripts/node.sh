#!/bin/sh

echo "== Installing Node Version Manager =="

# Save latest nvm version
latest_nvm_version="$(curl --silent "https://api.github.com/repos/nvm-sh/nvm/releases/latest" | jq -r .tag_name)"

# Install latest nvm
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$latest_nvm_version/install.sh" | bash

echo "== Installing Node and Yarn =="

# Install latest Node
nvm install node

# Update npm and install yarn
npm install --global npm
npm install --global yarn

echo "== Installing global npm packages =="

# Install global packages
yarn global add npm-check-updates
yarn global add npm-check
yarn global add changelog
yarn global add retry-cli
yarn global add splash-cli
yarn global add gulp-cli
yarn global add eslint
yarn global add stylelint
yarn global add nodemon
yarn global add serve
yarn global add yo
