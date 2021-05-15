#!/bin/sh

# Ask for administrator password upfront
sudo -v

# Run all setup scripts
source ~/projects/personal/dotfiles/scripts/ssh.sh
source ~/projects/personal/dotfiles/scripts/brew.sh
source ~/projects/personal/dotfiles/scripts/shell.sh
source ~/projects/personal/dotfiles/scripts/node.sh
source ~/projects/personal/dotfiles/scripts/ruby.sh
source ~/projects/personal/dotfiles/scripts/vscode.sh
# source ~/projects/personal/dotfiles/scripts/cask.sh
source ~/projects/personal/dotfiles/scripts/macos.sh

echo "== Completed dotfiles setup - please restart =="
