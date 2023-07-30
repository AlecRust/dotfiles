#!/bin/sh

REPO_PATH=$(cd "$(dirname "$0")" && pwd)

# Run all setup scripts
sh "$REPO_PATH/scripts/brew.sh"
sh "$REPO_PATH/scripts/shell.sh"
sh "$REPO_PATH/scripts/vscode.sh"
sh "$REPO_PATH/scripts/sublime.sh"
sh "$REPO_PATH/scripts/cask.sh"
sh "$REPO_PATH/scripts/mas.sh"
sh "$REPO_PATH/scripts/macos.sh"

echo "✨ Setup complete - please restart machine"
