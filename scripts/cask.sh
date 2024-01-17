#!/bin/sh

echo "==> 📜 Installing Homebrew Cask apps"

# General
brew install --cask gpg-suite-no-mail
brew install --cask keepingyouawake
brew install --cask logitech-g-hub
brew install --cask monitorcontrol
brew install --cask brave-browser
brew install --cask nextcloud
brew install --cask hiddenbar
brew install --cask gas-mask
brew install --cask spotify
brew install --cask joplin
brew install --cask slack
brew install --cask warp
brew install --cask zoom
brew install --cask iina
brew install --cask eul
brew install --cask kap

# Development
brew install --cask local
brew install --cask sketch
brew install --cask docker
brew install --cask firefox
brew install --cask transmit
brew install --cask multipass
brew install --cask tableplus
brew install --cask sourcetree
brew install --cask imageoptim
brew install --cask kaleidoscope
brew install --cask google-chrome

# Personal machine only
brew install --cask transmission
brew install --cask balenaetcher
brew install --cask tailscale
brew install --cask 1password
brew install --cask 1password-cli
brew install --cask mac2imgur
brew install --cask telegram
brew install --cask whatsapp
brew install --cask discord
brew install --cask signal
brew install --cask ivpn

# NOTE: Install Raycast last so it enables extensions for other apps
brew install --cask raycast
