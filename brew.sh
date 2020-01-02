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
brew install gnu-sed --with-default-names
# Install zsh.
# Note: don’t forget to add `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.
brew install zsh
brew tap homebrew/versions

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install yarn
brew install tmux
brew install rsync
brew install speedtest_cli
brew install redis
brew install heroku
brew install hub
brew install autoenv
brew install httpie
brew install keybase
brew install thefuck
brew install trash
brew install qrencode
brew cask install ngrok

# Version managers
# Install NVM as Oh My Zsh plugin: https://github.com/lukechilds/zsh-nvm
brew install rbenv ruby-build
brew install pyenv

# Git
brew install git
brew install diff-so-fancy

# Fonts
brew tap caskroom/fonts
brew cask install font-source-code-pro

# Remove outdated versions from the cellar.
brew cleanup
