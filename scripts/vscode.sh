#!/bin/sh
set -e

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"

echo "==> 🔗 Symlinking Visual Studio Code settings"

mkdir -p "$HOME/Library/Application Support/Code/User"
ln -sf "$REPO_PATH/configs/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
