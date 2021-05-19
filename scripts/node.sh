#!/bin/sh

echo "==> 📜 Installing Node Version Manager"

# Install latest nvm and load it
# https://github.com/nvm-sh/nvm#manual-install
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout "$(git describe --abbrev=0 --tags --match "v[0-9]*" "$(git rev-list --tags --max-count=1)")"
) && \. "$NVM_DIR/nvm.sh"

echo "==> 📜 Installing latest Node via NVM"

# Install latest Node
nvm install node

# Update npm to latest version
npm install --global npm

echo "==> 📜 Installing Yarn"

brew install yarn

echo "==> 📜 Installing global Node packages"

yarn global add npm-check-updates
yarn global add npm-check
yarn global add changelog
yarn global add splash-cli
yarn global add lungo-cli
yarn global add retry-cli
yarn global add gulp-cli
yarn global add stylelint
yarn global add eslint
yarn global add nodemon
yarn global add serve
yarn global add yo
