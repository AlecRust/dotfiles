#!/bin/sh

echo "==> 📜 Installing Node Version Manager"

# Install latest nvm and load it to run now
# https://github.com/nvm-sh/nvm#manual-install
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout "$(git describe --abbrev=0 --tags --match "v[0-9]*" "$(git rev-list --tags --max-count=1)")"
) && \. "$NVM_DIR/nvm.sh"

echo "==> 🔗 Symlinking default Node packages list"

# Use NVM's default-packages for global package installation
# https://github.com/nvm-sh/nvm#default-global-packages-from-file-while-installing
ln -s ~/projects/personal/dotfiles/dotfiles/default-packages "$NVM_DIR/default-packages"

echo "==> 📜 Installing latest Node and global packages"

# Install latest Node
nvm install node

# Update npm to latest version
npm install --global npm
