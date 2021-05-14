echo "== Updating npm and installing Yarn =="

# Install latest Node version
nvm install node

# Update npm and install yarn
npm install --global npm
npm install --global yarn

echo "== Installing global npm packages =="

# Install global packages
yarn global add npm-check-updates
yarn global add npm-check
yarn global add retry-cli
yarn global add splash-cli
yarn global add gulp-cli
yarn global add eslint
yarn global add stylelint
yarn global add jshint
yarn global add nodemon
yarn global add serve
yarn global add yo
yarn global add changelog
