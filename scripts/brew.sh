#!/bin/sh

echo "== Installing Homebrew packages =="

# Update Homebrew and any already-installed formulae
brew update
brew upgrade

# Core macOS utilities
brew install coreutils
brew install findutils
brew install openssh
brew install gnu-sed
brew install python
brew install rsync
brew install curl
brew install grep
brew install wget
brew install vim
brew install zsh

# Development tools
brew install gh
brew install tmux
brew install rbenv
brew install redis
brew install awscli
brew install httpie
brew install autoenv
brew install python3
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

# Fonts
brew tap homebrew/cask-fonts
brew install font-fira-code
brew install font-fira-mono-for-powerline

# Tidy up Homebrew versions
brew cleanup
