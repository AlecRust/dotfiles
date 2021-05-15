#!/bin/sh

echo "== Creating symlinks =="

# Symlink all files in /dotfiles to home directory
ln -s ~/projects/personal/dotfiles/dotfiles/.aliases ~/.aliases
ln -s ~/projects/personal/dotfiles/dotfiles/.curlrc ~/.curlrc
ln -s ~/projects/personal/dotfiles/dotfiles/.editorconfig ~/.editorconfig
ln -s ~/projects/personal/dotfiles/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/projects/personal/dotfiles/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/projects/personal/dotfiles/dotfiles/.hushlogin ~/.hushlogin
ln -s ~/projects/personal/dotfiles/dotfiles/.wgetrc ~/.wgetrc
ln -s ~/projects/personal/dotfiles/dotfiles/.zshrc ~/.zshrc

# Symlink Google Drive tmuxinator directory to home directory
ln -s ~/Google\ Drive/Apps/iTerm/tmuxinator/ ~/.tmuxinator

echo "== Setting Homebrew Zsh as default shell =="

# Add Homebrew Zsh to accepted shells if not present
if ! grep -Fxq "$(which zsh)" /etc/shells > /dev/null 2>&1; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
fi

# Set Homebrew Zsh as default shell
chsh -s "$(which zsh)"

echo "== Installing Oh My Zsh and plugins =="

# Clone Oh My Zsh
git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh

# Clone plugins to Oh My Zsh
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
git clone https://github.com/djui/alias-tips ~/.oh-my-zsh/custom/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install iTerm2 shell integration
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash

# Clone Spaceship ZSH
git clone https://github.com/denysdovhan/spaceship-prompt ~/.oh-my-zsh/custom/themes/spaceship-prompt

# Create theme file symlink
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
