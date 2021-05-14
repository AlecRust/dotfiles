# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install zsh.
brew install zsh

# Install wget.
brew install wget

# Install Heroku CLI.
brew tap heroku/brew && brew install heroku

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh

# Install other useful binaries.
brew install tmux
brew install rsync
brew install speedtest_cli
brew install svn
brew install redis
brew install gh
brew install autoenv
brew install httpie
brew install thefuck
brew install trash
brew install qrencode
brew install imagemagick

# Version managers
# Install NVM as Oh My Zsh plugin: https://github.com/lukechilds/zsh-nvm
brew install rbenv
brew install pyenv

# Git
brew install git
brew install diff-so-fancy

# Fonts
brew tap homebrew/cask-fonts
brew install font-source-code-pro

# Remove outdated versions from the cellar.
brew cleanup
