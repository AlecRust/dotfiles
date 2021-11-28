#!/bin/sh

echo "==> 📜 Installing rbenv"

brew install rbenv

echo "==> 📜 Installing latest Ruby with rbenv"

# Initialize rbenv to run now
eval "$(rbenv init -)"

# Install xxenv-latest rbenv plugin
git clone https://github.com/momo-lab/xxenv-latest.git "$(rbenv root)"/plugins/xxenv-latest

# Skip slow steps in CI
if [ -z "${CI}" ]; then

  # Install latest Ruby and set as global
  rbenv latest install
  rbenv latest global

fi

# Upgrade RubyGems
gem update --system

echo "==> 📜 Installing global Ruby gems"

# Install global gems
gem install bundler
gem install tmuxinator
gem install rails

# Install shims for Ruby binaries known to rbenv
rbenv rehash
