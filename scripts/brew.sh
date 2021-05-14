echo "== Installing Homebrew packages =="

# Update Homebrew and any already-installed formulae
brew update
brew upgrade

# Install version managers
# Install NVM as Oh My Zsh plugin: https://github.com/lukechilds/zsh-nvm
brew install rbenv
brew install pyenv

# Install newer core macOS utilities
brew install coreutils
brew install findutils
brew install gnu-sed
brew install openssh
brew install rsync
brew install grep
brew install wget
brew install vim
brew install zsh

# Install development tools
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

# Install Postgres and start boot service
brew install postgresql
brew services start postgresql

# Install other utilities
brew install speedtest_cli
brew install thefuck
brew install trash
brew install qrencode

# Install programming font
brew tap homebrew/cask-fonts
brew install font-source-code-pro

# Remove outdated Homebrew versions
brew cleanup
