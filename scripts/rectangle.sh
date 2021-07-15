#!/bin/sh

echo "==> 📜 Installing Rectangle"

brew install --cask rectangle

echo "==> 🔗 Symlinking Rectangle settings"

# NOTE: The only change from default settings is "Center Third" shortcut is replaced with "Almost Maximize"

ln -s "$HOME/projects/personal/dotfiles/rectangle/com.knollsoft.Rectangle.plist" "$HOME/Library/Preferences/com.knollsoft.Rectangle.plist"
