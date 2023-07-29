#!/bin/sh

# Ignore ShellCheck SC1090 error
# shellcheck source=/dev/null

REPO_PATH=$(cd "$(dirname "$0")" && pwd)

# Run all setup scripts
"$REPO_PATH/scripts/brew.sh"
"$REPO_PATH/scripts/shell.sh"
"$REPO_PATH/scripts/vscode.sh"
"$REPO_PATH/scripts/sublime.sh"
"$REPO_PATH/scripts/cask.sh"
"$REPO_PATH/scripts/mas.sh"
"$REPO_PATH/scripts/macos.sh"

echo "✨ Setup complete - please restart machine"
