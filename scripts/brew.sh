#!/bin/sh

echo "==> 📜 Installing Homebrew packages"

# Update Homebrew and any already-installed formulae
brew update
brew upgrade

# Core macOS utilities
brew install coreutils
brew install moreutils
brew install findutils
brew install openssh
brew install gnu-sed
brew install python
brew install rsync
brew install bash
brew install nano
brew install curl
brew install wget
brew install grep
brew install vim
brew install zsh
brew install git

# Development tools
brew install diff-so-fancy
brew install imagemagick
brew install autoenv
brew install httpie
brew install awscli
brew install redis
brew install rbenv
brew install tmux
brew install gh

brew tap heroku/brew
brew install heroku

brew install postgresql
brew services start postgresql

# Other utilities
brew install z
brew install jq
brew install mas
brew install svn
brew install tldr
brew install duti
brew install htop
brew install trash
brew install ffmpeg
brew install thefuck
brew install qrencode
brew install dockutil
brew install youtube-dl
brew install speedtest-cli

# Fonts
brew tap homebrew/cask-fonts
brew install font-fira-code
brew install font-fira-mono-for-powerline

# Tidy up Homebrew versions
brew cleanup
