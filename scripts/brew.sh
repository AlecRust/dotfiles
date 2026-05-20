#!/bin/sh
set -e

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"
BREWFILE="$REPO_PATH/Brewfile"

echo "==> 📜 Installing Homebrew bundle"

brew update
brew bundle install --file="$BREWFILE"
brew cleanup
