#!/bin/sh

# Ignore ShellCheck SC1090 error
# shellcheck source=/dev/null

# Run all setup scripts
. ~/projects/personal/dotfiles/scripts/brew.sh
. ~/projects/personal/dotfiles/scripts/shell.sh
. ~/projects/personal/dotfiles/scripts/node.sh
. ~/projects/personal/dotfiles/scripts/ruby.sh
. ~/projects/personal/dotfiles/scripts/iterm2.sh
. ~/projects/personal/dotfiles/scripts/vscode.sh
. ~/projects/personal/dotfiles/scripts/sublime.sh
. ~/projects/personal/dotfiles/scripts/cask.sh
. ~/projects/personal/dotfiles/scripts/mas.sh
. ~/projects/personal/dotfiles/scripts/macos.sh

echo "✨ Completed setup - please restart machine"
