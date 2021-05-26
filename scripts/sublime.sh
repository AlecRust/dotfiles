#!/bin/sh

echo "==> 📜 Installing Sublime Text"

brew install --cask sublime-text

echo "==> 📜 Installing Sublime Text theme"

# Clone Afterglow theme
git clone https://github.com/Yabatadesign/afterglow-theme/ "$HOME/Library/Application Support/Sublime Text 3/Packages/Theme - Afterglow"

echo "==> 🔗 Symlinking Sublime Text settings and keybindings"

ln -s "$HOME/projects/personal/dotfiles/sublime/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

ln -s "$HOME/projects/personal/dotfiles/sublime/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"

echo "==> 📜 Setting Sublime Text as default app for files with no extension"

duti -s com.sublimetext.4 public.plain-text all
duti -s com.sublimetext.4 public.unix-executable all
duti -s com.sublimetext.4 public.data all
