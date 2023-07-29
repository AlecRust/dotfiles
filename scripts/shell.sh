#!/bin/sh

REPO_PATH=$(cd "$(dirname "$0")"/.. && pwd)

echo "==> 🔗 Symlinking dotfiles to ~/"

ln -sf "$REPO_PATH/dotfiles/.aliases" ~/.aliases
ln -sf "$REPO_PATH/dotfiles/.curlrc" ~/.curlrc
ln -sf "$REPO_PATH/dotfiles/.default-gems" ~/.default-gems
ln -sf "$REPO_PATH/dotfiles/.default-npm-packages" ~/.default-npm-packages
ln -sf "$REPO_PATH/dotfiles/.editorconfig" ~/.editorconfig
ln -sf "$REPO_PATH/dotfiles/.gitconfig" ~/.gitconfig
ln -sf "$REPO_PATH/dotfiles/.gitignore_global" ~/.gitignore_global
ln -sf "$REPO_PATH/dotfiles/.hushlogin" ~/.hushlogin
ln -sf "$REPO_PATH/dotfiles/.huskyrc" ~/.huskyrc
ln -sf "$REPO_PATH/dotfiles/.wgetrc" ~/.wgetrc
ln -sf "$REPO_PATH/dotfiles/.zprofile" ~/.zprofile
ln -sf "$REPO_PATH/dotfiles/.zshrc" ~/.zshrc

# Symlink rtx config
mkdir -p ~/.config/rtx
ln -sf "$REPO_PATH/dotfiles/.rtx.toml" ~/.config/rtx/config.toml

echo "==> 📜 Setting Homebrew Zsh as default shell"

# Add Homebrew Zsh to accepted shells if not present
if ! grep -Fxq "$(which zsh)" /etc/shells > /dev/null 2>&1; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
fi

# Set Homebrew Zsh as default shell
chsh -s "$(which zsh)"

echo "==> 📜 Installing Oh My Zsh and plugins"

# Clone Oh My Zsh
git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh

# Clone Oh My Zsh plugins
git clone https://github.com/djui/alias-tips ~/.oh-my-zsh/custom/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Symlink Google Drive dirs if present
if [ -d "$HOME/My Drive/Apps/" ]; then
  echo "==> 🔗 Symlinking Google Drive scripts and tmuxinator to ~/"
  ln -sf ~/My\ Drive/Apps/scripts/ ~/scripts
  ln -sf ~/My\ Drive/Apps/tmuxinator/ ~/.tmuxinator
fi

# Notify if .extra file is missing
if [ ! -f ~/.extra ]; then
  echo "==> ℹ️ Create ~/.extra file for a non-repository place to store e.g. sensitive environment variables"
fi

if [ -z "$CI" ]; then
  echo "==> 📜 Installing latest Go, Node, Python and Ruby"

  rtx use -g go@latest
  rtx use -g node@latest
  rtx use -g python@latest
  rtx use -g ruby@latest

  echo "==> ℹ️ Language versions installed:"

  rtx current
fi
