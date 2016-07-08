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
plugins=(git z meteor)

# User configuration
export PATH="/Users/alec/.nvm/versions/node/v6.2.2/bin:/Users/alec/.rbenv/shims:/usr/local/sbin:/Users/alec/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Set language environment
export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# Make Atom the default editor
export EDITOR='atom-beta';

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# direnv
eval "$(direnv hook zsh)"

# itermocil autocompletion
compctl -g '~/.itermocil/*(:t:r)' itermocil

# go
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Disable Homebrew analytics
HOMEBREW_NO_ANALYTICS=1

# TODO: Possibly unnecessary

# Add `~/bin` to the `$PATH`
# export PATH="$HOME/bin:$PATH";

# Source scmpuff
# https://github.com/mroth/scmpuff
eval "$(scmpuff init -s)"

# Source thefuck
# https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
