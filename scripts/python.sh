#!/bin/sh

# NOTE: pyenv is installed via zsh-pyenv Oh My Zsh plugin instead of Homebrew
# to simplify setup i.e. doesn't require .zshrc, .zprofile and .profile changes

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

# Install shims for Python binaries known to pyenv
pyenv rehash
