#!/bin/sh

echo "==> 📜 Installing latest Python with pyenv"

# Initialize pyenv to run now
eval "$(pyenv init -)"

# Install xxenv-latest pyenv plugin
git clone https://github.com/momo-lab/xxenv-latest.git "$(pyenv root)"/plugins/xxenv-latest

# Skip slow steps in CI
if [ -z "${CI}" ]; then

  # Install latest Python and set as global
  pyenv latest install
  pyenv latest global

fi

echo "==> 📜 Installing global Python packages"

pip install yamllint

# Install shims for Python binaries known to pyenv
pyenv rehash
