#!/bin/sh

echo "==> 📜 Installing latest Ruby with asdf"

# Install the Ruby plugin https://github.com/asdf-vm/asdf-ruby
asdf plugin add ruby

# Install the latest Ruby version
asdf install ruby latest

echo "==> 📜 Setting latest Ruby as shell default"

asdf global ruby latest

echo "==> 📜 Upgrading RubyGems software version"

# Install the latest RubyGems version (ones bundled with Ruby are often outdated)
gem update --system
