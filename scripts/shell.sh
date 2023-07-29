#!/bin/sh

REPO_PATH=$(cd "$(dirname "$0")"/.. && pwd)

echo "==> 🔗 Symlinking dotfiles/configs/scripts to ~/"

# Symlink dotfiles e.g. dotfiles/.aliases to ~/.aliases
for file in "$REPO_PATH"/dotfiles/.*; do
  if [ -f "$file" ]; then
    ln -sf "$file" ~/
  fi
done

# Symlink rtx config
mkdir -p ~/.config/rtx
ln -sf "$REPO_PATH/rtx/config.toml" ~/.config/rtx/config.toml

# Symlink Google Drive dirs if present
if [ -d "$HOME/My Drive/Apps/" ]; then
  echo "==> 🔗 Symlinking Google Drive scripts and tmuxinator to ~/"
  ln -sf ~/My\ Drive/Apps/scripts/ ~/scripts
  ln -sf ~/My\ Drive/Apps/tmuxinator/ ~/.tmuxinator
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

# Clone Oh My Zsh
git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh

# Clone Oh My Zsh plugins
git clone https://github.com/djui/alias-tips ~/.oh-my-zsh/custom/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Notify if .extra file is missing
if [ ! -f ~/.extra ]; then
  echo "==> ℹ️ Create ~/.extra file for a non-repository place to store e.g. sensitive environment variables"
fi

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
