#!/bin/sh

REPO_PATH="$(cd "$(dirname "$0")/.." && pwd)"

symlink() {
  source="$1"
  target="$2"
  filename="$(basename "$source")"
  if [ -L "$target" ]; then
    echo "⚠️ Skipping symlink $filename -> $target because it already exists" >&2
  elif [ -e "$target" ]; then
    echo "❌ Cannot symlink $filename -> $target because $target already exists and is not a symlink" >&2
  else
    ln -s "$source" "$target"
    echo "✅ Created symlink $filename -> $target"
  fi
}

echo "==> 🔗 Symlinking dotfiles, configs and scripts to ~/"

# Symlink dotfiles e.g. dotfiles/.aliases to ~/.aliases
for file in "$REPO_PATH"/dotfiles/.*; do
  if [ -f "$file" ]; then
    symlink "$file" "$HOME/$(basename "$file")"
  fi
done

# Symlink tool configs
symlink "$REPO_PATH/configs/biome/biome.json" "$HOME/biome.json"
symlink "$REPO_PATH/configs/branchpilot/branchpilot.toml" "$HOME/.config/branchpilot.toml"
mkdir -p "$HOME/.config/infat"
symlink "$REPO_PATH/configs/infat/config.toml" "$HOME/.config/infat/config.toml"
mkdir -p "$HOME/.config/mise"
symlink "$REPO_PATH/configs/mise/config.toml" "$HOME/.config/mise/config.toml"
symlink "$REPO_PATH/configs/mise/settings.toml" "$HOME/.config/mise/settings.toml"
symlink "$REPO_PATH/configs/starship/starship.toml" "$HOME/.config/starship.toml"

# Symlink Nextcloud dirs if present
if [ -d "$HOME/Nextcloud/Apps/" ]; then
  symlink "$HOME/Nextcloud/Apps/macbook-scripts" "$HOME/scripts"
  mkdir -p "$HOME/.warp"
  symlink "$HOME/Nextcloud/Apps/Warp/launch_configurations" "$HOME/.warp/launch_configurations"
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
