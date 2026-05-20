#!/bin/sh
set -e

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"
SUBLIME_PACKAGES_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages"
THEME_DIR="$SUBLIME_PACKAGES_DIR/Theme - Afterglow"

if [ -d "$THEME_DIR/.git" ]; then
  echo "==> 📜 Updating Sublime Text theme"
  git -C "$THEME_DIR" pull --ff-only
elif [ -e "$THEME_DIR" ]; then
  echo "==> ⚠️ Skipping Sublime Text theme because $THEME_DIR already exists"
else
  echo "==> 📜 Installing Sublime Text theme"
  mkdir -p "$SUBLIME_PACKAGES_DIR"
  git clone https://github.com/Yabatadesign/afterglow-theme/ "$THEME_DIR"
fi

echo "==> 🔗 Symlinking Sublime Text settings and keybindings"

if [ -z "$CI" ]; then
  mkdir -p "$SUBLIME_PACKAGES_DIR/User"
  ln -sf "$REPO_PATH/configs/sublime/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
  ln -sf "$REPO_PATH/configs/sublime/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
fi
