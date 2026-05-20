#!/bin/sh
set -e

REPO_PATH=$(cd "$(dirname "$0")" && pwd)

# Run all setup scripts
sh "$REPO_PATH/scripts/brew.sh"
sh "$REPO_PATH/scripts/shell.sh"
sh "$REPO_PATH/scripts/vscode.sh"
sh "$REPO_PATH/scripts/sublime.sh"
sh "$REPO_PATH/scripts/macos.sh"

echo "✨ Setup complete - restart machine"
