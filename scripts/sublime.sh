#!/bin/sh

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"

echo "==> 📜 Installing Sublime Text"

brew install --cask sublime-text

echo "==> 📜 Installing Sublime Text theme"

# Clone Afterglow theme
git clone https://github.com/Yabatadesign/afterglow-theme/ "$HOME/Library/Application Support/Sublime Text 3/Packages/Theme - Afterglow"

echo "==> 🔗 Symlinking Sublime Text settings and keybindings"

if [ -z "$CI" ]; then
  ln -sf "$REPO_PATH/configs/sublime/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
  ln -sf "$REPO_PATH/configs/sublime/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
fi
