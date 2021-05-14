echo "== Creating symlinks =="

# Symlink dotfiles to Home directory
ln -s ~/projects/personal/dotfiles/dots/.aliases ~/.aliases
ln -s ~/projects/personal/dotfiles/dots/.curlrc ~/.curlrc
ln -s ~/projects/personal/dotfiles/dots/.editorconfig ~/.editorconfig
ln -s ~/projects/personal/dotfiles/dots/.gitconfig ~/.gitconfig
ln -s ~/projects/personal/dotfiles/dots/.gitignore_global ~/.gitignore_global
ln -s ~/projects/personal/dotfiles/dots/.hushlogin ~/.hushlogin
ln -s ~/projects/personal/dotfiles/dots/.vimrc ~/.vimrc
ln -s ~/projects/personal/dotfiles/dots/.wgetrc ~/.wgetrc

# Symlink tmuxinator directory in Google Drive to Home directory
ln -s ~/Google\ Drive/Apps/iTerm/tmuxinator/ ~/.tmuxinator
