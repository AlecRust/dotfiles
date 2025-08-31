#!/bin/sh

echo "==> 📜 Installing Homebrew packages"

# Update Homebrew and any already-installed formulae
brew update
brew upgrade

# Core macOS utilities
brew install coreutils
brew install findutils
brew install moreutils
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
brew install mise
brew install biome
brew install awscli
brew install httpie
brew install wp-cli
brew install ripgrep
brew install composer
brew install yamllint
brew install watchman
brew install git-cliff
brew install git-delta
brew install hyperfine
brew install actionlint
brew install shellcheck
brew install imagemagick
brew install stripe/stripe-cli/stripe

# Other utilities
brew install jq
brew install bat
brew install lsd
brew install mas
brew install hstr
brew install tldr
brew install btop
brew install infat
brew install ffmpeg
brew install rename
brew install rclone
brew install bottom
brew install zoxide
brew install yt-dlp
brew install thefuck
brew install antidote
brew install dockutil
brew install exiftool
brew install starship
brew install dark-mode
brew install subversion
brew install speedtest-cli
brew install homeassistant-cli

# Fonts
brew install font-fira-code
brew install font-fira-code-nerd-font

# Tidy up Homebrew versions
brew cleanup
