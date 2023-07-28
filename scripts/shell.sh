#!/bin/sh

echo "==> 🔗 Symlinking dotfiles to ~/"

ln -sf ~/projects/personal/dotfiles/dotfiles/.aliases ~/.aliases
ln -sf ~/projects/personal/dotfiles/dotfiles/.curlrc ~/.curlrc
ln -sf ~/projects/personal/dotfiles/dotfiles/.default-gems ~/.default-gems
ln -sf ~/projects/personal/dotfiles/dotfiles/.default-npm-packages ~/.default-npm-packages
ln -sf ~/projects/personal/dotfiles/dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/projects/personal/dotfiles/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/projects/personal/dotfiles/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/projects/personal/dotfiles/dotfiles/.hushlogin ~/.hushlogin
ln -sf ~/projects/personal/dotfiles/dotfiles/.huskyrc ~/.huskyrc
ln -sf ~/projects/personal/dotfiles/dotfiles/.wgetrc ~/.wgetrc
ln -sf ~/projects/personal/dotfiles/dotfiles/.zprofile ~/.zprofile
ln -sf ~/projects/personal/dotfiles/dotfiles/.zshrc ~/.zshrc

# Symlink rtx config
mkdir -p ~/.config/rtx
ln -sf ~/projects/personal/dotfiles/dotfiles/.rtx.toml ~/.config/rtx/config.toml

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

echo "==> 🔗 Symlinking Google Drive scripts to ~/"

ln -sf ~/My\ Drive/Apps/scripts/ ~/scripts

# Notify if .extra file is missing
if [ ! -f ~/.extra ]; then
  echo "==> ℹ️ Create ~/.extra file for a non-repository place to store e.g. sensitive environment variables"
fi
