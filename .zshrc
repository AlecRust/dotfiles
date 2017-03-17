# Path to oh-my-zsh installation
export ZSH=/Users/alec/.oh-my-zsh

# Oh My Zsh theme. Load iTerm2 themes from:
# http://iterm2colorschemes.com/
ZSH_THEME="af-magic"

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
plugins=(zsh-nvm git z meteor alias-tips autoenv thefuck rbenv yarn)

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

# Disable Oh My Zsh update prompt
DISABLE_AUTO_UPDATE="true"

# Load Oh My Zsh
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

# pyenv
# https://github.com/yyuu/pyenv
eval "$(pyenv init -)"

# Make Atom the default editor
export EDITOR='atom';

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# itermocil autocompletion
compctl -g '~/.itermocil/*(:t:r)' itermocil

# Disable Homebrew analytics
HOMEBREW_NO_ANALYTICS=1

# Source scmpuff
# https://github.com/mroth/scmpuff
eval "$(scmpuff init -s)"

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source iTerm2 Shell Integration
# https://iterm2.com/documentation-shell-integration.html
source $HOME/.iterm2_shell_integration.zsh
