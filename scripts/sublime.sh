#!/bin/sh

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"

echo "==> 📜 Installing Sublime Text"

brew install --cask sublime-text

echo "==> 📜 Installing Sublime Text theme"

# Clone Afterglow theme
git clone https://github.com/Yabatadesign/afterglow-theme/ "$HOME/Library/Application Support/Sublime Text 3/Packages/Theme - Afterglow"

echo "==> 🔗 Symlinking Sublime Text settings and keybindings"

ln -sf "$REPO_PATH/configs/sublime/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -sf "$REPO_PATH/configs/sublime/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"

echo "==> 📜 Setting Sublime Text as default app for various extensions"

duti -s com.sublimetext.4 public.plain-text all
duti -s com.sublimetext.4 public.unix-executable all
duti -s com.sublimetext.4 public.data all

duti -s com.sublimetext.4 .json all
duti -s com.sublimetext.4 .lock all
duti -s com.sublimetext.4 .env all
duti -s com.sublimetext.4 .yml all
duti -s com.sublimetext.4 .css all
duti -s com.sublimetext.4 .php all
duti -s com.sublimetext.4 .csv all
duti -s com.sublimetext.4 .svg all
duti -s com.sublimetext.4 .sql all
duti -s com.sublimetext.4 .md all
duti -s com.sublimetext.4 .sh all
duti -s com.sublimetext.4 .rb all
