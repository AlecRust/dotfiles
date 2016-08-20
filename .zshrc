# Path to oh-my-zsh installation
export ZSH=/Users/alec/.oh-my-zsh

# Use Honukai zsh and iTerm2 theme
# https://github.com/oskarkrawczyk/honukai-iterm-zsh
ZSH_THEME="honukai"

# Use case-sensitive completion
# CASE_SENSITIVE="true"

# Use hyphen-insensitive completion. Case sensitive completion must
# be off. _ and - will be interchangeable
# HYPHEN_INSENSITIVE="true"

# How often to auto-update (in days)
# export UPDATE_ZSH_DAYS=13

# Disable colors in ls
# DISABLE_LS_COLORS="true"

# Disable auto-setting terminal title
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change command execution time stamp shown in the history command output
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Use another custom folder than $ZSH/custom
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins - https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(git z meteor alias-tips)

# Build up $PATH from scratch
# ---------------------------

# Set default path
# Start with the original path (see /etc/paths)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Add `~/bin` to beginning
export PATH="$HOME/bin:$PATH"

# Add `/usr/local/sbin` to beginning, to make
# scripts that require root priviledges available
export PATH="/usr/local/sbin:$PATH"

# Add rbenv to beginning
export PATH="$HOME/.rbenv/shims:$PATH"

# Add NVM Node to beginning
export PATH="$HOME/.nvm/versions/node/v6.4.0/bin:$PATH"

# Add GNU core utilities to beginning
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Add X11 (XQuartz) to end
export PATH="$PATH:/opt/X11/bin"

# Add MacGPG2 to end
export PATH="$PATH:/usr/local/MacGPG2/bin"

# Set Go path vars and add them to end
export GOPATH="$HOME/golang"
export GOROOT="/usr/local/opt/go/libexec"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Set language environment
export LANG=en_GB.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Source .aliases and .extra
source $HOME/.aliases
source $HOME/.extra

# Source NVM upon login - https://github.com/creationix/nvm#manual-install
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# rbenv - https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x
eval "$(rbenv init -)"

# pyenv
# https://github.com/yyuu/pyenv
eval "$(pyenv init -)"

# Make Atom the default editor
export EDITOR='atom-beta';

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# direnv
eval "$(direnv hook zsh)"

# itermocil autocompletion
compctl -g '~/.itermocil/*(:t:r)' itermocil

# Disable Homebrew analytics
HOMEBREW_NO_ANALYTICS=1

# Source scmpuff
# https://github.com/mroth/scmpuff
eval "$(scmpuff init -s)"

# Source thefuck
# https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source iTerm2 Shell Integration
# https://iterm2.com/documentation-shell-integration.html
source $HOME/.iterm2_shell_integration.zsh
