#!/bin/sh

echo "==> 📜 Installing latest Ruby with asdf"

# Install the Ruby plugin
asdf plugin add ruby

# Install the latest Ruby version
asdf install ruby latest

echo "==> 📜 Setting latest Ruby as shell default"

asdf global ruby latest

echo "==> 📜 Installing global Ruby gems"

# Upgrade RubyGems version i.e. "gem" command
gem update --system

# Install global gems
gem install bundler
gem install tmuxinator
gem install rails
