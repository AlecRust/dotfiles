echo "== Setting Homebrew Zsh as default shell =="

# Add Homebrew Zsh to accepted shells if not present
if ! grep -Fxq "$(which zsh)" /etc/shells > /dev/null 2>&1; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
fi

# Set Homebrew Zsh as default shell
chsh -s "$(which zsh)"

echo "== Installing Oh My Zsh =="

# Clone Oh My Zsh
git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh

# Create ~/.zshrc symlink
ln -s ~/projects/personal/dotfiles/dots/.zshrc ~/.zshrc

echo "== Installing Zsh plugins =="

# Clone plugins to Oh My Zsh
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
git clone https://github.com/djui/alias-tips ~/.oh-my-zsh/custom/plugins/alias-tips
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo "== Installing Spaceship ZSH =="

# Clone Spaceship ZSH
git clone https://github.com/denysdovhan/spaceship-prompt ~/.oh-my-zsh/custom/themes/spaceship-prompt

# Create theme file symlink
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme

# Reload shell to install NVM etc.
exec ${SHELL} -l
