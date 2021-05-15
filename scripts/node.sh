#!/bin/sh

echo "== Installing Node and Yarn =="

# Source zsh-nvmto run now
source ~/.oh-my-zsh/custom/plugins/zsh-nvm/zsh-nvm.plugin.zsh

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
