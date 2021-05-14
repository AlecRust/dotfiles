echo "== Creating symlinks =="

# Symlink dotfiles to Home directory
ln -s $HOME/projects/personal/dotfiles/dots/.aliases $HOME/.aliases
ln -s $HOME/projects/personal/dotfiles/dots/.curlrc $HOME/.curlrc
ln -s $HOME/projects/personal/dotfiles/dots/.editorconfig $HOME/.editorconfig
ln -s $HOME/projects/personal/dotfiles/dots/.gitconfig $HOME/.gitconfig
ln -s $HOME/projects/personal/dotfiles/dots/.gitignore_global $HOME/.gitignore_global
ln -s $HOME/projects/personal/dotfiles/dots/.hushlogin $HOME/.hushlogin
ln -s $HOME/projects/personal/dotfiles/dots/.vimrc $HOME/.vimrc
ln -s $HOME/projects/personal/dotfiles/dots/.wgetrc $HOME/.wgetrc
ln -s $HOME/projects/personal/dotfiles/dots/.zshrc $HOME/.zshrc

# Symlink tmuxinator directory in Google Drive to Home directory
ln -s $HOME/Google\ Drive/Apps/iTerm/tmuxinator/ $HOME/.tmuxinator
