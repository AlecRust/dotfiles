#!/bin/sh

echo "==> 📜 Installing latest Node with asdf"

# Install the Node plugin https://github.com/asdf-vm/asdf-nodejs
asdf plugin add nodejs

# Install the latest Node version
asdf install nodejs latest

echo "==> 📜 Setting latest Node as shell default"

asdf global nodejs latest
