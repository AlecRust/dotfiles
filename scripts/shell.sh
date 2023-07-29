#!/bin/sh

REPO_PATH=$(cd "$(dirname "$0")"/.. && pwd)

echo "==> 🔗 Symlinking dotfiles/configs/scripts to ~/"

# Symlink dotfiles e.g. dotfiles/.aliases to ~/.aliases
for file in "$REPO_PATH"/dotfiles/.*; do
  if [ -f "$file" ]; then
    ln -sf "$file" "$HOME"
  fi
done

# Symlink rtx and Starship configs
mkdir -p "$HOME/.config/rtx"
ln -sf "$REPO_PATH/rtx/config.toml" "$HOME/.config/rtx/config.toml"
ln -sf "$REPO_PATH/starship/starship.toml" "$HOME/.config/starship.toml"

# Symlink Google Drive dirs if present
if [ -d "$HOME/My Drive/Apps/" ]; then
  ln -sf "$HOME/My Drive/Apps/scripts/" "$HOME/scripts"
  mkdir -p "$HOME/.warp"
  ln -sf "$HOME/My Drive/Apps/Warp/launch_configurations" "$HOME/.warp/launch_configurations"
else
  echo "==> ℹ️ Google Drive folder not found - skipping symlinks"
fi

echo "==> 📜 Setting Homebrew Zsh as default shell"

# Add Homebrew Zsh to accepted shells if not present
if ! grep -Fxq "$(which zsh)" /etc/shells >/dev/null 2>&1; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
fi

# Set Homebrew Zsh as default shell if not already set
if [ "$SHELL" != "$(which zsh)" ]; then
  chsh -s "$(which zsh)"
fi

echo "==> 📜 Installing Oh My Zsh and plugins"

# Clone Oh My Zsh if not present, otherwise update it
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  git clone https://github.com/ohmyzsh/ohmyzsh "$HOME/.oh-my-zsh"
else
  git -C "$HOME/.oh-my-zsh" pull
fi

# Clone or update custom Zsh plugin
clone_or_update_plugin() {
  PLUGIN_REPO=$1
  PLUGIN_DIR="$HOME/.oh-my-zsh/custom/plugins/$(basename -s .git "$PLUGIN_REPO")"

  if [ ! -d "$PLUGIN_DIR" ]; then
    git clone "$PLUGIN_REPO" "$PLUGIN_DIR"
  else
    git -C "$PLUGIN_DIR" pull
  fi
}

clone_or_update_plugin https://github.com/djui/alias-tips

# Install latest language versions with rtx
if [ -z "$CI" ]; then
  echo "==> 📜 Installing latest Go, Node, Python and Ruby"

  rtx use -g go@latest
  rtx use -g node@latest
  rtx use -g python@latest
  rtx use -g ruby@latest

  echo "==> ℹ️ Language versions installed:"

  rtx current
fi

# Notify if .extra file is missing
if [ ! -f "$HOME/.extra" ]; then
  echo "==> ℹ️ Optionally create ~/.extra file to store e.g. non-repo environment variables"
fi
