#!/bin/sh

echo "== Installing iTerm2 =="

# Install iTerm2
brew install --cask iterm2

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$HOME/projects/personal/dotfiles/iterm2"

# Load custom preferences into iTerm2
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

echo "== Symlinking .tmuxinator from Google Drive =="

# Create symlink from Google Drive tmuxinator to home directory
ln -s ~/Google\ Drive/Apps/iTerm/tmuxinator/ ~/.tmuxinator
