#!/bin/sh

echo "== Installing Homebrew packages =="

# Update Homebrew and any already-installed formulae
brew update
brew upgrade

# Version managers
brew install rbenv
brew install pyenv

# Core macOS utilities
brew install coreutils
brew install findutils
brew install openssh
brew install gnu-sed
brew install rsync
brew install curl
brew install grep
brew install wget
brew install vim
brew install zsh

# Development tools
brew install gh
brew install tmux
brew install redis
brew install awscli
brew install httpie
brew install autoenv
brew install imagemagick
brew install diff-so-fancy

brew tap heroku/brew
brew install heroku

brew install postgresql
brew services start postgresql

# Other utilities
brew install z
brew install jq
brew install trash
brew install thefuck
brew install qrencode
brew install speedtest_cli

# Programming font
brew tap homebrew/cask-fonts
brew install font-fira-code

# Tidy up Homebrew versions
brew cleanup
