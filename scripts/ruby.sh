#!/bin/sh

echo "==> 📜 Installing latest Ruby version"

rtx install ruby@latest

echo "==> 📜 Setting latest Ruby as shell default"

rtx use -g ruby@latest

echo "==> 📜 Upgrading RubyGems software version"

# Install the latest RubyGems version (ones bundled with Ruby are often outdated)
gem update --system
