#!/bin/sh

REPO_PATH=$(cd "$(dirname "$0")"/.. && pwd)

echo "==> 📜 Installing iTerm2"

# Install iTerm2
brew install --cask iterm2

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$REPO_PATH/iterm2"

# Load custom preferences into iTerm2
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Disable annoying prompt when quitting iTerm2
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Install shell integration
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash
