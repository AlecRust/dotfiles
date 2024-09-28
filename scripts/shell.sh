#!/bin/sh

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"

echo "==> 🔗 Symlinking dotfiles/configs/scripts to ~/"

# Symlink dotfiles e.g. dotfiles/.aliases to ~/.aliases
for file in "$REPO_PATH"/dotfiles/.*; do
  if [ -f "$file" ]; then
    ln -sf "$file" "$HOME"
  fi
done

# Symlink mise and Starship configs
mkdir -p "$HOME/.config/husky"
ln -sf "$REPO_PATH/configs/husky/init.sh" "$HOME/.config/husky/init.sh"
mkdir -p "$HOME/.config/mise"
ln -sf "$REPO_PATH/configs/mise/config.toml" "$HOME/.config/mise/config.toml"
ln -sf "$REPO_PATH/configs/mise/settings.toml" "$HOME/.config/mise/settings.toml"
ln -sf "$REPO_PATH/configs/starship/starship.toml" "$HOME/.config/starship.toml"

# Symlink Nextcloud dirs if present
# NOTE: Must delete existing dirs before symlinking to avoid recursive symlink
if [ -d "$HOME/Nextcloud/Apps/" ]; then
  rm -f "$HOME/scripts"
  ln -s "$HOME/Nextcloud/Apps/macbook-scripts/" "$HOME/scripts"

  mkdir -p "$HOME/.warp"
  rm -f "$HOME/.warp/launch_configurations"
  ln -s "$HOME/Nextcloud/Apps/Warp/launch_configurations" "$HOME/.warp/launch_configurations"
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

# Install latest language versions with mise
if [ -z "$CI" ]; then
  echo "==> 📜 Installing Go, Node, Python and Ruby runtimes"

  mise use -g go@latest
  mise use -g node@lts
  mise use -g python@latest
  mise use -g ruby@latest

  echo "==> ℹ️ Runtimes installed via mise:"

  mise current
fi

# Notify if .extra file is missing
if [ ! -f "$HOME/.extra" ]; then
  echo "==> ℹ️ Optionally create ~/.extra file to store e.g. non-repo environment variables"
fi
