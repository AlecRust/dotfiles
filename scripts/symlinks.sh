echo "== Creating symlinks =="

# Symlink dotfiles to Home directory
ln -s ~/projects/personal/dotfiles/dotfiles/.aliases ~/.aliases
ln -s ~/projects/personal/dotfiles/dotfiles/.curlrc ~/.curlrc
ln -s ~/projects/personal/dotfiles/dotfiles/.editorconfig ~/.editorconfig
ln -s ~/projects/personal/dotfiles/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/projects/personal/dotfiles/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/projects/personal/dotfiles/dotfiles/.hushlogin ~/.hushlogin
ln -s ~/projects/personal/dotfiles/dotfiles/.wgetrc ~/.wgetrc

# Symlink tmuxinator directory in Google Drive to Home directory
ln -s ~/Google\ Drive/Apps/iTerm/tmuxinator/ ~/.tmuxinator
