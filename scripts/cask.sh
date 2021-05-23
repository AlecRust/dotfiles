#!/bin/sh

echo "==> 📜 Installing Homebrew Cask apps"

# General
brew install --cask google-backup-and-sync
brew install --cask monitorcontrol
brew install --cask the-unarchiver
brew install --cask brave-browser
brew install --cask transmission
brew install --cask balenaetcher
brew install --cask istat-menus
brew install --cask 1password
brew install --cask gpg-suite
brew install --cask mac2imgur
brew install --cask hiddenbar
brew install --cask rectangle
brew install --cask telegram
brew install --cask whatsapp
brew install --cask spotify
brew install --cask discord
brew install --cask slack
brew install --cask zoom
brew install --cask iina
brew install --cask ivpn
brew install --cask kap

# Install last so it enables extensions for other apps
brew install --cask raycast

# Development
brew install --cask docker
brew install --cask firefox
brew install --cask gas-mask
brew install --cask imageoptim
brew install --cask kaleidoscope
brew install --cask sketch
brew install --cask sourcetree
brew install --cask tableplus
brew install --cask transmit
