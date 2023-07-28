#!/bin/sh

# Ignore ShellCheck SC1090 error
# shellcheck source=/dev/null

# Run all setup scripts
. ./scripts/brew.sh
. ./scripts/shell.sh
. ./scripts/node.sh
. ./scripts/ruby.sh
. ./scripts/python.sh
. ./scripts/go.sh
. ./scripts/iterm2.sh
. ./scripts/vscode.sh
. ./scripts/sublime.sh
. ./scripts/cask.sh
. ./scripts/mas.sh
. ./scripts/macos.sh

echo "==> ℹ️ Language versions installed:"
rtx current

echo "✨ Completed setup - please restart machine"
