echo "== Setting Homebrew Zsh as default shell =="

# Set Homebrew Zsh as default shell
chsh -s "$(which zsh)"

echo "== Installing Oh My Zsh =="

# Clone Oh My Zsh to ~/.oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh

# Create ~/.zshrc symlink
ln -s ~/projects/personal/dotfiles/dots/.zshrc ~/.zshrc

echo "== Installing Oh My Zsh plugins =="

# Install alias-tips
git clone https://github.com/djui/alias-tips ~/.oh-my-zsh/custom/plugins/alias-tips

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Install zsh-nvm
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo "== Installing Spaceship ZSH =="

# Install Spaceship ZSH
git clone https://github.com/denysdovhan/spaceship-prompt ~/.oh-my-zsh/custom/themes/spaceship-prompt

# Create symlink for theme file
ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
