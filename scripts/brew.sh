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
brew install gnu-tar
brew install rsync
brew install bash
brew install curl
brew install nano
brew install wget
brew install grep
brew install vim
brew install zsh
brew install git

# Development tools
brew install gh
brew install ack
brew install php
brew install rtx
brew install tmux
brew install vips
brew install redis
brew install mysql
brew install awscli
brew install httpie
brew install composer
brew install yamllint
brew install git-delta
brew install actionlint
brew install shellcheck
brew install imagemagick

brew tap heroku/brew
brew install heroku

brew install postgresql
brew services start postgresql

# Other utilities
brew install jq
brew install bat
brew install exa
brew install fzf
brew install mas
brew install svn
brew install hstr
brew install tldr
brew install duti
brew install htop
brew install ffmpeg
brew install rename
brew install rclone
brew install zoxide
brew install yt-dlp
brew install thefuck
brew install dockutil
brew install qrencode
brew install starship
brew install dark-mode
brew install speedtest-cli
brew install homeassistant-cli

# Fonts
brew tap homebrew/cask-fonts
brew install font-fira-code
brew install font-fira-code-nerd-font

# Tidy up Homebrew versions
brew cleanup
