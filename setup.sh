#!/bin/sh

# Ignore ShellCheck SC1090 error
# shellcheck source=/dev/null

# Run all setup scripts
. ./dotfiles/scripts/brew.sh
. ./dotfiles/scripts/shell.sh
. ./dotfiles/scripts/node.sh
. ./dotfiles/scripts/ruby.sh
. ./dotfiles/scripts/iterm2.sh
. ./dotfiles/scripts/vscode.sh
. ./dotfiles/scripts/sublime.sh
. ./dotfiles/scripts/cask.sh
. ./dotfiles/scripts/mas.sh
. ./dotfiles/scripts/macos.sh

echo "✨ Completed setup - please restart machine"
