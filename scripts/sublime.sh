#!/bin/sh

echo "==> 📜 Installing Sublime Text"

brew install --cask sublime-text

echo "==> 📜 Installing Sublime Text theme"

# Clone Afterglow theme
git clone https://github.com/Yabatadesign/afterglow-theme/ "$HOME/Library/Application Support/Sublime Text 3/Packages/Theme - Afterglow"

echo "==> 🔗 Symlinking Sublime Text settings"

ln -s ~/projects/personal/dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings