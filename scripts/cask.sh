#!/bin/sh

echo "==> 📜 Installing Homebrew Cask apps"

# General
brew install --cask gpg-suite-no-mail
brew install --cask keepingyouawake
brew install --cask jordanbaird-ice
brew install --cask logitech-g-hub
brew install --cask monitorcontrol
brew install --cask brave-browser
brew install --cask nextcloud
brew install --cask gas-mask
brew install --cask notunes
brew install --cask spotify
brew install --cask claude
brew install --cask joplin
brew install --cask slack
brew install --cask warp
brew install --cask zoom
brew install --cask iina
brew install --cask eul
brew install --cask kap

# Development
brew install --cask gitify
brew install --cask sketch
brew install --cask firefox
brew install --cask transmit
brew install --cask tableplus
brew install --cask sourcetree
brew install --cask imageoptim
brew install --cask kaleidoscope
brew install --cask google-chrome
brew install --cask docker-desktop
brew install --cask google-cloud-sdk

# App development
brew install --cask zulu@17
brew install --cask expo-orbit
brew install --cask android-studio

# Personal machine only
brew install --cask transmission
brew install --cask balenaetcher
brew install --cask tailscale
brew install --cask 1password
brew install --cask 1password-cli
brew install --cask mac2imgur
brew install --cask multipass
brew install --cask telegram
brew install --cask whatsapp
brew install --cask discord
brew install --cask signal
brew install --cask local
brew install --cask ivpn

# NOTE: Install Raycast last so it enables extensions for other apps
brew install --cask raycast
