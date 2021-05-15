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
brew install gnu-sed
brew install openssh
brew install rsync
brew install curl
brew install grep
brew install wget
brew install vim
brew install zsh

# Development tools
brew install git
brew install diff-so-fancy
brew install autoenv
brew install tmux
brew install awscli
brew install svn
brew install redis
brew install gh
brew install httpie
brew install imagemagick

brew tap heroku/brew
brew install heroku

brew install postgresql
brew services start postgresql

# Other utilities
brew install speedtest_cli
brew install thefuck
brew install trash
brew install qrencode

# Programming font
brew tap homebrew/cask-fonts
brew install font-source-code-pro

# Remove outdated Homebrew versions
brew cleanup
